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
	port (CLK: in std_logic;--borda de subida para escrita, se desativado, memória é lida
			RST: in std_logic;--asynchronous reset
			ADDR: in std_logic_vector(7 downto 0);--addr é endereço de byte, mas os Lsb são 00
			Q:	out std_logic_vector(31 downto 0)
			);
end mini_rom;

architecture memArch of mini_rom is

	signal ADDR_reg: std_logic_vector(7 downto 0);--ADDR is registered, then it is used to select instruction

	type memory is array (0 to 255) of std_logic_vector(31 downto 0);
	constant rom: memory := (--asm approx. follows Intel syntax: destination before source
	--zero register_file (inferred ram) (cant use loop because reg_file is not memory mapped)
	0=> R_type & r0 & r0 & r0 & "00000" & xor_funct,	--	xor r0 r0 r0; zera r0
	1=> R_type & r1 & r1 & r1 & "00000" & xor_funct,	--	xor r1 r1 r1; zera r1, vai armazenar (2*step)
	2=> R_type & r2 & r2 & r2 & "00000" & xor_funct,	--	xor r2 r2 r2; zera r2, vai armazenar a cte 5E-5
	3=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	--	xor r3 r3 r3; zera r3, vai ser ponteiro nos loops de preenchimento da memória
	4=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	--	xor r4 r4 r4; zera r4, será um segundo ponteiro nos loops em memória
	5=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	--	xor r5 r5 r5; zera r5
	6=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	--	xor r6 r6 r6; zera r6
	7=> R_type & r7 & r7 & r7 & "00000" & xor_funct,	--	xor r7 r7 r7; zera r7, será a constante 8 (NÚMERO DE COEFICIENTES DO FILTRO)
	8=> R_type & r8 & r8 & r8 & "00000" & xor_funct,	--	xor r8 r8 r8; zera r8
	9=> R_type & r9 & r9 & r9 & "00000" & xor_funct,	--	xor r9 r9 r9; zera r9
	10=> R_type & r10 & r10 & r10 & "00000" & xor_funct,	--	xor r10 r10 r10; zera r10
	11=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	--	xor r11 r11 r11; zera r11
	12=> R_type & r12 & r12 & r12 & "00000" & xor_funct,	--	xor r12 r12 r12; zera r12
	13=> R_type & r13 & r13 & r13 & "00000" & xor_funct,	--	xor r13 r13 r13; zera r13
	14=> R_type & r14 & r14 & r14 & "00000" & xor_funct,	--	xor r14 r14 r14; zera r14
	15=> R_type & r15 & r15 & r15 & "00000" & xor_funct,	--	xor r15 r15 r15; zera r15
	16=> R_type & r16 & r16 & r16 & "00000" & xor_funct,	--	xor r16 r16 r16; zera r16
	17=> R_type & r17 & r17 & r17 & "00000" & xor_funct,	--	xor r17 r17 r17; zera r17
	18=> R_type & r18 & r18 & r18 & "00000" & xor_funct,	--	xor r18 r18 r18; zera r18
	19=> R_type & r19 & r19 & r19 & "00000" & xor_funct,	--	xor r19 r19 r19; zera r19
	20=> R_type & r20 & r20 & r20 & "00000" & xor_funct,	--	xor r20 r20 r20; zera r20
	21=> R_type & r21 & r21 & r21 & "00000" & xor_funct,	--	xor r21 r21 r21; zera r21
	22=> R_type & r22 & r22 & r22 & "00000" & xor_funct,	--	xor r22 r22 r22; zera r22
	23=> R_type & r23 & r23 & r23 & "00000" & xor_funct,	--	xor r23 r23 r23; zera r23
	24=> R_type & r24 & r24 & r24 & "00000" & xor_funct,	--	xor r24 r24 r24; zera r24
	25=> R_type & r25 & r25 & r25 & "00000" & xor_funct,	--	xor r25 r25 r25; zera r25
	26=> R_type & r26 & r26 & r26 & "00000" & xor_funct,	--	xor r26 r26 r26; zera r26
	27=> R_type & r27 & r27 & r27 & "00000" & xor_funct,	--	xor r27 r27 r27; zera r27
	28=> R_type & r28 & r28 & r28 & "00000" & xor_funct,	--	xor r28 r28 r28; zera r28
	29=> R_type & r29 & r29 & r29 & "00000" & xor_funct,	--	xor r29 r29 r29; zera r29
	30=> R_type & r30 & r30 & r30 & "00000" & xor_funct,	--	xor r30 r30 r30; zera r30
	31=> R_type & r31 & r31 & r31 & "00000" & xor_funct,	--	xor r31 r31 r31; zera r31
	--Feintuch’s Algorithm
	--initialize
	32=> addi & r0 & r0 & x"0008",								--	addi r0 r0 x"000B"; stores N=P+Q+1=8 in r0
	33=> addi & r3 & r3 & x"0040",								--	addi r3 r3 x"0040"; 16*4 é a posição 0 do cache
	34=> lw & r3 & r2 & x"0000",								--	lw [r3 + 0] r2; r2<- x"3851B717", armazena a cte 5E-5, na posição 0 do cache
	35=> addi & r7 & r7 & x"0008",								-- addi r7 r7 x"0008"; r7 <- 8 (NÚMERO DE COEFICIENTES DO FILTRO)
	
	36=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	37=> addi & r3 & r3 & x"01C8", -- addi r3 r3 x"01C8"; x72*4 é a posição 0 do filter control and status
	38=> lw & r3 & r5 & x"0000",-- lw [r3+0] r5; armazena em r5 o valor do filter control and status
	39=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5
	40=> sw & r3 & r5 & x"0000", -- sw [r3+0] r5; escreve em filter control and status, desabilita o filtro

	--I2S configuration
	41=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	42=> addi & r3 & r3 & x"01A0", -- addi r3 r3 x"01A0"; x68*4 é a posição 0 do I2S (CR register)
	43=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	44=> addi & r5 & r5 & "0000000000110100", -- addi r5 r5 "0000_0000_0_011_010_0"; configura CR: seleciona left fifo, DS 16 bits, 2 frames, aguardando início
	45=> sw & r3 & r5 & x"0000", -- sw [r3+0] r5; escreve em CR, transmissão não habilitada ainda
	46=> lw & r3 & r5 & x"0008", -- lw [r3+8] r5; r5 recebe o valor de I2S:SR
	47=> andi & r5 & r5 & x"0080",-- andi r5 r5 x"0080" (zera todos os bits, menos o bit 7 - pll locked)
	48=> beq & r5 & r11 & x"FFFD",-- beq r5 r11 (-3), se r5 = 0, pll não deu lock, repetir leitura (instrucao 46)
		
	--Audio codec configuration
	49=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	50=> addi & r3 & r3 & x"0180", -- addi r3 r3 x"0180"; x60*4 é a posição 0 do I2C (CR register)
	51=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	52=> addi & r5 & r5 & "0000000100110100", -- addi r5 r5 "00000_0_01_0011010_0"; configura CR para 2 bytes, slave address 0b"0011010", escrita
	53=> sw & r3 & r5 & x"0000", -- sw [r3+0] r5; escreve em CR, transmissão não habilitada ainda

	--reset
	54=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	55=> addi & r5 & r5 & "0001111000000000", -- addi r5 r5 "0001111_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 0Fh (reset)
	56=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	57=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	58=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	59=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	60=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
	-- limpar o pending bit da IRQ do filtro				-- limpar o pending bit da IRQ do filtro
	61=> addi & r4 & r4 & x"01D0",							-- addi r4 r4 x"01D0"; (x74*4), r4 aponta a posição 0 do reg do controlador de interrupção

	62=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
	63=> sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
	64=> iack & "00" & x"000000",								-- iack	
	
	--power down
	65=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	66=> addi & r5 & r5 & "0000110001110111", -- addi r5 r5 "0000110_0_0111_0111"; configura DR para escrever 0_0111_0111 no reg 06h (power down control)
	67=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	68=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	69=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	70=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	71=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
	72=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
	73=> sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
	74=> iack & "00" & x"000000",								-- iack
	
	--analogue audio path
	75=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	76=> addi & r5 & r5 & "0000100000010010", -- addi r5 r5 "0000100_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 04h (analogue audio path)
	77=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	78=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	79=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	80=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	81=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
	82=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
	83=> sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
	84=> iack & "00" & x"000000",								-- iack	

	--digital audio path
	85=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	86=> addi & r5 & r5 & "0000101000000000", -- addi r5 r5 "0000101_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 05h (digital audio path)
	87=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	88=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	89=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	90=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	91=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
	92=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
	93=> sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
	94=> iack & "00" & x"000000",								-- iack	

	--digital audio interface format
	95=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	96=> addi & r5 & r5 & "0000111000010010", -- addi r5 r5 "0000111_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 07h (digital audio interface format, I2S)
	97=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	98=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	99=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	100=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	101=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
	102=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
	103=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
	104=> iack & "00" & x"000000",								-- iack	

	--sampling control
	105=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	106=> addi & r5 & r5 & "0001000000100011", -- addi r5 r5 "0001000_0_0010_0011"; configura DR para escrever 0_0010_0011 no reg 08h (sampling control, USB mode)
	107=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	108=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	109=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	110=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	111=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
	112=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
	113=> sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
	114=> iack & "00" & x"000000",								-- iack	

	--left headphone out
	115=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	116=> addi & r5 & r5 & "0000010001010001", -- addi r5 r5 "0000010_0_0101_0001"; configura DR para escrever 0_0101_0001 no reg 02h (volume left, -40dB)
	117=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	118=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	119=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	120=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	121=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
	122=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
	123=> sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
	124=> iack & "00" & x"000000",								-- iack

	--right headphone out
	125=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	126=> addi & r5 & r5 & "0000011001010001", -- addi r5 r5 "0000011_0_0101_0001"; configura DR para escrever 0_0101_0001 no reg 03h (volume right, -40dB)
	127=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	128=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	129=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	130=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	131=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
	132=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
	133=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
	134=> iack & "00" & x"000000",								-- iack

	--active control
	135=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	136=> addi & r5 & r5 & "0001001000000001", -- addi r5 r5 "0001001_0_0000_0001"; configura DR para escrever 0_0000_0001 no reg 09h (active control, ativa o codec)
	137=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	138=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	139=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	140=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	141=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
	142=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
	143=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
	144=> iack & "00" & x"000000",								-- iack	

	--power down control
	145=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	146=> addi & r5 & r5 & "0000110001100111", -- addi r5 r5 "0000110_0_0110_0111"; configura DR para escrever 0_0110_0111 no reg 06h (power down control, ativa a saída)
	147=> sw & r3 & r5 & x"0004",-- sw [r3+1*4] r5; armazena em DR o valor a ser transmitido
	148=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	149=> addi & r5 & r5 & "0000010100110100", -- addi r5 r5 "00000_1_01_0011010_0"; configura CR com mesmos valores e ativa o I2C_EN (inicia transmissão)
	150=> sw & r3 & r5 & x"0000",-- sw [r3+0] r5; armazena em CR o valor a ser transmitido
	151=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
	152=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no reg de IRQ pendentes
	153=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
	154=> iack & "00" & x"000000",								-- iack	
	
	155=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	156=> addi & r3 & r3 & x"01C8", -- addi r3 r3 x"01C8"; x72*4 é a posição 0 do filter control and status
	157=> lw & r3 & r5 & x"0000",-- lw [r3+0] r5; armazena em r5 o valor do filter control and status
	158=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5
	159=> addi & r5 & r5 & x"0001", -- addi r5 r5 x"0001"; r5 <- x0001 habilitará filtro
	160=> sw & r3 & r5 & x"0000", -- sw [r3+0] r5; escreve em filter control and status, habilita o filtro

	161=> halt & "00" & x"000000",							-- halt; waits for filter interruption to be generated when filter_CLK rises (new sample)
																		-- r5 será um registrador para carregamento temporário de dados
																		-- r6 será um índice para a iteração nos loops
																		-- r8 será para armazenar a leitura da saída do filtro
																		-- r9 será para armazenar a resposta desejada
																		-- r10 será o erro (d-y)
																		-- r11 será mais um registrador de carregamento temporário de dados
																		-- r12 será uma máscara para a seleção do bit 7 (x"0008")

	--	main: Loop New_sample:									--	main: Loop New_sample:
																		--	%calculo do step
																		--	carrega o produto interno (A e B - 3 e 4) e vmac:B (6) com os xN(2)
	162=> lvec & "00" & x"00" & x"0258",						-- lvec x"02" x"58";

	163=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	164=> addi & r3 & r3 & x"0080",							-- addi r3 r3 x"0080"; x20*4 é a posição 0 do inner_product
	165=> lw & r3 & r1 & x"0040",								--	lw [r3+ 16*4] r1; stores squared norm in r1
	166=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	167=> addi & r3 & r3 & x"0040",							-- addi r3 r3 x"0040"; x10*4 é a posição 0 do cache

																		--	If -- testa se quem é maior: cte ou squared norm, pega a MAIOR
	168=> R_type & r1 & r2 & r5 & "00000" & fsub_funct,	-- fsub r1 r2 r5; usa r5 para armazenar a diferença squared norm - 5E-5
	169=> lw & r3 & r6 & x"0004",									-- lw [r3 + 4] r6; r6 <- x"7FFFFFFF", a constante estava no cache
	170=> R_type & r5 & r6 & r5 & "00000" & slt_funct,		-- slt r5 r6 r5; se r5 for negativo (sq norm < 5E-5), r5 <- x"00000000" se não, recebe x"00000001"
	171=> R_type & r6 & r6 & r6 & "00000" & xor_funct,		-- xor r6 r6 r6; zera r6
	172=> beq & r5 & r6 & x"0003",								-- beq r5 r6 x"0003"; se r5 = r6 =0, pula as 3 instrucoes abaixo, r1 deve receber 1/(2*sq norm)
	173=> lw & r3 & r6 & x"000C",									-- lw [r3+12] r6; r6 <- 1.0
	174=> R_type & r6 & r1 & r1 & "00000" & fdiv_funct,	-- fdiv r6 r1 r1; r1 <- 1/(sq norm), r1*erro será o escalar na atualização do filtro
	175=> jmp & "00" & x"0000B2",									-- jmp EndIF (jump 178: jump to outside if)
	176=> lw & r3 & r6 & x"000C",									-- lw[r3+12] r6; r6 <- 1.0
	177=> R_type & r6 & r2 & r1 & "00000" & fdiv_funct,	-- fdiv r6 r2 r1; r1 <- 1/(5E-5), r1*erro será o escalar na atualização do filtro
																		--	End if

	178=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3
	179=> addi & r3 & r3 & x"01C0",							-- addi r3 r3 x"01C0"; r3 aponta para o registrador da saída atual do filtro (x70*4)
	180=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	181=> addi & r4 & r4 & x"01D0",							-- addi r4 r4 x"01D0"; (x74*4), r4 aponta a posição do reg do controlador de interrupção	
	182=> lw & r3 & r9 & x"0004",								-- lw [r3+4] r9; lê a resposta desejada e armazena em r9 (PRECISA SER antes de filter_CLK descer)
	-- limpar o pending bit da IRQ 0 do filtro				-- limpar o pending bit da IRQ do filtro
	183=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6
	184=> addi & r6 & r6 & x"FFFE",							-- addi r6 r6 x"FFFE"; r6 <- FFFE
	185=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	186=> addi & r4 & r4 & x"01D0",							-- addi r4 r4 x"01D0"; (x74*4), r4 aponta a posição do reg do controlador de interrupção
	187=> sw & r4 & r6 & x"0000",								-- sw [r4+0] r6; escreve zero no bit 0 do reg de IRQ pendentes
																		
	188=> iack & "00" & x"000000",							-- iack (IRQ 0 do filtro)
	189=> halt & "00" & x"000000",							-- halt; waits for filter interruption 1 to be generated when filter_CLK falls (new output is ready)
	190=> lw & r4 & r11 & x"0000",-- lw [r4+0] r11, loads r11 with IRQ status
	191=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5
	192=> andi & r11 & r11 & x"0008",-- andi r11 r11 x"0008" (zera todos os bits, menos o bit 3 - IRQ 1 do filtro)
	193=> beq & r5 & r11 & x"FFFB",-- beq r5 r11 (-5), se r11 = 0, não foi IRQ 1 do filtro, voltar para halt

	194=> lw & r3 & r8 & x"0000",								--	lw [r3+0] r8; lê a resposta do filtro e armazena em r8
	
	--must send iack
	-- limpar o pending bit da IRQ do filtro				-- limpar o pending bit da IRQ do filtro
	195=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6
	196=> addi & r6 & r6 & x"FFF7",							-- addi r6 r6 x"FFF7"; r6 <- FFF7
	197=> sw & r4 & r6 & x"0000",								-- sw [r4+0] r6; escreve zero no bit 3 do reg de IRQ pendentes
																		
	198=> iack & "00" & x"000000",							-- iack (IRQ 1 do filtro)

	199=> R_type & r9 & r8 & r10 & "00000" & fsub_funct,-- fsub r9 r8 r10; Calcula e armazena o erro (d-y) em r10
	200=> R_type & r1 & r10 & r1 & "00000" & fmul_funct,-- fmul r1 r10 r1 ; r1 <- (2*step)*erro
	201=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	 -- xor r4 r4 r4; zera o r4
	202=> addi & r4 & r4 & x"0100",							 -- addi r4 r4 x"0100"; x40*4, r4 aponta posição 0 do vmac
	203=> sw & r4 & r1 & x"0040",								 -- sw [r4 + 64] r1; armazena step*erro no lambda
	
																		--	Carrega VMAC:A(5) com as componentes do filtro atual(0)
	204=> lvec & "00" & x"00" & x"0020",					-- lvec x"00" x"20";

	205=> vmac & "00" & x"000000",							-- vmac; enables accumulation in vector A of VMAC
	
																	   --	Lê o acumulador do VMAC(5) e atualiza os coeficientes do filtro(0)
	206=> lvec & "00" & x"00" & x"0501",					-- lvec x"05" x"01";	
	
																	   --	Lê memória de coeficientes do filtro(0) para o filtro(1)
																		-- enables filter to update its components (when filter_CLK rises)
	207=> lvec & "00" & x"00" & x"0002",					-- lvec x"00" x"02";
	
	-- TODO: se filtro já convergiu, sair do loop		-- TODO: se filtro já convergiu, sair do loop

	--I2S transmission (left fifo já foi selecionada antes do loop principal)
	--escreve 2x no DR (upsampling fator 2)
	--habilita a transmissão
	208=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	209=> addi & r3 & r3 & x"01E0", -- addi r3 r3 x"01E0"; x78*4 é a posição 0 do converted_output register
	210=> lw & r3 & r5 & x"0000",-- lw [r3+0] r5, loads r5 with filter response converted to 2's complement
	211=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	212=> addi & r3 & r3 & x"01A0", -- addi r3 r3 x"01A0"; x68*4 é a posição 0 do I2S (CR register)
	213=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S
	-- r31 deve estar zerado, faz upsampling de 22050 Hz para 44100 Hz
	214=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S (duplica para improvisar upsampling sem perder ganho)

	--usar r11 para armazenar a configuração do I2S
	215=> lw & r3 & r11 & x"0000",-- lw [r3+0] r11, armazena em r11 a configuração do I2S (CR)
	216=> R_type & r12 & r12 & r12 & "00000" & xor_funct,	-- xor r12 r12 r12; zera r12
	217=> addi & r12 & r12 & x"0001",--addi r12 r12 x"0001", r12 <- x0001 (máscara do bit 0)
	218=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	219=> addi & r4 & r4 & x"01D0",							-- addi r4 r4 x"01D0"; (x74*4), r4 aponta a posição do reg do controlador de interrupção
	220=> R_type & r11 & r12 & r11 & "00000" & or_funct,--xor r11 r12 r11, r11 <- r11 xor x"0001", ativa o bit I2S_EN (inicia transmissão)
	221=> sw & r3 & r11 & x"0000",-- sw [r3+0] r11, armazena r11 em I2S:CR ativa o bit I2S_EN
	222=> halt & "00" & x"000000",								-- halt; waits for I2S interruption (assumes sucess)
	223=> lw & r4 & r11 & x"0000",-- lw [r4+0] r11, loads r11 with IRQ status
	224=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5
	225=> andi & r11 & r11 & x"0004",-- andi r11 r11 x"0004" (zera todos os bits, menos o bit 2 - IRQ do I2S)
	226=> beq & r5 & r11 & x"FFFB",-- beq r5 r11 (-5), se r11 = 0, não foi IRQ do I2S, voltar para halt
	
	227=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	-- xor r11 r11 r11; zera r11
	228=> addi & r11 & r11 & x"FFFB",							-- addi r11 r11 x"FFFB"; r11 <- FFFB
	229=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no bit 2 do reg de IRQ pendentes (I2S)
	230=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	-- xor r11 r11 r11; zera r11
	231=> addi & r11 & r11 & x"FFFE",							-- addi r11 r11 x"FFFE"; r11 <- FFFE
	232=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no bit 0 do reg de IRQ pendentes do I2S
	233=> iack & "00" & x"000000",								-- iack (IRQ do I2S)

	234=> halt & "00" & x"000000",								-- halt; waits for filter interruption to be generated when filter_CLK rises (new sample)
	235=> lw & r4 & r11 & x"0000",-- lw [r4+0] r11, loads r11 with IRQ status
	236=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5
	237=> andi & r11 & r11 & x"0001",-- andi r11 r11 x"0001" (zera todos os bits, menos o bit 0 - IRQ do filtro)
	238=> beq & r5 & r11 & x"FFFB",-- beq r5 r11 (-5), se r11 = 0, não foi IRQ 0 do filtro, voltar para halt

	239=> jmp & "00" & x"0000A2",								-- jmp "New_sample"; jmp 162: volta pro início do loop de proc de amostra
																		--	End loop New_sample
	others => x"0000_0000"
	);
	
	begin
		--output behaviour:
		--necessary turn Auto ROM Replacement on
		process(CLK,ADDR)
		begin
			if(RST='1')then
				ADDR_reg <= (others=>'0');
			elsif(rising_edge(CLK))then
				ADDR_reg <= ADDR;
			end if;
		end process;
		Q <= rom(to_integer(unsigned(ADDR_reg)));
end memArch;