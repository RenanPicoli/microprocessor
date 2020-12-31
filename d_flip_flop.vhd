--------------------------------------------------
--D Flip Flop implementation
--by Renan Picoli de Souza
---------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

---------------------------------------------------

entity d_flip_flop is

port(	D:	in std_logic_vector(31 downto 0);
		RST:	in std_logic;--synchronous reset
		ENA:	in std_logic:='1';--enables writes
		CLK:	in std_logic;
		Q:	out std_logic_vector(31 downto 0)  
);

end d_flip_flop;

---------------------------------------------------

architecture behv of d_flip_flop is
begin					   

   process(CLK)
   begin

	if (CLK'event and CLK = '1') then
		if (RST='1') then
			Q <= (others=>'0');
		elsif (ENA = '1') then
			Q <= D;
		end if;
	end if;
   end process;

end behv;

----------------------------------------------------
