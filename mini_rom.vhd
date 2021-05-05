--------------------------------------------------
--instruction memory implementation
--by Renan Picoli de Souza
--supports only 32 bit instructions
--(all instructions are word-aligned)
--1024 bytes de ROM (como um I-cache)
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;--to_integer

use work.my_types.all;--opcode and register "defines"

entity mini_rom is
	port (--CLK: in std_logic;--borda de subida para escrita, se desativado, memória é lida
			ADDR: in std_logic_vector(7 downto 0);--addr é endereço de byte, mas os Lsb são 00
			Q:	out std_logic_vector(31 downto 0)
			);
end mini_rom;

architecture memArch of mini_rom is

	type memory is array (0 to 255) of std_logic_vector(31 downto 0);
	constant rom: memory := (--asm approx. follows Intel syntax: destination before source
	--Feintuch’s Algorithm
	--initialize
	0=> R_type & r0 & r0 & r0 & "00000" & xor_funct,	--	xor r0 r0 r0; zera r0
	1=> addi & r0 & r0 & x"0008",								--	addi r0 r0 x"000B"; stores N=P+Q+1=8 in r0
	2=> R_type & r1 & r1 & r1 & "00000" & xor_funct,	--	xor r1 r1 r1; zera r1, vai armazenar (2*step)
	3=> R_type & r2 & r2 & r2 & "00000" & xor_funct,	--	xor r2 r2 r2; zera r2, vai armazenar a cte 5E-5
	4=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3, vai ser ponteiro nos loops de preenchimento da memória
	5=> addi & r3 & r3 & x"0040",								--	addi r3 r3 x"0040"; 16*4 é a posição 0 do cache
	6=> lw & r3 & r2 & x"0000",								--	lw [r3 + 0] r2; r2<- x"3851B717", armazena a cte 5E-5, na posição 0 do cache
	7=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera r4, r4 será um segundo ponteiro nos loops em memória
	8=> R_type & r7 & r7 & r7 & "00000" & xor_funct,	-- xor r7 r7 r7; zera r7, r7 será a constante 8 (NÚMERO DE COEFICIENTES DO FILTRO)
	9=> addi & r7 & r7 & x"0008",								-- addi r7 r7 x"0010"; r7 <- 8 (NÚMERO DE COEFICIENTES DO FILTRO)

	--I2S configuration
	10=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	11=> addi & r3 & r3 & x"01A0", -- addi r3 r3 x"01A0"; x68*4 é a posição 0 do I2S (CR register)
	12=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	13=> addi & r5 & r5 & "0000000000110100", -- addi r5 r5 "0000_0000_0_011_010_0"; configura CR: seleciona left fifo, DS 16 bits, 2 frames, aguardando início
	14=> sw & r3 & r5 & x"0000", -- sw [r3+0] r5; escreve em CR, transmissão não habilitada ainda
	15=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	-- xor r11 r11 r11; zera r11
	16=> lw & r3 & r5 & x"0008", -- lw [r3+8] r5; r5 recebe o valor de I2S:SR
	17=> andi & r5 & r5 & x"0080",-- andi r5 r5 x"0080" (zera todos os bits, menos o bit 7 - pll locked)
	18=> beq & r5 & r11 & x"FFFD",-- beq r5 r11 (-3), se r5 = 0, pll não deu lock, repetir leitura (instrucao 15)
		
	--Audio codec configuration
	19=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	20=> addi & r3 & r3 & x"0180", -- addi r3 r3 x"0180"; x60*4 é a posição 0 do I2C (CR register)
	21=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	22=> addi & r5 & r5 & "0000000000110100", -- addi r5 r5 "00000_0_01_0011010_0"; configura CR para 2 bytes, slave address 0b"0011010", escrita
	23=> sw & r3 & r5 & x"0000", -- sw [r3+0] r5; escreve em CR, transmissão não habilitada ainda

	--reset
	24=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	25=> addi & r5 & r5 & "0001111000000000", -- addi r5 r5 "0001111_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 0Fh (reset)
	26=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	27=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	28=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	29=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	30=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--power down
	31=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	32=> addi & r5 & r5 & "0000110001110111", -- addi r5 r5 "0000110_0_0111_0111"; configura DR para escrever 0_0111_0111 no reg 06h (power down control)
	33=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	34=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	35=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	36=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	37=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--analogue audio path
	38=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	39=> addi & r5 & r5 & "0000100000010010", -- addi r5 r5 "0000100_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 04h (analogue audio path)
	40=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	41=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	42=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	43=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	44=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--digital audio path
	45=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	46=> addi & r5 & r5 & "0000101000000000", -- addi r5 r5 "0000101_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 05h (digital audio path)
	47=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	48=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	49=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	50=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	51=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--digital audio interface format
	52=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	53=> addi & r5 & r5 & "0000111000010010", -- addi r5 r5 "0000111_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 07h (digital audio interface format, I2S)
	54=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	55=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	56=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	57=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	58=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--sampling control
	59=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	60=> addi & r5 & r5 & "0001000000100011", -- addi r5 r5 "0001000_0_0010_0011"; configura DR para escrever 0_0010_0011 no reg 08h (sampling control, USB mode)
	61=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	62=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	63=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	64=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	65=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--active control
	66=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	67=> addi & r5 & r5 & "0001001000000001", -- addi r5 r5 "0001001_0_0000_0001"; configura DR para escrever 0_0000_0001 no reg 09h (active control, ativa o codec)
	68=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	69=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	70=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	71=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	72=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--power down control
	73=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	74=> addi & r5 & r5 & "0000110001100111", -- addi r5 r5 "0000110_0_0110_0111"; configura DR para escrever 0_0110_0111 no reg 06h (power down control, ativa a saída)
	75=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	76=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	77=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	78=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	79=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)


	80=> halt & "00" & x"000000",								-- halt; waits for filter interruption to be generated when filter_CLK rises (new sample)
																		-- r5 será um registrador para carregamento temporário de dados
																		-- r6 será um índice para a iteração nos loops
																		-- r8 será para armazenar a leitura da saída do filtro
																		-- r9 será para armazenar a resposta desejada
																		-- r10 será o erro (d-y)
																		-- r11 será mais um registrador de carregamento temporário de dados
																		-- r12 será uma máscara para a seleção do bit 7 (x"0008")

	--	main: Loop New_sample:									--	main: Loop New_sample:
																		--	%calculo do step
	81=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	82=> addi & r3 & r3 & x"0080",							-- addi r3 r3 x"0080"; x20*4 é a posição 0 do inner_product
	83=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera r4
	84=> addi & r4 & r4 & x"0020",							-- addi r4 r4 x"0020"; 8*4 é a posição 0 do filter_xN
	85=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera r6

																		--	Loop xN_inner: carregar o produto interno com os xN
	86=> lw & r4 & r5 & x"0000",									-- lw [r4+0] r5; carrega r5 com um elemento de xN
	87=> sw & r3 & r5 & x"0000",									-- sw [r3+0] r5; armazena esse elemento de xN no A do inner_product
	88=> sw & r3 & r5 & x"0020",									-- sw [r3+8*4] r5; armazena esse mesmo elemento no B do inner_product
	89=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
	90=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
	91=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
	92=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
	93=> jmp & "00" & x"000056",									-- jmp x"xN_inner", volta ao início desse loop
																		--	End loop xN_inner

	94=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	95=> addi & r3 & r3 & x"0080",							-- addi r3 r3 x"0080"; x20*4 é a posição 0 do inner_product
	96=> lw & r3 & r1 & x"0040",								--	lw [r3+ 16*4] r1; stores squared norm in r1
	97=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	98=> addi & r3 & r3 & x"0040",							-- addi r3 r3 x"0040"; x10*4 é a posição 0 do cache

																		--	If -- testa se quem é maior: cte ou squared norm, pega a MAIOR
	99=> R_type & r1 & r2 & r5 & "00000" & fsub_funct,		-- fsub r1 r2 r5; usa r5 para armazenar a diferença squared norm - 5E-5
	100=> R_type & r6 & r6 & r6 & "00000" & xor_funct,		-- xor r6 r6 r6; zera r6, será usado temporariamente
	101=> lw & r3 & r6 & x"0004",									-- lw [r3 + 4] r6; r6 <- x"7FFFFFFF", a constante estava no cache
	102=> R_type & r5 & r6 & r5 & "00000" & slt_funct,		-- slt r5 r6 r5; se r5 for negativo (sq norm < 5E-5), r5 <- x"00000000" se não, recebe x"00000001"
	103=> R_type & r6 & r6 & r6 & "00000" & xor_funct,		-- xor r6 r6 r6; zera r6
	104=> beq & r5 & r6 & x"0003",									-- beq r5 r6 x"0003"; se r5 = r6 =0, pula as 3 instrucoes abaixo, r1 deve receber 1/(2*sq norm)
	105=> lw & r3 & r6 & x"000C",									-- lw [r3+12] r6; r6 <- 1.0
	106=> R_type & r6 & r1 & r1 & "00000" & fdiv_funct,		-- fdiv r6 r1 r1; r1 <- 1/(sq norm), r1*erro será o escalar na atualização do filtro
	107=> jmp & "00" & x"00006E",									-- jmp EndIF (jump 110: jump to outside if)
	108=> lw & r3 & r6 & x"000C",									-- lw[r3+12] r6; r6 <- 1.0
	109=> R_type & r6 & r2 & r1 & "00000" & fdiv_funct,		-- fdiv r6 r2 r1; r1 <- 1/(5E-5), r1*erro será o escalar na atualização do filtro
																		--	End if

	110=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3
	111=> addi & r3 & r3 & x"01C0",							-- addi r3 r3 x"01C0"; r3 aponta para o registrador da saída atual do filtro (x70*4)
	112=> lw & r3 & r8 & x"0000",								--	lw [r3+0] r8; lê a resposta do filtro e armazena em r8
	113=> lw & r3 & r9 & x"0004",								-- lw [r3+4] r9; lê a resposta desejada e armazena em r9

	114=> R_type & r9 & r8 & r10 & "00000" & fsub_funct,--	fsub r9 r8 r10; Calcula e armazena o erro (d-y) em r10
	115=> R_type & r1 & r10 & r1 & "00000" & fmul_funct,-- fmul r1 r10 r1 ; r1 <- (2*step)*erro
	116=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	117=> addi & r4 & r4 & x"0100",							-- addi r4 r4 x"0100"; x40*4, r4 aponta posição 0 do vmac
	118=> sw & r4 & r1 & x"0040",								-- sw [r4 + 64] r1; armazena step*erro no lambda

	119=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6,
	120=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3, aponta para a posição 0 de filter coeffs
	--	Loop A:														--	Loop A: carregar VMAC com as componentes do filtro atual
	121=> lw & r3 & r5 & x"0000",									-- lw [r3+0] r5; carrega r5 com um coeficiente do filtro
	122=> sw & r4 & r5 & x"0000",									-- sw [r4+0] r5; armazena esse coeficiente do filtro no vmac
	123=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
	124=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
	125=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
	126=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
	127=> jmp & "00" & x"000079",									-- jmp x"loop A", jump 121: volta ao início desse loop
																		--	End loop A

	128=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6,
	129=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3,
	130=> addi & r3 & r3 & x"0020",							-- addi r3 r3 x"0020" aponta para a posição 0 de xN
	131=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	132=> addi & r4 & r4 & x"0120",							-- addi r4 r4 x"0120"; (x40+x08)*4, r4 aponta posição x8 do vmac, vetor B
	--	Loop B:														--	Loop B: carregar VMAC com as componentes de [alfa beta] approx xN (Feintuch)
	133=> lw & r3 & r5 & x"0000",									-- lw [r3+0] r5; carrega r5 com um elemento de xN
	134=> sw & r4 & r5 & x"0000",									-- sw [r4+0] r5; armazena esse elemento de xN no vmac
	135=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
	136=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
	137=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
	138=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
	139=> jmp & "00" & x"000085",									-- jmp x"loop B", jump 133: volta ao início desse loop
																		--	End loop B

	140=> vmac & "00" & x"000000",								-- vmac; enables accumulation in vector A of VMAC
	
	141=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6,
	142=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3, aponta para a posição 0 de filter coeffs
	143=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	144=> addi & r4 & r4 & x"0100",							-- addi r4 r4 x"0100"; x40*4, r4 aponta posição 0 do vmac
	--	Loop A*:														--	Loop A*: ler o acumulador do VMAC e atualizar os coeficientes do filtro
	145=> lw & r4 & r5 & x"0000",									-- lw [r4+0] r5; carrega r5 com um resultado do vmac
	146=> sw & r3 & r5 & x"0000",									-- sw [r3+0] r5; armazena esse coeficiente no filter coeffs
	147=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
	148=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
	149=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
	150=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
	151=> jmp & "00" & x"000091",									-- jmp x"loop A*", jump 145: volta ao início desse loop
																		--	End loop A*
	
	152=> filter_write & "00" & x"000000",					-- filter_write; enables filter to update its components (when filter_CLK rises)
	-- TODO: se filtro já convergiu, sair do loop		-- TODO: se filtro já convergiu, sair do loop
	-- limpar o pending bit da IRQ do filtro				-- limpar o pending bit da IRQ do filtro
	153=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6
	154=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	155=> addi & r4 & r4 & x"01D0",							-- addi r4 r4 x"01D0"; (x74*4), r4 aponta a posição do reg do controlador de interrupção
	156=> sw & r4 & r6 & x"0000",								-- sw [r4+0] r6; escreve zero no reg de IRQ pendentes
																		
	157=> iack & "00" & x"000000",								-- iack

	--I2S transmission (left fifo já foi selecionada antes do loop principal)
	--escreve 2x no DR (left fifo selectonada)
	--escreve 2x no DR (right fifo selectonada)
	--habilita a transmissão
	158=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	159=> addi & r3 & r3 & x"01E0", -- addi r3 r3 x"01E0"; x78*4 é a posição 0 do converted_output register
	160=> lw & r3 & r5 & x"0000",-- lw [r3+0] r5, loads r5 with filter response converted to 2's complement (CREATE REGISTER)
	161=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	162=> addi & r3 & r3 & x"01A0", -- addi r3 r3 x"01A0"; x68*4 é a posição 0 do I2S (CR register)
	163=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S
	164=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S de novo (uma forma de reduzir a frequência de amostragem)

	--usar r11 para armazenar a configuração do I2S
	165=> lw & r3 & r11 & x"0000",-- lw [r3+0] r11, armazena em r11 a configuração do I2S (CR)
	166=> R_type & r12 & r12 & r12 & "00000" & xor_funct,	-- xor r12 r12 r12; zera r12
	167=> addi & r12 & r12 & x"0080",--addi r12 r12 x"0080", r12 <- x0080
	168=> R_type & r11 & r12 & r11 & "00000" & xor_funct,--xor r11 r11 x"0080", inverte o bit de seleção da fifo
	169=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S
	170=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S de novo (uma forma de reduzir a frequência de amostragem)
	171=> R_type & r12 & r12 & r12 & "00000" & xor_funct,	-- xor r12 r12 r12; zera r12
	172=> addi & r12 & r12 & x"0001",--addi r12 r12 x"0001", r12 <- x0001 (máscara do bit 0)
	173=> R_type & r11 & r12 & r11 & "00000" & or_funct,--xor r11 r11 x"0001", ativa o bit I2S_EN (inicia transmissão)
	174=> halt & "00" & x"000000",								-- halt; waits for I2S interruption (assumes sucess)

	175=> halt & "00" & x"000000",								-- halt; waits for filter interruption to be generated when filter_CLK rises (new sample)
	176=> jmp & "00" & x"000051",								-- jmp "New_sample"; jmp 81: volta pro início do loop de proc de amostra
																		--	End loop New_sample
	others => x"0000_0000"
	);
	
	begin
		--output behaviour:
		Q <= rom(to_integer(unsigned(ADDR)));
end memArch;