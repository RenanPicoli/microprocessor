--------------------------------------------------
--data memory implementation
--by Renan Picoli de Souza
--supports only 32 bit instructions
--(all instructions are word-aligned)
---------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;--to_integer

entity mini_ram is
	port (CLK: in std_logic;--borda de subida para escrita, memória pode ser lida a qq momento desde que rden=1
			ADDR: in std_logic_vector(1 downto 0);--addr é endereço de byte, mas os Lsb são 00
			write_data: in std_logic_vector(31 downto 0);
			rden: in std_logic;--habilita leitura
			wren: in std_logic;--habilita escrita
			Q:	out std_logic_vector(31 downto 0)
			);
end mini_ram;

architecture memArch of mini_ram is

	type memory is array (0 to 3) of std_logic_vector(31 downto 0);
	constant initial_values: memory := (
	x"0000_000F",
	x"0000_0005",
	x"0000_0003",
	others 	=> x"0000_0000"
	);
	
	--lembrar de desabilitar auto RAM replacement em compiler settings>advanced settings (synthesis)
	signal possible_outputs: memory := initial_values;
	
	begin
		--write behaviour:
		write_proc: process(CLK,wren)
		begin
		if (CLK'event and CLK='1') then
			if (wren='1') then
				possible_outputs(to_integer(unsigned(ADDR))) <= write_data;
			end if;
		end if;
		end process;
																		
		--output behaviour:
		Q <= (others=>'Z') when rden='0' else
				possible_outputs(to_integer(unsigned(ADDR)));
end memArch;