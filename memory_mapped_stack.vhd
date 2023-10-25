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
end entity;

architecture bhv of mm_stack is

component tdp_ram
	generic (N: natural; L: natural);--N: data width in bits; L: address width in bits
	port (CLK_A: in std_logic;
			WDAT_A: in std_logic_vector(N-1 downto 0);--data for write
			ADDR_A: in std_logic_vector(L-1 downto 0);--address for read/write
			WREN_A: in std_logic;--enables write on port A
			Q_A: out std_logic_vector(N-1 downto 0);
			CLK_B: in std_logic;
			WDAT_B: in std_logic_vector(N-1 downto 0);--data for write
			ADDR_B: in std_logic_vector(L-1 downto 0);--address for read/write
			WREN_B: in std_logic;--enables write on port A
			Q_B: out std_logic_vector(N-1 downto 0)
	);
end component;

component ram_2_port
	PORT
	(
		address_a		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data_a		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wren_a		: IN STD_LOGIC  := '0';
		wren_b		: IN STD_LOGIC  := '0';
		q_a		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END component;

constant USE_TDP_RAM: boolean := true;

--signal empty: std_logic;
--signal full: std_logic;

--signals used only when a single port ram is used
signal	mem_d:	std_logic_vector(31 downto 0);-- data to be written by memory-mapped interface
signal	mem_wren:std_logic;--write enable for memory-mapped interface
signal	mem_addr:std_logic_vector(L-1 downto 0);-- address to be written by memory-mapped interface
signal	mem_en:	std_logic_vector(2**L-1 downto 0);-- one-hot of mem_addr
signal	mem_q:	std_logic_vector(31 downto 0);-- data output for memory-mapped interface
type memory is array (0 to 2**L-1) of std_logic_vector(31 downto 0);
signal ram: memory;
--since the upper hierarchy guarantees there will be no read-during-write
attribute ramstyle : string;
attribute ramstyle of ram : signal is "no_rw_check";

signal	stack_addr:std_logic_vector(L-1 downto 0);-- address to be written by memory-mapped interface
	begin
	
	sp_update: process(CLK,rst,pop,push,addsp,imm,ready)
	begin
		if(rst='1')then
			sp <= (others=>'0');--sp=xffffffff means stack with one element, x00000000-1=xffffffff
		elsif(rising_edge(CLK))then--there must be a falling_edge even when recovering from a cache miss
			--only one of these inputs can be asserted in one cycle
			if(pop='1' and ready='1')then
				sp <= sp + 1;
			elsif(push='1' and ready='1')then
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
		mem_addr <= sp-1 when (push='1') else-- sp is already in use, sp-1 is the next available location
						sp when (pop='1') else
						ADDR;
		mem_wren <= '1' when (push='1') else WREN;
		mem_d		<= stack_in when (push='1') else D;
		
--		process(CLK,RST,mem_q,pop)
--		begin
--			if(RST='1')then
--				stack_out <= (others=>'0');
--			elsif(rising_edge(CLK) and pop='1')then
--				stack_out <= mem_q;
--			end if;
--		end process;
		stack_out <= ram(to_integer(unsigned(sp)));

		Q <= mem_q;
		
		--registers
--		process(RST,CLK,mem_wren,mem_addr,mem_d,ram)
--		begin
--			if(RST='1')then
--				ram <= (others=>(others=>'0'));
--			elsif(rising_edge(CLK))then
--				if(mem_wren='1')then
--					ram(to_integer(unsigned(mem_addr))) <= mem_d;
--				end if;
--			end if;
--		end process;
		ram_i: for i in 0 to 2**L-1 generate
			mem_en(i) <= '1' when (i=to_integer(unsigned(mem_addr))) else '0';
			process(RST,CLK,mem_wren,mem_addr,mem_d,ram)
			begin
				if(RST='1')then
					ram(i) <= (others=>'0');
				elsif(rising_edge(CLK))then
					if(mem_wren='1' and mem_en(i)='1')then
						ram(i) <= mem_d;
					end if;
				end if;
			end process;
		end generate ram_i;
		-- asynchronous reading logic
		mem_q <= ram(to_integer(unsigned(mem_addr)));
		
		--single port ram
--		process(CLK,mem_wren,mem_addr,mem_d,ram)
--		begin
--			if(rising_edge(CLK))then
--				if(mem_wren='1')then
--					ram(to_integer(unsigned(mem_addr))) <= mem_d;
--				end if;
--				-- read-during-write returns OLD data
--				mem_q <= ram(to_integer(unsigned(mem_addr)));
--			end if;
--		end process;
	end generate single_port_ram_inst;
	
	tdp_ram_inst: if USE_TDP_RAM generate
		stack_addr <=	sp-1 when (push='1') else-- sp is already in use, sp-1 is the next available location
							sp when (pop='1') else
							ADDR;
		memory_inst: tdp_ram
			generic map (N => 32, L => L)--N: data width in bits; L: address width in bits
			port map(CLK_A => CLK,					
						WDAT_A => stack_in,--data for write
						ADDR_A => stack_addr,--address for push/pop
						WREN_A => push,--enables write on port A
						Q_A => stack_out,
						CLK_B => CLK,
						WDAT_B => D,--data for write
						ADDR_B => ADDR,--address for read/write
						WREN_B => WREN,--enables write on port A
						Q_B	 => Q
				);
--	memory_inst : ram_2_port PORT MAP (
--		address_a	=> sp,
--		address_b	=> ADDR,
--		clock			=> CLK,
--		data_a		=> stack_in,
--		data_b		=> D,
--		wren_a		=> push,
--		wren_b		=> WREN,
--		q_a			=> stack_out,
--		q_b			=> Q
--	);
	
		-----------------ready----------------------------
		process(CLK,RST,push,pop,WREN,RDEN)
		begin
			if(RST='1')then
				ready <= '0';
			elsif(rising_edge(CLK))then
				if(ready='0' and (push='1' or WREN='1' or RDEN='1' or pop='1'))then
					ready <= '1';
				else
					ready <= '0';
				end if;
			end if;
		end process;
	end generate tdp_ram_inst;

	--TODO:	signal error conditions: address out of bounds, sp incremented/decremented beyond limits
	--			popping empty stack, pushing to full stack
end bhv;