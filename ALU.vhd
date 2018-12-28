-- The code below was adapted from:
---------------------------------------------------
-- Simple ALU Module (ESD book Figure 2.5)		
-- by Weijun Zhang, 04/2001
--
-- ALU stands for arithmatic logic unit.
-- It perform multiple operations according to 
-- the control bits.
-- we use 2's complement subraction in this example
-- two 2-bit inputs & carry-bit ignored
---------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
---------------------------------------------------

use work.my_types.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ALU is

port(	A:	in std_logic_vector(31 downto 0);
		B:	in std_logic_vector(31 downto 0);
		Sel:	in std_logic_vector(3 downto 0);
		flags: out eflags;
		Res:	buffer std_logic_vector(31 downto 0)  
);

end ALU;

---------------------------------------------------

architecture behv of ALU is
signal lsb: std_logic;
begin					   
	 lsb <= '1' when (A < B) else '0';
    process(A,B,Sel,lsb)
    begin
    
	-- use case statement to achieve 
	-- different operations of ALU

	case Sel is
      when "0000" =>
			Res <= A and B;
	   when "0001" =>	 
			Res <= A or B;
	   when "0010" =>
			Res <= A + B;
		when "0011" =>
			Res <= A xor B;
	   when "0110" =>						
			Res <= A + (not B) + 1;-- A-B
		when "0111" =>	 
			Res <= (0 => lsb, others => '0');-- set on less than
		when "1100" =>
			Res <= A nor B;
	   when others =>	 
			Res <= (others => 'X');
      end case;

    end process;
	 
	 flags.ZF <= '1' when (Res = x"0000_0000") else '0';
	 --ZF <= nor (Res);--uses VHDL-2008 unary operators
	 
end behv;

----------------------------------------------------
