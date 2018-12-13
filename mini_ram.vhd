--------------------------------------------------
--data memory implementation
--by Renan Picoli de Souza
--supports only 32 bit instructions
--(all instructions are word-aligned)
---------------------------------------------------
--don't know what they are, I'm only including them
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;--to_integer

--use work.my_array.all;

entity mini_ram is
	port (--CLK: in std_logic;--borda de subida para escrita, se desativado, memória é lida
			ADDR: in std_logic_vector(3 downto 0);--addr é endereço de byte, mas os Lsb são 00
			rden: in std_logic;--habilita leitura
			Q:	out std_logic_vector(31 downto 0)
			);
end mini_ram;

architecture memArch of mini_ram is

	type memory is array (0 to 15) of std_logic_vector(31 downto 0);
	constant rom: memory := (
	x"0000_0001",
	x"0000_0002",
	x"0000_0000", 
	x"0000_000F",
	x"0000_000F",
	x"0000_000F",
	x"0000_000F",
	x"0000_000F",
	x"0000_000F",
	x"0000_000F",
	x"0000_000F",
	x"0000_000F",
	x"0000_000F",
	x"0000_000F",
	x"0000_000F",
	x"0000_000F"
	);
	
	begin
		--output behaviour:
		Q <= (others=>'Z') when rden='0' else
				rom(to_integer(unsigned(ADDR)));
end memArch;