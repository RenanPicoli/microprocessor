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

entity mini_rom is
	port (--CLK: in std_logic;--borda de subida para escrita, se desativado, memória é lida
			ADDR: in std_logic_vector(3 downto 0);--addr é endereço de byte, mas os Lsb são 00
			Q:	out std_logic_vector(31 downto 0)
			);
end mini_rom;

architecture memArch of mini_rom is

	type memory is array (0 to 15) of std_logic_vector(31 downto 0);
	constant rom: memory := (--asm approx. follows Intel syntax: destination before source
	x"8C01_0004",--lw [r0+4] r1
	x"4000_0000",--xori r0 r0 0x0000 (nop)
	x"8C02_0008",--lw [r0+8] r2
	x"0041_1820",--add r3 r2 r1
	x"AC03_000C",--sw [r0+12] r3 armazena soma na memória
	x"8C03_000C",--lw [r0+12] r3 confere a soma
	x"0800_0000",--jmp 0
	others => x"0800_0007" --jmp 7
	);
	
	begin
		--output behaviour:
		Q <= rom(to_integer(unsigned(ADDR)));
end memArch;