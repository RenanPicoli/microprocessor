-- Code your design here
--by Renan Picoli de Souza
-------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;--to_integer

entity stack_protector is
  generic(L: natural);--log2 of number of stored words
  port(
		CLK:in std_logic;--processor clock
		rst: in std_logic;
		rs: in std_logic_vector(4 downto 0);
		full_ADDR_ram: in std_logic_vector(31 downto 0);--BYTE ADDRESS
		lw: in std_logic;
		sw: in std_logic;
		ldfp: in std_logic;
		call: in std_logic;
		ret: in std_logic;
		irq: in std_logic;
		iret: in std_logic;
		ready_stack: out std_logic;--'0' will freeze cpu
		oor: out std_logic--'1' address is out of range
);
end entity;

architecture bhv of stack_protector is

--NO EDAPLAYGROUND, precisei substituir L pelo valor numérico para compilar
signal sck_lower_limit: std_logic_vector(31 downto 0):=(31 downto L+2=>'1',L+1 downto 0=>'0');

signal pop: std_logic;
signal push: std_logic;
signal sp: std_logic_vector(L-1 downto 0);
signal read_pop_ready: std_logic;--this is used only for stack reading/popping

--MEMORY-MAPPED INTERFACE
signal mem_write_data: std_logic_vector(5 downto 0);-- data to be written by memory-mapped interface
signal wren_stack: std_logic;--write enable for memory-mapped interface
signal rden_stack: std_logic;
signal addr_stack: std_logic_vector(L-1 downto 0);-- address to be written by memory-mapped interface
signal Q_stack: std_logic_vector(5 downto 0);-- data output for memory-mapped interface

type memory is array (0 to 2**L-1) of std_logic_vector(5 downto 0);
signal ram: memory;
--since the upper hierarchy guarantees there will be no read-during-write
attribute ramstyle : string;
attribute ramstyle of ram : signal is "no_rw_check";

signal gpr: std_logic_vector(4 downto 0);
signal gpr_valid: std_logic;
signal gpr_stack_in: std_logic_vector(5 downto 0);
signal gpr_stack_out: std_logic_vector(5 downto 0);

signal ADDR_difference: std_logic_vector(31 downto 0);
signal ADDR_ram_oor: std_logic;--ADDR_ram is out of stack boundaries

	begin
	
	pop <= ret or iret;
	push <= call or irq;	
	gpr_stack_in <= (others=>'0');

	sp_update: process(CLK,rst,pop,push,ready_stack)
	begin
		if(rst='1')then
			sp <= (others=>'0');--sp=xffffffff means stack with one element, x00000000-1=xffffffff
		elsif(rising_edge(CLK))then--there must be a falling_edge even when recovering from a cache miss
			--only one of these inputs can be asserted in one cycle
			if(pop='1' and ready_stack='1')then
				sp <= sp + 1;
			elsif(push='1' and ready_stack='1')then
				sp <= sp - 1;
			end if;
		end if;
	end process;
    
		-----------------read_pop_ready----------------------
		process(CLK,RST,pop,rden_stack)
		begin
			if(RST='1')then
				read_pop_ready <= '0';
			elsif(rising_edge(CLK))then
				if(read_pop_ready='0' and (rden_stack='1' or pop='1'))then
					read_pop_ready <= '1';
				else
					read_pop_ready <= '0';
				end if;
			end if;
		end process;
		
		ready_stack <= '1' when (wren_stack='1' or push='1') else read_pop_ready;
	
	wren_stack <= ldfp;
	addr_stack <= sp;
	rden_stack <= '0';
	mem_write_data <= '1' & rs;
	
	--mapped on last 2^L word addresses (0xffffffff-2^L+1)-0xffffffff (bit 9='1'=> stack,bit 9='0'=>external ram)
	--USING PROCESSOR CLK because if a miss occurs, there will be no falling_edge(CLK)
	--during the cycle of valid instruction (i_cache_ready='1')
	process(rst,CLK,mem_write_data,wren_stack,addr_stack)
	begin
--		if(rst='1')then
--			ram <= (others=>(others=>'0'));
		if(rising_edge(CLK)) then
			if(wren_stack = '1') then
				ram(to_integer(unsigned(addr_stack(L-1 downto 0)))) <= mem_write_data;
				Q_stack <= mem_write_data;
			end if;
			Q_stack <= ram(to_integer(unsigned(addr_stack(L-1 downto 0))));
		end if;
	end process;
        
	gpr_valid <= Q_stack(5);
	gpr <= Q_stack(4 downto 0);
	
	ADDR_difference <= full_ADDR_ram - sck_lower_limit;
	ADDR_ram_oor <= ADDR_difference(31);
	oor <= '1' when ((lw='1' or sw='1') and gpr_valid='1' and rs=gpr and ADDR_ram_oor='1')
			else '0';

	--TODO:	signal error conditions: address out of bounds, sp incremented/decremented beyond limits
	--			popping empty stack, pushing to full stack
end bhv;