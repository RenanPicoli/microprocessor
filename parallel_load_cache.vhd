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
			ADDR: in std_logic_vector(N-1 downto 0);--addr is a word (32 bits) address
			write_data: in std_logic_vector(31 downto 0);
			parallel_write_data: in array32 (0 to 2**N-1);
			fill_cache: in std_logic;
			rden: in std_logic;--habilita leitura
			wren: in std_logic;--habilita escrita
			parallel_rden: in std_logic;--enables parallel read (to shared data bus)
			Q:	out std_logic_vector(31 downto 0)
			);
end parallel_load_cache;

architecture memArch of parallel_load_cache is
	
	--lembrar de desabilitar auto RAM replacement em compiler settings>advanced settings (synthesis)
	signal possible_outputs: array32 (0 to 2**N-1) := (others => x"0000_0000");
	
	begin
		--write behaviour:
		write_proc: process(CLK,wren,fill_cache)
		begin
		if (rising_edge(CLK)) then
			if (wren='1' and fill_cache='0') then --normal write operation (single word)
				possible_outputs(to_integer(unsigned(ADDR))) <= write_data;
			elsif (fill_cache='1') then--processor doesn't know exactly when it is going to happen a parallel write
				possible_outputs <= parallel_write_data;
			end if;
		end if;
		end process;
																		
		--output behaviour:
		--parallel_read_data connects to a shared data bus
		parallel_read_data <= 	(others=>'Z') when parallel_rden='0' else
										possible_outputs;
		--Q connects to a top level mux, no need for output enable
		Q <= possible_outputs(to_integer(unsigned(ADDR)));
end memArch;