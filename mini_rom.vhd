--------------------------------------------------
--instruction memory implementation
--by Renan Picoli de Souza
--supports only 32 bit instructions
--(all instructions are word-aligned)
--64 bytes de ROM (como um I-cache)
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
--	R_type & r11 & r11 & r11 & "00000" & xor_funct,	-- xor r11 r11 r11; zera r11
--	lw & r3 & r5 & "0008", -- lw [r3+8] r5; r5 recebe o valor de I2S:SR
--	andi & r5 & r5 & "0080",-- andi r5 r5 x"0080" (zera todos os bits, menos o bit 7 - pll locked)
--	beq & r5 & r11 & "FFFD",-- beq r5 r11 (-3), se r5 = 0, pll não deu lock, repetir leitura (instrucao 15)
		
	--Audio codec configuration
	15=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	16=> addi & r3 & r3 & x"0180", -- addi r3 r3 x"0180"; x60*4 é a posição 0 do I2C (CR register)
	17=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	18=> addi & r5 & r5 & "0000000000110100", -- addi r5 r5 "00000_0_01_0011010_0"; configura CR para 2 bytes, slave address 0b"0011010", escrita
	19=> sw & r3 & r5 & x"0000", -- sw [r3+0] r5; escreve em CR, transmissão não habilitada ainda

	--reset
	20=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	21=> addi & r5 & r5 & "0001111000000000", -- addi r5 r5 "0001111_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 0Fh (reset)
	22=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	23=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	24=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	25=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	26=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--power down
	27=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	28=> addi & r5 & r5 & "0000110001110111", -- addi r5 r5 "0000110_0_0111_0111"; configura DR para escrever 0_0111_0111 no reg 06h (power down control)
	29=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	30=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	31=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	32=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	33=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--analogue audio path
	34=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	35=> addi & r5 & r5 & "0000100000010010", -- addi r5 r5 "0000100_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 04h (analogue audio path)
	36=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	37=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	38=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	39=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	40=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--digital audio path
	41=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	42=> addi & r5 & r5 & "0000101000000000", -- addi r5 r5 "0000101_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 05h (digital audio path)
	43=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	44=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	45=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	46=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	47=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--digital audio interface format
	48=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	49=> addi & r5 & r5 & "0000111000010010", -- addi r5 r5 "0000111_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 07h (digital audio interface format, I2S)
	50=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	51=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	52=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	53=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	54=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--sampling control
	55=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	56=> addi & r5 & r5 & "0001000000100011", -- addi r5 r5 "0001000_0_0010_0011"; configura DR para escrever 0_0010_0011 no reg 08h (sampling control, USB mode)
	57=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	58=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	59=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	60=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	61=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--active control
	62=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	63=> addi & r5 & r5 & "0001001000000001", -- addi r5 r5 "0001001_0_0000_0001"; configura DR para escrever 0_0000_0001 no reg 09h (active control, ativa o codec)
	64=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	65=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	66=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	67=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	68=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)

	--power down control
	69=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	70=> addi & r5 & r5 & "0000110001100111", -- addi r5 r5 "0000110_0_0110_0111"; configura DR para escrever 0_0110_0111 no reg 06h (power down control, ativa a saída)
	71=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	72=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	73=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	74=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	75=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)


	76=> halt & "00" & x"000000",								-- halt; waits for filter interruption to be generated when filter_CLK rises (new sample)
																		-- r5 será um registrador para carregamento temporário de dados
																		-- r6 será um índice para a iteração nos loops
																		-- r8 será para armazenar a leitura da saída do filtro
																		-- r9 será para armazenar a resposta desejada
																		-- r10 será o erro (d-y)
																		-- r11 será mais um registrador de carregamento temporário de dados
																		-- r12 será uma máscara para a seleção do bit 7 (x"0008")

	--	main: Loop New_sample:									--	main: Loop New_sample:
																		--	%calculo do step
	77=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	78=> addi & r3 & r3 & x"0080",							-- addi r3 r3 x"0080"; x20*4 é a posição 0 do inner_product
	79=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera r4
	80=> addi & r4 & r4 & x"0020",							-- addi r4 r4 x"0020"; 8*4 é a posição 0 do filter_xN
	81=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera r6

																		--	Loop xN_inner: carregar o produto interno com os xN
	82=> lw & r4 & r5 & x"0000",									-- lw [r4+0] r5; carrega r5 com um elemento de xN
	83=> sw & r3 & r5 & x"0000",									-- sw [r3+0] r5; armazena esse elemento de xN no A do inner_product
	84=> sw & r3 & r5 & x"0020",									-- sw [r3+8*4] r5; armazena esse mesmo elemento no B do inner_product
	85=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
	86=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
	87=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
	88=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
	89=> jmp & "00" & x"000052",									-- jmp x"xN_inner", volta ao início desse loop
																		--	End loop xN_inner

	90=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	91=> addi & r3 & r3 & x"0080",							-- addi r3 r3 x"0080"; x20*4 é a posição 0 do inner_product
	92=> lw & r3 & r1 & x"0040",								--	lw [r3+ 16*4] r1; stores squared norm in r1
	93=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	94=> addi & r3 & r3 & x"0040",							-- addi r3 r3 x"0040"; x10*4 é a posição 0 do cache

																		--	If -- testa se quem é maior: cte ou squared norm, pega a MAIOR
	95=> R_type & r1 & r2 & r5 & "00000" & fsub_funct,		-- fsub r1 r2 r5; usa r5 para armazenar a diferença squared norm - 5E-5
	96=> R_type & r6 & r6 & r6 & "00000" & xor_funct,		-- xor r6 r6 r6; zera r6, será usado temporariamente
	97=> lw & r3 & r6 & x"0004",									-- lw [r3 + 4] r6; r6 <- x"7FFFFFFF", a constante estava no cache
	98=> R_type & r5 & r6 & r5 & "00000" & slt_funct,		-- slt r5 r6 r5; se r5 for negativo (sq norm < 5E-5), r5 <- x"00000000" se não, recebe x"00000001"
	99=> R_type & r6 & r6 & r6 & "00000" & xor_funct,		-- xor r6 r6 r6; zera r6
	100=> beq & r5 & r6 & x"0003",									-- beq r5 r6 x"0003"; se r5 = r6 =0, pula as 3 instrucoes abaixo, r1 deve receber 1/(2*sq norm)
	101=> lw & r3 & r6 & x"000C",									-- lw [r3+12] r6; r6 <- 1.0
	102=> R_type & r6 & r1 & r1 & "00000" & fdiv_funct,		-- fdiv r6 r1 r1; r1 <- 1/(sq norm), r1*erro será o escalar na atualização do filtro
	103=> jmp & "00" & x"00006A",									-- jmp EndIF (jump 106: jump to outside if)
	104=> lw & r3 & r6 & x"000C",									-- lw[r3+12] r6; r6 <- 1.0
	105=> R_type & r6 & r2 & r1 & "00000" & fdiv_funct,		-- fdiv r6 r2 r1; r1 <- 1/(5E-5), r1*erro será o escalar na atualização do filtro
																		--	End if

	106=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3
	107=> addi & r3 & r3 & x"01C0",							-- addi r3 r3 x"01C0"; r3 aponta para o registrador da saída atual do filtro (x70*4)
	108=> lw & r3 & r8 & x"0000",								--	lw [r3+0] r8; lê a resposta do filtro e armazena em r8
	109=> lw & r3 & r9 & x"0004",								-- lw [r3+4] r9; lê a resposta desejada e armazena em r9

	110=> R_type & r9 & r8 & r10 & "00000" & fsub_funct,--	fsub r9 r8 r10; Calcula e armazena o erro (d-y) em r10
	111=> R_type & r1 & r10 & r1 & "00000" & fmul_funct,-- fmul r1 r10 r1 ; r1 <- (2*step)*erro
	112=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	113=> addi & r4 & r4 & x"0100",							-- addi r4 r4 x"0100"; x40*4, r4 aponta posição 0 do vmac
	114=> sw & r4 & r1 & x"0040",								-- sw [r4 + 64] r1; armazena step*erro no lambda

	115=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6,
	116=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3, aponta para a posição 0 de filter coeffs
	--	Loop A:														--	Loop A: carregar VMAC com as componentes do filtro atual
	117=> lw & r3 & r5 & x"0000",									-- lw [r3+0] r5; carrega r5 com um coeficiente do filtro
	118=> sw & r4 & r5 & x"0000",									-- sw [r4+0] r5; armazena esse coeficiente do filtro no vmac
	119=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
	120=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
	121=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
	122=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
	123=> jmp & "00" & x"000075",									-- jmp x"loop A", jump 117: volta ao início desse loop
																		--	End loop A

	124=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6,
	125=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3,
	126=> addi & r3 & r3 & x"0020",							-- addi r3 r3 x"0020" aponta para a posição 0 de xN
	127=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	128=> addi & r4 & r4 & x"0120",							-- addi r4 r4 x"0120"; (x40+x08)*4, r4 aponta posição x8 do vmac, vetor B
	--	Loop B:														--	Loop B: carregar VMAC com as componentes de [alfa beta] approx xN (Feintuch)
	129=> lw & r3 & r5 & x"0000",									-- lw [r3+0] r5; carrega r5 com um elemento de xN
	130=> sw & r4 & r5 & x"0000",									-- sw [r4+0] r5; armazena esse elemento de xN no vmac
	131=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
	132=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
	133=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
	134=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
	135=> jmp & "00" & x"000081",									-- jmp x"loop B", jump 129: volta ao início desse loop
																		--	End loop B

	136=> vmac & "00" & x"000000",								-- vmac; enables accumulation in vector A of VMAC
	
	137=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6,
	138=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3, aponta para a posição 0 de filter coeffs
	139=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	140=> addi & r4 & r4 & x"0100",							-- addi r4 r4 x"0100"; x40*4, r4 aponta posição 0 do vmac
	--	Loop A*:														--	Loop A*: ler o acumulador do VMAC e atualizar os coeficientes do filtro
	141=> lw & r4 & r5 & x"0000",									-- lw [r4+0] r5; carrega r5 com um resultado do vmac
	142=> sw & r3 & r5 & x"0000",									-- sw [r3+0] r5; armazena esse coeficiente no filter coeffs
	143=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
	144=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
	145=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
	146=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
	147=> jmp & "00" & x"00008D",									-- jmp x"loop A*", jump 141: volta ao início desse loop
																		--	End loop A*
	
	148=> filter_write & "00" & x"000000",					-- filter_write; enables filter to update its components (when filter_CLK rises)
	-- TODO: se filtro já convergiu, sair do loop		-- TODO: se filtro já convergiu, sair do loop
	-- limpar o pending bit da IRQ do filtro				-- limpar o pending bit da IRQ do filtro
	149=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6
	150=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	151=> addi & r4 & r4 & x"01D0",							-- addi r4 r4 x"01D0"; (x74*4), r4 aponta a posição do reg do controlador de interrupção
	152=> sw & r4 & r6 & x"0000",								-- sw [r4+0] r6; escreve zero no reg de IRQ pendentes
																		
	153=> iack & "00" & x"000000",								-- iack

	--I2S transmission (left fifo já foi selecionada antes do loop principal)
	--escreve 2x no DR (left fifo selectonada)
	--escreve 2x no DR (right fifo selectonada)
	--habilita a transmissão
	154=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	155=> addi & r3 & r3 & x"01E0", -- addi r3 r3 x"01E0"; x78*4 é a posição 0 do converted_output register
	156=> lw & r3 & r5 & x"0000",-- lw [r3+0] r5, loads r5 with filter response converted to 2's complement (CREATE REGISTER)
	157=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	158=> addi & r3 & r3 & x"01A0", -- addi r3 r3 x"01A0"; x68*4 é a posição 0 do I2S (CR register)
	159=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S
	160=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S de novo (uma forma de reduzir a frequência de amostragem)

	--usar r11 para armazenar a configuração do I2S
	161=> lw & r3 & r11 & x"0000",-- lw [r3+0] r11, armazena em r11 a configuração do I2S (CR)
	162=> R_type & r12 & r12 & r12 & "00000" & xor_funct,	-- xor r12 r12 r12; zera r12
	163=> addi & r12 & r12 & x"0080",--addi r12 r12 x"0080", r12 <- x0080
	164=> R_type & r11 & r12 & r11 & "00000" & xor_funct,--xor r11 r11 x"0080", inverte o bit de seleção da fifo
	165=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S
	166=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S de novo (uma forma de reduzir a frequência de amostragem)
	167=> R_type & r12 & r12 & r12 & "00000" & xor_funct,	-- xor r12 r12 r12; zera r12
	168=> addi & r12 & r12 & x"0001",--addi r12 r12 x"0001", r12 <- x0001 (máscara do bit 0)
	169=> R_type & r11 & r12 & r11 & "00000" & or_funct,--xor r11 r11 x"0001", ativa o bit I2S_EN (inicia transmissão)
	170=> halt & "00" & x"000000",								-- halt; waits for I2S interruption (assumes sucess)

	171=> halt & "00" & x"000000",								-- halt; waits for filter interruption to be generated when filter_CLK rises (new sample)
	172=> jmp & "00" & x"00004D",								-- jmp "New_sample"; jmp 77: volta pro início do loop de proc de amostra
																		--	End loop New_sample
	others => x"0000_0000"
	);
	
	begin
		--output behaviour:
		Q <= rom(to_integer(unsigned(ADDR)));
end memArch;