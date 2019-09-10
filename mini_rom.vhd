--------------------------------------------------
--instruction memory implementation
--by Renan Picoli de Souza
--supports only 32 bit instructions
--(all instructions are word-aligned)
--64 bytes de ROM (como um I-cache)
---------------------------------------------------

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
	--IIR filter: y(n)=[x(n)+y(n-1)]/2
	--initialize
	R_type & r0 & r0 & r0 & "00000" & xor_funct,--xor r0 r0 r0: zera r0
	lw & r0 & r4 & x"0000",--lw [r0+0] r4: r4 <- x"4000000" (2.0)
	addi & r0 & r0 & x"0004",--addi r0 r0 x"0004": r0 <- x"0004"
	R_type & r5 & r5 & r5 & "00000" & xor_funct,--xor r5 r5 r5: zera r5
	addi & r5 & r5 & x"0020",--addi r5 r5 x"0020": r5 <- 8*4
	
	--main
	lw & r0 & r1 & x"0000",--lw [r0+0] r1: x(n) é carregado
	lw & r0 & r2 & x"001C",--lw [r0+7*4] r2: y(n-1) é carregado
	R_type & r1 & r2 & r3 & "00000" & fadd_funct,--fadd r1 r2 r3
	R_type & r3 & r4 & r3 & "00000" & fdiv_funct,--fdiv r3 r4 r3: r3 <- r3/r4 (r3<=y(n))
	sw & r0 & r3 & x"0020",--sw [r0+8*4] r3 armazena resultado na memória
	lw & r0 & r3 & x"0020",--lw [r0+8*4] r3 confere valor do resultado
	addi & r0 & r0 & x"0004",--addi r0 r0 4: r0<-r0+4
	--branch para testar se leu todas as entradas
	beq & r0 & r5 & x"FFFF",--beq r0 r5 (-1): if r0==8*4, remain on this instruction
	jmp & "00" & x"000005",--jmp 5 (main), 26 bits de enedereço de palavra
	others => x"0000_0000"	
	
	
	--loads 2 floats from memory, add them, save result to memory, load it.
--	lw & r0 & r1 & x"0000",--lw [r0+0] r1
--	lw & r0 & r2 & x"0004",--lw [r0+4] r2
--	R_type & r1 & r2 & r3 & "00000" & fadd_funct,--fadd r1 r2 r3
--	sw & r0 & r3 & x"0008",--sw [r0+8] r3 armazena resultado na memória
--	lw & r0 & r3 & x"0008",--lw [r0+8] r3 confere valor do resultado
--	R_type & r1 & r2 & r3 & "00000" & fsub_funct,--fsub r1 r2 r3
--	sw & r0 & r3 & x"0008",--sw [r0+8] r3 armazena resultado na memória
--	lw & r0 & r3 & x"0008",--lw [r0+8] r3 confere valor do resultado
--	R_type & r1 & r2 & r3 & "00000" & fmul_funct,--fmul r1 r2 r3
--	sw & r0 & r3 & x"0008",--sw [r0+8] r3 armazena resultado na memória
--	lw & r0 & r3 & x"0008",--lw [r0+8] r3 confere valor do resultado
--	R_type & r1 & r2 & r3 & "00000" & fdiv_funct,--fdiv r1 r2 r3
--	sw & r0 & r3 & x"0008",--sw [r0+8] r3 armazena resultado na memória
--	lw & r0 & r3 & x"0008",--lw [r0+8] r3 confere valor do resultado
--	jmp & "00" & x"000000",--jmp 0
--	others => x"0000_0000"
	
	----loads 2 numbers from memory, multiply them as signed, save lo and hi to memory, load them.
--	lw & r0 & r1 & x"0000",--lw [r0+0] r1
--	lw & r0 & r2 & x"0004",--lw [r0+4] r2
--	imul & r1 & r2 & x"0000",--imul r1 r2
--	mflo & r3 & "00000" & x"0000",--mflo r3
--	sw & r0 & r3 & x"0008",--sw [r0+8] r3 armazena lo na memória
--	lw & r0 & r3 & x"0008",--lw [r0+8] r3 confere valor de lo
--	mfhi & r3 & "00000" & x"0000",--mfhi r3
--	sw & r0 & r3 & x"0010",--sw [r0+16] r3 armazena hi na memória
--	lw & r0 & r3 & x"0010",--lw [r0+16] r3 confere valor de hi
--	jmp & "00" & x"000000", --jmp 0
--	others => x"0000_0000"
	);
	
	begin
		--output behaviour:
		Q <= rom(to_integer(unsigned(ADDR)));
end memArch;