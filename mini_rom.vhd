--------------------------------------------------
--instruction memory implementation
--by Renan Picoli de Souza
--supports only 32 bit instructions
--(all instructions are word-aligned)
--16KB de RAM matricial (como um I-cache)
--(2x32)x(2x32) registradores de 4 bytes (32 bits)
---------------------------------------------------
--don't know what they are, I'm only including them
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;--to_integer

--use work.my_array.all;

entity mini_rom is
	port (--CLK: in std_logic;--borda de subida para escrita, se desativado, memória é lida
			ADDR: in std_logic_vector(3 downto 0);--addr é endereço de byte, mas os Lsb são 00
			Q:	out std_logic_vector(31 downto 0)
			);
end mini_rom;

architecture memArch of mini_rom is

	type memory is array (0 to 15) of std_logic_vector(31 downto 0);
	constant rom: memory := (
	x"8C20_0000",--lw [r1+0] r0
--	x"0042_1022",--sub r2,r2,r2 (zera r2)
	x"1002_0002",--beq r0 r2 2 salta para duas instructions após a de baixo 
	x"2021_0004",--addi r1 r1 4 (somo 4 para pular para a proxima palavra de 32bits)
	x"0800_0000",--jmp 0
	x"0800_0004",--jmp 4
	x"0800_0004",--jmp 4
	x"0800_0004",--jmp 4
	x"0800_0004",--jmp 4
	x"0800_0004",--jmp 4
	x"0800_0004",--jmp 4
	x"0800_0004",--jmp 4
	x"0800_0004",--jmp 4
	x"0800_0004",--jmp 4
	x"0800_0004",--jmp 4
	x"0800_0004",--jmp 4
	x"0800_0004" --jmp 4
	);
	
	begin
		--output behaviour:
		Q <= rom(to_integer(unsigned(ADDR)));
end memArch;