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
		shamt:	in std_logic_vector(4 downto 0);--unsigned
		Sel:	in std_logic_vector(3 downto 0);
		shift_direction: in std_logic;--'1': shift right (instead of shift left)
		shift_mode: in std_logic;--'1': arithmetic shift (instead of logic shift)
		CLK: in std_logic;
		RST: in std_logic;
		flags: out eflags;
		Res:	out std_logic_vector(31 downto 0)  
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
			rst:	in std_logic;--asynchronous reset
			ENA:	in std_logic:='1';--enables writes
			CLK:in std_logic;
			Q:	out std_logic_vector(31 downto 0)  
			);
end component;

component var_shift
generic	(N: natural; O: natural; S: natural);--N: number of bits in input, O in output; S: number of bits in shift
port(	input:in std_logic_vector(N-1 downto 0);--input vector that will be shifted
		shift:in std_logic_vector(S-1 downto 0);--signed integer: number of shifts to left (if positive)
		shift_mode: in std_logic;--'1': arithmetic shift (instead of logic shift)
		overflow: out std_logic;-- '1' if there are ones that were dropped in the output
		output: out std_logic_vector(O-1 downto 0)--
);
end component;

signal shamt_signed: std_logic_vector (5 downto 0);
signal shifted_A: std_logic_vector (31 downto 0);
signal shift_overflow: std_logic;
signal result: std_logic_vector(31 downto 0);
signal product: std_logic_vector(63 downto 0);--the desired product
signal multiplier_out: std_logic_vector(63 downto 0);--multiplier output, might be two's complement of what we want
signal multiplier_A: std_logic_vector(31 downto 0);
signal multiplier_B: std_logic_vector(31 downto 0);
signal imul_A: std_logic_vector(31 downto 0);
signal imul_B: std_logic_vector(31 downto 0);
signal imul_res: std_logic_vector(63 downto 0);
signal hi_out: std_logic_vector(31 downto 0);
signal lo_out: std_logic_vector(31 downto 0);
signal hi_lo_en: std_logic;--enables  writes on hi/lo registers
signal A_minus_B: std_logic_vector(31 downto 0);
signal lsb: std_logic;
signal zero_flag: std_logic;

begin
	 instance: multiplier
	 port map(A =>multiplier_A,
				 B =>multiplier_B,
				 P =>multiplier_out
	 );					   
	 
	 hi: d_flip_flop
	 port map (	D => product(63 downto 32),
					rst=>RST,
					ENA=>hi_lo_en,
					CLK=>CLK,
					Q => hi_out 
	 );
	 
	 lo: d_flip_flop
	 port map (	D => product(31 downto 0),
					rst=>RST,
					ENA=>hi_lo_en,
					CLK=>CLK,
					Q => lo_out
	 );
	
	--int_absolute calculation
	--shifts extended_mantissa the number of exponent without bias (*2^(EXP-bias))
	shift: var_shift
	generic map (N => 32, O=> 32, S => 6)
	port map (input => A,
				 shift => shamt_signed,
				 overflow => shift_overflow,
				 shift_mode => shift_mode,
				 output => shifted_A);
	shamt_signed <= (('1' & not shamt) + 1) when (shift_direction='1') else --srl/srlv/shra/srav
					'0' & shamt; --sll/sllv
	 
	 A_minus_B <= A + (not B) + 1;-- A-B
	 lsb <= '1' when A_minus_B(31)='1' else '0';
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
			result <= A and B;
			hi_lo_en <= '0';
	   when "0001" =>	 
			result <= A or B;
			hi_lo_en <= '0';
	   when "0010" =>
			result <= A + B;
			hi_lo_en <= '0';
		when "0011" =>
			result <= A xor B;
			hi_lo_en <= '0';

			
	   when "0110" =>						
			result <= A + (not B) + 1;-- A-B
			hi_lo_en <= '0';
		when "0111" =>	 
			result <= (0 => lsb, others => '0');-- set on less than
			hi_lo_en <= '0';
		when "1000" =>--mult
			hi_lo_en <= '1';
			result <= product(31 downto 0);
		when "1001" =>
			result <= hi_out;
			hi_lo_en <= '0';
		when "1010" =>
			result <= lo_out;
			hi_lo_en <= '0';
		when "1011" =>--imul
			hi_lo_en <= '1';
			result <= product(31 downto 0);
		when "1100" =>
			result <= A nor B;
			hi_lo_en <= '0';
			
			
		when "1111" => --any shift instruction
			result <= shifted_A;
			hi_lo_en <= '0';
			
	   when others =>	 
			result <= (others => 'X');
			hi_lo_en <= '0';
      end case;

    end process;
	 
	 Res <= result;
	 flags <= (ZF => zero_flag,others=>'0');
	 zero_flag <= '1' when ((result = x"0000_0000") and (Sel/="1000")) or (product = x"0000_0000_0000_0000" and Sel = "1000") else '0';
	 --ZF <= nor (Res);--uses VHDL-2008 unary operators
	 
	 
end behv;

----------------------------------------------------
