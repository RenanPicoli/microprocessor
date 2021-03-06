library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity testbench is
end testbench;

architecture test of testbench is
-- "Time" that will elapse between test vectors we submit to the component.
constant TIME_DELTA : time := 10 ns;

signal  	clock_50MHz:std_logic;
signal	rst: std_logic;
--signal	memWrite:std_logic;
--signal	memRead: std_logic;
--signal	aluOp: std_logic_vector(1 downto 0);
--signal	ZF: std_logic;
--signal	branch: std_logic;
--signal  	jump:std_logic;
--signal  	instruction:std_logic_vector(31 downto 0);
signal  	instruction_addr:std_logic_vector(31 downto 0);
signal	data_memory_output:std_logic_vector(31 downto 0);

begin

	DUT: entity work.microprocessor
	port map(CLK => clock_50MHz,
			rst	 => rst,
			data_memory_output => data_memory_output,
			instruction_addr => instruction_addr --AKA read address
	);
	
	CLOCK: process
	begin
		clock_50MHz <= '0';
		wait for 10 ns;
		clock_50MHz <= '1';
		wait for 10 ns;
	end process CLOCK;
	
	rst <= '1', '0' after 15 ns;
	
end architecture test;