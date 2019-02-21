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

use ieee.numeric_std.all;

entity ALU is

port(	A:	in std_logic_vector(31 downto 0);
		B:	in std_logic_vector(31 downto 0);
		Sel:	in std_logic_vector(3 downto 0);
		CLK: in std_logic;
		flags: out eflags;
		Res:	buffer std_logic_vector(31 downto 0)  
);

end ALU;

---------------------------------------------------

architecture behv of ALU is
component generic_multiplier
	generic (N: integer);	
	port (A: in std_logic_vector(N-1 downto 0);
			B: in std_logic_vector(N-1 downto 0);
			P: out std_logic_vector(2*N-1 downto 0));
end component;

component d_flip_flop
	port (D:	in std_logic_vector(31 downto 0);
			rst:	in std_logic;--synchronous reset
			CLK:in std_logic;
			Q:	out std_logic_vector(31 downto 0)  
			);
end component;

signal mult_res: std_logic_vector(63 downto 0);
signal hi_out: std_logic_vector(31 downto 0);
signal lo_out: std_logic_vector(31 downto 0);
signal lsb: std_logic;
begin
	 instance: generic_multiplier 
	 generic map (N => 32)
	 port map(A =>A,
				 B =>B,
				 P =>mult_res
	 );					   
	 
	 hi: d_flip_flop
	 port map (	D => mult_res(63 downto 32),
					rst=>'0',
					CLK=>CLK,
					Q => hi_out 
	 );
	 
	 lo: d_flip_flop
	 port map (	D => mult_res(31 downto 0),
					rst=>'0',
					CLK=>CLK,
					Q => lo_out
	 );
	 
	 lsb <= '1' when (A < B) else '0';
    process(A,B,Sel,lsb,mult_res,hi_out,lo_out)
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
		when "1000" =>
			Res <= mult_res(31 downto 0);
		when "1001" =>
			Res <= hi_out;
		when "1010" =>
			Res <= lo_out;
		when "1100" =>
			Res <= A nor B;
	   when others =>	 
			Res <= (others => 'X');
      end case;

    end process;
	 
	 flags.ZF <= '1' when ((Res = x"0000_0000") and (Sel/="1000")) or (mult_res = x"0000_0000_0000_0000" and Sel = "1000") else '0';
	 --ZF <= nor (Res);--uses VHDL-2008 unary operators
	 
end behv;

----------------------------------------------------
