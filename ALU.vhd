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
		RST: in std_logic;
		flags: out eflags;
		Res:	buffer std_logic_vector(31 downto 0)  
);

end ALU;

---------------------------------------------------

architecture behv of ALU is
component multiplier
	port (A: in std_logic_vector(31 downto 0);
			B: in std_logic_vector(31 downto 0);
			P: out std_logic_vector(63 downto 0));
end component;

component d_flip_flop
	port (D:	in std_logic_vector(31 downto 0);
			rst:	in std_logic;--synchronous reset
			CLK:in std_logic;
			Q:	out std_logic_vector(31 downto 0)  
			);
end component;

signal product: std_logic_vector(63 downto 0);--the desired product
signal multiplier_out: std_logic_vector(63 downto 0);--multiplier output, might be two's complement of what we want
signal multiplier_A: std_logic_vector(31 downto 0);
signal multiplier_B: std_logic_vector(31 downto 0);
signal imul_A: std_logic_vector(31 downto 0);
signal imul_B: std_logic_vector(31 downto 0);
signal imul_res: std_logic_vector(63 downto 0);
signal hi_out: std_logic_vector(31 downto 0);
signal lo_out: std_logic_vector(31 downto 0);
signal hi_lo_clk: std_logic;
signal lsb: std_logic;
begin
	 instance: multiplier
	 port map(A =>multiplier_A,
				 B =>multiplier_B,
				 P =>multiplier_out
	 );					   
	 
	 hi: d_flip_flop
	 port map (	D => product(63 downto 32),
					rst=>RST,
					CLK=>hi_lo_clk,
					Q => hi_out 
	 );
	 
	 lo: d_flip_flop
	 port map (	D => product(31 downto 0),
					rst=>RST,
					CLK=>hi_lo_clk,
					Q => lo_out
	 );
	 
	 lsb <= '1' when (A < B) else '0';
	 imul_A <= A when (A(31)='0') else ((not A)+1);
	 imul_B <= B when (B(31)='0') else ((not B)+1);
	 imul_res <= multiplier_out when ((A(31) xor B(31))='0') else ((not multiplier_out)+1);--if signs are equal, result is positive (product) 
	 multiplier_A <= 	A when (Sel="1000") else--mult
							imul_A when (Sel="1011") else--imul
							(others=>'X');
	 multiplier_B <= 	B when (Sel="1000") else--mult
							imul_B when (Sel="1011") else--imul
							(others=>'X');
	 product <=			multiplier_out when (Sel="1000") else--mult
							imul_res when (Sel="1011") else--imul
							(others=>'X');

    process(A,B,Sel,lsb,product,hi_out,lo_out,CLK)
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
		when "1000" =>--mult
--			multiplier_A <= A;
--			multiplier_B <= B;
--			product 	 	 <= multiplier_out; 
			hi_lo_clk <= CLK;
			Res <= product(31 downto 0);
		when "1011" =>--imul
--			multiplier_A <= imul_A;--A if A>0 or (-A) if A<0
--			multiplier_B <= imul_B;--B if B>0 or (-B) if B<0
			hi_lo_clk <= CLK;
--			product <= imul_res;
			Res <= product(31 downto 0);
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
	 
	 flags.ZF <= '1' when ((Res = x"0000_0000") and (Sel/="1000")) or (product = x"0000_0000_0000_0000" and Sel = "1000") else '0';
	 --ZF <= nor (Res);--uses VHDL-2008 unary operators
	 
end behv;

----------------------------------------------------
