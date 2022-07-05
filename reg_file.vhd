--------------------------------------------------
--register file implementation
--one stack for each register
--by Renan Picoli de Souza
---------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;--to_integer

use work.my_types.all;

--package array_reg is
--	type array32_reg is array (integer range <>) of d_flip_flop;
--end package array_reg;
---------------------------------------------------

entity reg_file is
	generic (L: natural);--log2 of number of stack levels (one stack for each register)
	port (CLK: in std_logic;
			RST: in std_logic;
			pop: in std_logic;--pops from ALL registers stacks
			push: in std_logic;--pushes to ALL registers stacks
			read_reg_1: in std_logic_vector (4 downto 0);--reg1 addr
			read_reg_2: in std_logic_vector (4 downto 0);--reg2 addr
			write_reg : in std_logic_vector (4 downto 0);--reg to be written like in R_type or pop
			write_data: in std_logic_vector (31 downto 0);--data to be written like in R_type or pop
			regWrite: in std_logic;--enables SINGLE register write like in R_type or pop (during clock rising edge)
			read_data_1:out std_logic_vector (31 downto 0);
			read_data_2:out std_logic_vector (31 downto 0)
			);
end entity;

architecture func_reg_file of reg_file is

	component d_flip_flop
		port (D:	in std_logic_vector(31 downto 0);
				RST: in std_logic;
				ENA:	in std_logic:='1';--enables writes
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
	
	component stack is
	generic(L: natural);--log2 of number of stored words
	port (CLK: in std_logic;--active edge: rising_edge
			rst: in std_logic;-- active high asynchronous reset (should be deasserted at rising_edge of CLK)
			--STACK INTERFACE
			pop: in std_logic;
			push: in std_logic;
			addsp: in std_logic;--sp <- sp + imm
			imm: in std_logic_vector(L-1 downto 0);--imm > 0: deletes vars, imm < 0: reserves space for vars
			stack_in: in std_logic_vector(31 downto 0);-- word to be pushed
			sp: buffer std_logic_vector(L-1 downto 0);-- points to last stacked item (address of a 32-bit word)
			stack_out: out std_logic_vector(31 downto 0);--data retrieved from stack
			--MEMORY-MAPPED INTERFACE
			D: in std_logic_vector(31 downto 0);-- data to be written by memory-mapped interface
			WREN: in std_logic;--write enable for memory-mapped interface
			ADDR: in std_logic_vector(L-1 downto 0);-- address to be written by memory-mapped interface
			Q:		out std_logic_vector(31 downto 0)-- data output for memory-mapped interface
	);
	end component;

	signal registers_Q: array32 (0 to 31) := (others=>(others=>'0'));
	signal registers_in: array32 (0 to 31) := (others=>(others=>'0'));
	signal stack_out: array32 (0 to 31) := (others=>(others=>'0'));
	signal registers_write_en	: std_logic_vector(31 downto 0);--specific for software writes
	signal registers_ena			: std_logic_vector(31 downto 0);
	signal registers_clk			: std_logic_vector(31 downto 0);
	
	--WARNING: asserting true will disconnect reset port to allow RAM inferring
	constant ram_style: boolean := false;

	begin
	common_reg_file: if not ram_style generate
	
		registers: for i in 0 to 31 generate-- i is the row index, the register number
			regx: d_flip_flop port map(Q => registers_Q(i),
												RST => RST,
												ENA => registers_ena(i),
												CLK => CLK,--registers_clk(i),
												D => registers_in(i)
												);
			registers_in(i) <= stack_out(i) when pop='1' else write_data;
			registers_ena(i) <= '1' when pop='1' else registers_write_en(i);
			
			stack_x: stack
						generic map (L => L)
						port map(CLK => CLK,--active edge: rising_edge
									rst => rst,-- active high asynchronous reset (should be deasserted at rising_edge)
									--STACK INTERFACE
									pop => pop,
									push => push,
									addsp => '0',
									imm => (others => '0'),--imm > 0: deletes vars, imm < 0: reserves space for vars
									stack_in => registers_Q(i),-- word to be pushed
									sp => open,-- points to last stacked item (address of a 32-bit word)
									stack_out => stack_out(i),--data retrieved from stack
									--MEMORY-MAPPED INTERFACE
									D => (others => '0'),-- data to be written by memory-mapped interface
									WREN => '0',--write enable for memory-mapped interface
									ADDR => (others => '0'),-- address to be written by memory-mapped interface
									Q    => open-- data output for memory-mapped interface
							);
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
	end generate common_reg_file;
	
	--trying to infer a ram block
	ram_style_reg_file: if ram_style generate
		--write behavior
		process(CLK,write_data,write_reg,regWrite,RST)
		begin
			if (rising_edge(CLK)) then
				if (regWrite='1' and RST='0') then
					registers_Q(to_integer(unsigned(write_reg))) <= write_data;
				end if;
			end if;
		end process;
		
		--synchronous reading logic for reg1
		process(CLK,read_reg_1,RST)
		begin
			if (falling_edge(CLK) and RST='0') then
				read_data_1 <= registers_Q(to_integer(unsigned(read_reg_1)));--old data read-during-write
			end if;
		end process;
		
		--synchronous reading logic for reg2
		process(CLK,read_reg_2,RST)
		begin
			if (falling_edge(CLK) and RST='0') then
				read_data_2 <= registers_Q(to_integer(unsigned(read_reg_2)));--old data read-during-write
			end if;
		end process;
		
	end generate ram_style_reg_file;
end func_reg_file;