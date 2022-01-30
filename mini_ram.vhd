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

entity mini_ram is
	generic (N: integer);--size in bits of address 
	port (CLK: in std_logic;--borda de subida para escrita, memória pode ser lida a qq momento desde que rden=1
			ADDR: in std_logic_vector(N-1 downto 0);--addr é endereço de byte, mas os Lsb são 00
			write_data: in std_logic_vector(31 downto 0);
			rden: in std_logic;--habilita leitura
			wren: in std_logic;--habilita escrita
			Q:	out std_logic_vector(31 downto 0)
			);
end mini_ram;

architecture memArch of mini_ram is

--	type memory is array (0 to 2**N-1) of std_logic_vector(31 downto 0);
	constant initial_values: array32 (0 to 2**N-1) := (
	0=> x"3851B717",--5E-5: a filter constant
	1=> x"7FFFFFFF",-- constant for comparison
	2=> x"3F000000",-- 0.5
	3=> x"3F800000",-- 1.0
	others 	=> x"0000_0000"
	);
	
	--lembrar de desabilitar auto RAM replacement em compiler settings>advanced settings (synthesis)
	signal ram: array32 (0 to 2**N-1) := initial_values;
	signal possible_output: std_logic_vector(31 downto 0);
	
	begin
		--write behaviour:
		write_proc: process(CLK,wren)
		begin
		if (rising_edge(CLK)) then
			if (wren='1') then --normal write operation
				ram(to_integer(unsigned(ADDR))) <= write_data;
			end if;
			
			--synchronous reading logic
--			possible_output <= ram(to_integer(unsigned(ADDR)));-- old data read-during-write
		end if;
		end process;
		
		--Asynchronous reading logic
		possible_output <= ram(to_integer(unsigned(ADDR)));
																		
		--output behaviour:
		Q <= (others=>'Z') when rden='0' else
				possible_output;
end memArch;