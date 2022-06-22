-------------------------------------------------------------
--full descending stack
--32-bit data
--contents is memory-mapped
--sp is the position of the last stasked item (32-bit word)
--when pop signal is asserted, sp is incremented by 1 and
--		data at position sp is copied to output
--when push signal is asserted, sp is decremented by 1 and
--		data is stored at new sp
--when addsp is asserted, sp is added with immediate imm (encoded as two's complement)
--by Renan Picoli de Souza
-------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;--to_integer

entity stack is
generic(L: natural);--log2 of number of stored words
port (CLK: in std_logic;--active edge: rising_edge
		rst: in std_logic;-- active high asynchronous reset (should be deasserted at rising_edge)
		--STACK INTERFACE
		pop: in std_logic;
		push: in std_logic;
		addsp: in std_logic;--sp <- sp + imm
		imm: in std_logic_vector(25 downto 0);--imm > 0: deletes vars, imm < 0: reserves space for vars
		stack_in: in std_logic_vector(31 downto 0);-- word to be pushed
		sp: buffer std_logic_vector(31 downto 0);-- points to last stacked item (address of a 32-bit word)
		stack_out: out std_logic_vector(31 downto 0);--data retrieved from stack
		--MEMORY-MAPPED INTERFACE
		D: in std_logic_vector(31 downto 0);-- data to be written by memory-mapped interface
		WREN: in std_logic;--write enable for memory-mapped interface
		ADDR: in std_logic_vector(31 downto 0);-- address to be written by memory-mapped interface
		Q:		out std_logic_vector(31 downto 0)-- data output for memory-mapped interface
);
end entity;

architecture bhv of stack is
type memory is array (0 to 2**L-1) of std_logic_vector(31 downto 0);
signal ram: memory;
	begin
	
	sp_update: process(CLK,rst,pop,push,addsp,imm)
	begin
		if(rst='1')then
			sp <= (others=>'0');
		elsif(rising_edge(CLK))then
			--only one of these inputs can be asserted in one cycle
			if(pop='1')then
				sp <= sp + 1;
			elsif(push='1')then
				sp <= sp - 1;
			elsif(addsp='1')then
				sp <= sp + (31 downto 26 => imm(25)) & imm;-- immediate is sign-extended
			end if;
		end if;
	end process;
	
	mem_update: process(CLK,rst,D,ADDR,WREN,stack_in,sp,push)
	begin
		if(rst='1')then
			ram <= (others=>'0');
		elsif(rising_edge(CLK))then
			--only one of these inputs/interfaces can be asserted in one cycle
			if(push='1')then
				ram(to_integer(unsigned(sp))) <= stack_in;
			--if addsp='1' or pop='1', memory contents is not updated
			elsif(WREN='1')then
				ram(to_integer(unsigned(ADDR))) <= D;
			end if;
		end if;
	end process;
	
	stack_out <= ram(to_integer(unsigned(sp)));
	Q <=  ram(to_integer(unsigned(ADDR)));
	
	--TODO:	signal error conditions: address out of bounds, sp incremented/decremented beyond limits
	--			popping empty stack, pushing to full stack
end bhv;