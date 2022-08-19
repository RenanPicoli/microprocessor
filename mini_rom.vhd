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
			--RST: in std_logic;--asynchronous reset
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
	
	--configure global interrupt controller
	32=> addi & r4 & r4 & x"0200",								-- addi r4 r4 x"0200"; (x80*4), r4 aponta a posição do reg do controlador de interrupção
	33=> addi & r5 & r5 & x"014C",								-- addi r5 r5 x"014C";
	34=> sw & r4 & r5 & x"0080",									-- sw [r4+32*4] r5; escreve r5 no endereco da ISR IRQ0_Handler (filter_CLK rising_edge)
	35=> addi & r11 & r11 & x"0000",								-- addi r11 r11 x"0000";
	36=> sw & r4 & r11 & x"0100",									-- sw [r4+64*4] r11; coloca ISR IRQ0_Handler (filter_CLK rising_edge) na prioridade 0

	37=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		--	xor r5 r5 r5; zera r5
	38=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	--	xor r11 r11 r11; zera r11
	39=> addi & r5 & r5 & x"035C",								-- addi r5 r5 x"035C";
	40=> sw & r4 & r5 & x"0084",									-- sw [r4+33*4] r5; escreve r5 no endereco da ISR IRQ1_Handler (I2C)
	41=> addi & r11 & r11 & x"0001",								-- addi r11 r11 x"0001";
	42=> sw & r4 & r11 & x"010C",									-- sw [r4+67*4] r11; coloca ISR IRQ1_Handler (I2C) na prioridade 3

	43=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		--	xor r5 r5 r5; zera r5
	44=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	--	xor r11 r11 r11; zera r11
	45=> addi & r5 & r5 & x"0214",								-- addi r5 r5 x"0214";
	46=> sw & r4 & r5 & x"0088",									-- sw [r4+34*4] r5; escreve r5 no endereco da ISR IRQ2_Handler (I2S)
	47=> addi & r11 & r11 & x"0002",								-- addi r11 r11 x"0002";
	48=> sw & r4 & r11 & x"0104",									-- sw [r4+65*4] r11; coloca ISR IRQ2_Handler (I2S) na prioridade 1

	49=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		--	xor r5 r5 r5; zera r5
	50=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	--	xor r11 r11 r11; zera r11
	51=> addi & r5 & r5 & x"019C",								-- addi r5 r5 x"019C";
	52=> sw & r4 & r5 & x"008C",									-- sw [r4+35*4] r5; escreve r5 no endereco da ISR IRQ3_Handler (filter_CLK falling_edge)
	53=> addi & r11 & r11 & x"0003",								-- addi r11 r11 x"0003";
	54=> sw & r4 & r11 & x"0108",									-- sw [r4+66*4] r11; coloca ISR IRQ3_Handler (filter_CLK falling_edge) na prioridade 2

	55=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		--	xor r5 r5 r5; zera r5
	56=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	--	xor r11 r11 r11; zera r11
	
	--Feintuch’s Algorithm
	--initialize
	57=> addi & r0 & r0 & x"0008",								--	addi r0 r0 x"000B"; stores N=P+Q+1=8 in r0
	58=> addi & r3 & r3 & x"0040",								--	addi r3 r3 x"0040"; 16*4 é a posição 0 do cache
	59=> lw & r3 & r2 & x"0000",									--	lw [r3 + 0] r2; r2<- x"461C4000", armazena a cte 1E4, na posição 0 do cache
	60=> addi & r7 & r7 & x"0008",								-- addi r7 r7 x"0008"; r7 <- 8 (NÚMERO DE COEFICIENTES DO FILTRO)
	
	61=> R_type & r3 & r3 & r3 & "00000" & xor_funct,		-- xor r3 r3 r3; zera r3
	62=> addi & r3 & r3 & x"01C8", 								-- addi r3 r3 x"01C8"; x72*4 é a posição 0 do filter control and status
	63=> lw & r3 & r5 & x"0000",									-- lw [r3+0] r5; armazena em r5 o valor do filter control and status
	64=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5
	65=> sw & r3 & r5 & x"0000",									-- sw [r3+0] r5; escreve em filter control and status, desabilita o filtro

	--I2S configuration
	66=> R_type & r3 & r3 & r3 & "00000" & xor_funct,		-- xor r3 r3 r3; zera r3
	67=> addi & r3 & r3 & x"01A0",								-- addi r3 r3 x"01A0"; x68*4 é a posição 0 do I2S (CR register)
	68=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	69=> addi & r5 & r5 & "0000000000110100",					-- addi r5 r5 "0000_0000_0_011_010_0"; configura CR: seleciona left fifo, DS 16 bits, 2 frames, aguardando início
	70=> sw & r3 & r5 & x"0000",									-- sw [r3+0] r5; escreve em CR, transmissão não habilitada ainda
	71=> lw & r3 & r5 & x"0008",									-- lw [r3+8] r5; r5 recebe o valor de I2S:SR
	72=> andi & r5 & r5 & x"0080",								-- andi r5 r5 x"0080" (zera todos os bits, menos o bit 7 - pll locked)
	73=> beq & r5 & r11 & x"FFFD",								-- beq r5 r11 (-3), se r5 = 0, pll não deu lock, repetir leitura (instrucao 46)
	
	74=> call & "00" & x"00008B",									-- call CODEC_INIT -- call 139 (makes I2C transfers to configure codec registers)
	
	75=> R_type & r3 & r3 & r3 & "00000" & xor_funct,		-- xor r3 r3 r3; zera r3
	76=> addi & r3 & r3 & x"01C8",								-- addi r3 r3 x"01C8"; x72*4 é a posição 0 do filter control and status
	77=> lw & r3 & r5 & x"0000",									-- lw [r3+0] r5; armazena em r5 o valor do filter control and status
	78=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5
	79=> addi & r5 & r5 & x"0001",								-- addi r5 r5 x"0001"; r5 <- x0001 habilitará filtro
	80=> sw & r3 & r5 & x"0000",									-- sw [r3+0] r5; escreve em filter control and status, habilita o filtro

	81=> halt & "00" & x"000000",									-- halt; waits for filter interruption to be generated when filter_CLK rises (new sample)
	82=> jmp & "00" & x"000051",									-- jmp 81: volta pro halt (loop infinito)
	
																			-- r5 será um registrador para carregamento temporário de dados
																			-- r6 será um índice para a iteração nos loops
																			-- r8 será para armazenar a leitura da saída do filtro
																			-- r9 será para armazenar a resposta desejada
																			-- r10 será o erro (d-y)
																			-- r11 será mais um registrador de carregamento temporário de dados
																			-- r12 será uma máscara para a seleção do bit 7 (x"0008")

	-- IRQ0_Handler(void): Processes new sample
																			--	%calculo do step
																			--	carrega o produto interno (A e B - 3 e 4) e vmac:B (6) com os xN(2)
	83=> lvec & "00" & x"00" & x"0258",							-- lvec x"02" x"58";

	84=> R_type & r3 & r3 & r3 & "00000" & xor_funct,		-- xor r3 r3 r3; zera r3
	85=> addi & r3 & r3 & x"0080",								-- addi r3 r3 x"0080"; x20*4 é a posição 0 do inner_product
	86=> lw & r3 & r1 & x"0040",									--	lw [r3 + 16*4] r1; stores squared norm in r1
	87=> R_type & r3 & r3 & r3 & "00000" & xor_funct,		-- xor r3 r3 r3; zera r3
	88=> addi & r3 & r3 & x"0040",								-- addi r3 r3 x"0040"; x10*4 é a posição 0 do cache

	89=> lw & r3 & r6 & x"0008",									-- lw [r3+8] r6; r6 <- 0.5
	90=> R_type & r6 & r1 & r1 & "00000" & fdiv_funct,		-- r1 <- r6/r1 (0.5/squared norm)
	91=> push & r2 & "0" & x"00000",								-- push r2; 1E4
	92=> push & r1 & "0" & x"00000",								-- push r1; (0.5/squared norm)
	93=> call & "00" & x"0000DC",									-- call MIN; call 220
	94=> pop & r1 & "0" & x"00000",								-- pop r1; r1 <- step=MIN(0.5/squared norm,1E4), this value is removed from program stack
	-- If you want a interrupt handler to produce permanent data modification, write it to ram
	-- changes kept in register file will be lost after interrup return (iret)
	95=> lw & r3 & r6 & x"000C",									--	lw [r3 + 12] r6; r6<- x"40000000", armazena a cte 2.0, na posição 3 do cache
	96=> R_type & r1 & r6 & r1 & "00000" & fmul_funct,		-- fmul r1 r6 r1 ; r1 <- (2*step)
	97=> sw & r3 & r1 & x"0010",									-- sw [r3 + 16] r1; saves r1 (2*step) to position 4 of cache

	98=> R_type & r4 & r4 & r4 & "00000" & xor_funct,		-- xor r4 r4 r4; zera o r4
	99=> addi & r4 & r4 & x"01C4",								-- addi r4 r4 x"01C4"; r4 aponta para o registrador da resposta desejada (x71*4)
	100=> lw & r4 & r9 & x"0000",									-- lw [r4+0] r9; lê a resposta desejada e armazena em r9 (PRECISA SER antes de filter_CLK descer)
	101=> sw & r3 & r9 & x"0014",									-- sw [r3 + 20] r9; saves r9 (desired response) to position 5 of cache
	102=> iret & "00" & x"000000",								-- iret (IRQ 0 do filtro)
	
	-- IRQ3_Handler(void): Processes filter output
	103=> R_type & r3 & r3 & r3 & "00000" & xor_funct,		-- xor r3 r3 r3; zera o r3
	104=> addi & r3 & r3 & x"01C0",								-- addi r3 r3 x"01C0"; r3 aponta para o registrador da saída atual do filtro (x70*4)
	105=> lw & r3 & r8 & x"0000",									--	lw [r3+0] r8; lê a resposta do filtro e armazena em r8

	106=> R_type & r4 & r4 & r4 & "00000" & xor_funct,		-- xor r4 r4 r4; zera o r4
	107=> addi & r4 & r4 & x"0040",								-- addi r4 r4 x"0040"; x10*4 é a posição 0 do cache	
	108=> lw & r4 & r9 & x"0014",									-- lw [r4 + 20] r9; loads r9 with position 5 of cache (desired response)
	109=> R_type & r9 & r8 & r10 & "00000" & fsub_funct,	-- fsub r9 r8 r10; Calcula e armazena o erro (d-y) em r10
	
	110=> lw & r4 & r1 & x"0010",									-- lw [r4 + 16] r1; loads r1 with position 4 of cache (2*step) 
	111=> R_type & r1 & r10 & r1 & "00000" & fmul_funct,	-- fmul r1 r10 r1 ; r1 <- (2*step)*erro
	112=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	 	-- xor r4 r4 r4; zera o r4
	113=> addi & r4 & r4 & x"0100",							 	-- addi r4 r4 x"0100"; x40*4, r4 aponta posição 0 do vmac
	114=> sw & r4 & r1 & x"0040",								 	-- sw [r4 + 64] r1; armazena step*erro no lambda
	
																			--	Carrega VMAC:A(5) com as componentes do filtro atual(0)
	115=> lvec & "00" & x"00" & x"0020",						-- lvec x"00" x"20";

	116=> vmac & "00" & x"000000",								-- vmac; enables accumulation in vector A of VMAC
	
																			--	Lê o acumulador do VMAC(5) e atualiza os coeficientes do filtro(0)
	117=> lvec & "00" & x"00" & x"0501",						-- lvec x"05" x"01";	
	
																			--	Lê memória de coeficientes do filtro(0) para o filtro(1)
																			-- enables filter to update its components (when filter_CLK rises)
	118=> lvec & "00" & x"00" & x"0002",						-- lvec x"00" x"02";
	
	-- TODO: se filtro já convergiu, sair do loop			-- TODO: se filtro já convergiu, sair do loop

	--I2S transmission (left fifo já foi selecionada antes do loop principal)
	--escreve 2x no DR (upsampling fator 2)
	--habilita a transmissão
	119=> R_type & r3 & r3 & r3 & "00000" & xor_funct,		-- xor r3 r3 r3; zera r3
	120=> addi & r3 & r3 & x"01CC",								-- addi r3 r3 x"01CC"; x73*4 é a posição do converted_output register
	121=> lw & r3 & r5 & x"0000",									-- lw [r3+0] r5, loads r5 with filter response converted to 2's complement
	122=> R_type & r3 & r3 & r3 & "00000" & xor_funct,		-- xor r3 r3 r3; zera r3
	123=> addi & r3 & r3 & x"01A0",								-- addi r3 r3 x"01A0"; x68*4 é a posição 0 do I2S (CR register)
	124=> sw & r3 & r5 & x"0004",									-- sw [r3+4] r5, escreve r5 no DR do I2S
	-- r31 deve estar zerado, faz upsampling de 22050 Hz para 44100 Hz
	125=> sw & r3 & r5 & x"0004",									-- sw [r3+4] r5, escreve r5 no DR do I2S (duplica para improvisar upsampling sem perder ganho)

	--usar r11 para armazenar a configuração do I2S
	126=> lw & r3 & r11 & x"0000",								-- lw [r3+0] r11, armazena em r11 a configuração atual do I2S (CR)
	127=> R_type & r12 & r12 & r12 & "00000" & xor_funct,	-- xor r12 r12 r12; zera r12
	128=> addi & r12 & r12 & x"0001",							--addi r12 r12 x"0001", r12 <- x0001 (máscara do bit 0)
	129=> R_type & r11 & r12 & r11 & "00000" & or_funct,	--xor r11 r12 r11, r11 <- r11 xor x"0001", ativa o bit I2S_EN (inicia transmissão)
	130=> sw & r3 & r11 & x"0000",								-- sw [r3+0] r11, armazena r11 em I2S:CR ativa o bit I2S_EN
	131=> halt & "00" & x"000000",								-- halt; waits for I2S interruption (assumes sucess)
	132=> iret & "00" & x"000000",								-- iret (IRQ 1 do filtro, IRQ3 global)
																
	-- IRQ2_Handler(void): Processes I2S IRQ (assumes sucess)
	133=> R_type & r3 & r3 & r3 & "00000" & xor_funct,		-- xor r3 r3 r3; zera r3
	134=> addi & r3 & r3 & x"01A0",								-- addi r3 r3 x"01A0"; x68*4 é a posição 0 do I2S (CR register)	
	135=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	-- xor r11 r11 r11; zera r11
	136=> addi & r11 & r11 & x"FFFE",							-- addi r11 r11 x"FFFE"; r11 <- FFFE
	137=>	sw & r3 & r11 & x"0010",								-- sw [r3+4*4+0] r11; escreve zero no bit 0 do reg de IRQ pendentes do I2S
	138=> iret & "00" & x"000000",								-- iret (IRQ do I2S)
	
	--function CODEC_INIT(void):
	--Audio codec configuration
	139=> R_type & r3 & r3 & r3 & "00000" & xor_funct,		-- xor r3 r3 r3; zera r3
	140=> addi & r3 & r3 & x"0180",								-- addi r3 r3 x"0180"; x60*4 é a posição 0 do I2C (CR register)
	141=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	142=> addi & r5 & r5 & "0000000100110100",				-- addi r5 r5 "00000_0_01_0011010_0"; configura CR para 2 bytes, slave address 0b"0011010", escrita
	143=> sw & r3 & r5 & x"0000",									-- sw [r3+0] r5; escreve em CR, transmissão não habilitada ainda
	144=> R_type & r2 & r2 & r2 & "00000" & xor_funct,		-- xor r2 r2 r2; zera r2, vai conter dados de configuracao do I2C
	145=> addi & r2 & r2 & "0000010100110100",				-- addi r2 r2 "00000_1_01_0011010_0"; vai configurar CR sempre com os mesmos valores e ativar o I2C_EN (iniciar transmissão)

	--reset
	146=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	147=> addi & r5 & r5 & "0001111000000000",				-- addi r5 r5 "0001111_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 0Fh (reset)
	148=> push & r5 & "0" & x"00000",							--valor de DR
	149=> push & r2 & "0" & x"00000",							--valor de CR
	150=> push & r3 & "0" & x"00000",							--endereço do I2C
	151=> call & "00" & x"0000CF",								--call & I2C_WRITE
	
	--power down
	152=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	153=> addi & r5 & r5 & "0000110001110111",				-- addi r5 r5 "0000110_0_0111_0111"; configura DR para escrever 0_0111_0111 no reg 06h (power down control)
	154=> push & r5 & "0" & x"00000",							--valor de DR
	155=> push & r2 & "0" & x"00000",							--valor de CR
	156=> push & r3 & "0" & x"00000",							--endereço do I2C
	157=> call & "00" & x"0000CF",								--call & I2C_WRITE
	
	--analogue audio path
	158=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	159=> addi & r5 & r5 & "0000100000010010",				-- addi r5 r5 "0000100_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 04h (analogue audio path)
	160=> push & r5 & "0" & x"00000",							--valor de DR
	161=> push & r2 & "0" & x"00000",							--valor de CR
	162=> push & r3 & "0" & x"00000",							--endereço do I2C
	163=> call & "00" & x"0000CF",								--call & I2C_WRITE

	--digital audio path
	164=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	165=> addi & r5 & r5 & "0000101000000000", 				-- addi r5 r5 "0000101_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 05h (digital audio path)
	166=> push & r5 & "0" & x"00000",							--valor de DR
	167=> push & r2 & "0" & x"00000",							--valor de CR
	168=> push & r3 & "0" & x"00000",							--endereço do I2C
	169=> call & "00" & x"0000CF",								--call & I2C_WRITE	

	--digital audio interface format
	170=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	171=> addi & r5 & r5 & "0000111000010010", 				-- addi r5 r5 "0000111_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 07h (digital audio interface format, I2S)
	172=> push & r5 & "0" & x"00000",							--valor de DR
	173=> push & r2 & "0" & x"00000",							--valor de CR
	174=> push & r3 & "0" & x"00000",							--endereço do I2C
	175=> call & "00" & x"0000CF",								--Call & I2C_WRITE	

	--sampling control
	176=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	177=> addi & r5 & r5 & "0001000000100011", 				-- addi r5 r5 "0001000_0_0010_0011"; configura DR para escrever 0_0010_0011 no reg 08h (sampling control, USB mode)
	178=> push & r5 & "0" & x"00000",							--valor de DR
	179=> push & r2 & "0" & x"00000",							--valor de CR
	180=> push & r3 & "0" & x"00000",							--endereço do I2C
	181=> call & "00" & x"0000CF",								--call & I2C_WRITE	

	--left headphone out
	182=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	183=> addi & r5 & r5 & "0000010001010001", 				-- addi r5 r5 "0000010_0_0101_0001"; configura DR para escrever 0_0101_0001 no reg 02h (volume left, -40dB)
	184=> push & r5 & "0" & x"00000",							--valor de DR
	185=> push & r2 & "0" & x"00000",							--valor de CR
	186=> push & r3 & "0" & x"00000",							--endereço do I2C
	187=> call & "00" & x"0000CF",								--call & I2C_WRITE

	--right headphone out
	188=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	189=> addi & r5 & r5 & "0000011001010001", 				-- addi r5 r5 "0000011_0_0101_0001"; configura DR para escrever 0_0101_0001 no reg 03h (volume right, -40dB)
	190=> push & r5 & "0" & x"00000",							--valor de DR
	191=> push & r2 & "0" & x"00000",							--valor de CR
	192=> push & r3 & "0" & x"00000",							--endereço do I2C
	193=> call & "00" & x"0000CF",								--call & I2C_WRITE

	--active control
	194=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	195=> addi & r5 & r5 & "0001001000000001", 				-- addi r5 r5 "0001001_0_0000_0001"; configura DR para escrever 0_0000_0001 no reg 09h (active control, ativa o codec)
	196=> push & r5 & "0" & x"00000",							--valor de DR
	197=> push & r2 & "0" & x"00000",							--valor de CR
	198=> push & r3 & "0" & x"00000",							--endereço do I2C
	199=> call & "00" & x"0000CF",								--call & I2C_WRITE

	--power down control
	200=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	201=> addi & r5 & r5 & "0000110001100111", 				-- addi r5 r5 "0000110_0_0110_0111"; configura DR para escrever 0_0110_0111 no reg 06h (power down control, ativa a saída)
	202=> push & r5 & "0" & x"00000",							--valor de DR
	203=> push & r2 & "0" & x"00000",							--valor de CR
	204=> push & r3 & "0" & x"00000",							--endereço do I2C
	205=> call & "00" & x"0000CF",								--call & I2C_WRITE
	
	206=> ret & "00" & x"000000",									-- ret
	
	--function I2C_WRITE(I2C_pointer,control_reg,data_reg):
	--retrieving arguments from program stack (popping would increment SP)
	207=> ldfp & r4 & "0" & x"00000",							-- ldfp r4 ; r4 <- FP (frame pointer,first parameter, last passed by caller)
	208=> lw & r4 & r0 & x"0000",									-- lw [r4+0] r0; r0 <- endereco-base do I2C
	209=> lw & r4 & r1 & x"0004",									-- lw [r4+1*4] r1; r1 <- valor de CR
	210=> lw & r4 & r2 & x"0008",									-- lw [r4+2*4] r2; r2 <- valor de DR
	211=> sw & r0 & r2 & x"0004",									-- sw [r0+1*4] r2; armazena em DR o valor a ser transmitido
	212=> sw & r0 & r1 & x"0000",									-- sw [r0+0] r1; escreve em CR e ativa o I2C_EN (inicia transmissão)
	213=> halt & "00" & x"000000",								-- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)	
	214=> ret & "00" & x"000000",									-- ret
	
	-- IRQ1_Handler: processes I2C IRQ
	215=> R_type & r3 & r3 & r3 & "00000" & xor_funct,		-- xor r3 r3 r3; zera r3
	216=> addi & r3 & r3 & x"0180",								-- addi r3 r3 x"0180"; x60*4 é a posição 0 do I2C (CR register)
	217=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	--	xor r11 r11 r11; zera r11
	218=>	sw & r0 & r11 & x"0010",								-- sw [r0+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
	219=> iret & "00" & x"000000",								-- iret
	
	--function MIN(x,y):-- retorna o menor entre dois floats: x e y
	220=> ldfp & r2 & "0" & x"00000",							--ldfp r2 ; r2 <- FP (frame pointer, points to first parameter, last passed by caller)
	221=> lw & r2 & r0 & x"0000",									-- lw [r2+0] r0; r0 <- x (float)
	222=> lw & r2 & r1 & x"0004",									-- lw [r2+1*4] r1; r1 <- y (float)
	223=> R_type & r0 & r1 & r3 & "00000" & fsub_funct,	-- fsub r0 r1 r3; r3 <- (x-y)
	--creates mask for bit 31:
	224=> R_type & r4 & r4 & r4 & "00000" & xor_funct,		--	xor r4 r4 r4; zera r4,
	225=> addi & r4 & r4 & x"8000",								-- r4 <- x8000
	226=> mult & r4 & r4 & x"0000",								--[hi lo] <- x0000_0000_4000_0000
	227=> mflo & r4 & "0" & x"00000",							-- r4 <- x4000_0000
	228=> R_type & r5 & r5 & r5 & "00000" & xor_funct,		--	xor r5 r5 r5; zera r5,
	229=> addi & r5 & r5 & x"0002",								-- r5 <- 2	
	230=> mult & r4 & r5 & x"0000",								-- r4 <- [hi lo] <- x0000_0000_8000_0000
	231=> mflo & r4 & "0" & x"00000",							-- r4 <- x8000_0000
	--if bit 31 of r3 is zero, return  x, else return y
	232=> R_type & r3 & r4 & r3 & "00000" & and_funct,		--	and r3 r4 r3; r3 <- r3 and r4, zero todos os bits, menos 31
	233=> beq & r3 & r4 & x"0002",								-- beq r3 r4 (+2), se r3 = x80000000, (x-y)<0
	--case x-y>=0
	234=> push & r1 & "0" & x"00000",							--push r1; return y
	235=> ret & "00" & x"000000",									-- ret
	--case x-y<0
	236=> push & r0 & "0" & x"00000",							--push r0; return 0
	237=> ret & "00" & x"000000",									-- ret
	others => x"0000_0000"
	);
	
	begin
		--output behaviour:
		--necessary turn Auto ROM Replacement on
--		process(CLK,ADDR)
--		begin
--			if(RST='1')then
--				ADDR_reg <= (others=>'0');
--			elsif(rising_edge(CLK))then
--				ADDR_reg <= ADDR;
--			end if;
--		end process;
--		Q <= rom(to_integer(unsigned(ADDR_reg)));
		Q <= rom(to_integer(unsigned(ADDR)));
end memArch;