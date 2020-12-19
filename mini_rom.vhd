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
			ADDR: in std_logic_vector(4 downto 0);--addr é endereço de byte, mas os Lsb são 00
			Q:	out std_logic_vector(31 downto 0)
			);
end mini_rom;

architecture memArch of mini_rom is

	type memory is array (0 to 31) of std_logic_vector(31 downto 0);
	constant rom: memory := (--asm approx. follows Intel syntax: destination before source
	--Feintuch’s Algorithm
--	xor r0 r0 r0; zera r0
--	addi r0 r0 x"000B"; stores N=P+Q+1=11 in r0
--	xor r1 r1 r1; zera r1, vai armazenar step
--	xor r2 r2 r2; zera r2, vai armazenar a cte 5E-5
-- xor r3 r3 r3; zera r3, vai ser ponteiro nos loops de preenchimento da memória
--	addi r3 r3 x"0080"; 32*4 é a posição 0 do cache
--	lw [r3 + 0] r2; r2<- x"3851B717", armazena a cte 5E-5, na posição 0 do cache
-- xor r4 r4 r4; zera r4, r4 será um segundo ponteiro nos loops em memória
-- xor r7 r7 r7; zera r7, r7 será a constante 16
-- addi r7 r7 x"0010"; r7 <- 16
-- r5 será um registrador para carregamento temporário de dados
-- r6 será um índice para a iteração nos loops


--	Loop New_sample:
--	%calculo do step
-- xor r3 r3 r3; zera r3
-- addi r3 r3 x"0100"; 64*4 é a posição 0 do inner_product
-- addi r4 r4 x"0040"; 16*4 é a posição 0 do filter_xN
-- xor r6 r6 r6; zera r6

--	Loop xN_inner: carregar o produto interno com os xN
	-- lw [r4+0] r5; carrega r5 com um elemento de xN
	-- sw [r3+0] r5; armazena esse elemento de xN no inner_product
	-- addi r6 r6 x"0001"; r6++
	-- beq r6 r7 x"0001"; se r6 chega a 16, pula a próxima instrução e segue adiante
	-- jmp x"xN_inner", volta ao início desse loop
--	End loop xN_inner
--
--	; Stores squared norm in r1
--
--	If -- testa se quem é maior: cte ou squared norm, pega a MAIOR
--	End if
--
--	Lê a resposta do filtro e armazena em registrador
--
--	Armazena a resposta desejada
--
--	Calcula e armazena o erro
--
--
--
--	End loop New_sample

	--IIR filter: y(n)=[x(n)-y(n-1)]/2
	--initialize
	0=> R_type & r5 & r5 & r5 & "00000" & xor_funct,	--xor r5 r5 r5: zera r5
	1=> addi & r5 & r5 & x"0080",								--addi r5 r5 x"0080": r5 <- 32*4 : endereço do primeiro y(n)
	2=> R_type & r0 & r0 & r0 & "00000" & xor_funct,	--xor r0 r0 r0: zera r0
	3=> lw & r0 & r4 & x"0000",								--lw [r0+0] r4: r4 <- x"4000000" (2.0)
	4=> addi & r0 & r0 & x"0004",								--addi r0 r0 4: r0<-r0+4: r0 aponta para a proxima posicao
	5=> R_type & r2 & r2 & r2 & "00000" & xor_funct,	--xor r2 r2 r2: r2 <- x"00000000" (initialize  y(n-1))
	6=> jmp & "00" & x"000008",								--jmp 8 (skips zeroing r0 below), 26 bits de endereço de palavra

	7=> R_type & r0 & r0 & r0 & "00000" & xor_funct,	--xor r0 r0 r0: zera r0
	8=> cache_req & "00" & x"000000",						--cache_req: sends a request to fill the D-cache, since we know it is empty
	9=> halt & "00" & x"000000",								--halt: stops processor clock until that request is cleared
	
	--main
	10=> lw & r0 & r1 & x"0000",								--lw [r0+0] r1: x(n) é carregado
	11=> R_type & r1 & r2 & r3 & "00000" & fsub_funct,	--fsub r1 r2 r3: r3<- r1-r2
	12=> R_type & r3 & r4 & r3 & "00000" & fdiv_funct,	--fdiv r3 r4 r3: r3 <- r3/r4 (r3<=y(n))
	13=> sw & r0 & r3 & x"0000",								--sw [r0+0] r3: armazena y(n) na memória, sobrescrevendo x(n)
	14=> lw & r0 & r3 & x"0000",								--lw [r0+0] r3 confere valor do resultado
	15=> lw & r0 & r2 & x"0000",								--lw [r0+0] r2: y(n) é carregado em r2 para ser usado no proximo ciclo
	16=> addi & r0 & r0 & x"0004",							--addi r0 r0 4: r0<-r0+4: r0 aponta para a proxima posicao
	--branch para testar se leu todas as entradas
	17=> beq & r0 & r5 & x"FFF5",								--beq r0 r5 (-11): if r0==32*4, resets r0 request fill cache and halts processor
	18=> jmp & "00" & x"00000A",								--jmp 10 (main), 26 bits de endereço de palavra
	others => x"0000_0000"
	);
	
	begin
		--output behaviour:
		Q <= rom(to_integer(unsigned(ADDR)));
end memArch;