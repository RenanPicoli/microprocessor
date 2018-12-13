library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

use work.my_types.all;

entity demux32x32 is
	port(	Q: out array32 (0 to 31) := (others => (others => '0'));
			sel: in std_logic_vector(4 downto 0);--5 bits to select 32 channels
			A: in std_logic_vector (31 downto 0)
			);
end demux32x32;

architecture structure32x32 of demux32x32 is
	begin
		process (sel)
			begin
				--Q(to_integer(signed(sel))) <= A;
				for i in 0 to 31 loop
					if (i = to_integer(signed(sel))) then
							Q(i) <= A;
					else
							Q(i) <= (others => '0');
					end if;
				end loop;
		end process;
end structure32x32;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

use work.my_types.all;

entity demux1x32 is
	port(	Q: out std_logic_vector (31 downto 0) := (others => '0');
			sel: in std_logic_vector(4 downto 0);--5 bits to select 32 channels
			A: in std_logic
			);
end demux1x32;

architecture structure1x32 of demux1x32 is
	begin
		process (sel,A)
			begin
				--Q(to_integer(signed(sel))) <= A;
				for i in 0 to 31 loop
					if (i = to_integer(unsigned(sel))) then
							Q(i) <= A;
					else
							Q(i) <= '0';
					end if;
				end loop;
		end process;
end structure1x32;