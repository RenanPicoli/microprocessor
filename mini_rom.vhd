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
	
	49=> call & "00" & x"000087",-- call CODEC_INIT -- call 135 (makes I2C transfers to configure codec registers)
	
	50=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	51=> addi & r3 & r3 & x"01C8", -- addi r3 r3 x"01C8"; x72*4 é a posição 0 do filter control and status
	52=> lw & r3 & r5 & x"0000",-- lw [r3+0] r5; armazena em r5 o valor do filter control and status
	53=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5
	54=> addi & r5 & r5 & x"0001", -- addi r5 r5 x"0001"; r5 <- x0001 habilitará filtro
	55=> sw & r3 & r5 & x"0000", -- sw [r3+0] r5; escreve em filter control and status, habilita o filtro

	56=> halt & "00" & x"000000",							-- halt; waits for filter interruption to be generated when filter_CLK rises (new sample)
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
	57=> lvec & "00" & x"00" & x"0258",						-- lvec x"02" x"58";

	58=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	59=> addi & r3 & r3 & x"0080",							-- addi r3 r3 x"0080"; x20*4 é a posição 0 do inner_product
	60=> lw & r3 & r1 & x"0040",								--	lw [r3+ 16*4] r1; stores squared norm in r1
	61=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	62=> addi & r3 & r3 & x"0040",							-- addi r3 r3 x"0040"; x10*4 é a posição 0 do cache

																		--	If -- testa se quem é maior: cte ou squared norm, pega a MAIOR
	63=> R_type & r1 & r2 & r5 & "00000" & fsub_funct,	-- fsub r1 r2 r5; usa r5 para armazenar a diferença squared norm - 5E-5
	64=> lw & r3 & r6 & x"0004",									-- lw [r3 + 4] r6; r6 <- x"7FFFFFFF", a constante estava no cache
	65=> R_type & r5 & r6 & r5 & "00000" & slt_funct,		-- slt r5 r6 r5; se r5 for negativo (sq norm < 5E-5), r5 <- x"00000000" se não, recebe x"00000001"
	66=> R_type & r6 & r6 & r6 & "00000" & xor_funct,		-- xor r6 r6 r6; zera r6
	67=> beq & r5 & r6 & x"0003",								-- beq r5 r6 x"0003"; se r5 = r6 =0, pula as 3 instrucoes abaixo, r1 deve receber 1/(2*sq norm)
	68=> lw & r3 & r6 & x"000C",									-- lw [r3+12] r6; r6 <- 1.0
	69=> R_type & r6 & r1 & r1 & "00000" & fdiv_funct,	-- fdiv r6 r1 r1; r1 <- 1/(sq norm), r1*erro será o escalar na atualização do filtro
	70=> jmp & "00" & x"000049",									-- jmp EndIF (jump 73: jump to outside if)
	71=> lw & r3 & r6 & x"000C",									-- lw[r3+12] r6; r6 <- 1.0
	72=> R_type & r6 & r2 & r1 & "00000" & fdiv_funct,	-- fdiv r6 r2 r1; r1 <- 1/(5E-5), r1*erro será o escalar na atualização do filtro
																		--	End if

	73=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3
	74=> addi & r3 & r3 & x"01C0",							-- addi r3 r3 x"01C0"; r3 aponta para o registrador da saída atual do filtro (x70*4)
	75=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	76=> addi & r4 & r4 & x"01D0",							-- addi r4 r4 x"01D0"; (x74*4), r4 aponta a posição do reg do controlador de interrupção	
	77=> lw & r3 & r9 & x"0004",								-- lw [r3+4] r9; lê a resposta desejada e armazena em r9 (PRECISA SER antes de filter_CLK descer)
	-- limpar o pending bit da IRQ 0 do filtro				-- limpar o pending bit da IRQ do filtro
	78=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6
	79=> addi & r6 & r6 & x"FFFE",							-- addi r6 r6 x"FFFE"; r6 <- FFFE
	80=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	81=> addi & r4 & r4 & x"01D0",							-- addi r4 r4 x"01D0"; (x74*4), r4 aponta a posição do reg do controlador de interrupção
	82=> sw & r4 & r6 & x"0000",								-- sw [r4+0] r6; escreve zero no bit 0 do reg de IRQ pendentes
																		
	83=> iack & "00" & x"000000",							-- iack (IRQ 0 do filtro)
	84=> halt & "00" & x"000000",							-- halt; waits for filter interruption 1 to be generated when filter_CLK falls (new output is ready)
	85=> lw & r4 & r11 & x"0000",-- lw [r4+0] r11, loads r11 with IRQ status
	86=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5
	87=> andi & r11 & r11 & x"0008",-- andi r11 r11 x"0008" (zera todos os bits, menos o bit 3 - IRQ 1 do filtro)
	88=> beq & r5 & r11 & x"FFFB",-- beq r5 r11 (-5), se r11 = 0, não foi IRQ 1 do filtro, voltar para halt

	89=> lw & r3 & r8 & x"0000",								--	lw [r3+0] r8; lê a resposta do filtro e armazena em r8
	
	--must send iack
	-- limpar o pending bit da IRQ do filtro				-- limpar o pending bit da IRQ do filtro
	90=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6
	91=> addi & r6 & r6 & x"FFF7",							-- addi r6 r6 x"FFF7"; r6 <- FFF7
	92=> sw & r4 & r6 & x"0000",								-- sw [r4+0] r6; escreve zero no bit 3 do reg de IRQ pendentes
																		
	93=> iack & "00" & x"000000",							-- iack (IRQ 1 do filtro)

	94=> R_type & r9 & r8 & r10 & "00000" & fsub_funct,-- fsub r9 r8 r10; Calcula e armazena o erro (d-y) em r10
	95=> R_type & r1 & r10 & r1 & "00000" & fmul_funct,-- fmul r1 r10 r1 ; r1 <- (2*step)*erro
	96=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	 -- xor r4 r4 r4; zera o r4
	97=> addi & r4 & r4 & x"0100",							 -- addi r4 r4 x"0100"; x40*4, r4 aponta posição 0 do vmac
	98=> sw & r4 & r1 & x"0040",								 -- sw [r4 + 64] r1; armazena step*erro no lambda
	
																		--	Carrega VMAC:A(5) com as componentes do filtro atual(0)
	99=> lvec & "00" & x"00" & x"0020",					-- lvec x"00" x"20";

	100=> vmac & "00" & x"000000",							-- vmac; enables accumulation in vector A of VMAC
	
																	   --	Lê o acumulador do VMAC(5) e atualiza os coeficientes do filtro(0)
	101=> lvec & "00" & x"00" & x"0501",					-- lvec x"05" x"01";	
	
																	   --	Lê memória de coeficientes do filtro(0) para o filtro(1)
																		-- enables filter to update its components (when filter_CLK rises)
	102=> lvec & "00" & x"00" & x"0002",					-- lvec x"00" x"02";
	
	-- TODO: se filtro já convergiu, sair do loop		-- TODO: se filtro já convergiu, sair do loop

	--I2S transmission (left fifo já foi selecionada antes do loop principal)
	--escreve 2x no DR (upsampling fator 2)
	--habilita a transmissão
	103=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	104=> addi & r3 & r3 & x"01E0", -- addi r3 r3 x"01E0"; x78*4 é a posição 0 do converted_output register
	105=> lw & r3 & r5 & x"0000",-- lw [r3+0] r5, loads r5 with filter response converted to 2's complement
	106=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	107=> addi & r3 & r3 & x"01A0", -- addi r3 r3 x"01A0"; x68*4 é a posição 0 do I2S (CR register)
	108=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S
	-- r31 deve estar zerado, faz upsampling de 22050 Hz para 44100 Hz
	109=> sw & r3 & r5 & x"0004",-- sw [r3+4] r5, escreve r5 no DR do I2S (duplica para improvisar upsampling sem perder ganho)

	--usar r11 para armazenar a configuração do I2S
	110=> lw & r3 & r11 & x"0000",-- lw [r3+0] r11, armazena em r11 a configuração do I2S (CR)
	111=> R_type & r12 & r12 & r12 & "00000" & xor_funct,	-- xor r12 r12 r12; zera r12
	112=> addi & r12 & r12 & x"0001",--addi r12 r12 x"0001", r12 <- x0001 (máscara do bit 0)
	113=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	114=> addi & r4 & r4 & x"01D0",							-- addi r4 r4 x"01D0"; (x74*4), r4 aponta a posição do reg do controlador de interrupção
	115=> R_type & r11 & r12 & r11 & "00000" & or_funct,--xor r11 r12 r11, r11 <- r11 xor x"0001", ativa o bit I2S_EN (inicia transmissão)
	116=> sw & r3 & r11 & x"0000",-- sw [r3+0] r11, armazena r11 em I2S:CR ativa o bit I2S_EN
	117=> halt & "00" & x"000000",								-- halt; waits for I2S interruption (assumes sucess)
	118=> lw & r4 & r11 & x"0000",-- lw [r4+0] r11, loads r11 with IRQ status
	119=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5
	120=> andi & r11 & r11 & x"0004",-- andi r11 r11 x"0004" (zera todos os bits, menos o bit 2 - IRQ do I2S)
	121=> beq & r5 & r11 & x"FFFB",-- beq r5 r11 (-5), se r11 = 0, não foi IRQ do I2S, voltar para halt
	
	122=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	-- xor r11 r11 r11; zera r11
	123=> addi & r11 & r11 & x"FFFB",							-- addi r11 r11 x"FFFB"; r11 <- FFFB
	124=> sw & r4 & r11 & x"0000",								-- sw [r4+0] r11; escreve zero no bit 2 do reg de IRQ pendentes (I2S)
	125=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	-- xor r11 r11 r11; zera r11
	126=> addi & r11 & r11 & x"FFFE",							-- addi r11 r11 x"FFFE"; r11 <- FFFE
	127=>	sw & r3 & r11 & x"0010",								--sw [r3+4*4+0] r11; escreve zero no bit 0 do reg de IRQ pendentes do I2S
	128=> iack & "00" & x"000000",								-- iack (IRQ do I2S)

	129=> halt & "00" & x"000000",								-- halt; waits for filter interruption to be generated when filter_CLK rises (new sample)
	130=> lw & r4 & r11 & x"0000",-- lw [r4+0] r11, loads r11 with IRQ status
	131=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5
	132=> andi & r11 & r11 & x"0001",-- andi r11 r11 x"0001" (zera todos os bits, menos o bit 0 - IRQ do filtro)
	133=> beq & r5 & r11 & x"FFFB",-- beq r5 r11 (-5), se r11 = 0, não foi IRQ 0 do filtro, voltar para halt

	134=> jmp & "00" & x"000039",								-- jmp "New_sample"; jmp 57: volta pro início do loop de proc de amostra
																--	End loop New_sample
	--function CODEC_INIT(void):
	--Audio codec configuration
	135=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	136=> addi & r3 & r3 & x"0180", -- addi r3 r3 x"0180"; x60*4 é a posição 0 do I2C (CR register)
	137=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
	138=> addi & r5 & r5 & "0000000100110100", -- addi r5 r5 "00000_0_01_0011010_0"; configura CR para 2 bytes, slave address 0b"0011010", escrita
	139=> sw & r3 & r5 & x"0000", -- sw [r3+0] r5; escreve em CR, transmissão não habilitada ainda
	-- para limpar o pending bit da IRQ do I2C no controlador global de interrupcoes
	140=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera r4
	141=> addi & r4 & r4 & x"01D0",							-- addi r4 r4 x"01D0"; (x74*4), r4 aponta a posição 0 do reg do controlador de interrupção
	142=> R_type & r2 & r2 & r2 & "00000" & xor_funct,	-- xor r2 r2 r2; zera r2, vai conter dados de configuracao do I2C
	143=> addi & r2 & r2 & "0000010100110100", -- addi r2 r2 "00000_1_01_0011010_0"; vai configurar CR sempre com os mesmos valores e ativar o I2C_EN (iniciar transmissão)

	--reset
	144=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	145=> addi & r5 & r5 & "0001111000000000", -- addi r5 r5 "0001111_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 0Fh (reset)
	146=> push & r4 & '0' & x"00000",--endereco-base do controlador de interrupcoes global
	147=> push & r5 & '0' & x"00000",--valor de DR
	148=> push & r2 & '0' & x"00000",--valor de CR
	149=> push & r3 & '0' & x"00000",--endereço do I2C
	150=> call & "00" & x"0000D7",--call & I2C_WRITE
	
	--power down
	151=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	152=> addi & r5 & r5 & "0000110001110111", -- addi r5 r5 "0000110_0_0111_0111"; configura DR para escrever 0_0111_0111 no reg 06h (power down control)
	153=> push & r4 & '0' & x"00000",--endereco-base do controlador de interrupcoes global
	154=> push & r5 & '0' & x"00000",--valor de DR
	155=> push & r2 & '0' & x"00000",--valor de CR
	156=> push & r3 & '0' & x"00000",--endereço do I2C
	157=> call & "00" & x"0000D7",--call & I2C_WRITE
	
	--analogue audio path
	158=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	159=> addi & r5 & r5 & "0000100000010010", -- addi r5 r5 "0000100_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 04h (analogue audio path)
	160=> push & r4 & '0' & x"00000",--endereco-base do controlador de interrupcoes global
	161=> push & r5 & '0' & x"00000",--valor de DR
	162=> push & r2 & '0' & x"00000",--valor de CR
	163=> push & r3 & '0' & x"00000",--endereço do I2C
	164=> call & "00" & x"0000D7",--call & I2C_WRITE

	--digital audio path
	165=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	166=> addi & r5 & r5 & "0000101000000000", -- addi r5 r5 "0000101_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 05h (digital audio path)
	167=> push & r4 & '0' & x"00000",--endereco-base do controlador de interrupcoes global
	168=> push & r5 & '0' & x"00000",--valor de DR
	169=> push & r2 & '0' & x"00000",--valor de CR
	170=> push & r3 & '0' & x"00000",--endereço do I2C
	171=> call & "00" & x"0000D7",--call & I2C_WRITE	

	--digital audio interface format
	172=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	173=> addi & r5 & r5 & "0000111000010010", -- addi r5 r5 "0000111_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 07h (digital audio interface format, I2S)
	174=> push & r4 & '0' & x"00000",--endereco-base do controlador de interrupcoes global
	175=> push & r5 & '0' & x"00000",--valor de DR
	176=> push & r2 & '0' & x"00000",--valor de CR
	177=> push & r3 & '0' & x"00000",--endereço do I2C
	178=> call & "00" & x"0000D7",--call & I2C_WRITE	

	--sampling control
	179=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	180=> addi & r5 & r5 & "0001000000100011", -- addi r5 r5 "0001000_0_0010_0011"; configura DR para escrever 0_0010_0011 no reg 08h (sampling control, USB mode)
	181=> push & r4 & '0' & x"00000",--endereco-base do controlador de interrupcoes global
	182=> push & r5 & '0' & x"00000",--valor de DR
	183=> push & r2 & '0' & x"00000",--valor de CR
	184=> push & r3 & '0' & x"00000",--endereço do I2C
	185=> call & "00" & x"0000D7",--call & I2C_WRITE	

	--left headphone out
	186=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	187=> addi & r5 & r5 & "0000010001010001", -- addi r5 r5 "0000010_0_0101_0001"; configura DR para escrever 0_0101_0001 no reg 02h (volume left, -40dB)
	188=> push & r4 & '0' & x"00000",--endereco-base do controlador de interrupcoes global
	189=> push & r5 & '0' & x"00000",--valor de DR
	190=> push & r2 & '0' & x"00000",--valor de CR
	191=> push & r3 & '0' & x"00000",--endereço do I2C
	192=> call & "00" & x"0000D7",--call & I2C_WRITE

	--right headphone out
	193=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	194=> addi & r5 & r5 & "0000011001010001", -- addi r5 r5 "0000011_0_0101_0001"; configura DR para escrever 0_0101_0001 no reg 03h (volume right, -40dB)
	195=> push & r4 & '0' & x"00000",--endereco-base do controlador de interrupcoes global
	196=> push & r5 & '0' & x"00000",--valor de DR
	197=> push & r2 & '0' & x"00000",--valor de CR
	198=> push & r3 & '0' & x"00000",--endereço do I2C
	199=> call & "00" & x"0000D7",--call & I2C_WRITE

	--active control
	200=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	201=> addi & r5 & r5 & "0001001000000001", -- addi r5 r5 "0001001_0_0000_0001"; configura DR para escrever 0_0000_0001 no reg 09h (active control, ativa o codec)
	202=> push & r4 & '0' & x"00000",--endereco-base do controlador de interrupcoes global
	203=> push & r5 & '0' & x"00000",--valor de DR
	204=> push & r2 & '0' & x"00000",--valor de CR
	205=> push & r3 & '0' & x"00000",--endereço do I2C
	206=> call & "00" & x"0000D7",--call & I2C_WRITE

	--power down control
	207=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	-- xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
	208=> addi & r5 & r5 & "0000110001100111", -- addi r5 r5 "0000110_0_0110_0111"; configura DR para escrever 0_0110_0111 no reg 06h (power down control, ativa a saída)
	209=> push & r4 & '0' & x"00000",--endereco-base do controlador de interrupcoes global
	210=> push & r5 & '0' & x"00000",--valor de DR
	211=> push & r2 & '0' & x"00000",--valor de CR
	212=> push & r3 & '0' & x"00000",--endereço do I2C
	213=> call & "00" & x"0000D7",--call & I2C_WRITE
	
	214=>ret & "00" & x"000000",								-- ret
	
	--function I2C_WRITE(I2C_pointer,control_reg,data_reg,IRQ_controller_address):
	--retrieving arguments from program stack
	215=> pop & r0 & '0' & x"00000",--r0 <- endereco-base do I2C
	216=> pop & r1 & '0' & x"00000",--r1 <- valor de CR
	217=> pop & r2 & '0' & x"00000",--r2 <- valor de DR
	218=> pop & r3 & '0' & x"00000",--r3 <- endereço-base do controlador de interrupcoes
	219=> sw & r0 & r2 & x"0004",-- sw [r0+1*4] r2; armazena em DR o valor a ser transmitido
	220=> sw & r0 & r1 & x"0000",-- sw [r0+0] r1; escreve em CR e ativa o I2C_EN (inicia transmissão)
	221=> R_type & r11 & r11 & r11 & "00000" & xor_funct,	--	xor r11 r11 r11; zera r11
	222=> halt & "00" & x"000000", -- halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)
	223=> sw & r3 & r11 & x"0000",								-- sw [r3+0] r11; escreve zero no reg de IRQ pendentes
	224=>	sw & r0 & r11 & x"0010",								--sw [r0+4*4+0] r11; escreve zero no reg de IRQ pendentes do I2C
	225=> iack & "00" & x"000000",								-- iack
	
	226=> ret & "00" & x"000000",								-- ret	
	
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