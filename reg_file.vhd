--------------------------------------------------
--register file implementation
--by Renan Picoli de Souza
---------------------------------------------------
--don't know what they are, I'm only including them
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

use work.my_types.all;

--package array_reg is
--	type array32_reg is array (integer range <>) of d_flip_flop;
--end package array_reg;
---------------------------------------------------

entity reg_file is
	port (CLK: in std_logic;
			read_reg_1: in std_logic_vector (4 downto 0);--reg1 addr
			read_reg_2: in std_logic_vector (4 downto 0);--reg2 addr
			write_reg : in std_logic_vector (4 downto 0);--reg to be written
			write_data: in std_logic_vector (31 downto 0);--data to be written
			regWrite: in std_logic;--enables register write (during clock rising edge)
			read_data_1:out std_logic_vector (31 downto 0);
			read_data_2:out std_logic_vector (31 downto 0)
			);
end entity;

architecture func_reg_file of reg_file is

	component d_flip_flop
		port (D:	in std_logic_vector(31 downto 0);
				CLK:in std_logic;
				Q:	out std_logic_vector(31 downto 0)  
				);
	end component;
	
	component mux32x32--escolhe qual registrador é lido
		port(	A: in array32 (0 to 31);
				sel: in std_logic_vector(4 downto 0);--5 bits to select one in 32 registers
				Q: out std_logic_vector (31 downto 0)
				);
	end component;
	
	component demux1x32 is
		port(	Q: out std_logic_vector (31 downto 0) := (others => '0');--sinais que habilitam escrita para cada registrador
				sel: in std_logic_vector(4 downto 0);--5 bits to select 32 channels
				A: in std_logic--sinal regWrite
				);
	end component;

	signal registers_Q: array32 (0 to 31);
	signal registers_write_en	: std_logic_vector(31 downto 0);
	signal registers_clk			: std_logic_vector(31 downto 0); 

	begin

	registers: for i in 0 to 31 generate-- i is the row index, the register number
		regx: d_flip_flop port map(Q => registers_Q(i),
											CLK => registers_clk(i),--CLK and registers_write_en(i),
											D => write_data
											);
		clocks: registers_clk(i) <= CLK and registers_write_en(i);
	end generate registers;

		--escolhe qual registrador é lido
		mux1: mux32x32 port map (  sel => read_reg_1,
											A => registers_Q,
											Q => read_data_1
											);
											
		--escolhe qual registrador é lido											
		mux2: mux32x32 port map (  sel => read_reg_2,
											A => registers_Q,
											Q => read_data_2
											);
											
		--escolhe qual registrador será escrito								
		demux_write: demux1x32 port map (	Q => registers_write_en,
														sel => write_reg,
														A => regWrite); 
		
end func_reg_file;