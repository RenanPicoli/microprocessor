-------------------------------
--several mux implementations
-------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 


entity mux5 is
	port(	A: in std_logic_vector (4 downto 0);
			B: in std_logic_vector (4 downto 0);
			sel: in std_logic;
			Q: out std_logic_vector (4 downto 0)
			);
end mux5;

architecture structure5 of mux5 is
	--process (sel);
	begin
		Q <= A when (sel='0') else
		B;
	--end process;
end structure5; 

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 

entity mux32 is
	port(	A: in std_logic_vector (31 downto 0);
			B: in std_logic_vector (31 downto 0);
			sel: in std_logic;
			Q: out std_logic_vector (31 downto 0)
			);
end mux32;

architecture structure32 of mux32 is
	--process (sel);
	begin
		Q <= A when (sel='0') else
		B;
	--end process;
end structure32;

use work.my_types.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all;

entity mux32x32 is
	port(	A: in array32 (0 to 31);
			sel: in std_logic_vector(4 downto 0);--5 bits to select 32 channels
			Q: out std_logic_vector (31 downto 0)
			);
end mux32x32;

architecture structure32x32 of mux32x32 is
	begin
		Q <= A(to_integer(unsigned(sel)));
end structure32x32;

use work.my_types.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all;

--generic mux
entity mux is
	generic(N_BITS_SEL: natural);--number of bits in sel port
	port(	A: in array_of_std_logic_vector;--user must ensure correct sizes
			sel: in std_logic_vector(N_BITS_SEL-1 downto 0);--user must ensure correct sizes
			Q: out std_logic_vector--user must ensure correct sizes
			);
end mux;

architecture structure of mux is
	begin
		Q <= A(to_integer(unsigned(sel)));
end structure;