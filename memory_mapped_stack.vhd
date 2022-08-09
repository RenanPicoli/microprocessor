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

entity mm_stack is
generic(L: natural);--log2 of number of stored words
port (CLK: in std_logic;--active edge: rising_edge, there MUST be a falling_edge even when recovering from a cache miss
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
end entity;

architecture bhv of mm_stack is

component tdp_ram
	generic (N: natural; L: natural);--N: data width in bits; L: address width in bits
	port (CLK: in std_logic;
			WDAT_A: in std_logic_vector(N-1 downto 0);--data for write
			ADDR_A: in std_logic_vector(L-1 downto 0);--address for read/write
			WREN_A: in std_logic;--enables write on port A
			Q_A: out std_logic_vector(N-1 downto 0);
			WDAT_B: in std_logic_vector(N-1 downto 0);--data for write
			ADDR_B: in std_logic_vector(L-1 downto 0);--address for read/write
			WREN_B: in std_logic;--enables write on port A
			Q_B: out std_logic_vector(N-1 downto 0)
	);
end component;

constant USE_TDP_RAM: boolean := false;

--signal empty: std_logic;
--signal full: std_logic;

--signals used only when a single port ram is used
signal	mem_d:	std_logic_vector(31 downto 0);-- data to be written by memory-mapped interface
signal	mem_wren:std_logic;--write enable for memory-mapped interface
signal	mem_addr:std_logic_vector(L-1 downto 0);-- address to be written by memory-mapped interface
signal	mem_q:	std_logic_vector(31 downto 0);-- data output for memory-mapped interface
type memory is array (0 to 2**L-1) of std_logic_vector(31 downto 0);
signal ram: memory;
--since the upper hierarchy guarantees there will be no read-during-write
attribute ramstyle : string;
attribute ramstyle of ram : signal is "no_rw_check";

	begin
	
	sp_update: process(CLK,rst,pop,push,addsp,imm)
	begin
		if(rst='1')then
			sp <= (others=>'0');--sp=xffffffff means stack with one element, x00000000-1=xffffffff
		elsif(falling_edge(CLK))then--there must be a falling_edge even when recovering from a cache miss
			--only one of these inputs can be asserted in one cycle
			if(pop='1')then
				sp <= sp + 1;
			elsif(push='1')then
				sp <= sp - 1;
			elsif(addsp='1')then
				sp <= sp + imm;-- immediate is sign-extended
			end if;
		end if;
	end process;
	
--	empty <= '1' when rst='1' else
--				'1' when sp=(others=>) else
--				'0';
--	
--	full <= '0' when rst='1' else
--				'1' when sp=(others=>'0') else
--				'0';
	
	single_port_ram_inst: if not USE_TDP_RAM generate
		mem_addr <= sp when (push='1' or pop='1') else ADDR;
		mem_wren <= '1' when (push='1') else WREN;
		mem_d		<= stack_in when (push='1') else D;
		
		process(CLK,RST,mem_q,pop)
		begin
			if(RST='1')then
				stack_out <= (others=>'0');
			elsif(rising_edge(CLK) and pop='1')then
				stack_out <= mem_q;
			end if;
		end process;
		
		Q <= mem_q;
		
		--single port ram
		process(CLK,mem_wren,mem_addr,mem_d,ram)
		begin
			if(rising_edge(CLK) and mem_wren='1')then
				if(mem_wren='1')then
					ram(to_integer(unsigned(mem_addr))) <= mem_d;
				end if;
				-- read-during-write returns OLD data
				mem_q <= ram(to_integer(unsigned(mem_addr)));
			end if;
		end process;
	end generate single_port_ram_inst;
	
	tdp_ram_inst: if USE_TDP_RAM generate
	memory_inst: tdp_ram
		generic map (N => 32, L => L)--N: data width in bits; L: address width in bits
		port map(CLK => CLK,
					
					WDAT_A => stack_in,--data for write
					ADDR_A => sp,--address for read/write
					WREN_A => push,--enables write on port A
					Q_A => stack_out,
					
					WDAT_B => D,--data for write
					ADDR_B => ADDR,--address for read/write
					WREN_B => WREN,--enables write on port A
					Q_B	 => Q
			);
	end generate tdp_ram_inst;

	--TODO:	signal error conditions: address out of bounds, sp incremented/decremented beyond limits
	--			popping empty stack, pushing to full stack
end bhv;