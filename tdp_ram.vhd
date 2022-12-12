--------------------------------------------------
--true dual port ram (single clock)
--by Renan Picoli de Souza
--32 bit data
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;--addition of std_logic_vector
use ieee.numeric_std.all;--to_integer, unsigned
use work.my_types.all;--array32

entity tdp_ram is
	generic (N: natural; L: natural);--N: data width in bits; L: address width in bits
	port (CLK_A: in std_logic;
			WDAT_A: in std_logic_vector(N-1 downto 0);--data for write
			ADDR_A: in std_logic_vector(L-1 downto 0);--address for read/write
			WREN_A: in std_logic;--enables write on port A
			Q_A: out std_logic_vector(N-1 downto 0);
			CLK_B: in std_logic;
			WDAT_B: in std_logic_vector(N-1 downto 0);--data for write
			ADDR_B: in std_logic_vector(L-1 downto 0);--address for read/write
			WREN_B: in std_logic;--enables write on port B
			Q_B: out std_logic_vector(N-1 downto 0)
	);
end tdp_ram;

architecture structure of tdp_ram is
type memory is array (0 to 2**L-1) of std_logic_vector(N-1 downto 0);
signal ram: memory;
--since the upper hierarchy guarantees there will be no read-during-write
attribute ramstyle : string;
attribute ramstyle of ram : signal is "no_rw_check";

signal RADDR_reg : std_logic_vector(L-1 downto 0);

begin
	-- I am following the template at "Recommend HDL coing styles" (qts-qii51007.pdf)

	process(CLK_A, CLK_B)
	begin
		if(rising_edge(CLK_A)) then -- Port A
			if(WREN_A = '1') then
				ram(to_integer(unsigned(ADDR_A))) <= WDAT_A;
				-- Read-during-write on the same port returns NEW data
				Q_A <= WDAT_A;
			else
				-- Read-during-write on the mixed port returns OLD data
				Q_A <= ram(to_integer(unsigned(ADDR_A)));
			end if;
		end if;
--	end process;
--	
--	process(CLK_B)
--	begin
		if(rising_edge(CLK_B)) then -- Port B
			if(WREN_B = '1') then
				ram(to_integer(unsigned(ADDR_B))) <= WDAT_B;
				-- Read-during-write on the same port returns NEW data
				Q_B <= WDAT_B;
			else
				-- Read-during-write on the mixed port returns OLD data
				Q_B <= ram(to_integer(unsigned(ADDR_B)));
			end if;
		end if;
	end process;
end structure;