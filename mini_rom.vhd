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

entity mini_rom is
	port (--CLK: in std_logic;--borda de subida para escrita, se desativado, memória é lida
			ADDR: in std_logic_vector(3 downto 0);--addr é endereço de byte, mas os Lsb são 00
			Q:	out std_logic_vector(31 downto 0)
			);
end mini_rom;

architecture memArch of mini_rom is

	type memory is array (0 to 15) of std_logic_vector(31 downto 0);
	constant rom: memory := (
	x"0021_0827",--xor r1 r1 r1 zera r1
	x"8C20_0000",--lw [r1+0] r0
	x"4000_000A",--xori r0 r0 0x000A inverte alguns bits da nibble menos significativa 
	x"AC20_0000",--sw [r1+0] r0 armazena r0 na memória
	x"0800_0001",--jmp 1
	others => x"0800_0005" --jmp 5
	);
	
	begin
		--output behaviour:
		Q <= rom(to_integer(unsigned(ADDR)));
end memArch;