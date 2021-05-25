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
	9=> addi & r7 & r7 & x"0008",								-- addi r7 r7 x"0008"; r7 <- 8 (NÚMERO DE COEFICIENTES DO FILTRO)
	
	10=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	11=> addi & r3 & r3 & x"01C8", -- addi r3 r3 x"01C8"; x72*4 é a posição 0 do filter control and status
	12=> lw & r3 & r5 & x"0000",-- lw [r3+0] r5; armazena em r5 o valor do filter control and status
	13=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5
	14=> sw & r3 & r5 & x"0000", -- sw [r3+0] r5; escreve em filter control and status, desabilita o filtro

	--I2S configuration
	15=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	16=> addi & r3 & r3 & x"01A0", -- addi r3 r3 x"01A0"; x68*4 é a posição 0 do I2S (CR register)
	17=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	18=> addi & r5 & r5 & "0000000000110100", -- addi r5 r5 "0000_0000_0_011_010_0"; configura CR: seleciona left fifo, DS 16 bits, 2 frames, aguardando início
	19=> sw & r3 & r5 & x"0000", -- sw [r3+0] r5; escreve em CR, transmissão não habilitada ainda
	20=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	-- xor r11 r11 r11; zera r11
	21=> lw & r3 & r5 & x"0008", -- lw [r3+8] r5; r5 recebe o valor de I2S:SR
	22=> andi & r5 & r5 & x"0080",-- andi r5 r5 x"0080" (zera todos os bits, menos o bit 7 - pll locked)
	23=> beq & r5 & r11 & x"FFFD",-- beq r5 r11 (-3), se r5 = 0, pll não deu lock, repetir leitura (instrucao 21)
		
	--Audio codec configuration
	24=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	25=> addi & r3 & r3 & x"0180", -- addi r3 r3 x"0180"; x60*4 é a posição 0 do I2C (CR register)
	26=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	27=> addi & r5 & r5 & "0000000100110100", -- addi r5 r5 "00000_0_01_0011010_0"; configura CR para 2 bytes, slave address 0b"0011010", escrita
--	28=> sw & r3 & r5 & x"0000", -- sw [r3+0] r5; escreve em CR, transmissão não habilitada ainda

--	14=> jmp & "00" & x"00000E",-- jmp 14, waits forever
	28=> halt & "00" & x"000000", -- halt; waits forever

	--reset
--	29=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
--	30=> addi & r5 & r5 & "0001111000000000", -- addi r5 r5 "0001111_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 0Fh (reset)
--	31=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
--	32=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
--	33=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
--	34=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
--	35=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
--	-- limpar o pending bit da IRQ do filtro				-- limpar o pending bit da IRQ do filtro
--	36=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
--	37=> addi & r4 & r4 & x"01D0",							-- addi r4 r4 x"01D0"; (x74*4), r4 aponta a posição 0 do reg do controlador de interrupção
--
--	38=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
--	39=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
--	40=> iack & "00" & x"000000",								-- iack	
--	
--	--power down
--	41=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
--	42=> addi & r5 & r5 & "0000110001110111", -- addi r5 r5 "0000110_0_0111_0111"; configura DR para escrever 0_0111_0111 no reg 06h (power down control)
--	43=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
--	44=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
--	45=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
--	46=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
--	47=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
--	48=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
--	49=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
--	50=> iack & "00" & x"000000",								-- iack
--	
--	--analogue audio path
--	51=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
--	52=> addi & r5 & r5 & "0000100000010010", -- addi r5 r5 "0000100_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 04h (analogue audio path)
--	53=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
--	54=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
--	55=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
--	56=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
--	57=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
--	58=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
--	59=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
--	60=> iack & "00" & x"000000",								-- iack	
--
--	--digital audio path
--	61=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
--	62=> addi & r5 & r5 & "0000101000000000", -- addi r5 r5 "0000101_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 05h (digital audio path)
--	63=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
--	64=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
--	65=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
--	66=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
--	67=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
--	68=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
--	69=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
--	70=> iack & "00" & x"000000",								-- iack	
--
--	--digital audio interface format
--	71=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
--	72=> addi & r5 & r5 & "0000111000010010", -- addi r5 r5 "0000111_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 07h (digital audio interface format, I2S)
--	73=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
--	74=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
--	75=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
--	76=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
--	77=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
--	78=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
--	79=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
--	80=> iack & "00" & x"000000",								-- iack	
--
--	--sampling control
--	81=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
--	82=> addi & r5 & r5 & "0001000000100011", -- addi r5 r5 "0001000_0_0010_0011"; configura DR para escrever 0_0010_0011 no reg 08h (sampling control, USB mode)
--	83=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
--	84=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
--	85=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
--	86=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
--	87=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
--	88=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
--	89=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
--	90=> iack & "00" & x"000000",								-- iack	
--
--	--active control
--	91=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
--	92=> addi & r5 & r5 & "0001001000000001", -- addi r5 r5 "0001001_0_0000_0001"; configura DR para escrever 0_0000_0001 no reg 09h (active control, ativa o codec)
--	93=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
--	94=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
--	95=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
--	96=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
--	97=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
--	98=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
--	99=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
--	100=> iack & "00" & x"000000",								-- iack	
--
--	--power down control
--	101=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
--	102=> addi & r5 & r5 & "0000110001100111", -- addi r5 r5 "0000110_0_0110_0111"; configura DR para escrever 0_0110_0111 no reg 06h (power down control, ativa a saída)
--	103=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
--	104=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
--	105=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
--	106=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
--	107=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
--	108=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
--	109=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
--	110=> iack & "00" & x"000000",								-- iack	
--	
--	111=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
--	112=> addi & r3 & r3 & x"01C8", -- addi r3 r3 x"01C8"; x72*4 é a posição 0 do filter control and status
--	113=> lw & r3 & r5 & x"0000",-- lw [r3+0] r5; armazena em r5 o valor do filter control and status
--	114=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5
--	115=> addi & r5 & r5 & x"0001", -- addi r5 r5 x"0001"; r5 <- x0001 habilitará filtro
--	116=> sw & r3 & r5 & x"0000", -- sw [r3+0] r5; escreve em filter control and status, habilita o filtro
--
--	117=> halt & "00" & x"000000",								-- halt; waits for filter interruption to be generated when filter_CLK rises (new sample)
--																		-- r5 será um registrador para carregamento temporário de dados
--																		-- r6 será um índice para a iteração nos loops
--																		-- r8 será para armazenar a leitura da saída do filtro
--																		-- r9 será para armazenar a resposta desejada
--																		-- r10 será o erro (d-y)
--																		-- r11 será mais um registrador de carregamento temporário de dados
--																		-- r12 será uma máscara para a seleção do bit 7 (x"0008")
--
--	--	main: Loop New_sample:									--	main: Loop New_sample:
--																		--	%calculo do step
--	118=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
--	119=> addi & r3 & r3 & x"0080",							-- addi r3 r3 x"0080"; x20*4 é a posição 0 do inner_product
--	120=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera r4
--	121=> addi & r4 & r4 & x"0020",							-- addi r4 r4 x"0020"; 8*4 é a posição 0 do filter_xN
--	122=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera r6
--
--																		--	Loop xN_inner: carregar o produto interno com os xN
--	123=> lw & r4 & r5 & x"0000",									-- lw [r4+0] r5; carrega r5 com um elemento de xN
--	124=> sw & r3 & r5 & x"0000",									-- sw [r3+0] r5; armazena esse elemento de xN no A do inner_product
--	125=> sw & r3 & r5 & x"0020",									-- sw [r3+8*4] r5; armazena esse mesmo elemento no B do inner_product
--	126=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
--	127=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
--	128=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
--	129=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
--	130=> jmp & "00" & x"00007B",									-- jmp x"xN_inner", volta ao início desse loop
--																		--	End loop xN_inner
--
--	131=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
--	132=> addi & r3 & r3 & x"0080",							-- addi r3 r3 x"0080"; x20*4 é a posição 0 do inner_product
--	133=> lw & r3 & r1 & x"0040",								--	lw [r3+ 16*4] r1; stores squared norm in r1
--	134=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
--	135=> addi & r3 & r3 & x"0040",							-- addi r3 r3 x"0040"; x10*4 é a posição 0 do cache
--
--																		--	If -- testa se quem é maior: cte ou squared norm, pega a MAIOR
--	136=> R_type & r1 & r2 & r5 & "00000" & fsub_funct,		-- fsub r1 r2 r5; usa r5 para armazenar a diferença squared norm - 5E-5
--	137=> R_type & r6 & r6 & r6 & "00000" & xor_funct,		-- xor r6 r6 r6; zera r6, será usado temporariamente
--	138=> lw & r3 & r6 & x"0004",									-- lw [r3 + 4] r6; r6 <- x"7FFFFFFF", a constante estava no cache
--	139=> R_type & r5 & r6 & r5 & "00000" & slt_funct,		-- slt r5 r6 r5; se r5 for negativo (sq norm < 5E-5), r5 <- x"00000000" se não, recebe x"00000001"
--	140=> R_type & r6 & r6 & r6 & "00000" & xor_funct,		-- xor r6 r6 r6; zera r6
--	141=> beq & r5 & r6 & x"0003",									-- beq r5 r6 x"0003"; se r5 = r6 =0, pula as 3 instrucoes abaixo, r1 deve receber 1/(2*sq norm)
--	142=> lw & r3 & r6 & x"000C",									-- lw [r3+12] r6; r6 <- 1.0
--	143=> R_type & r6 & r1 & r1 & "00000" & fdiv_funct,		-- fdiv r6 r1 r1; r1 <- 1/(sq norm), r1*erro será o escalar na atualização do filtro
--	144=> jmp & "00" & x"000093",									-- jmp EndIF (jump 147: jump to outside if)
--	145=> lw & r3 & r6 & x"000C",									-- lw[r3+12] r6; r6 <- 1.0
--	146=> R_type & r6 & r2 & r1 & "00000" & fdiv_funct,		-- fdiv r6 r2 r1; r1 <- 1/(5E-5), r1*erro será o escalar na atualização do filtro
--																		--	End if
--
--	147=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3
--	148=> addi & r3 & r3 & x"01C0",							-- addi r3 r3 x"01C0"; r3 aponta para o registrador da saída atual do filtro (x70*4)
--	149=> lw & r3 & r8 & x"0000",								--	lw [r3+0] r8; lê a resposta do filtro e armazena em r8
--	150=> lw & r3 & r9 & x"0004",								-- lw [r3+4] r9; lê a resposta desejada e armazena em r9
--
--	151=> R_type & r9 & r8 & r10 & "00000" & fsub_funct,--	fsub r9 r8 r10; Calcula e armazena o erro (d-y) em r10
--	152=> R_type & r1 & r10 & r1 & "00000" & fmul_funct,-- fmul r1 r10 r1 ; r1 <- (2*step)*erro
--	153=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
--	154=> addi & r4 & r4 & x"0100",							-- addi r4 r4 x"0100"; x40*4, r4 aponta posição 0 do vmac
--	155=> sw & r4 & r1 & x"0040",								-- sw [r4 + 64] r1; armazena step*erro no lambda
--
--	156=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6,
--	157=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3, aponta para a posição 0 de filter coeffs
--	--	Loop A:														--	Loop A: carregar VMAC com as componentes do filtro atual
--	158=> lw & r3 & r5 & x"0000",									-- lw [r3+0] r5; carrega r5 com um coeficiente do filtro
--	159=> sw & r4 & r5 & x"0000",									-- sw [r4+0] r5; armazena esse coeficiente do filtro no vmac
--	160=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
--	161=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
--	162=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
--	163=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
--	164=> jmp & "00" & x"00009E",									-- jmp x"loop A", jump 158: volta ao início desse loop
--																		--	End loop A
--
--	165=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6,
--	166=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3,
--	167=> addi & r3 & r3 & x"0020",							-- addi r3 r3 x"0020" aponta para a posição 0 de xN
--	168=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
--	169=> addi & r4 & r4 & x"0120",							-- addi r4 r4 x"0120"; (x40+x08)*4, r4 aponta posição x8 do vmac, vetor B
--	--	Loop B:														--	Loop B: carregar VMAC com as componentes de [alfa beta] approx xN (Feintuch)
--	170=> lw & r3 & r5 & x"0000",									-- lw [r3+0] r5; carrega r5 com um elemento de xN
--	171=> sw & r4 & r5 & x"0000",									-- sw [r4+0] r5; armazena esse elemento de xN no vmac
--	172=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
--	173=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
--	174=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
--	175=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
--	176=> jmp & "00" & x"0000AA",									-- jmp x"loop B", jump 170: volta ao início desse loop
--																		--	End loop B
--
--	177=> vmac & "00" & x"000000",								-- vmac; enables accumulation in vector A of VMAC
--	
--	178=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6,
--	179=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3, aponta para a posição 0 de filter coeffs
--	180=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
--	181=> addi & r4 & r4 & x"0100",							-- addi r4 r4 x"0100"; x40*4, r4 aponta posição 0 do vmac
--	--	Loop A*:														--	Loop A*: ler o acumulador do VMAC e atualizar os coeficientes do filtro
--	182=> lw & r4 & r5 & x"0000",									-- lw [r4+0] r5; carrega r5 com um resultado do vmac
--	183=> sw & r3 & r5 & x"0000",									-- sw [r3+0] r5; armazena esse coeficiente no filter coeffs
--	184=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
--	185=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
--	186=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
--	187=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
--	188=> jmp & "00" & x"0000B6",									-- jmp x"loop A*", jump 182: volta ao início desse loop
--																		--	End loop A*
--	
--	189=> filter_write & "00" & x"000000",					-- filter_write; enables filter to update its components (when filter_CLK rises)
--	-- TODO: se filtro já convergiu, sair do loop		-- TODO: se filtro já convergiu, sair do loop
--	-- limpar o pending bit da IRQ do filtro				-- limpar o pending bit da IRQ do filtro
--	190=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6
--	191=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
--	192=> addi & r4 & r4 & x"01D0",							-- addi r4 r4 x"01D0"; (x74*4), r4 aponta a posição do reg do controlador de interrupção
--	193=> sw & r4 & r6 & x"0000",								-- sw [r4+0] r6; escreve zero no reg de IRQ pendentes
--																		
--	194=> iack & "00" & x"000000",								-- iack
--
--	--I2S transmission (left fifo já foi selecionada antes do loop principal)
--	--escreve 2x no DR (left fifo selectonada)
--	--escreve 2x no DR (right fifo selectonada)
--	--habilita a transmissão
--	195=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
--	196=> addi & r3 & r3 & x"01E0", -- addi r3 r3 x"01E0"; x78*4 é a posição 0 do converted_output register
--	197=> lw & r3 & r5 & x"0000",-- lw [r3+0] r5, loads r5 with filter response converted to 2's complement
--	198=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
--	199=> addi & r3 & r3 & x"01A0", -- addi r3 r3 x"01A0"; x68*4 é a posição 0 do I2S (CR register)
--	200=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S
--	201=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S de novo (uma forma de reduzir a frequência de amostragem)
--
--	--usar r11 para armazenar a configuração do I2S
--	202=> lw & r3 & r11 & x"0000",-- lw [r3+0] r11, armazena em r11 a configuração do I2S (CR)
--	203=> R_type & r12 & r12 & r12 & "00000" & xor_funct,	-- xor r12 r12 r12; zera r12
--	204=> addi & r12 & r12 & x"0080",--addi r12 r12 x"0080", r12 <- x0080 (bit 7 ='1')
--	205=> R_type & r11 & r12 & r11 & "00000" & xor_funct,--xor r11 r12 r11; r11 <- r11 xor x"0080", inverte o bit de seleção da fifo
--	206=> sw & r3 & r11 & x"0000",-- sw [r3+0] r11, armazena r11 em I2S:CR
--	207=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S
--	208=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S de novo (uma forma de reduzir a frequência de amostragem)
--	209=> R_type & r12 & r12 & r12 & "00000" & xor_funct,	-- xor r12 r12 r12; zera r12
--	210=> addi & r12 & r12 & x"0001",--addi r12 r12 x"0001", r12 <- x0001 (máscara do bit 0)
--	211=> R_type & r11 & r12 & r11 & "00000" & or_funct,--xor r11 r12 r11, r11 <- r11 xor x"0001", ativa o bit I2S_EN (inicia transmissão)
--	212=> sw & r3 & r11 & x"0000",-- sw [r3+0] r11, armazena r11 em I2S:CR ativa o bit I2S_EN
--	213=> halt & "00" & x"000000",								-- halt; waits for I2S interruption (assumes sucess)
--	
--	214=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	-- xor r11 r11 r11; zera r11
--	215=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
--	216=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2S
--	217=> iack & "00" & x"000000",								-- iack	
--
--	218=> halt & "00" & x"000000",								-- halt; waits for filter interruption to be generated when filter_CLK rises (new sample)
--	219=> jmp & "00" & x"000076",								-- jmp "New_sample"; jmp 118: volta pro início do loop de proc de amostra
--																		--	End loop New_sample
	others => x"0000_0000"
	);
	
	begin
		--output behaviour:
		Q <= rom(to_integer(unsigned(ADDR)));
end memArch;