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
component mm_stack
generic(L: natural);--log2 of number of stored words
port (CLK: in std_logic;--active edge: rising_edge, there MUST be a falling_edge even when recovering from a cache miss
		rst: in std_logic;-- active high asynchronous reset (should be deasserted at rising_edge of CLK)
		ready: buffer std_logic;-- for both interfaces
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
		RDEN: in std_logic;--read enable for memory-mapped interface
		ADDR: in std_logic_vector(L-1 downto 0);-- address to be written by memory-mapped interface
		Q:		out std_logic_vector(31 downto 0)-- data output for memory-mapped interface
);
end component;

--NO EDAPLAYGROUND, precisei substituir L pelo valor numérico para compilar
signal sck_lower_limit: std_logic_vector(31 downto 0):=(31 downto L+2=>'1',L+1 downto 0=>'0');

signal pop: std_logic;
signal push: std_logic;
signal sp: std_logic_vector(L-1 downto 0);

--MEMORY-MAPPED INTERFACE
signal mem_write_data: std_logic_vector(31 downto 0);-- data to be written by memory-mapped interface
signal wren_stack: std_logic;--write enable for memory-mapped interface
signal rden_stack: std_logic;
signal addr_stack: std_logic_vector(L-1 downto 0);-- address to be written by memory-mapped interface
signal Q_stack: std_logic_vector(31 downto 0);-- data output for memory-mapped interface

signal gpr: std_logic_vector(4 downto 0);
signal gpr_valid: std_logic;
signal gpr_stack_in: std_logic_vector(31 downto 0);
signal gpr_stack_out: std_logic_vector(31 downto 0);
signal ADDR_ram_oor: std_logic;--ADDR_ram is out of stack boundaries

	begin
	
	pop <= ret or iret;
	push <= call or irq;	
	gpr_stack_in <= (others=>'0');
	
	wren_stack <= ldfp;
	addr_stack <= sp;
	rden_stack <= '0';
	mem_write_data <= (31=>'1',30 downto 5=>'0') & rs;
	
	--mapped on last 2^L word addresses (0xffffffff-2^L+1)-0xffffffff (bit 9='1'=> stack,bit 9='0'=>external ram)
	gpr_stack: mm_stack
		generic map (L => L)
		--USING PROCESSOR CLK because if a miss occurs, there will be no falling_edge(CLK)
		--during the cycle of valid instruction (i_cache_ready='1')
		port map(CLK => CLK,--active edge: rising_edge, there MUST be a falling_edge even when recovering from a cache miss
				rst => rst,-- active high asynchronous reset (should be deasserted at rising_edge)
				ready => ready_stack,
				--STACK INTERFACE
				pop => pop,
				push => push,
				addsp => '0',
				--ignores 2 LSb of immediate in instruction, because sp is word address, processor deals with byte addresses
				imm => (others=>'0'),
				stack_in => gpr_stack_in,-- word to be pushed
				sp => sp,-- points to last stacked item (address of a 32-bit word)
				stack_out => gpr_stack_out,--data retrieved from stack
				--MEMORY-MAPPED INTERFACE
				D => mem_write_data,-- data to be written by memory-mapped interface
				WREN => wren_stack,--write enable for memory-mapped interface
				RDEN => rden_stack,
				ADDR => addr_stack(L-1 downto 0),-- address to be written by memory-mapped interface
				Q    => Q_stack-- data output for memory-mapped interface
		);
	gpr_valid <= gpr_stack_out(31);
	gpr <= gpr_stack_out(4 downto 0);
	
	ADDR_ram_oor <= '1' when (full_ADDR_ram < sck_lower_limit) else '0';
	oor <= '1' when (lw='1' or sw='1') and gpr_valid='1' and rs=gpr and ADDR_ram_oor='1'
			else '0';

	--TODO:	signal error conditions: address out of bounds, sp incremented/decremented beyond limits
	--			popping empty stack, pushing to full stack
end bhv;