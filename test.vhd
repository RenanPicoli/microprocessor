--------------------------------------------------
--XXXXXXXXX implementation
--by Renan Picoli de Souza
---------------------------------------------------
--don't know what they are, I'm only including them
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

---------------------------------------------------

entity test is
	port(	output: out std_logic_vector(1 downto 0);--leds, input1 + input2
			input1: in std_logic_vector(1 downto 0);
			input2: in std_logic_vector(1 downto 0)
			);
end test;

architecture bhv of test is
	component alu
		port(	A:	in std_logic_vector(1 downto 0);
				B:	in std_logic_vector(1 downto 0);
				Sel:	in std_logic_vector(1 downto 0);
				Res:	out std_logic_vector(1 downto 0)  
			);
	end component;
	begin
		--note this: port map uses ',' while port uses ';'
		cpu: alu port map(Sel => "00",
								Res => output,
								A => input1,
								B => input2
								);
end bhv;