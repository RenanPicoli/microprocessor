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

use work.my_types.all;

entity parallel_load_cache is
	generic (N: integer);--size in bits of address 
	port (CLK: in std_logic;--borda de subida para escrita, memória pode ser lida a qq momento desde que rden=1
			ADDR: in std_logic_vector(N-1 downto 0);--addr é endereço de byte, mas os Lsb são 00
			write_data: in std_logic_vector(31 downto 0);
			parallel_write_data: in array32 (0 to 2**N-1);
			fill_cache: in std_logic;
			rden: in std_logic;--habilita leitura
			wren: in std_logic;--habilita escrita
			Q:	out std_logic_vector(31 downto 0)
			);
end parallel_load_cache;

architecture memArch of parallel_load_cache is

--	type memory is array (0 to 2**N-1) of std_logic_vector(31 downto 0);
	constant initial_values: array32 (0 to 2**N-1) := (
	0=> x"40000000",--2.0 a filter constant
	1=> x"3F800000",--1.0
	2=> x"3F800000",--1.0
	3=> x"3F800000",--1.0
	4=> x"3F800000",--1.0
	5=> x"3F800000",--1.0
	6=> x"3F800000",--1.0
	7=> x"3F800000",--1.0
	8=> x"3F800000",--1.0
	others 	=> x"0000_0000"
	);
	
	--lembrar de desabilitar auto RAM replacement em compiler settings>advanced settings (synthesis)
	signal possible_outputs: array32 (0 to 2**N-1) := initial_values;
	
	begin
		--write behaviour:
		write_proc: process(CLK,wren,fill_cache)
		begin
		if (CLK'event and CLK='1') then
			if (wren='1' and fill_cache='0') then --normal write operation
				possible_outputs(to_integer(unsigned(ADDR))) <= write_data;
			elsif (wren='1' and fill_cache='1') then--parallel write
				possible_outputs <= parallel_write_data;
			end if;
		end if;
		end process;
																		
		--output behaviour:
		Q <= (others=>'Z') when rden='0' else
				possible_outputs(to_integer(unsigned(ADDR)));
end memArch;