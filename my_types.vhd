library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 

package my_types is
	type array32 is array (integer range <>) of std_logic_vector (31 downto 0);
	type array4 is array (integer range <>) of std_logic_vector (3 downto 0);
	type array7 is array (integer range <>) of std_logic_vector (6 downto 0);
	
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
	
	constant code_for_7seg: array7 (0 to 15) :=
		(	"0111111",-- digit "0"
			"0000110",-- digit "1"
			"1011011",-- digit "2"
			"1001111",-- digit "3"
			"1100110",-- digit "4"
			"1101101",-- digit "5"
			"1111101",-- digit "6"
			"0000111",-- digit "7"
			"1111111",-- digit "8"
			"1100111",-- digit "9"
			"1110111",-- digit "A"
			"1111100",-- digit "b"
			"0111001",-- digit "C"
			"1011110",-- digit "d"
			"1111001",-- digit "E"
			"1110001" -- digit "F"
		);
	
	--opcodes
	constant lw: 		std_logic_vector(5 downto 0) := "100011";
	constant sw:		std_logic_vector(5 downto 0) := "101011";
	constant beq: 		std_logic_vector(5 downto 0) := "000100";
	constant mult:		std_logic_vector(5 downto 0) := "000101";
	constant imul:		std_logic_vector(5 downto 0) := "001101";
	constant mflo:		std_logic_vector(5 downto 0) := "100101";
	constant mfhi:		std_logic_vector(5 downto 0) := "101101";
	constant jmp: 		std_logic_vector(5 downto 0) := "000010";
	constant addi:		std_logic_vector(5 downto 0) := "001000";
	constant subi:		std_logic_vector(5 downto 0) := "001001";
	constant andi:		std_logic_vector(5 downto 0) := "000011";
	constant ori: 		std_logic_vector(5 downto 0) := "000001";
	constant xori:		std_logic_vector(5 downto 0) := "010000";
	constant nori:		std_logic_vector(5 downto 0) := "010100";
	constant slti:		std_logic_vector(5 downto 0) := "010101";
	constant R_type:	std_logic_vector(5 downto 0) := "000000";
	
	--funct codes: USE only with R_type
	constant add_funct:	std_logic_vector(5 downto 0):= "100000";
	constant sub_funct:	std_logic_vector(5 downto 0):= "100010";
	constant and_funct:	std_logic_vector(5 downto 0):= "100100";
	constant or_funct:	std_logic_vector(5 downto 0):= "100101";
	constant xor_funct:	std_logic_vector(5 downto 0):= "100111";
	constant nor_funct:	std_logic_vector(5 downto 0):= "101000";
	constant slt_funct:	std_logic_vector(5 downto 0):= "101010";
	constant fadd_funct:	std_logic_vector(5 downto 0):= "000000";
	constant fsub_funct:	std_logic_vector(5 downto 0):= "000010";
	constant fmul_funct:	std_logic_vector(5 downto 0):= "000001";
	constant fdiv_funct:	std_logic_vector(5 downto 0):= "000011";

	--register codes
	constant r0:	std_logic_vector(4 downto 0)	:= "00000";
	constant r1:	std_logic_vector(4 downto 0)	:= "00001";
	constant r2:	std_logic_vector(4 downto 0)	:= "00010";
	constant r3:	std_logic_vector(4 downto 0)	:= "00011";
	constant r4:	std_logic_vector(4 downto 0)	:= "00100";
	constant r5:	std_logic_vector(4 downto 0)	:= "00101";
	constant r6:	std_logic_vector(4 downto 0)	:= "00110";
	constant r7:	std_logic_vector(4 downto 0)	:= "00111";
	constant r8:	std_logic_vector(4 downto 0)	:= "01000";
	constant r9:	std_logic_vector(4 downto 0)	:= "01001";
	constant r10:	std_logic_vector(4 downto 0)	:= "01010";
	constant r11:	std_logic_vector(4 downto 0)	:= "01011";
	constant r12:	std_logic_vector(4 downto 0)	:= "01100";
	constant r13:	std_logic_vector(4 downto 0)	:= "01101";
	constant r14:	std_logic_vector(4 downto 0)	:= "01110";
	constant r15:	std_logic_vector(4 downto 0)	:= "01111";
	constant r16:	std_logic_vector(4 downto 0)	:= "10000";
	constant r17:	std_logic_vector(4 downto 0)	:= "10001";
	constant r18:	std_logic_vector(4 downto 0)	:= "10010";
	constant r19:	std_logic_vector(4 downto 0)	:= "10011";
	constant r20:	std_logic_vector(4 downto 0)	:= "10100";
	constant r21:	std_logic_vector(4 downto 0)	:= "10101";
	constant r22:	std_logic_vector(4 downto 0)	:= "10110";
	constant r23:	std_logic_vector(4 downto 0)	:= "10111";
	constant r24:	std_logic_vector(4 downto 0)	:= "11000";
	constant r25:	std_logic_vector(4 downto 0)	:= "11001";
	constant r26:	std_logic_vector(4 downto 0)	:= "11010";
	constant r27:	std_logic_vector(4 downto 0)	:= "11011";
	constant r28:	std_logic_vector(4 downto 0)	:= "11100";
	constant r29:	std_logic_vector(4 downto 0)	:= "11101";
	constant r30:	std_logic_vector(4 downto 0)	:= "11110";
	constant r31:	std_logic_vector(4 downto 0)	:= "11111";
	
end package my_types;