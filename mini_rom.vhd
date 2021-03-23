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
			ADDR: in std_logic_vector(6 downto 0);--addr é endereço de byte, mas os Lsb são 00
			Q:	out std_logic_vector(31 downto 0)
			);
end mini_rom;

architecture memArch of mini_rom is

	type memory is array (0 to 127) of std_logic_vector(31 downto 0);
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
	10=> halt & "00" & x"000000",								-- halt; waits for interruption to be generated when filter_CLK rises (new sample)
																		-- r5 será um registrador para carregamento temporário de dados
																		-- r6 será um índice para a iteração nos loops
																		-- r8 será para armazenar a leitura da saída do filtro
																		-- r9 será para armazenar a resposta desejada
																		-- r10 será o erro (d-y)

	--	main: Loop New_sample:									--	main: Loop New_sample:
																		--	%calculo do step
	11=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	12=> addi & r3 & r3 & x"0080",							-- addi r3 r3 x"0080"; x20*4 é a posição 0 do inner_product
	13=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera r4
	14=> addi & r4 & r4 & x"0020",							-- addi r4 r4 x"0020"; 8*4 é a posição 0 do filter_xN
	15=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera r6

																		--	Loop xN_inner: carregar o produto interno com os xN
	16=> lw & r4 & r5 & x"0000",									-- lw [r4+0] r5; carrega r5 com um elemento de xN
	17=> sw & r3 & r5 & x"0000",									-- sw [r3+0] r5; armazena esse elemento de xN no A do inner_product
	18=> sw & r3 & r5 & x"0020",									-- sw [r3+8*4] r5; armazena esse mesmo elemento no B do inner_product
	19=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
	20=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
	21=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
	22=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
	23=> jmp & "00" & x"000010",									-- jmp x"xN_inner", volta ao início desse loop
																		--	End loop xN_inner

	24=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	25=> addi & r3 & r3 & x"0080",							-- addi r3 r3 x"0080"; x20*4 é a posição 0 do inner_product
	26=> lw & r3 & r1 & x"0040",								--	lw [r3+ 16*4] r1; stores squared norm in r1
	27=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera r3
	28=> addi & r3 & r3 & x"0040",							-- addi r3 r3 x"0040"; x10*4 é a posição 0 do cache

																		--	If -- testa se quem é maior: cte ou squared norm, pega a MAIOR
	29=> R_type & r1 & r2 & r5 & "00000" & fsub_funct,		-- fsub r1 r2 r5; usa r5 para armazenar a diferença squared norm - 5E-5
	30=> R_type & r6 & r6 & r6 & "00000" & xor_funct,		-- xor r6 r6 r6; zera r6, será usado temporariamente
	31=> lw & r3 & r6 & x"0004",									-- lw [r3 + 4] r6; r6 <- x"7FFFFFFF", a constante estava no cache
	32=> R_type & r5 & r6 & r5 & "00000" & slt_funct,		-- slt r5 r6 r5; se r5 for negativo (sq norm < 5E-5), r5 <- x"00000000" se não, recebe x"00000001"
	33=> R_type & r6 & r6 & r6 & "00000" & xor_funct,		-- xor r6 r6 r6; zera r6
	34=> beq & r5 & r6 & x"0003",									-- beq r5 r6 x"0003"; se r5 = r6 =0, pula as 3 instrucoes abaixo, r1 deve receber 1/(2*sq norm)
	35=> lw & r3 & r6 & x"000C",									-- lw [r3+12] r6; r6 <- 1.0
	36=> R_type & r6 & r1 & r1 & "00000" & fdiv_funct,		-- fdiv r6 r1 r1; r1 <- 1/(sq norm), r1*erro será o escalar na atualização do filtro
	37=> jmp & "00" & x"000028",									-- jmp EndIF (jump 40: jump to outside if)
	38=> lw & r3 & r6 & x"000C",									-- lw[r3+12] r6; r6 <- 1.0
	39=> R_type & r6 & r2 & r1 & "00000" & fdiv_funct,		-- fdiv r6 r2 r1; r1 <- 1/(5E-5), r1*erro será o escalar na atualização do filtro
																		--	End if

	40=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3
	41=> addi & r3 & r3 & x"01A0",							-- addi r3 r3 x"01A0"; r3 aponta para o registrador da saída atual do filtro (x68*4)
	42=> lw & r3 & r8 & x"0000",								--	lw [r3+0] r8; lê a resposta do filtro e armazena em r8
	43=> lw & r3 & r9 & x"0004",								-- lw [r3+4] r9; lê a resposta desejada e armazena em r9

	44=> R_type & r9 & r8 & r10 & "00000" & fsub_funct,--	fsub r9 r8 r10; Calcula e armazena o erro (d-y) em r10
	45=> R_type & r1 & r10 & r1 & "00000" & fmul_funct,-- fmul r1 r10 r1 ; r1 <- (2*step)*erro
	46=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	47=> addi & r4 & r4 & x"0100",							-- addi r4 r4 x"0100"; x40*4, r4 aponta posição 0 do vmac
	48=> sw & r4 & r1 & x"0040",								-- sw [r4 + 64] r1; armazena step*erro no lambda

	49=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6,
	50=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3, aponta para a posição 0 de filter coeffs
	--	Loop A:														--	Loop A: carregar VMAC com as componentes do filtro atual
	51=> lw & r3 & r5 & x"0000",									-- lw [r3+0] r5; carrega r5 com um coeficiente do filtro
	52=> sw & r4 & r5 & x"0000",									-- sw [r4+0] r5; armazena esse coeficiente do filtro no vmac
	53=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
	54=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
	55=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
	56=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
	57=> jmp & "00" & x"000033",									-- jmp x"loop A", jump 51: volta ao início desse loop
																		--	End loop A

	58=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6,
	59=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3,
	60=> addi & r3 & r3 & x"0020",							-- addi r3 r3 x"0020" aponta para a posição 0 de xN
	61=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	62=> addi & r4 & r4 & x"0120",							-- addi r4 r4 x"0120"; (x40+x08)*4, r4 aponta posição x8 do vmac, vetor B
	--	Loop B:														--	Loop B: carregar VMAC com as componentes de [alfa beta] approx xN (Feintuch)
	63=> lw & r3 & r5 & x"0000",									-- lw [r3+0] r5; carrega r5 com um elemento de xN
	64=> sw & r4 & r5 & x"0000",									-- sw [r4+0] r5; armazena esse elemento de xN no vmac
	65=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
	66=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
	67=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
	68=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
	69=> jmp & "00" & x"00003F",									-- jmp x"loop B", jump 63: volta ao início desse loop
																		--	End loop B

	70=> vmac & "00" & x"000000",								-- vmac; enables accumulation in vector A of VMAC
	
	71=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6,
	72=> R_type & r3 & r3 & r3 & "00000" & xor_funct,	-- xor r3 r3 r3; zera o r3, aponta para a posição 0 de filter coeffs
	73=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	74=> addi & r4 & r4 & x"0100",							-- addi r4 r4 x"0100"; x40*4, r4 aponta posição 0 do vmac
	--	Loop A*:														--	Loop A*: ler o acumulador do VMAC e atualizar os coeficientes do filtro
	75=> lw & r4 & r5 & x"0000",									-- lw [r4+0] r5; carrega r5 com um resultado do vmac
	76=> sw & r3 & r5 & x"0000",									-- sw [r3+0] r5; armazena esse coeficiente no filter coeffs
	77=> addi & r3 & r3 & x"0004",								-- addi r3 r3 x"0004"; r3++; r3 is a pointer to word
	78=> addi & r4 & r4 & x"0004",								-- addi r4 r4 x"0004"; r4++; r4 is a pointer to word
	79=> addi & r6 & r6 & x"0001",								-- addi r6 r6 x"0001"; r6++
	80=> beq & r6 & r7 & x"0001",									-- beq r6 r7 x"0001"; se r6 chega a 8, pula a próxima instrução e segue adiante
	81=> jmp & "00" & x"00004B",									-- jmp x"loop A*", jump 75: volta ao início desse loop
																		--	End loop A*
	
	82=> filter_write & "00" & x"000000",					-- filter_write; enables filter to update its components (when filter_CLK rises)
	-- TODO: se filtro já convergiu, sair do loop		-- TODO: se filtro já convergiu, sair do loop
	-- limpar o pending bit da IRQ do filtro				-- limpar o pending bit da IRQ do filtro
	83=> R_type & r6 & r6 & r6 & "00000" & xor_funct,	-- xor r6 r6 r6; zera o r6
	84=> R_type & r4 & r4 & r4 & "00000" & xor_funct,	-- xor r4 r4 r4; zera o r4
	85=> addi & r4 & r4 & x"01AC",							-- addi r4 r4 x"01AC"; (x6B*4), r4 aponta a posição do reg do controlador de interrupção
	86=> sw & r4 & r6 & x"0000",								-- sw [r4+0] r6; escreve zero no reg de IRQ pendentes
																		
	87=> iack & "00" & x"000000",								-- iack
	88=> halt & "00" & x"000000",								-- halt; waits for interruption to be generated when filter_CLK rises (new sample)
	89=> jmp & "00" & x"00000B",								-- jmp "New_sample"; jmp 11: volta pro início do loop de proc de amostra
																		--	End loop New_sample
	others => x"0000_0000"
	);
	
	begin
		--output behaviour:
		Q <= rom(to_integer(unsigned(ADDR)));
end memArch;