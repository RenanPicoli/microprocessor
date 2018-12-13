library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 

package my_types is
	type array32 is array (integer range <>) of std_logic_vector (31 downto 0);
	
	type eflags is record
	ZF			:std_logic;
	reserved1:std_logic;
	reserved2:std_logic;
	reserved3:std_logic;
	reserved4:std_logic;
	reserved5:std_logic;
	reserved6:std_logic;
	reserved7:std_logic;
	reserved8:std_logic;
	reserved9:std_logic;
	reserved10:std_logic;
	reserved11:std_logic;
	reserved12:std_logic;
	reserved13:std_logic;
	reserved14:std_logic;
	reserved15:std_logic;
	reserved16:std_logic;
	reserved17:std_logic;
	reserved18:std_logic;
	reserved19:std_logic;
	reserved20:std_logic;
	reserved21:std_logic;
	reserved22:std_logic;
	reserved23:std_logic;
	reserved24:std_logic;
	reserved25:std_logic;
	reserved26:std_logic;
	reserved27:std_logic;
	reserved28:std_logic;
	reserved29:std_logic;
	reserved30:std_logic;
	reserved31:std_logic;
	end record eflags;
end package my_types;