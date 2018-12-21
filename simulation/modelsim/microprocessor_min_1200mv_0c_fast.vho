-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "12/20/2018 00:17:00"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	microprocessor IS
    PORT (
	CLK : IN std_logic;
	data_memory_output : BUFFER std_logic_vector(31 DOWNTO 0);
	instruction_addr : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END microprocessor;

-- Design Ports Information
-- data_memory_output[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[4]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[5]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[6]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[8]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[9]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[10]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[11]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[12]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[13]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[14]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[15]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[16]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[17]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[18]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[19]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[20]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[21]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[22]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[23]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[24]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[25]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[26]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[27]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[28]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[29]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[30]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[31]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[4]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[8]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[9]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[10]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[11]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[12]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[13]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[14]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[15]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[16]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[17]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[18]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[19]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[20]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[21]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[22]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[23]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[24]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[25]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[26]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[27]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[28]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[29]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[30]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[31]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF microprocessor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_data_memory_output : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instruction_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_file|registers_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_memory_output[0]~output_o\ : std_logic;
SIGNAL \data_memory_output[1]~output_o\ : std_logic;
SIGNAL \data_memory_output[2]~output_o\ : std_logic;
SIGNAL \data_memory_output[3]~output_o\ : std_logic;
SIGNAL \data_memory_output[4]~output_o\ : std_logic;
SIGNAL \data_memory_output[5]~output_o\ : std_logic;
SIGNAL \data_memory_output[6]~output_o\ : std_logic;
SIGNAL \data_memory_output[7]~output_o\ : std_logic;
SIGNAL \data_memory_output[8]~output_o\ : std_logic;
SIGNAL \data_memory_output[9]~output_o\ : std_logic;
SIGNAL \data_memory_output[10]~output_o\ : std_logic;
SIGNAL \data_memory_output[11]~output_o\ : std_logic;
SIGNAL \data_memory_output[12]~output_o\ : std_logic;
SIGNAL \data_memory_output[13]~output_o\ : std_logic;
SIGNAL \data_memory_output[14]~output_o\ : std_logic;
SIGNAL \data_memory_output[15]~output_o\ : std_logic;
SIGNAL \data_memory_output[16]~output_o\ : std_logic;
SIGNAL \data_memory_output[17]~output_o\ : std_logic;
SIGNAL \data_memory_output[18]~output_o\ : std_logic;
SIGNAL \data_memory_output[19]~output_o\ : std_logic;
SIGNAL \data_memory_output[20]~output_o\ : std_logic;
SIGNAL \data_memory_output[21]~output_o\ : std_logic;
SIGNAL \data_memory_output[22]~output_o\ : std_logic;
SIGNAL \data_memory_output[23]~output_o\ : std_logic;
SIGNAL \data_memory_output[24]~output_o\ : std_logic;
SIGNAL \data_memory_output[25]~output_o\ : std_logic;
SIGNAL \data_memory_output[26]~output_o\ : std_logic;
SIGNAL \data_memory_output[27]~output_o\ : std_logic;
SIGNAL \data_memory_output[28]~output_o\ : std_logic;
SIGNAL \data_memory_output[29]~output_o\ : std_logic;
SIGNAL \data_memory_output[30]~output_o\ : std_logic;
SIGNAL \data_memory_output[31]~output_o\ : std_logic;
SIGNAL \instruction_addr[0]~output_o\ : std_logic;
SIGNAL \instruction_addr[1]~output_o\ : std_logic;
SIGNAL \instruction_addr[2]~output_o\ : std_logic;
SIGNAL \instruction_addr[3]~output_o\ : std_logic;
SIGNAL \instruction_addr[4]~output_o\ : std_logic;
SIGNAL \instruction_addr[5]~output_o\ : std_logic;
SIGNAL \instruction_addr[6]~output_o\ : std_logic;
SIGNAL \instruction_addr[7]~output_o\ : std_logic;
SIGNAL \instruction_addr[8]~output_o\ : std_logic;
SIGNAL \instruction_addr[9]~output_o\ : std_logic;
SIGNAL \instruction_addr[10]~output_o\ : std_logic;
SIGNAL \instruction_addr[11]~output_o\ : std_logic;
SIGNAL \instruction_addr[12]~output_o\ : std_logic;
SIGNAL \instruction_addr[13]~output_o\ : std_logic;
SIGNAL \instruction_addr[14]~output_o\ : std_logic;
SIGNAL \instruction_addr[15]~output_o\ : std_logic;
SIGNAL \instruction_addr[16]~output_o\ : std_logic;
SIGNAL \instruction_addr[17]~output_o\ : std_logic;
SIGNAL \instruction_addr[18]~output_o\ : std_logic;
SIGNAL \instruction_addr[19]~output_o\ : std_logic;
SIGNAL \instruction_addr[20]~output_o\ : std_logic;
SIGNAL \instruction_addr[21]~output_o\ : std_logic;
SIGNAL \instruction_addr[22]~output_o\ : std_logic;
SIGNAL \instruction_addr[23]~output_o\ : std_logic;
SIGNAL \instruction_addr[24]~output_o\ : std_logic;
SIGNAL \instruction_addr[25]~output_o\ : std_logic;
SIGNAL \instruction_addr[26]~output_o\ : std_logic;
SIGNAL \instruction_addr[27]~output_o\ : std_logic;
SIGNAL \instruction_addr[28]~output_o\ : std_logic;
SIGNAL \instruction_addr[29]~output_o\ : std_logic;
SIGNAL \instruction_addr[30]~output_o\ : std_logic;
SIGNAL \instruction_addr[31]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \instruction_memory|Mux3~0_combout\ : std_logic;
SIGNAL \pc_incremented[2]~1\ : std_logic;
SIGNAL \pc_incremented[3]~3\ : std_logic;
SIGNAL \pc_incremented[4]~5\ : std_logic;
SIGNAL \pc_incremented[5]~6_combout\ : std_logic;
SIGNAL \instruction_memory|Mux9~0_combout\ : std_logic;
SIGNAL \pc_in[3]~1_combout\ : std_logic;
SIGNAL \pc_incremented[4]~4_combout\ : std_logic;
SIGNAL \pc_incremented[3]~2_combout\ : std_logic;
SIGNAL \branch_address[3]~1\ : std_logic;
SIGNAL \branch_address[4]~3\ : std_logic;
SIGNAL \branch_address[5]~4_combout\ : std_logic;
SIGNAL \instruction_memory|Mux3~1_combout\ : std_logic;
SIGNAL \instruction_memory|Mux9~2_combout\ : std_logic;
SIGNAL \control|regWrite~0_combout\ : std_logic;
SIGNAL \register_file|registers_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \control|aluOp[1]~0_combout\ : std_logic;
SIGNAL \write_data[22]~26_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux30~0_combout\ : std_logic;
SIGNAL \register_file|registers_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \register_file|mux1|Mux9~0_combout\ : std_logic;
SIGNAL \control|aluSrc~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~77_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~83_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~78_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~84_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~79_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~85_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~80_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~86_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~81_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~87_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~82_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~88_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux15~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux16~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux17~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~12_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~13_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux19~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux20~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux21~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~20_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~21_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[8]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux23~0_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[7]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux24~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~26_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~27_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~28_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~29_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux27~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~32_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~33_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux29~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux30~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux31~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~3_cout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~4_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux0~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~125_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~69_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~113_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~70_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~114_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[28]~feeder_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~71_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~115_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~72_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~116_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux5~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux6~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux7~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~76_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~104_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~100\ : std_logic;
SIGNAL \arith_logic_unity|Add0~105_combout\ : std_logic;
SIGNAL \write_data[23]~25_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux8~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~106\ : std_logic;
SIGNAL \arith_logic_unity|Add0~107_combout\ : std_logic;
SIGNAL \write_data[24]~24_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~75_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~103_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~108\ : std_logic;
SIGNAL \arith_logic_unity|Add0~109_combout\ : std_logic;
SIGNAL \write_data[25]~23_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~74_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~102_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~110\ : std_logic;
SIGNAL \arith_logic_unity|Add0~111_combout\ : std_logic;
SIGNAL \write_data[26]~22_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~73_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~101_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~112\ : std_logic;
SIGNAL \arith_logic_unity|Add0~117_combout\ : std_logic;
SIGNAL \write_data[27]~21_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux4~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~118\ : std_logic;
SIGNAL \arith_logic_unity|Add0~119_combout\ : std_logic;
SIGNAL \write_data[28]~20_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux3~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~120\ : std_logic;
SIGNAL \arith_logic_unity|Add0~121_combout\ : std_logic;
SIGNAL \write_data[29]~19_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[29]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux2~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~122\ : std_logic;
SIGNAL \arith_logic_unity|Add0~123_combout\ : std_logic;
SIGNAL \write_data[30]~18_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux1~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~124\ : std_logic;
SIGNAL \arith_logic_unity|Add0~126_combout\ : std_logic;
SIGNAL \write_data[31]~17_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~68_combout\ : std_logic;
SIGNAL \aluOp2[31]~0_combout\ : std_logic;
SIGNAL \aluOp2[30]~1_combout\ : std_logic;
SIGNAL \aluOp2[29]~2_combout\ : std_logic;
SIGNAL \aluOp2[28]~3_combout\ : std_logic;
SIGNAL \aluOp2[27]~4_combout\ : std_logic;
SIGNAL \aluOp2[26]~5_combout\ : std_logic;
SIGNAL \aluOp2[25]~6_combout\ : std_logic;
SIGNAL \aluOp2[24]~7_combout\ : std_logic;
SIGNAL \aluOp2[23]~8_combout\ : std_logic;
SIGNAL \aluOp2[22]~9_combout\ : std_logic;
SIGNAL \aluOp2[21]~10_combout\ : std_logic;
SIGNAL \aluOp2[20]~11_combout\ : std_logic;
SIGNAL \aluOp2[19]~12_combout\ : std_logic;
SIGNAL \aluOp2[18]~13_combout\ : std_logic;
SIGNAL \aluOp2[17]~14_combout\ : std_logic;
SIGNAL \aluOp2[16]~15_combout\ : std_logic;
SIGNAL \aluOp2[15]~16_combout\ : std_logic;
SIGNAL \aluOp2[14]~17_combout\ : std_logic;
SIGNAL \aluOp2[13]~18_combout\ : std_logic;
SIGNAL \aluOp2[12]~19_combout\ : std_logic;
SIGNAL \aluOp2[11]~20_combout\ : std_logic;
SIGNAL \aluOp2[10]~21_combout\ : std_logic;
SIGNAL \aluOp2[9]~22_combout\ : std_logic;
SIGNAL \aluOp2[8]~23_combout\ : std_logic;
SIGNAL \aluOp2[7]~24_combout\ : std_logic;
SIGNAL \aluOp2[6]~25_combout\ : std_logic;
SIGNAL \aluOp2[5]~26_combout\ : std_logic;
SIGNAL \aluOp2[4]~27_combout\ : std_logic;
SIGNAL \aluOp2[3]~28_combout\ : std_logic;
SIGNAL \aluOp2[2]~29_combout\ : std_logic;
SIGNAL \aluOp2[1]~30_combout\ : std_logic;
SIGNAL \aluOp2[0]~31_combout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~1_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~3_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~5_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~7_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~9_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~11_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~13_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~15_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~17_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~19_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~21_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~23_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~25_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~27_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~29_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~31_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~33_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~35_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~37_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~39_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~41_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~43_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~45_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~47_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~49_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~51_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~53_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~55_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~57_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~59_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~61_cout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~62_combout\ : std_logic;
SIGNAL \write_data[0]~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~5\ : std_logic;
SIGNAL \arith_logic_unity|Add0~36_combout\ : std_logic;
SIGNAL \write_data[1]~16_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux30~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~35_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~37\ : std_logic;
SIGNAL \arith_logic_unity|Add0~38_combout\ : std_logic;
SIGNAL \write_data[2]~15_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux29~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~34_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~39\ : std_logic;
SIGNAL \arith_logic_unity|Add0~40_combout\ : std_logic;
SIGNAL \write_data[3]~14_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux28~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~41\ : std_logic;
SIGNAL \arith_logic_unity|Add0~42_combout\ : std_logic;
SIGNAL \write_data[4]~13_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[4]~feeder_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~30_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~31_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~43\ : std_logic;
SIGNAL \arith_logic_unity|Add0~44_combout\ : std_logic;
SIGNAL \write_data[5]~12_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux26~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~45\ : std_logic;
SIGNAL \arith_logic_unity|Add0~46_combout\ : std_logic;
SIGNAL \write_data[6]~11_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux25~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~47\ : std_logic;
SIGNAL \arith_logic_unity|Add0~48_combout\ : std_logic;
SIGNAL \write_data[7]~10_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~24_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~25_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~49\ : std_logic;
SIGNAL \arith_logic_unity|Add0~50_combout\ : std_logic;
SIGNAL \write_data[8]~9_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[8]~feeder_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~22_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~23_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~51\ : std_logic;
SIGNAL \arith_logic_unity|Add0~52_combout\ : std_logic;
SIGNAL \write_data[9]~8_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux22~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~53\ : std_logic;
SIGNAL \arith_logic_unity|Add0~54_combout\ : std_logic;
SIGNAL \write_data[10]~7_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~18_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~19_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~55\ : std_logic;
SIGNAL \arith_logic_unity|Add0~56_combout\ : std_logic;
SIGNAL \write_data[11]~6_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~16_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~17_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~57\ : std_logic;
SIGNAL \arith_logic_unity|Add0~58_combout\ : std_logic;
SIGNAL \write_data[12]~5_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~14_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~15_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~59\ : std_logic;
SIGNAL \arith_logic_unity|Add0~60_combout\ : std_logic;
SIGNAL \write_data[13]~4_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux18~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~61\ : std_logic;
SIGNAL \arith_logic_unity|Add0~62_combout\ : std_logic;
SIGNAL \write_data[14]~3_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~10_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~11_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~63\ : std_logic;
SIGNAL \arith_logic_unity|Add0~64_combout\ : std_logic;
SIGNAL \write_data[15]~2_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~8_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~9_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~65\ : std_logic;
SIGNAL \arith_logic_unity|Add0~66_combout\ : std_logic;
SIGNAL \write_data[16]~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~6_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~7_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~67\ : std_logic;
SIGNAL \arith_logic_unity|Add0~89_combout\ : std_logic;
SIGNAL \write_data[17]~31_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux14~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~90\ : std_logic;
SIGNAL \arith_logic_unity|Add0~91_combout\ : std_logic;
SIGNAL \write_data[18]~30_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux13~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~92\ : std_logic;
SIGNAL \arith_logic_unity|Add0~93_combout\ : std_logic;
SIGNAL \write_data[19]~29_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux12~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~94\ : std_logic;
SIGNAL \arith_logic_unity|Add0~95_combout\ : std_logic;
SIGNAL \write_data[20]~28_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[20]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux11~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~96\ : std_logic;
SIGNAL \arith_logic_unity|Add0~97_combout\ : std_logic;
SIGNAL \write_data[21]~27_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux10~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~98\ : std_logic;
SIGNAL \arith_logic_unity|Add0~99_combout\ : std_logic;
SIGNAL \branch_or_next~1_combout\ : std_logic;
SIGNAL \branch_or_next~0_combout\ : std_logic;
SIGNAL \branch_or_next~8_combout\ : std_logic;
SIGNAL \branch_or_next~3_combout\ : std_logic;
SIGNAL \branch_or_next~6_combout\ : std_logic;
SIGNAL \branch_or_next~4_combout\ : std_logic;
SIGNAL \branch_or_next~5_combout\ : std_logic;
SIGNAL \branch_or_next~7_combout\ : std_logic;
SIGNAL \branch_or_next~9_combout\ : std_logic;
SIGNAL \branch_or_next~10_combout\ : std_logic;
SIGNAL \branch_or_next~11_combout\ : std_logic;
SIGNAL \branch_or_next~2_combout\ : std_logic;
SIGNAL \branch_or_next~12_combout\ : std_logic;
SIGNAL \branch_or_next~13_combout\ : std_logic;
SIGNAL \branch_or_next~14_combout\ : std_logic;
SIGNAL \branch_or_next~15_combout\ : std_logic;
SIGNAL \pc_in[5]~5_combout\ : std_logic;
SIGNAL \instruction_memory|Mux8~0_combout\ : std_logic;
SIGNAL \branch_address[4]~2_combout\ : std_logic;
SIGNAL \pc_in[4]~3_combout\ : std_logic;
SIGNAL \pc_in[4]~4_combout\ : std_logic;
SIGNAL \register_file|registers_clk[1]~0_combout\ : std_logic;
SIGNAL \control|Equal1~0_combout\ : std_logic;
SIGNAL \pc_incremented[2]~0_combout\ : std_logic;
SIGNAL \pc_in[2]~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux9~1_combout\ : std_logic;
SIGNAL \branch_address[3]~0_combout\ : std_logic;
SIGNAL \pc_in[3]~2_combout\ : std_logic;
SIGNAL \instruction_memory|Mux4~0_combout\ : std_logic;
SIGNAL \control|Equal3~2_combout\ : std_logic;
SIGNAL \pc_incremented[5]~7\ : std_logic;
SIGNAL \pc_incremented[6]~8_combout\ : std_logic;
SIGNAL \branch_address[5]~5\ : std_logic;
SIGNAL \branch_address[6]~6_combout\ : std_logic;
SIGNAL \pc_in[6]~6_combout\ : std_logic;
SIGNAL \pc_incremented[6]~9\ : std_logic;
SIGNAL \pc_incremented[7]~10_combout\ : std_logic;
SIGNAL \branch_address[6]~7\ : std_logic;
SIGNAL \branch_address[7]~8_combout\ : std_logic;
SIGNAL \pc_in[7]~7_combout\ : std_logic;
SIGNAL \pc_incremented[7]~11\ : std_logic;
SIGNAL \pc_incremented[8]~12_combout\ : std_logic;
SIGNAL \branch_address[7]~9\ : std_logic;
SIGNAL \branch_address[8]~10_combout\ : std_logic;
SIGNAL \pc_in[8]~8_combout\ : std_logic;
SIGNAL \pc_incremented[8]~13\ : std_logic;
SIGNAL \pc_incremented[9]~14_combout\ : std_logic;
SIGNAL \branch_address[8]~11\ : std_logic;
SIGNAL \branch_address[9]~12_combout\ : std_logic;
SIGNAL \pc_in[9]~9_combout\ : std_logic;
SIGNAL \pc_incremented[9]~15\ : std_logic;
SIGNAL \pc_incremented[10]~16_combout\ : std_logic;
SIGNAL \branch_address[9]~13\ : std_logic;
SIGNAL \branch_address[10]~14_combout\ : std_logic;
SIGNAL \pc_in[10]~10_combout\ : std_logic;
SIGNAL \pc_incremented[10]~17\ : std_logic;
SIGNAL \pc_incremented[11]~18_combout\ : std_logic;
SIGNAL \branch_address[10]~15\ : std_logic;
SIGNAL \branch_address[11]~16_combout\ : std_logic;
SIGNAL \pc_in[11]~11_combout\ : std_logic;
SIGNAL \pc_incremented[11]~19\ : std_logic;
SIGNAL \pc_incremented[12]~20_combout\ : std_logic;
SIGNAL \branch_address[11]~17\ : std_logic;
SIGNAL \branch_address[12]~18_combout\ : std_logic;
SIGNAL \pc_in[12]~12_combout\ : std_logic;
SIGNAL \pc_incremented[12]~21\ : std_logic;
SIGNAL \pc_incremented[13]~22_combout\ : std_logic;
SIGNAL \branch_address[12]~19\ : std_logic;
SIGNAL \branch_address[13]~20_combout\ : std_logic;
SIGNAL \pc_in[13]~13_combout\ : std_logic;
SIGNAL \pc_incremented[13]~23\ : std_logic;
SIGNAL \pc_incremented[14]~24_combout\ : std_logic;
SIGNAL \branch_address[13]~21\ : std_logic;
SIGNAL \branch_address[14]~22_combout\ : std_logic;
SIGNAL \pc_in[14]~14_combout\ : std_logic;
SIGNAL \pc_incremented[14]~25\ : std_logic;
SIGNAL \pc_incremented[15]~26_combout\ : std_logic;
SIGNAL \branch_address[14]~23\ : std_logic;
SIGNAL \branch_address[15]~24_combout\ : std_logic;
SIGNAL \pc_in[15]~15_combout\ : std_logic;
SIGNAL \pc_incremented[15]~27\ : std_logic;
SIGNAL \pc_incremented[16]~28_combout\ : std_logic;
SIGNAL \branch_address[15]~25\ : std_logic;
SIGNAL \branch_address[16]~26_combout\ : std_logic;
SIGNAL \pc_in[16]~16_combout\ : std_logic;
SIGNAL \pc_incremented[16]~29\ : std_logic;
SIGNAL \pc_incremented[17]~30_combout\ : std_logic;
SIGNAL \branch_address[16]~27\ : std_logic;
SIGNAL \branch_address[17]~28_combout\ : std_logic;
SIGNAL \pc_in[17]~17_combout\ : std_logic;
SIGNAL \pc_incremented[17]~31\ : std_logic;
SIGNAL \pc_incremented[18]~32_combout\ : std_logic;
SIGNAL \branch_address[17]~29\ : std_logic;
SIGNAL \branch_address[18]~30_combout\ : std_logic;
SIGNAL \pc_in[18]~18_combout\ : std_logic;
SIGNAL \pc_incremented[18]~33\ : std_logic;
SIGNAL \pc_incremented[19]~34_combout\ : std_logic;
SIGNAL \branch_address[18]~31\ : std_logic;
SIGNAL \branch_address[19]~32_combout\ : std_logic;
SIGNAL \pc_in[19]~19_combout\ : std_logic;
SIGNAL \pc_incremented[19]~35\ : std_logic;
SIGNAL \pc_incremented[20]~36_combout\ : std_logic;
SIGNAL \branch_address[19]~33\ : std_logic;
SIGNAL \branch_address[20]~34_combout\ : std_logic;
SIGNAL \pc_in[20]~20_combout\ : std_logic;
SIGNAL \pc_incremented[20]~37\ : std_logic;
SIGNAL \pc_incremented[21]~38_combout\ : std_logic;
SIGNAL \branch_address[20]~35\ : std_logic;
SIGNAL \branch_address[21]~36_combout\ : std_logic;
SIGNAL \pc_in[21]~21_combout\ : std_logic;
SIGNAL \pc_incremented[21]~39\ : std_logic;
SIGNAL \pc_incremented[22]~40_combout\ : std_logic;
SIGNAL \branch_address[21]~37\ : std_logic;
SIGNAL \branch_address[22]~38_combout\ : std_logic;
SIGNAL \pc_in[22]~22_combout\ : std_logic;
SIGNAL \pc_incremented[22]~41\ : std_logic;
SIGNAL \pc_incremented[23]~42_combout\ : std_logic;
SIGNAL \branch_address[22]~39\ : std_logic;
SIGNAL \branch_address[23]~40_combout\ : std_logic;
SIGNAL \pc_in[23]~23_combout\ : std_logic;
SIGNAL \pc_incremented[23]~43\ : std_logic;
SIGNAL \pc_incremented[24]~44_combout\ : std_logic;
SIGNAL \branch_address[23]~41\ : std_logic;
SIGNAL \branch_address[24]~42_combout\ : std_logic;
SIGNAL \pc_in[24]~24_combout\ : std_logic;
SIGNAL \pc_incremented[24]~45\ : std_logic;
SIGNAL \pc_incremented[25]~46_combout\ : std_logic;
SIGNAL \branch_address[24]~43\ : std_logic;
SIGNAL \branch_address[25]~44_combout\ : std_logic;
SIGNAL \pc_in[25]~25_combout\ : std_logic;
SIGNAL \pc_incremented[25]~47\ : std_logic;
SIGNAL \pc_incremented[26]~48_combout\ : std_logic;
SIGNAL \branch_address[25]~45\ : std_logic;
SIGNAL \branch_address[26]~46_combout\ : std_logic;
SIGNAL \pc_in[26]~26_combout\ : std_logic;
SIGNAL \pc_incremented[26]~49\ : std_logic;
SIGNAL \pc_incremented[27]~50_combout\ : std_logic;
SIGNAL \branch_address[26]~47\ : std_logic;
SIGNAL \branch_address[27]~48_combout\ : std_logic;
SIGNAL \pc_in[27]~27_combout\ : std_logic;
SIGNAL \pc_incremented[27]~51\ : std_logic;
SIGNAL \pc_incremented[28]~52_combout\ : std_logic;
SIGNAL \branch_address[27]~49\ : std_logic;
SIGNAL \branch_address[28]~50_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \pc_incremented[28]~53\ : std_logic;
SIGNAL \pc_incremented[29]~54_combout\ : std_logic;
SIGNAL \branch_address[28]~51\ : std_logic;
SIGNAL \branch_address[29]~52_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \pc_incremented[29]~55\ : std_logic;
SIGNAL \pc_incremented[30]~56_combout\ : std_logic;
SIGNAL \branch_address[29]~53\ : std_logic;
SIGNAL \branch_address[30]~54_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \pc_incremented[30]~57\ : std_logic;
SIGNAL \pc_incremented[31]~58_combout\ : std_logic;
SIGNAL \branch_address[30]~55\ : std_logic;
SIGNAL \branch_address[31]~56_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \PC|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers_clk\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers:1:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers:0:regx|Q\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
data_memory_output <= ww_data_memory_output;
instruction_addr <= ww_instruction_addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\register_file|registers_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \register_file|registers_clk\(1));

\register_file|registers_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \register_file|registers_clk\(0));
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\data_memory_output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\data_memory_output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\data_memory_output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\data_memory_output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\data_memory_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\data_memory_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[5]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\data_memory_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[6]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\data_memory_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[7]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\data_memory_output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[8]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\data_memory_output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[9]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\data_memory_output[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[10]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\data_memory_output[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[11]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\data_memory_output[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[12]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\data_memory_output[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[13]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\data_memory_output[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[14]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\data_memory_output[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[15]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\data_memory_output[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[16]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\data_memory_output[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[17]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\data_memory_output[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[18]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\data_memory_output[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[19]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\data_memory_output[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[20]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\data_memory_output[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[21]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\data_memory_output[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[22]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\data_memory_output[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[23]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\data_memory_output[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[24]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\data_memory_output[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[25]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\data_memory_output[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[26]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\data_memory_output[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[27]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\data_memory_output[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[28]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\data_memory_output[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[29]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\data_memory_output[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[30]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\data_memory_output[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~2_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[31]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\instruction_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instruction_addr[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\instruction_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instruction_addr[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\instruction_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(2),
	devoe => ww_devoe,
	o => \instruction_addr[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\instruction_addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(3),
	devoe => ww_devoe,
	o => \instruction_addr[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\instruction_addr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(4),
	devoe => ww_devoe,
	o => \instruction_addr[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\instruction_addr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(5),
	devoe => ww_devoe,
	o => \instruction_addr[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\instruction_addr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(6),
	devoe => ww_devoe,
	o => \instruction_addr[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\instruction_addr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(7),
	devoe => ww_devoe,
	o => \instruction_addr[7]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\instruction_addr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(8),
	devoe => ww_devoe,
	o => \instruction_addr[8]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\instruction_addr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(9),
	devoe => ww_devoe,
	o => \instruction_addr[9]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\instruction_addr[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(10),
	devoe => ww_devoe,
	o => \instruction_addr[10]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\instruction_addr[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(11),
	devoe => ww_devoe,
	o => \instruction_addr[11]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\instruction_addr[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(12),
	devoe => ww_devoe,
	o => \instruction_addr[12]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\instruction_addr[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(13),
	devoe => ww_devoe,
	o => \instruction_addr[13]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\instruction_addr[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(14),
	devoe => ww_devoe,
	o => \instruction_addr[14]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\instruction_addr[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(15),
	devoe => ww_devoe,
	o => \instruction_addr[15]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\instruction_addr[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(16),
	devoe => ww_devoe,
	o => \instruction_addr[16]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\instruction_addr[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(17),
	devoe => ww_devoe,
	o => \instruction_addr[17]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\instruction_addr[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(18),
	devoe => ww_devoe,
	o => \instruction_addr[18]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\instruction_addr[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(19),
	devoe => ww_devoe,
	o => \instruction_addr[19]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\instruction_addr[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(20),
	devoe => ww_devoe,
	o => \instruction_addr[20]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\instruction_addr[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(21),
	devoe => ww_devoe,
	o => \instruction_addr[21]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\instruction_addr[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(22),
	devoe => ww_devoe,
	o => \instruction_addr[22]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\instruction_addr[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(23),
	devoe => ww_devoe,
	o => \instruction_addr[23]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\instruction_addr[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(24),
	devoe => ww_devoe,
	o => \instruction_addr[24]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\instruction_addr[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(25),
	devoe => ww_devoe,
	o => \instruction_addr[25]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\instruction_addr[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(26),
	devoe => ww_devoe,
	o => \instruction_addr[26]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\instruction_addr[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(27),
	devoe => ww_devoe,
	o => \instruction_addr[27]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\instruction_addr[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(28),
	devoe => ww_devoe,
	o => \instruction_addr[28]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\instruction_addr[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(29),
	devoe => ww_devoe,
	o => \instruction_addr[29]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\instruction_addr[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(30),
	devoe => ww_devoe,
	o => \instruction_addr[30]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\instruction_addr[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|Q\(31),
	devoe => ww_devoe,
	o => \instruction_addr[31]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: LCCOMB_X112_Y48_N2
\instruction_memory|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux3~0_combout\ = (\PC|Q\(3) & ((\PC|Q\(2)))) # (!\PC|Q\(3) & (!\PC|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(2),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y48_N2
\pc_incremented[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[2]~0_combout\ = \PC|Q\(2) $ (VCC)
-- \pc_incremented[2]~1\ = CARRY(\PC|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(2),
	datad => VCC,
	combout => \pc_incremented[2]~0_combout\,
	cout => \pc_incremented[2]~1\);

-- Location: LCCOMB_X111_Y48_N4
\pc_incremented[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[3]~2_combout\ = (\PC|Q\(3) & (!\pc_incremented[2]~1\)) # (!\PC|Q\(3) & ((\pc_incremented[2]~1\) # (GND)))
-- \pc_incremented[3]~3\ = CARRY((!\pc_incremented[2]~1\) # (!\PC|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datad => VCC,
	cin => \pc_incremented[2]~1\,
	combout => \pc_incremented[3]~2_combout\,
	cout => \pc_incremented[3]~3\);

-- Location: LCCOMB_X111_Y48_N6
\pc_incremented[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[4]~4_combout\ = (\PC|Q\(4) & (\pc_incremented[3]~3\ $ (GND))) # (!\PC|Q\(4) & (!\pc_incremented[3]~3\ & VCC))
-- \pc_incremented[4]~5\ = CARRY((\PC|Q\(4) & !\pc_incremented[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(4),
	datad => VCC,
	cin => \pc_incremented[3]~3\,
	combout => \pc_incremented[4]~4_combout\,
	cout => \pc_incremented[4]~5\);

-- Location: LCCOMB_X111_Y48_N8
\pc_incremented[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[5]~6_combout\ = (\PC|Q\(5) & (!\pc_incremented[4]~5\)) # (!\PC|Q\(5) & ((\pc_incremented[4]~5\) # (GND)))
-- \pc_incremented[5]~7\ = CARRY((!\pc_incremented[4]~5\) # (!\PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(5),
	datad => VCC,
	cin => \pc_incremented[4]~5\,
	combout => \pc_incremented[5]~6_combout\,
	cout => \pc_incremented[5]~7\);

-- Location: LCCOMB_X108_Y48_N4
\instruction_memory|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux9~0_combout\ = (!\PC|Q\(4) & !\PC|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \instruction_memory|Mux9~0_combout\);

-- Location: LCCOMB_X112_Y46_N20
\pc_in[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[3]~1_combout\ = (\instruction_memory|Mux9~0_combout\ & (((!\instruction_memory|Mux3~0_combout\) # (!\PC|Q\(3))) # (!\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \instruction_memory|Mux3~0_combout\,
	datad => \instruction_memory|Mux9~0_combout\,
	combout => \pc_in[3]~1_combout\);

-- Location: LCCOMB_X111_Y44_N4
\branch_address[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[3]~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\pc_incremented[3]~2_combout\ $ (VCC))) # (!\instruction_memory|Mux9~1_combout\ & (\pc_incremented[3]~2_combout\ & VCC))
-- \branch_address[3]~1\ = CARRY((\instruction_memory|Mux9~1_combout\ & \pc_incremented[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~1_combout\,
	datab => \pc_incremented[3]~2_combout\,
	datad => VCC,
	combout => \branch_address[3]~0_combout\,
	cout => \branch_address[3]~1\);

-- Location: LCCOMB_X111_Y44_N6
\branch_address[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[4]~2_combout\ = (\pc_incremented[4]~4_combout\ & ((\instruction_memory|Mux8~0_combout\ & (\branch_address[3]~1\ & VCC)) # (!\instruction_memory|Mux8~0_combout\ & (!\branch_address[3]~1\)))) # (!\pc_incremented[4]~4_combout\ & 
-- ((\instruction_memory|Mux8~0_combout\ & (!\branch_address[3]~1\)) # (!\instruction_memory|Mux8~0_combout\ & ((\branch_address[3]~1\) # (GND)))))
-- \branch_address[4]~3\ = CARRY((\pc_incremented[4]~4_combout\ & (!\instruction_memory|Mux8~0_combout\ & !\branch_address[3]~1\)) # (!\pc_incremented[4]~4_combout\ & ((!\branch_address[3]~1\) # (!\instruction_memory|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[4]~4_combout\,
	datab => \instruction_memory|Mux8~0_combout\,
	datad => VCC,
	cin => \branch_address[3]~1\,
	combout => \branch_address[4]~2_combout\,
	cout => \branch_address[4]~3\);

-- Location: LCCOMB_X111_Y44_N8
\branch_address[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[5]~4_combout\ = (\pc_incremented[5]~6_combout\ & (\branch_address[4]~3\ $ (GND))) # (!\pc_incremented[5]~6_combout\ & (!\branch_address[4]~3\ & VCC))
-- \branch_address[5]~5\ = CARRY((\pc_incremented[5]~6_combout\ & !\branch_address[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[5]~6_combout\,
	datad => VCC,
	cin => \branch_address[4]~3\,
	combout => \branch_address[5]~4_combout\,
	cout => \branch_address[5]~5\);

-- Location: LCCOMB_X112_Y48_N26
\instruction_memory|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux3~1_combout\ = (\PC|Q\(4)) # ((\PC|Q\(5)) # (\instruction_memory|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(4),
	datac => \PC|Q\(5),
	datad => \instruction_memory|Mux3~0_combout\,
	combout => \instruction_memory|Mux3~1_combout\);

-- Location: LCCOMB_X112_Y48_N16
\instruction_memory|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux9~2_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & !\PC|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(4),
	datac => \PC|Q\(5),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux9~2_combout\);

-- Location: LCCOMB_X112_Y48_N12
\control|regWrite~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|regWrite~0_combout\ = (\instruction_memory|Mux3~1_combout\ & (!\instruction_memory|Mux4~0_combout\)) # (!\instruction_memory|Mux3~1_combout\ & ((!\instruction_memory|Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux4~0_combout\,
	datac => \instruction_memory|Mux3~1_combout\,
	datad => \instruction_memory|Mux9~2_combout\,
	combout => \control|regWrite~0_combout\);

-- Location: LCCOMB_X112_Y48_N14
\register_file|registers_clk[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(1) = LCELL((\register_file|registers_clk[1]~0_combout\ & (!\CLK~input_o\ & \control|regWrite~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers_clk[1]~0_combout\,
	datac => \CLK~input_o\,
	datad => \control|regWrite~0_combout\,
	combout => \register_file|registers_clk\(1));

-- Location: CLKCTRL_G7
\register_file|registers_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \register_file|registers_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \register_file|registers_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X112_Y46_N14
\control|aluOp[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluOp[1]~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & (!\PC|Q\(3) & !\instruction_memory|Mux3~0_combout\)) # (!\PC|Q\(2) & (\PC|Q\(3) $ (\instruction_memory|Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \instruction_memory|Mux3~0_combout\,
	datad => \instruction_memory|Mux9~0_combout\,
	combout => \control|aluOp[1]~0_combout\);

-- Location: LCCOMB_X106_Y46_N26
\write_data[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[22]~26_combout\ = (\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~99_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Add0~99_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[22]~26_combout\);

-- Location: FF_X106_Y46_N15
\register_file|registers:1:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[22]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(22));

-- Location: LCCOMB_X112_Y48_N22
\register_file|mux2|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux30~0_combout\ = (\PC|Q\(4)) # ((\PC|Q\(5)) # (\PC|Q\(2) $ (!\PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \register_file|mux2|Mux30~0_combout\);

-- Location: LCCOMB_X112_Y48_N18
\register_file|registers_clk[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(0) = LCELL((!\CLK~input_o\ & (\register_file|mux2|Mux30~0_combout\ & \control|regWrite~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK~input_o\,
	datac => \register_file|mux2|Mux30~0_combout\,
	datad => \control|regWrite~0_combout\,
	combout => \register_file|registers_clk\(0));

-- Location: CLKCTRL_G6
\register_file|registers_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \register_file|registers_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \register_file|registers_clk[0]~clkctrl_outclk\);

-- Location: FF_X106_Y46_N1
\register_file|registers:0:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[22]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(22));

-- Location: LCCOMB_X106_Y46_N8
\register_file|mux1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux9~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & ((\register_file|registers:0:regx|Q\(22)))) # (!\PC|Q\(2) & (\register_file|registers:1:regx|Q\(22))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:1:regx|Q\(22),
	datad => \register_file|registers:0:regx|Q\(22),
	combout => \register_file|mux1|Mux9~0_combout\);

-- Location: LCCOMB_X112_Y48_N28
\control|aluSrc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluSrc~0_combout\ = (\PC|Q\(4)) # ((\PC|Q\(5)) # (\PC|Q\(3) $ (!\instruction_memory|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \instruction_memory|Mux3~0_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \control|aluSrc~0_combout\);

-- Location: LCCOMB_X106_Y46_N2
\arith_logic_unity|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~77_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(22) & ((!\register_file|registers:1:regx|Q\(22)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(22))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:1:regx|Q\(22),
	datad => \register_file|registers:0:regx|Q\(22),
	combout => \arith_logic_unity|Add0~77_combout\);

-- Location: LCCOMB_X106_Y46_N22
\arith_logic_unity|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~83_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~77_combout\,
	combout => \arith_logic_unity|Add0~83_combout\);

-- Location: FF_X106_Y46_N25
\register_file|registers:1:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[21]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(21));

-- Location: LCCOMB_X106_Y46_N10
\arith_logic_unity|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~78_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(21) & ((!\register_file|registers:1:regx|Q\(21)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(21))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(21),
	datad => \register_file|registers:1:regx|Q\(21),
	combout => \arith_logic_unity|Add0~78_combout\);

-- Location: LCCOMB_X106_Y46_N28
\arith_logic_unity|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~84_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~78_combout\,
	combout => \arith_logic_unity|Add0~84_combout\);

-- Location: FF_X105_Y46_N29
\register_file|registers:0:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[20]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(20));

-- Location: LCCOMB_X105_Y46_N18
\arith_logic_unity|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~79_combout\ = (\register_file|registers_clk[1]~0_combout\ & (!\register_file|registers:1:regx|Q\(20) & ((!\register_file|registers:0:regx|Q\(20)) # (!\register_file|mux2|Mux30~0_combout\)))) # 
-- (!\register_file|registers_clk[1]~0_combout\ & (((!\register_file|registers:0:regx|Q\(20))) # (!\register_file|mux2|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers_clk[1]~0_combout\,
	datab => \register_file|mux2|Mux30~0_combout\,
	datac => \register_file|registers:1:regx|Q\(20),
	datad => \register_file|registers:0:regx|Q\(20),
	combout => \arith_logic_unity|Add0~79_combout\);

-- Location: LCCOMB_X105_Y46_N16
\arith_logic_unity|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~85_combout\ = ((!\control|aluSrc~0_combout\ & !\PC|Q\(2))) # (!\arith_logic_unity|Add0~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~79_combout\,
	combout => \arith_logic_unity|Add0~85_combout\);

-- Location: FF_X108_Y47_N11
\register_file|registers:1:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[19]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(19));

-- Location: LCCOMB_X108_Y47_N12
\arith_logic_unity|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~80_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(19) & ((!\register_file|registers:1:regx|Q\(19)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(19))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(19),
	datad => \register_file|registers:1:regx|Q\(19),
	combout => \arith_logic_unity|Add0~80_combout\);

-- Location: LCCOMB_X108_Y47_N22
\arith_logic_unity|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~86_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~80_combout\,
	combout => \arith_logic_unity|Add0~86_combout\);

-- Location: FF_X108_Y46_N19
\register_file|registers:0:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[18]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(18));

-- Location: LCCOMB_X108_Y46_N14
\arith_logic_unity|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~81_combout\ = (\register_file|registers_clk[1]~0_combout\ & (!\register_file|registers:1:regx|Q\(18) & ((!\register_file|registers:0:regx|Q\(18)) # (!\register_file|mux2|Mux30~0_combout\)))) # 
-- (!\register_file|registers_clk[1]~0_combout\ & (((!\register_file|registers:0:regx|Q\(18))) # (!\register_file|mux2|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers_clk[1]~0_combout\,
	datab => \register_file|mux2|Mux30~0_combout\,
	datac => \register_file|registers:1:regx|Q\(18),
	datad => \register_file|registers:0:regx|Q\(18),
	combout => \arith_logic_unity|Add0~81_combout\);

-- Location: LCCOMB_X108_Y46_N30
\arith_logic_unity|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~87_combout\ = ((!\control|aluSrc~0_combout\ & !\PC|Q\(2))) # (!\arith_logic_unity|Add0~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datac => \arith_logic_unity|Add0~81_combout\,
	datad => \PC|Q\(2),
	combout => \arith_logic_unity|Add0~87_combout\);

-- Location: FF_X108_Y46_N1
\register_file|registers:0:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[17]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(17));

-- Location: LCCOMB_X108_Y46_N24
\arith_logic_unity|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~82_combout\ = (\register_file|registers_clk[1]~0_combout\ & (!\register_file|registers:1:regx|Q\(17) & ((!\register_file|mux2|Mux30~0_combout\) # (!\register_file|registers:0:regx|Q\(17))))) # 
-- (!\register_file|registers_clk[1]~0_combout\ & (((!\register_file|mux2|Mux30~0_combout\)) # (!\register_file|registers:0:regx|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers_clk[1]~0_combout\,
	datab => \register_file|registers:0:regx|Q\(17),
	datac => \register_file|mux2|Mux30~0_combout\,
	datad => \register_file|registers:1:regx|Q\(17),
	combout => \arith_logic_unity|Add0~82_combout\);

-- Location: LCCOMB_X108_Y46_N12
\arith_logic_unity|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~88_combout\ = ((!\control|aluSrc~0_combout\ & !\PC|Q\(2))) # (!\arith_logic_unity|Add0~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datac => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~82_combout\,
	combout => \arith_logic_unity|Add0~88_combout\);

-- Location: FF_X108_Y47_N29
\register_file|registers:1:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[16]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(16));

-- Location: LCCOMB_X108_Y47_N28
\register_file|mux1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux15~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(16))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & (\register_file|registers:1:regx|Q\(16))) # (!\instruction_memory|Mux9~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:1:regx|Q\(16),
	datad => \register_file|registers:0:regx|Q\(16),
	combout => \register_file|mux1|Mux15~0_combout\);

-- Location: FF_X108_Y46_N21
\register_file|registers:1:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[15]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(15));

-- Location: LCCOMB_X108_Y46_N20
\register_file|mux1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux16~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & ((\register_file|registers:0:regx|Q\(15)))) # (!\PC|Q\(2) & (\register_file|registers:1:regx|Q\(15))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:1:regx|Q\(15),
	datad => \register_file|registers:0:regx|Q\(15),
	combout => \register_file|mux1|Mux16~0_combout\);

-- Location: FF_X108_Y45_N1
\register_file|registers:1:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[14]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(14));

-- Location: LCCOMB_X108_Y45_N8
\register_file|mux1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux17~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(14))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(14)))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(14),
	datad => \register_file|registers:1:regx|Q\(14),
	combout => \register_file|mux1|Mux17~0_combout\);

-- Location: FF_X110_Y46_N3
\register_file|registers:0:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[13]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(13));

-- Location: LCCOMB_X110_Y46_N12
\arith_logic_unity|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~12_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(13) & ((!\register_file|registers:1:regx|Q\(13)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(13)) # (!\register_file|registers_clk[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers:0:regx|Q\(13),
	datac => \register_file|registers_clk[1]~0_combout\,
	datad => \register_file|registers:1:regx|Q\(13),
	combout => \arith_logic_unity|Add0~12_combout\);

-- Location: LCCOMB_X110_Y46_N6
\arith_logic_unity|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~13_combout\ = ((!\control|aluSrc~0_combout\ & !\PC|Q\(2))) # (!\arith_logic_unity|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluSrc~0_combout\,
	datac => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~12_combout\,
	combout => \arith_logic_unity|Add0~13_combout\);

-- Location: FF_X108_Y45_N25
\register_file|registers:0:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[12]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(12));

-- Location: LCCOMB_X108_Y45_N26
\register_file|mux1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux19~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & ((\register_file|registers:0:regx|Q\(12)))) # (!\PC|Q\(2) & (\register_file|registers:1:regx|Q\(12))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:1:regx|Q\(12),
	datad => \register_file|registers:0:regx|Q\(12),
	combout => \register_file|mux1|Mux19~0_combout\);

-- Location: FF_X110_Y47_N7
\register_file|registers:0:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[11]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(11));

-- Location: LCCOMB_X110_Y47_N8
\register_file|mux1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux20~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(11))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & (\register_file|registers:1:regx|Q\(11))) # (!\instruction_memory|Mux9~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:1:regx|Q\(11),
	datad => \register_file|registers:0:regx|Q\(11),
	combout => \register_file|mux1|Mux20~0_combout\);

-- Location: FF_X110_Y47_N25
\register_file|registers:1:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[10]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(10));

-- Location: LCCOMB_X110_Y47_N28
\register_file|mux1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux21~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(10))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:1:regx|Q\(10)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:0:regx|Q\(10),
	datad => \register_file|registers:1:regx|Q\(10),
	combout => \register_file|mux1|Mux21~0_combout\);

-- Location: FF_X107_Y45_N13
\register_file|registers:1:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[9]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(9));

-- Location: LCCOMB_X107_Y45_N0
\arith_logic_unity|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~20_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(9) & ((!\register_file|registers:1:regx|Q\(9)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ & 
-- (((!\register_file|registers:1:regx|Q\(9))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(9),
	datad => \register_file|registers:1:regx|Q\(9),
	combout => \arith_logic_unity|Add0~20_combout\);

-- Location: LCCOMB_X108_Y46_N28
\arith_logic_unity|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~21_combout\ = ((!\control|aluSrc~0_combout\ & !\PC|Q\(2))) # (!\arith_logic_unity|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datac => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~20_combout\,
	combout => \arith_logic_unity|Add0~21_combout\);

-- Location: LCCOMB_X108_Y48_N16
\register_file|registers:0:regx|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[8]~feeder_combout\ = \write_data[8]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_data[8]~9_combout\,
	combout => \register_file|registers:0:regx|Q[8]~feeder_combout\);

-- Location: FF_X108_Y48_N17
\register_file|registers:0:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(8));

-- Location: LCCOMB_X108_Y48_N22
\register_file|mux1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux23~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(8))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & (\register_file|registers:1:regx|Q\(8))) # (!\instruction_memory|Mux9~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:1:regx|Q\(8),
	datad => \register_file|registers:0:regx|Q\(8),
	combout => \register_file|mux1|Mux23~0_combout\);

-- Location: LCCOMB_X108_Y48_N0
\register_file|registers:1:regx|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[7]~feeder_combout\ = \write_data[7]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[7]~10_combout\,
	combout => \register_file|registers:1:regx|Q[7]~feeder_combout\);

-- Location: FF_X108_Y48_N1
\register_file|registers:1:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(7));

-- Location: LCCOMB_X108_Y48_N14
\register_file|mux1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux24~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(7))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:1:regx|Q\(7)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:0:regx|Q\(7),
	datad => \register_file|registers:1:regx|Q\(7),
	combout => \register_file|mux1|Mux24~0_combout\);

-- Location: FF_X106_Y47_N29
\register_file|registers:1:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[6]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(6));

-- Location: LCCOMB_X106_Y47_N20
\arith_logic_unity|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~26_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(6) & ((!\register_file|registers:1:regx|Q\(6)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ & 
-- (((!\register_file|registers:1:regx|Q\(6))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(6),
	datad => \register_file|registers:1:regx|Q\(6),
	combout => \arith_logic_unity|Add0~26_combout\);

-- Location: LCCOMB_X109_Y47_N2
\arith_logic_unity|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~27_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~26_combout\,
	combout => \arith_logic_unity|Add0~27_combout\);

-- Location: FF_X106_Y47_N13
\register_file|registers:0:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[5]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(5));

-- Location: LCCOMB_X106_Y47_N2
\arith_logic_unity|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~28_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(5) & ((!\register_file|registers:1:regx|Q\(5)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ & 
-- (((!\register_file|registers:1:regx|Q\(5))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:1:regx|Q\(5),
	datad => \register_file|registers:0:regx|Q\(5),
	combout => \arith_logic_unity|Add0~28_combout\);

-- Location: LCCOMB_X106_Y47_N16
\arith_logic_unity|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~29_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~28_combout\,
	combout => \arith_logic_unity|Add0~29_combout\);

-- Location: FF_X110_Y47_N3
\register_file|registers:1:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[4]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(4));

-- Location: LCCOMB_X110_Y47_N18
\register_file|mux1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux27~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(4))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:1:regx|Q\(4)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:0:regx|Q\(4),
	datad => \register_file|registers:1:regx|Q\(4),
	combout => \register_file|mux1|Mux27~0_combout\);

-- Location: FF_X106_Y47_N9
\register_file|registers:0:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[3]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(3));

-- Location: LCCOMB_X106_Y47_N18
\arith_logic_unity|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~32_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(3) & ((!\register_file|registers:1:regx|Q\(3)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ & 
-- (((!\register_file|registers:1:regx|Q\(3))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(3),
	datad => \register_file|registers:1:regx|Q\(3),
	combout => \arith_logic_unity|Add0~32_combout\);

-- Location: LCCOMB_X109_Y47_N8
\arith_logic_unity|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~33_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~32_combout\,
	combout => \arith_logic_unity|Add0~33_combout\);

-- Location: FF_X106_Y47_N1
\register_file|registers:1:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[2]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(2));

-- Location: LCCOMB_X106_Y47_N4
\register_file|mux1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux29~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(2))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(2)))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(2),
	datab => \register_file|registers:1:regx|Q\(2),
	datac => \instruction_memory|Mux9~0_combout\,
	datad => \PC|Q\(2),
	combout => \register_file|mux1|Mux29~0_combout\);

-- Location: FF_X108_Y47_N17
\register_file|registers:0:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[1]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(1));

-- Location: LCCOMB_X108_Y47_N18
\register_file|mux1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux30~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(1))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & (\register_file|registers:1:regx|Q\(1))) # (!\instruction_memory|Mux9~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:1:regx|Q\(1),
	datad => \register_file|registers:0:regx|Q\(1),
	combout => \register_file|mux1|Mux30~0_combout\);

-- Location: FF_X109_Y47_N1
\register_file|registers:1:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(0));

-- Location: LCCOMB_X109_Y47_N0
\register_file|mux1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux31~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(0))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(0)))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \register_file|registers:0:regx|Q\(0),
	datac => \register_file|registers:1:regx|Q\(0),
	datad => \PC|Q\(2),
	combout => \register_file|mux1|Mux31~0_combout\);

-- Location: LCCOMB_X109_Y47_N16
\arith_logic_unity|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~3_cout\ = CARRY((\control|aluSrc~0_combout\) # (\PC|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \PC|Q\(2),
	datad => VCC,
	cout => \arith_logic_unity|Add0~3_cout\);

-- Location: LCCOMB_X109_Y47_N18
\arith_logic_unity|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~4_combout\ = (\arith_logic_unity|Add0~1_combout\ & ((\register_file|mux1|Mux31~0_combout\ & (!\arith_logic_unity|Add0~3_cout\)) # (!\register_file|mux1|Mux31~0_combout\ & ((\arith_logic_unity|Add0~3_cout\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~1_combout\ & ((\register_file|mux1|Mux31~0_combout\ & (\arith_logic_unity|Add0~3_cout\ & VCC)) # (!\register_file|mux1|Mux31~0_combout\ & (!\arith_logic_unity|Add0~3_cout\))))
-- \arith_logic_unity|Add0~5\ = CARRY((\arith_logic_unity|Add0~1_combout\ & ((!\arith_logic_unity|Add0~3_cout\) # (!\register_file|mux1|Mux31~0_combout\))) # (!\arith_logic_unity|Add0~1_combout\ & (!\register_file|mux1|Mux31~0_combout\ & 
-- !\arith_logic_unity|Add0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~1_combout\,
	datab => \register_file|mux1|Mux31~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~3_cout\,
	combout => \arith_logic_unity|Add0~4_combout\,
	cout => \arith_logic_unity|Add0~5\);

-- Location: FF_X106_Y45_N7
\register_file|registers:1:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[31]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(31));

-- Location: LCCOMB_X106_Y45_N8
\register_file|mux1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux0~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(31))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:1:regx|Q\(31)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:0:regx|Q\(31),
	datad => \register_file|registers:1:regx|Q\(31),
	combout => \register_file|mux1|Mux0~0_combout\);

-- Location: LCCOMB_X106_Y45_N18
\arith_logic_unity|Add0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~125_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~68_combout\,
	combout => \arith_logic_unity|Add0~125_combout\);

-- Location: FF_X106_Y45_N19
\register_file|registers:1:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[30]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(30));

-- Location: LCCOMB_X106_Y45_N10
\arith_logic_unity|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~69_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(30) & ((!\register_file|registers:1:regx|Q\(30)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(30)) # (!\register_file|registers_clk[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers:0:regx|Q\(30),
	datac => \register_file|registers_clk[1]~0_combout\,
	datad => \register_file|registers:1:regx|Q\(30),
	combout => \arith_logic_unity|Add0~69_combout\);

-- Location: LCCOMB_X106_Y45_N30
\arith_logic_unity|Add0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~113_combout\ = ((!\control|aluSrc~0_combout\ & !\PC|Q\(2))) # (!\arith_logic_unity|Add0~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluSrc~0_combout\,
	datac => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~69_combout\,
	combout => \arith_logic_unity|Add0~113_combout\);

-- Location: FF_X107_Y45_N29
\register_file|registers:0:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[29]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(29));

-- Location: LCCOMB_X107_Y45_N10
\arith_logic_unity|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~70_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(29) & ((!\register_file|registers:1:regx|Q\(29)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(29))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:1:regx|Q\(29),
	datad => \register_file|registers:0:regx|Q\(29),
	combout => \arith_logic_unity|Add0~70_combout\);

-- Location: LCCOMB_X107_Y45_N30
\arith_logic_unity|Add0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~114_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~70_combout\,
	combout => \arith_logic_unity|Add0~114_combout\);

-- Location: LCCOMB_X107_Y45_N18
\register_file|registers:0:regx|Q[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[28]~feeder_combout\ = \write_data[28]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[28]~20_combout\,
	combout => \register_file|registers:0:regx|Q[28]~feeder_combout\);

-- Location: FF_X107_Y45_N19
\register_file|registers:0:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(28));

-- Location: LCCOMB_X107_Y45_N16
\arith_logic_unity|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~71_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(28) & ((!\register_file|registers:1:regx|Q\(28)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(28))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:1:regx|Q\(28),
	datad => \register_file|registers:0:regx|Q\(28),
	combout => \arith_logic_unity|Add0~71_combout\);

-- Location: LCCOMB_X108_Y45_N22
\arith_logic_unity|Add0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~115_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~71_combout\,
	combout => \arith_logic_unity|Add0~115_combout\);

-- Location: FF_X109_Y45_N29
\register_file|registers:1:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[27]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(27));

-- Location: LCCOMB_X109_Y45_N26
\arith_logic_unity|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~72_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(27) & ((!\register_file|registers:1:regx|Q\(27)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(27))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(27),
	datad => \register_file|registers:1:regx|Q\(27),
	combout => \arith_logic_unity|Add0~72_combout\);

-- Location: LCCOMB_X109_Y45_N30
\arith_logic_unity|Add0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~116_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~72_combout\,
	datab => \PC|Q\(2),
	datad => \control|aluSrc~0_combout\,
	combout => \arith_logic_unity|Add0~116_combout\);

-- Location: FF_X108_Y45_N7
\register_file|registers:1:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[26]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(26));

-- Location: LCCOMB_X108_Y45_N6
\register_file|mux1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux5~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & ((\register_file|registers:0:regx|Q\(26)))) # (!\PC|Q\(2) & (\register_file|registers:1:regx|Q\(26))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:1:regx|Q\(26),
	datad => \register_file|registers:0:regx|Q\(26),
	combout => \register_file|mux1|Mux5~0_combout\);

-- Location: FF_X108_Y45_N29
\register_file|registers:0:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[25]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(25));

-- Location: LCCOMB_X108_Y45_N14
\register_file|mux1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux6~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & ((\register_file|registers:0:regx|Q\(25)))) # (!\PC|Q\(2) & (\register_file|registers:1:regx|Q\(25))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:1:regx|Q\(25),
	datad => \register_file|registers:0:regx|Q\(25),
	combout => \register_file|mux1|Mux6~0_combout\);

-- Location: FF_X106_Y45_N25
\register_file|registers:1:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[24]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(24));

-- Location: LCCOMB_X106_Y45_N22
\register_file|mux1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux7~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(24))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:1:regx|Q\(24)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:0:regx|Q\(24),
	datad => \register_file|registers:1:regx|Q\(24),
	combout => \register_file|mux1|Mux7~0_combout\);

-- Location: FF_X106_Y46_N19
\register_file|registers:1:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[23]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(23));

-- Location: LCCOMB_X106_Y46_N6
\arith_logic_unity|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~76_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(23) & ((!\register_file|registers:1:regx|Q\(23)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(23))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(23),
	datad => \register_file|registers:1:regx|Q\(23),
	combout => \arith_logic_unity|Add0~76_combout\);

-- Location: LCCOMB_X106_Y46_N30
\arith_logic_unity|Add0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~104_combout\ = ((!\control|aluSrc~0_combout\ & !\PC|Q\(2))) # (!\arith_logic_unity|Add0~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluSrc~0_combout\,
	datac => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~76_combout\,
	combout => \arith_logic_unity|Add0~104_combout\);

-- Location: LCCOMB_X109_Y46_N30
\arith_logic_unity|Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~99_combout\ = (\register_file|mux1|Mux9~0_combout\ & ((\arith_logic_unity|Add0~83_combout\ & (!\arith_logic_unity|Add0~98\)) # (!\arith_logic_unity|Add0~83_combout\ & (\arith_logic_unity|Add0~98\ & VCC)))) # 
-- (!\register_file|mux1|Mux9~0_combout\ & ((\arith_logic_unity|Add0~83_combout\ & ((\arith_logic_unity|Add0~98\) # (GND))) # (!\arith_logic_unity|Add0~83_combout\ & (!\arith_logic_unity|Add0~98\))))
-- \arith_logic_unity|Add0~100\ = CARRY((\register_file|mux1|Mux9~0_combout\ & (\arith_logic_unity|Add0~83_combout\ & !\arith_logic_unity|Add0~98\)) # (!\register_file|mux1|Mux9~0_combout\ & ((\arith_logic_unity|Add0~83_combout\) # 
-- (!\arith_logic_unity|Add0~98\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux9~0_combout\,
	datab => \arith_logic_unity|Add0~83_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~98\,
	combout => \arith_logic_unity|Add0~99_combout\,
	cout => \arith_logic_unity|Add0~100\);

-- Location: LCCOMB_X109_Y45_N0
\arith_logic_unity|Add0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~105_combout\ = ((\register_file|mux1|Mux8~0_combout\ $ (\arith_logic_unity|Add0~104_combout\ $ (\arith_logic_unity|Add0~100\)))) # (GND)
-- \arith_logic_unity|Add0~106\ = CARRY((\register_file|mux1|Mux8~0_combout\ & ((!\arith_logic_unity|Add0~100\) # (!\arith_logic_unity|Add0~104_combout\))) # (!\register_file|mux1|Mux8~0_combout\ & (!\arith_logic_unity|Add0~104_combout\ & 
-- !\arith_logic_unity|Add0~100\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux8~0_combout\,
	datab => \arith_logic_unity|Add0~104_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~100\,
	combout => \arith_logic_unity|Add0~105_combout\,
	cout => \arith_logic_unity|Add0~106\);

-- Location: LCCOMB_X106_Y45_N26
\write_data[23]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[23]~25_combout\ = (\control|Equal3~2_combout\ & (\arith_logic_unity|Add0~105_combout\ & \control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~2_combout\,
	datab => \arith_logic_unity|Add0~105_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[23]~25_combout\);

-- Location: FF_X106_Y46_N5
\register_file|registers:0:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[23]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(23));

-- Location: LCCOMB_X106_Y46_N12
\register_file|mux1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux8~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(23))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(23)))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(23),
	datad => \register_file|registers:1:regx|Q\(23),
	combout => \register_file|mux1|Mux8~0_combout\);

-- Location: LCCOMB_X109_Y45_N2
\arith_logic_unity|Add0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~107_combout\ = (\arith_logic_unity|Add0~103_combout\ & ((\register_file|mux1|Mux7~0_combout\ & (!\arith_logic_unity|Add0~106\)) # (!\register_file|mux1|Mux7~0_combout\ & ((\arith_logic_unity|Add0~106\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~103_combout\ & ((\register_file|mux1|Mux7~0_combout\ & (\arith_logic_unity|Add0~106\ & VCC)) # (!\register_file|mux1|Mux7~0_combout\ & (!\arith_logic_unity|Add0~106\))))
-- \arith_logic_unity|Add0~108\ = CARRY((\arith_logic_unity|Add0~103_combout\ & ((!\arith_logic_unity|Add0~106\) # (!\register_file|mux1|Mux7~0_combout\))) # (!\arith_logic_unity|Add0~103_combout\ & (!\register_file|mux1|Mux7~0_combout\ & 
-- !\arith_logic_unity|Add0~106\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~103_combout\,
	datab => \register_file|mux1|Mux7~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~106\,
	combout => \arith_logic_unity|Add0~107_combout\,
	cout => \arith_logic_unity|Add0~108\);

-- Location: LCCOMB_X106_Y45_N20
\write_data[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[24]~24_combout\ = (\arith_logic_unity|Add0~107_combout\ & (\control|aluOp[1]~0_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~107_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[24]~24_combout\);

-- Location: FF_X106_Y45_N27
\register_file|registers:0:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[24]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(24));

-- Location: LCCOMB_X106_Y45_N28
\arith_logic_unity|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~75_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(24) & ((!\register_file|registers:1:regx|Q\(24)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(24))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(24),
	datad => \register_file|registers:1:regx|Q\(24),
	combout => \arith_logic_unity|Add0~75_combout\);

-- Location: LCCOMB_X106_Y45_N12
\arith_logic_unity|Add0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~103_combout\ = ((!\control|aluSrc~0_combout\ & !\PC|Q\(2))) # (!\arith_logic_unity|Add0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluSrc~0_combout\,
	datac => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~75_combout\,
	combout => \arith_logic_unity|Add0~103_combout\);

-- Location: LCCOMB_X109_Y45_N4
\arith_logic_unity|Add0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~109_combout\ = ((\arith_logic_unity|Add0~102_combout\ $ (\register_file|mux1|Mux6~0_combout\ $ (\arith_logic_unity|Add0~108\)))) # (GND)
-- \arith_logic_unity|Add0~110\ = CARRY((\arith_logic_unity|Add0~102_combout\ & (\register_file|mux1|Mux6~0_combout\ & !\arith_logic_unity|Add0~108\)) # (!\arith_logic_unity|Add0~102_combout\ & ((\register_file|mux1|Mux6~0_combout\) # 
-- (!\arith_logic_unity|Add0~108\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~102_combout\,
	datab => \register_file|mux1|Mux6~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~108\,
	combout => \arith_logic_unity|Add0~109_combout\,
	cout => \arith_logic_unity|Add0~110\);

-- Location: LCCOMB_X110_Y45_N8
\write_data[25]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[25]~23_combout\ = (\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~109_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Add0~109_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[25]~23_combout\);

-- Location: FF_X108_Y45_N15
\register_file|registers:1:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[25]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(25));

-- Location: LCCOMB_X108_Y45_N4
\arith_logic_unity|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~74_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(25) & ((!\register_file|registers:1:regx|Q\(25)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(25))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:1:regx|Q\(25),
	datad => \register_file|registers:0:regx|Q\(25),
	combout => \arith_logic_unity|Add0~74_combout\);

-- Location: LCCOMB_X108_Y45_N10
\arith_logic_unity|Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~102_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \arith_logic_unity|Add0~74_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \arith_logic_unity|Add0~102_combout\);

-- Location: LCCOMB_X109_Y45_N6
\arith_logic_unity|Add0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~111_combout\ = (\arith_logic_unity|Add0~101_combout\ & ((\register_file|mux1|Mux5~0_combout\ & (!\arith_logic_unity|Add0~110\)) # (!\register_file|mux1|Mux5~0_combout\ & ((\arith_logic_unity|Add0~110\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~101_combout\ & ((\register_file|mux1|Mux5~0_combout\ & (\arith_logic_unity|Add0~110\ & VCC)) # (!\register_file|mux1|Mux5~0_combout\ & (!\arith_logic_unity|Add0~110\))))
-- \arith_logic_unity|Add0~112\ = CARRY((\arith_logic_unity|Add0~101_combout\ & ((!\arith_logic_unity|Add0~110\) # (!\register_file|mux1|Mux5~0_combout\))) # (!\arith_logic_unity|Add0~101_combout\ & (!\register_file|mux1|Mux5~0_combout\ & 
-- !\arith_logic_unity|Add0~110\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~101_combout\,
	datab => \register_file|mux1|Mux5~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~110\,
	combout => \arith_logic_unity|Add0~111_combout\,
	cout => \arith_logic_unity|Add0~112\);

-- Location: LCCOMB_X110_Y45_N6
\write_data[26]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[26]~22_combout\ = (\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~111_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Add0~111_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[26]~22_combout\);

-- Location: FF_X108_Y45_N17
\register_file|registers:0:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[26]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(26));

-- Location: LCCOMB_X108_Y45_N16
\arith_logic_unity|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~73_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(26) & ((!\register_file|registers:1:regx|Q\(26)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(26))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(26),
	datad => \register_file|registers:1:regx|Q\(26),
	combout => \arith_logic_unity|Add0~73_combout\);

-- Location: LCCOMB_X109_Y45_N24
\arith_logic_unity|Add0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~101_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(2),
	datac => \arith_logic_unity|Add0~73_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \arith_logic_unity|Add0~101_combout\);

-- Location: LCCOMB_X109_Y45_N8
\arith_logic_unity|Add0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~117_combout\ = ((\register_file|mux1|Mux4~0_combout\ $ (\arith_logic_unity|Add0~116_combout\ $ (\arith_logic_unity|Add0~112\)))) # (GND)
-- \arith_logic_unity|Add0~118\ = CARRY((\register_file|mux1|Mux4~0_combout\ & ((!\arith_logic_unity|Add0~112\) # (!\arith_logic_unity|Add0~116_combout\))) # (!\register_file|mux1|Mux4~0_combout\ & (!\arith_logic_unity|Add0~116_combout\ & 
-- !\arith_logic_unity|Add0~112\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux4~0_combout\,
	datab => \arith_logic_unity|Add0~116_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~112\,
	combout => \arith_logic_unity|Add0~117_combout\,
	cout => \arith_logic_unity|Add0~118\);

-- Location: LCCOMB_X110_Y45_N12
\write_data[27]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[27]~21_combout\ = (\control|aluOp[1]~0_combout\ & (\control|Equal3~2_combout\ & \arith_logic_unity|Add0~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datac => \control|Equal3~2_combout\,
	datad => \arith_logic_unity|Add0~117_combout\,
	combout => \write_data[27]~21_combout\);

-- Location: FF_X109_Y45_N31
\register_file|registers:0:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[27]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(27));

-- Location: LCCOMB_X109_Y45_N28
\register_file|mux1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux4~0_combout\ = (\PC|Q\(2) & (\register_file|registers:0:regx|Q\(27))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:1:regx|Q\(27)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(27),
	datab => \PC|Q\(2),
	datac => \register_file|registers:1:regx|Q\(27),
	datad => \instruction_memory|Mux9~0_combout\,
	combout => \register_file|mux1|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y45_N10
\arith_logic_unity|Add0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~119_combout\ = (\register_file|mux1|Mux3~0_combout\ & ((\arith_logic_unity|Add0~115_combout\ & (!\arith_logic_unity|Add0~118\)) # (!\arith_logic_unity|Add0~115_combout\ & (\arith_logic_unity|Add0~118\ & VCC)))) # 
-- (!\register_file|mux1|Mux3~0_combout\ & ((\arith_logic_unity|Add0~115_combout\ & ((\arith_logic_unity|Add0~118\) # (GND))) # (!\arith_logic_unity|Add0~115_combout\ & (!\arith_logic_unity|Add0~118\))))
-- \arith_logic_unity|Add0~120\ = CARRY((\register_file|mux1|Mux3~0_combout\ & (\arith_logic_unity|Add0~115_combout\ & !\arith_logic_unity|Add0~118\)) # (!\register_file|mux1|Mux3~0_combout\ & ((\arith_logic_unity|Add0~115_combout\) # 
-- (!\arith_logic_unity|Add0~118\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux3~0_combout\,
	datab => \arith_logic_unity|Add0~115_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~118\,
	combout => \arith_logic_unity|Add0~119_combout\,
	cout => \arith_logic_unity|Add0~120\);

-- Location: LCCOMB_X107_Y45_N28
\write_data[28]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[28]~20_combout\ = (\arith_logic_unity|Add0~119_combout\ & (\control|Equal3~2_combout\ & \control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~119_combout\,
	datab => \control|Equal3~2_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[28]~20_combout\);

-- Location: FF_X107_Y45_N5
\register_file|registers:1:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[28]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(28));

-- Location: LCCOMB_X107_Y45_N26
\register_file|mux1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux3~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & ((\register_file|registers:0:regx|Q\(28)))) # (!\PC|Q\(2) & (\register_file|registers:1:regx|Q\(28))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:1:regx|Q\(28),
	datad => \register_file|registers:0:regx|Q\(28),
	combout => \register_file|mux1|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y45_N12
\arith_logic_unity|Add0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~121_combout\ = ((\register_file|mux1|Mux2~0_combout\ $ (\arith_logic_unity|Add0~114_combout\ $ (\arith_logic_unity|Add0~120\)))) # (GND)
-- \arith_logic_unity|Add0~122\ = CARRY((\register_file|mux1|Mux2~0_combout\ & ((!\arith_logic_unity|Add0~120\) # (!\arith_logic_unity|Add0~114_combout\))) # (!\register_file|mux1|Mux2~0_combout\ & (!\arith_logic_unity|Add0~114_combout\ & 
-- !\arith_logic_unity|Add0~120\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux2~0_combout\,
	datab => \arith_logic_unity|Add0~114_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~120\,
	combout => \arith_logic_unity|Add0~121_combout\,
	cout => \arith_logic_unity|Add0~122\);

-- Location: LCCOMB_X107_Y45_N4
\write_data[29]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[29]~19_combout\ = (\arith_logic_unity|Add0~121_combout\ & (\control|Equal3~2_combout\ & \control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~121_combout\,
	datab => \control|Equal3~2_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[29]~19_combout\);

-- Location: LCCOMB_X107_Y45_N22
\register_file|registers:1:regx|Q[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[29]~feeder_combout\ = \write_data[29]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[29]~19_combout\,
	combout => \register_file|registers:1:regx|Q[29]~feeder_combout\);

-- Location: FF_X107_Y45_N23
\register_file|registers:1:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(29));

-- Location: LCCOMB_X107_Y45_N24
\register_file|mux1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux2~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & ((\register_file|registers:0:regx|Q\(29)))) # (!\PC|Q\(2) & (\register_file|registers:1:regx|Q\(29))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:1:regx|Q\(29),
	datad => \register_file|registers:0:regx|Q\(29),
	combout => \register_file|mux1|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y45_N14
\arith_logic_unity|Add0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~123_combout\ = (\register_file|mux1|Mux1~0_combout\ & ((\arith_logic_unity|Add0~113_combout\ & (!\arith_logic_unity|Add0~122\)) # (!\arith_logic_unity|Add0~113_combout\ & (\arith_logic_unity|Add0~122\ & VCC)))) # 
-- (!\register_file|mux1|Mux1~0_combout\ & ((\arith_logic_unity|Add0~113_combout\ & ((\arith_logic_unity|Add0~122\) # (GND))) # (!\arith_logic_unity|Add0~113_combout\ & (!\arith_logic_unity|Add0~122\))))
-- \arith_logic_unity|Add0~124\ = CARRY((\register_file|mux1|Mux1~0_combout\ & (\arith_logic_unity|Add0~113_combout\ & !\arith_logic_unity|Add0~122\)) # (!\register_file|mux1|Mux1~0_combout\ & ((\arith_logic_unity|Add0~113_combout\) # 
-- (!\arith_logic_unity|Add0~122\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux1~0_combout\,
	datab => \arith_logic_unity|Add0~113_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~122\,
	combout => \arith_logic_unity|Add0~123_combout\,
	cout => \arith_logic_unity|Add0~124\);

-- Location: LCCOMB_X106_Y45_N6
\write_data[30]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[30]~18_combout\ = (\control|Equal3~2_combout\ & (\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~2_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~123_combout\,
	combout => \write_data[30]~18_combout\);

-- Location: FF_X106_Y45_N21
\register_file|registers:0:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[30]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(30));

-- Location: LCCOMB_X106_Y45_N0
\register_file|mux1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux1~0_combout\ = (\PC|Q\(2) & (\register_file|registers:0:regx|Q\(30))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:1:regx|Q\(30)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \register_file|registers:0:regx|Q\(30),
	datac => \instruction_memory|Mux9~0_combout\,
	datad => \register_file|registers:1:regx|Q\(30),
	combout => \register_file|mux1|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y45_N16
\arith_logic_unity|Add0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~126_combout\ = \register_file|mux1|Mux0~0_combout\ $ (\arith_logic_unity|Add0~124\ $ (\arith_logic_unity|Add0~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux0~0_combout\,
	datad => \arith_logic_unity|Add0~125_combout\,
	cin => \arith_logic_unity|Add0~124\,
	combout => \arith_logic_unity|Add0~126_combout\);

-- Location: LCCOMB_X106_Y45_N24
\write_data[31]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[31]~17_combout\ = (\control|Equal3~2_combout\ & (\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~2_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~126_combout\,
	combout => \write_data[31]~17_combout\);

-- Location: FF_X106_Y45_N9
\register_file|registers:0:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[31]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(31));

-- Location: LCCOMB_X106_Y45_N4
\arith_logic_unity|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~68_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(31) & ((!\register_file|registers:1:regx|Q\(31)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(31))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(31),
	datad => \register_file|registers:1:regx|Q\(31),
	combout => \arith_logic_unity|Add0~68_combout\);

-- Location: LCCOMB_X106_Y45_N14
\aluOp2[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[31]~0_combout\ = (!\arith_logic_unity|Add0~68_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~68_combout\,
	combout => \aluOp2[31]~0_combout\);

-- Location: LCCOMB_X106_Y45_N16
\aluOp2[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[30]~1_combout\ = (!\arith_logic_unity|Add0~69_combout\ & ((\control|aluSrc~0_combout\) # (\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluSrc~0_combout\,
	datac => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~69_combout\,
	combout => \aluOp2[30]~1_combout\);

-- Location: LCCOMB_X107_Y45_N20
\aluOp2[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[29]~2_combout\ = (!\arith_logic_unity|Add0~70_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~70_combout\,
	combout => \aluOp2[29]~2_combout\);

-- Location: LCCOMB_X107_Y45_N2
\aluOp2[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[28]~3_combout\ = (!\arith_logic_unity|Add0~71_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~71_combout\,
	combout => \aluOp2[28]~3_combout\);

-- Location: LCCOMB_X108_Y45_N30
\aluOp2[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[27]~4_combout\ = (!\arith_logic_unity|Add0~72_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~72_combout\,
	combout => \aluOp2[27]~4_combout\);

-- Location: LCCOMB_X108_Y45_N24
\aluOp2[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[26]~5_combout\ = (!\arith_logic_unity|Add0~73_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~73_combout\,
	combout => \aluOp2[26]~5_combout\);

-- Location: LCCOMB_X108_Y45_N0
\aluOp2[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[25]~6_combout\ = (!\arith_logic_unity|Add0~74_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~74_combout\,
	combout => \aluOp2[25]~6_combout\);

-- Location: LCCOMB_X106_Y45_N2
\aluOp2[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[24]~7_combout\ = (!\arith_logic_unity|Add0~75_combout\ & ((\control|aluSrc~0_combout\) # (\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluSrc~0_combout\,
	datac => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~75_combout\,
	combout => \aluOp2[24]~7_combout\);

-- Location: LCCOMB_X106_Y46_N18
\aluOp2[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[23]~8_combout\ = (!\arith_logic_unity|Add0~76_combout\ & ((\control|aluSrc~0_combout\) # (\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~76_combout\,
	combout => \aluOp2[23]~8_combout\);

-- Location: LCCOMB_X106_Y46_N24
\aluOp2[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[22]~9_combout\ = (!\arith_logic_unity|Add0~77_combout\ & ((\control|aluSrc~0_combout\) # (\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~77_combout\,
	combout => \aluOp2[22]~9_combout\);

-- Location: LCCOMB_X106_Y46_N14
\aluOp2[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[21]~10_combout\ = (!\arith_logic_unity|Add0~78_combout\ & ((\control|aluSrc~0_combout\) # (\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~78_combout\,
	combout => \aluOp2[21]~10_combout\);

-- Location: LCCOMB_X106_Y46_N16
\aluOp2[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[20]~11_combout\ = (!\arith_logic_unity|Add0~79_combout\ & ((\control|aluSrc~0_combout\) # (\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluSrc~0_combout\,
	datac => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~79_combout\,
	combout => \aluOp2[20]~11_combout\);

-- Location: LCCOMB_X108_Y47_N26
\aluOp2[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[19]~12_combout\ = (!\arith_logic_unity|Add0~80_combout\ & ((\control|aluSrc~0_combout\) # (\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~80_combout\,
	combout => \aluOp2[19]~12_combout\);

-- Location: LCCOMB_X108_Y46_N2
\aluOp2[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[18]~13_combout\ = (!\arith_logic_unity|Add0~81_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \arith_logic_unity|Add0~81_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \aluOp2[18]~13_combout\);

-- Location: LCCOMB_X108_Y46_N18
\aluOp2[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[17]~14_combout\ = (!\arith_logic_unity|Add0~82_combout\ & ((\control|aluSrc~0_combout\) # (\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~82_combout\,
	combout => \aluOp2[17]~14_combout\);

-- Location: LCCOMB_X108_Y47_N30
\aluOp2[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[16]~15_combout\ = (!\arith_logic_unity|Add0~6_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~6_combout\,
	combout => \aluOp2[16]~15_combout\);

-- Location: LCCOMB_X108_Y46_N22
\aluOp2[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[15]~16_combout\ = (!\arith_logic_unity|Add0~8_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(2),
	datac => \arith_logic_unity|Add0~8_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \aluOp2[15]~16_combout\);

-- Location: LCCOMB_X108_Y45_N28
\aluOp2[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[14]~17_combout\ = (!\arith_logic_unity|Add0~10_combout\ & ((\control|aluSrc~0_combout\) # (\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~10_combout\,
	combout => \aluOp2[14]~17_combout\);

-- Location: LCCOMB_X110_Y46_N0
\aluOp2[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[13]~18_combout\ = (!\arith_logic_unity|Add0~12_combout\ & ((\control|aluSrc~0_combout\) # (\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluSrc~0_combout\,
	datac => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~12_combout\,
	combout => \aluOp2[13]~18_combout\);

-- Location: LCCOMB_X108_Y47_N4
\aluOp2[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[12]~19_combout\ = (!\arith_logic_unity|Add0~14_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~14_combout\,
	combout => \aluOp2[12]~19_combout\);

-- Location: LCCOMB_X110_Y47_N2
\aluOp2[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[11]~20_combout\ = (!\arith_logic_unity|Add0~16_combout\ & ((\control|aluSrc~0_combout\) # (\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~16_combout\,
	combout => \aluOp2[11]~20_combout\);

-- Location: LCCOMB_X110_Y47_N12
\aluOp2[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[10]~21_combout\ = (!\arith_logic_unity|Add0~18_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~18_combout\,
	combout => \aluOp2[10]~21_combout\);

-- Location: LCCOMB_X107_Y45_N8
\aluOp2[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[9]~22_combout\ = (!\arith_logic_unity|Add0~20_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~20_combout\,
	combout => \aluOp2[9]~22_combout\);

-- Location: LCCOMB_X108_Y48_N24
\aluOp2[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[8]~23_combout\ = (!\arith_logic_unity|Add0~22_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~22_combout\,
	combout => \aluOp2[8]~23_combout\);

-- Location: LCCOMB_X108_Y48_N30
\aluOp2[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[7]~24_combout\ = (!\arith_logic_unity|Add0~24_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~24_combout\,
	combout => \aluOp2[7]~24_combout\);

-- Location: LCCOMB_X106_Y47_N6
\aluOp2[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[6]~25_combout\ = (!\arith_logic_unity|Add0~26_combout\ & ((\control|aluSrc~0_combout\) # (\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~26_combout\,
	combout => \aluOp2[6]~25_combout\);

-- Location: LCCOMB_X106_Y47_N22
\aluOp2[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[5]~26_combout\ = (!\arith_logic_unity|Add0~28_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~28_combout\,
	combout => \aluOp2[5]~26_combout\);

-- Location: LCCOMB_X110_Y47_N14
\aluOp2[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[4]~27_combout\ = (!\arith_logic_unity|Add0~30_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \arith_logic_unity|Add0~30_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \aluOp2[4]~27_combout\);

-- Location: LCCOMB_X106_Y47_N8
\aluOp2[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[3]~28_combout\ = (!\arith_logic_unity|Add0~32_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~32_combout\,
	combout => \aluOp2[3]~28_combout\);

-- Location: LCCOMB_X106_Y47_N14
\aluOp2[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[2]~29_combout\ = (\PC|Q\(2) & (((\register_file|mux2|Mux29~0_combout\)))) # (!\PC|Q\(2) & ((\control|aluSrc~0_combout\ & ((\register_file|mux2|Mux29~0_combout\))) # (!\control|aluSrc~0_combout\ & (\instruction_memory|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux8~0_combout\,
	datab => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux2|Mux29~0_combout\,
	combout => \aluOp2[2]~29_combout\);

-- Location: LCCOMB_X108_Y47_N6
\aluOp2[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[1]~30_combout\ = (\register_file|mux2|Mux30~1_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux2|Mux30~1_combout\,
	combout => \aluOp2[1]~30_combout\);

-- Location: LCCOMB_X108_Y47_N20
\aluOp2[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[0]~31_combout\ = (!\arith_logic_unity|Add0~0_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~0_combout\,
	combout => \aluOp2[0]~31_combout\);

-- Location: LCCOMB_X107_Y47_N0
\arith_logic_unity|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~1_cout\ = CARRY((\aluOp2[0]~31_combout\ & !\register_file|mux1|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[0]~31_combout\,
	datab => \register_file|mux1|Mux31~0_combout\,
	datad => VCC,
	cout => \arith_logic_unity|LessThan0~1_cout\);

-- Location: LCCOMB_X107_Y47_N2
\arith_logic_unity|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~3_cout\ = CARRY((\aluOp2[1]~30_combout\ & (\register_file|mux1|Mux30~0_combout\ & !\arith_logic_unity|LessThan0~1_cout\)) # (!\aluOp2[1]~30_combout\ & ((\register_file|mux1|Mux30~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[1]~30_combout\,
	datab => \register_file|mux1|Mux30~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~1_cout\,
	cout => \arith_logic_unity|LessThan0~3_cout\);

-- Location: LCCOMB_X107_Y47_N4
\arith_logic_unity|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~5_cout\ = CARRY((\aluOp2[2]~29_combout\ & ((!\arith_logic_unity|LessThan0~3_cout\) # (!\register_file|mux1|Mux29~0_combout\))) # (!\aluOp2[2]~29_combout\ & (!\register_file|mux1|Mux29~0_combout\ & 
-- !\arith_logic_unity|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[2]~29_combout\,
	datab => \register_file|mux1|Mux29~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~3_cout\,
	cout => \arith_logic_unity|LessThan0~5_cout\);

-- Location: LCCOMB_X107_Y47_N6
\arith_logic_unity|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~7_cout\ = CARRY((\aluOp2[3]~28_combout\ & (\register_file|mux1|Mux28~0_combout\ & !\arith_logic_unity|LessThan0~5_cout\)) # (!\aluOp2[3]~28_combout\ & ((\register_file|mux1|Mux28~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[3]~28_combout\,
	datab => \register_file|mux1|Mux28~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~5_cout\,
	cout => \arith_logic_unity|LessThan0~7_cout\);

-- Location: LCCOMB_X107_Y47_N8
\arith_logic_unity|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~9_cout\ = CARRY((\register_file|mux1|Mux27~0_combout\ & (\aluOp2[4]~27_combout\ & !\arith_logic_unity|LessThan0~7_cout\)) # (!\register_file|mux1|Mux27~0_combout\ & ((\aluOp2[4]~27_combout\) # 
-- (!\arith_logic_unity|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux27~0_combout\,
	datab => \aluOp2[4]~27_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~7_cout\,
	cout => \arith_logic_unity|LessThan0~9_cout\);

-- Location: LCCOMB_X107_Y47_N10
\arith_logic_unity|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~11_cout\ = CARRY((\register_file|mux1|Mux26~0_combout\ & ((!\arith_logic_unity|LessThan0~9_cout\) # (!\aluOp2[5]~26_combout\))) # (!\register_file|mux1|Mux26~0_combout\ & (!\aluOp2[5]~26_combout\ & 
-- !\arith_logic_unity|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux26~0_combout\,
	datab => \aluOp2[5]~26_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~9_cout\,
	cout => \arith_logic_unity|LessThan0~11_cout\);

-- Location: LCCOMB_X107_Y47_N12
\arith_logic_unity|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~13_cout\ = CARRY((\register_file|mux1|Mux25~0_combout\ & (\aluOp2[6]~25_combout\ & !\arith_logic_unity|LessThan0~11_cout\)) # (!\register_file|mux1|Mux25~0_combout\ & ((\aluOp2[6]~25_combout\) # 
-- (!\arith_logic_unity|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~0_combout\,
	datab => \aluOp2[6]~25_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~11_cout\,
	cout => \arith_logic_unity|LessThan0~13_cout\);

-- Location: LCCOMB_X107_Y47_N14
\arith_logic_unity|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~15_cout\ = CARRY((\aluOp2[7]~24_combout\ & (\register_file|mux1|Mux24~0_combout\ & !\arith_logic_unity|LessThan0~13_cout\)) # (!\aluOp2[7]~24_combout\ & ((\register_file|mux1|Mux24~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[7]~24_combout\,
	datab => \register_file|mux1|Mux24~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~13_cout\,
	cout => \arith_logic_unity|LessThan0~15_cout\);

-- Location: LCCOMB_X107_Y47_N16
\arith_logic_unity|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~17_cout\ = CARRY((\register_file|mux1|Mux23~0_combout\ & (\aluOp2[8]~23_combout\ & !\arith_logic_unity|LessThan0~15_cout\)) # (!\register_file|mux1|Mux23~0_combout\ & ((\aluOp2[8]~23_combout\) # 
-- (!\arith_logic_unity|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux23~0_combout\,
	datab => \aluOp2[8]~23_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~15_cout\,
	cout => \arith_logic_unity|LessThan0~17_cout\);

-- Location: LCCOMB_X107_Y47_N18
\arith_logic_unity|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~19_cout\ = CARRY((\register_file|mux1|Mux22~0_combout\ & ((!\arith_logic_unity|LessThan0~17_cout\) # (!\aluOp2[9]~22_combout\))) # (!\register_file|mux1|Mux22~0_combout\ & (!\aluOp2[9]~22_combout\ & 
-- !\arith_logic_unity|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux22~0_combout\,
	datab => \aluOp2[9]~22_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~17_cout\,
	cout => \arith_logic_unity|LessThan0~19_cout\);

-- Location: LCCOMB_X107_Y47_N20
\arith_logic_unity|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~21_cout\ = CARRY((\register_file|mux1|Mux21~0_combout\ & (\aluOp2[10]~21_combout\ & !\arith_logic_unity|LessThan0~19_cout\)) # (!\register_file|mux1|Mux21~0_combout\ & ((\aluOp2[10]~21_combout\) # 
-- (!\arith_logic_unity|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux21~0_combout\,
	datab => \aluOp2[10]~21_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~19_cout\,
	cout => \arith_logic_unity|LessThan0~21_cout\);

-- Location: LCCOMB_X107_Y47_N22
\arith_logic_unity|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~23_cout\ = CARRY((\register_file|mux1|Mux20~0_combout\ & ((!\arith_logic_unity|LessThan0~21_cout\) # (!\aluOp2[11]~20_combout\))) # (!\register_file|mux1|Mux20~0_combout\ & (!\aluOp2[11]~20_combout\ & 
-- !\arith_logic_unity|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux20~0_combout\,
	datab => \aluOp2[11]~20_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~21_cout\,
	cout => \arith_logic_unity|LessThan0~23_cout\);

-- Location: LCCOMB_X107_Y47_N24
\arith_logic_unity|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~25_cout\ = CARRY((\aluOp2[12]~19_combout\ & ((!\arith_logic_unity|LessThan0~23_cout\) # (!\register_file|mux1|Mux19~0_combout\))) # (!\aluOp2[12]~19_combout\ & (!\register_file|mux1|Mux19~0_combout\ & 
-- !\arith_logic_unity|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[12]~19_combout\,
	datab => \register_file|mux1|Mux19~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~23_cout\,
	cout => \arith_logic_unity|LessThan0~25_cout\);

-- Location: LCCOMB_X107_Y47_N26
\arith_logic_unity|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~27_cout\ = CARRY((\aluOp2[13]~18_combout\ & (\register_file|mux1|Mux18~0_combout\ & !\arith_logic_unity|LessThan0~25_cout\)) # (!\aluOp2[13]~18_combout\ & ((\register_file|mux1|Mux18~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[13]~18_combout\,
	datab => \register_file|mux1|Mux18~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~25_cout\,
	cout => \arith_logic_unity|LessThan0~27_cout\);

-- Location: LCCOMB_X107_Y47_N28
\arith_logic_unity|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~29_cout\ = CARRY((\register_file|mux1|Mux17~0_combout\ & (\aluOp2[14]~17_combout\ & !\arith_logic_unity|LessThan0~27_cout\)) # (!\register_file|mux1|Mux17~0_combout\ & ((\aluOp2[14]~17_combout\) # 
-- (!\arith_logic_unity|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux17~0_combout\,
	datab => \aluOp2[14]~17_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~27_cout\,
	cout => \arith_logic_unity|LessThan0~29_cout\);

-- Location: LCCOMB_X107_Y47_N30
\arith_logic_unity|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~31_cout\ = CARRY((\register_file|mux1|Mux16~0_combout\ & ((!\arith_logic_unity|LessThan0~29_cout\) # (!\aluOp2[15]~16_combout\))) # (!\register_file|mux1|Mux16~0_combout\ & (!\aluOp2[15]~16_combout\ & 
-- !\arith_logic_unity|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux16~0_combout\,
	datab => \aluOp2[15]~16_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~29_cout\,
	cout => \arith_logic_unity|LessThan0~31_cout\);

-- Location: LCCOMB_X107_Y46_N0
\arith_logic_unity|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~33_cout\ = CARRY((\register_file|mux1|Mux15~0_combout\ & (\aluOp2[16]~15_combout\ & !\arith_logic_unity|LessThan0~31_cout\)) # (!\register_file|mux1|Mux15~0_combout\ & ((\aluOp2[16]~15_combout\) # 
-- (!\arith_logic_unity|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux15~0_combout\,
	datab => \aluOp2[16]~15_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~31_cout\,
	cout => \arith_logic_unity|LessThan0~33_cout\);

-- Location: LCCOMB_X107_Y46_N2
\arith_logic_unity|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~35_cout\ = CARRY((\aluOp2[17]~14_combout\ & (\register_file|mux1|Mux14~0_combout\ & !\arith_logic_unity|LessThan0~33_cout\)) # (!\aluOp2[17]~14_combout\ & ((\register_file|mux1|Mux14~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[17]~14_combout\,
	datab => \register_file|mux1|Mux14~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~33_cout\,
	cout => \arith_logic_unity|LessThan0~35_cout\);

-- Location: LCCOMB_X107_Y46_N4
\arith_logic_unity|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~37_cout\ = CARRY((\register_file|mux1|Mux13~0_combout\ & (\aluOp2[18]~13_combout\ & !\arith_logic_unity|LessThan0~35_cout\)) # (!\register_file|mux1|Mux13~0_combout\ & ((\aluOp2[18]~13_combout\) # 
-- (!\arith_logic_unity|LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux13~0_combout\,
	datab => \aluOp2[18]~13_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~35_cout\,
	cout => \arith_logic_unity|LessThan0~37_cout\);

-- Location: LCCOMB_X107_Y46_N6
\arith_logic_unity|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~39_cout\ = CARRY((\aluOp2[19]~12_combout\ & (\register_file|mux1|Mux12~0_combout\ & !\arith_logic_unity|LessThan0~37_cout\)) # (!\aluOp2[19]~12_combout\ & ((\register_file|mux1|Mux12~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[19]~12_combout\,
	datab => \register_file|mux1|Mux12~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~37_cout\,
	cout => \arith_logic_unity|LessThan0~39_cout\);

-- Location: LCCOMB_X107_Y46_N8
\arith_logic_unity|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~41_cout\ = CARRY((\aluOp2[20]~11_combout\ & ((!\arith_logic_unity|LessThan0~39_cout\) # (!\register_file|mux1|Mux11~0_combout\))) # (!\aluOp2[20]~11_combout\ & (!\register_file|mux1|Mux11~0_combout\ & 
-- !\arith_logic_unity|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[20]~11_combout\,
	datab => \register_file|mux1|Mux11~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~39_cout\,
	cout => \arith_logic_unity|LessThan0~41_cout\);

-- Location: LCCOMB_X107_Y46_N10
\arith_logic_unity|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~43_cout\ = CARRY((\aluOp2[21]~10_combout\ & (\register_file|mux1|Mux10~0_combout\ & !\arith_logic_unity|LessThan0~41_cout\)) # (!\aluOp2[21]~10_combout\ & ((\register_file|mux1|Mux10~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[21]~10_combout\,
	datab => \register_file|mux1|Mux10~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~41_cout\,
	cout => \arith_logic_unity|LessThan0~43_cout\);

-- Location: LCCOMB_X107_Y46_N12
\arith_logic_unity|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~45_cout\ = CARRY((\aluOp2[22]~9_combout\ & ((!\arith_logic_unity|LessThan0~43_cout\) # (!\register_file|mux1|Mux9~0_combout\))) # (!\aluOp2[22]~9_combout\ & (!\register_file|mux1|Mux9~0_combout\ & 
-- !\arith_logic_unity|LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[22]~9_combout\,
	datab => \register_file|mux1|Mux9~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~43_cout\,
	cout => \arith_logic_unity|LessThan0~45_cout\);

-- Location: LCCOMB_X107_Y46_N14
\arith_logic_unity|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~47_cout\ = CARRY((\register_file|mux1|Mux8~0_combout\ & ((!\arith_logic_unity|LessThan0~45_cout\) # (!\aluOp2[23]~8_combout\))) # (!\register_file|mux1|Mux8~0_combout\ & (!\aluOp2[23]~8_combout\ & 
-- !\arith_logic_unity|LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux8~0_combout\,
	datab => \aluOp2[23]~8_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~45_cout\,
	cout => \arith_logic_unity|LessThan0~47_cout\);

-- Location: LCCOMB_X107_Y46_N16
\arith_logic_unity|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~49_cout\ = CARRY((\aluOp2[24]~7_combout\ & ((!\arith_logic_unity|LessThan0~47_cout\) # (!\register_file|mux1|Mux7~0_combout\))) # (!\aluOp2[24]~7_combout\ & (!\register_file|mux1|Mux7~0_combout\ & 
-- !\arith_logic_unity|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[24]~7_combout\,
	datab => \register_file|mux1|Mux7~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~47_cout\,
	cout => \arith_logic_unity|LessThan0~49_cout\);

-- Location: LCCOMB_X107_Y46_N18
\arith_logic_unity|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~51_cout\ = CARRY((\aluOp2[25]~6_combout\ & (\register_file|mux1|Mux6~0_combout\ & !\arith_logic_unity|LessThan0~49_cout\)) # (!\aluOp2[25]~6_combout\ & ((\register_file|mux1|Mux6~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[25]~6_combout\,
	datab => \register_file|mux1|Mux6~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~49_cout\,
	cout => \arith_logic_unity|LessThan0~51_cout\);

-- Location: LCCOMB_X107_Y46_N20
\arith_logic_unity|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~53_cout\ = CARRY((\aluOp2[26]~5_combout\ & ((!\arith_logic_unity|LessThan0~51_cout\) # (!\register_file|mux1|Mux5~0_combout\))) # (!\aluOp2[26]~5_combout\ & (!\register_file|mux1|Mux5~0_combout\ & 
-- !\arith_logic_unity|LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[26]~5_combout\,
	datab => \register_file|mux1|Mux5~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~51_cout\,
	cout => \arith_logic_unity|LessThan0~53_cout\);

-- Location: LCCOMB_X107_Y46_N22
\arith_logic_unity|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~55_cout\ = CARRY((\aluOp2[27]~4_combout\ & (\register_file|mux1|Mux4~0_combout\ & !\arith_logic_unity|LessThan0~53_cout\)) # (!\aluOp2[27]~4_combout\ & ((\register_file|mux1|Mux4~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[27]~4_combout\,
	datab => \register_file|mux1|Mux4~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~53_cout\,
	cout => \arith_logic_unity|LessThan0~55_cout\);

-- Location: LCCOMB_X107_Y46_N24
\arith_logic_unity|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~57_cout\ = CARRY((\register_file|mux1|Mux3~0_combout\ & (\aluOp2[28]~3_combout\ & !\arith_logic_unity|LessThan0~55_cout\)) # (!\register_file|mux1|Mux3~0_combout\ & ((\aluOp2[28]~3_combout\) # 
-- (!\arith_logic_unity|LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux3~0_combout\,
	datab => \aluOp2[28]~3_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~55_cout\,
	cout => \arith_logic_unity|LessThan0~57_cout\);

-- Location: LCCOMB_X107_Y46_N26
\arith_logic_unity|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~59_cout\ = CARRY((\aluOp2[29]~2_combout\ & (\register_file|mux1|Mux2~0_combout\ & !\arith_logic_unity|LessThan0~57_cout\)) # (!\aluOp2[29]~2_combout\ & ((\register_file|mux1|Mux2~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[29]~2_combout\,
	datab => \register_file|mux1|Mux2~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~57_cout\,
	cout => \arith_logic_unity|LessThan0~59_cout\);

-- Location: LCCOMB_X107_Y46_N28
\arith_logic_unity|LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~61_cout\ = CARRY((\register_file|mux1|Mux1~0_combout\ & (\aluOp2[30]~1_combout\ & !\arith_logic_unity|LessThan0~59_cout\)) # (!\register_file|mux1|Mux1~0_combout\ & ((\aluOp2[30]~1_combout\) # 
-- (!\arith_logic_unity|LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux1~0_combout\,
	datab => \aluOp2[30]~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~59_cout\,
	cout => \arith_logic_unity|LessThan0~61_cout\);

-- Location: LCCOMB_X107_Y46_N30
\arith_logic_unity|LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~62_combout\ = (\aluOp2[31]~0_combout\ & ((\arith_logic_unity|LessThan0~61_cout\) # (!\register_file|mux1|Mux0~0_combout\))) # (!\aluOp2[31]~0_combout\ & (\arith_logic_unity|LessThan0~61_cout\ & 
-- !\register_file|mux1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aluOp2[31]~0_combout\,
	datad => \register_file|mux1|Mux0~0_combout\,
	cin => \arith_logic_unity|LessThan0~61_cout\,
	combout => \arith_logic_unity|LessThan0~62_combout\);

-- Location: LCCOMB_X108_Y46_N26
\write_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[0]~0_combout\ = (\control|Equal3~2_combout\ & ((\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~4_combout\)) # (!\control|aluOp[1]~0_combout\ & ((\arith_logic_unity|LessThan0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~4_combout\,
	datab => \control|Equal3~2_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|LessThan0~62_combout\,
	combout => \write_data[0]~0_combout\);

-- Location: FF_X109_Y47_N15
\register_file|registers:0:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(0));

-- Location: LCCOMB_X109_Y47_N4
\arith_logic_unity|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~0_combout\ = (\register_file|registers_clk[1]~0_combout\ & (!\register_file|registers:1:regx|Q\(0) & ((!\register_file|registers:0:regx|Q\(0)) # (!\register_file|mux2|Mux30~0_combout\)))) # 
-- (!\register_file|registers_clk[1]~0_combout\ & (((!\register_file|registers:0:regx|Q\(0))) # (!\register_file|mux2|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers_clk[1]~0_combout\,
	datab => \register_file|mux2|Mux30~0_combout\,
	datac => \register_file|registers:0:regx|Q\(0),
	datad => \register_file|registers:1:regx|Q\(0),
	combout => \arith_logic_unity|Add0~0_combout\);

-- Location: LCCOMB_X109_Y47_N14
\arith_logic_unity|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~1_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~0_combout\,
	combout => \arith_logic_unity|Add0~1_combout\);

-- Location: LCCOMB_X109_Y47_N20
\arith_logic_unity|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~36_combout\ = ((\arith_logic_unity|Add0~35_combout\ $ (\register_file|mux1|Mux30~0_combout\ $ (!\arith_logic_unity|Add0~5\)))) # (GND)
-- \arith_logic_unity|Add0~37\ = CARRY((\arith_logic_unity|Add0~35_combout\ & ((\register_file|mux1|Mux30~0_combout\) # (!\arith_logic_unity|Add0~5\))) # (!\arith_logic_unity|Add0~35_combout\ & (\register_file|mux1|Mux30~0_combout\ & 
-- !\arith_logic_unity|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~35_combout\,
	datab => \register_file|mux1|Mux30~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~5\,
	combout => \arith_logic_unity|Add0~36_combout\,
	cout => \arith_logic_unity|Add0~37\);

-- Location: LCCOMB_X108_Y47_N2
\write_data[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[1]~16_combout\ = (\arith_logic_unity|Add0~36_combout\ & (\control|aluOp[1]~0_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~36_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[1]~16_combout\);

-- Location: FF_X108_Y47_N27
\register_file|registers:1:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[1]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(1));

-- Location: LCCOMB_X108_Y47_N24
\register_file|mux2|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux30~1_combout\ = (\register_file|mux2|Mux30~0_combout\ & ((\register_file|registers:0:regx|Q\(1)) # ((\register_file|registers_clk[1]~0_combout\ & \register_file|registers:1:regx|Q\(1))))) # (!\register_file|mux2|Mux30~0_combout\ & 
-- (\register_file|registers_clk[1]~0_combout\ & (\register_file|registers:1:regx|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:1:regx|Q\(1),
	datad => \register_file|registers:0:regx|Q\(1),
	combout => \register_file|mux2|Mux30~1_combout\);

-- Location: LCCOMB_X109_Y47_N12
\arith_logic_unity|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~35_combout\ = (!\register_file|mux2|Mux30~1_combout\ & ((\PC|Q\(2)) # (\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux2|Mux30~1_combout\,
	combout => \arith_logic_unity|Add0~35_combout\);

-- Location: LCCOMB_X109_Y47_N22
\arith_logic_unity|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~38_combout\ = (\arith_logic_unity|Add0~34_combout\ & ((\register_file|mux1|Mux29~0_combout\ & (\arith_logic_unity|Add0~37\ & VCC)) # (!\register_file|mux1|Mux29~0_combout\ & (!\arith_logic_unity|Add0~37\)))) # 
-- (!\arith_logic_unity|Add0~34_combout\ & ((\register_file|mux1|Mux29~0_combout\ & (!\arith_logic_unity|Add0~37\)) # (!\register_file|mux1|Mux29~0_combout\ & ((\arith_logic_unity|Add0~37\) # (GND)))))
-- \arith_logic_unity|Add0~39\ = CARRY((\arith_logic_unity|Add0~34_combout\ & (!\register_file|mux1|Mux29~0_combout\ & !\arith_logic_unity|Add0~37\)) # (!\arith_logic_unity|Add0~34_combout\ & ((!\arith_logic_unity|Add0~37\) # 
-- (!\register_file|mux1|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~34_combout\,
	datab => \register_file|mux1|Mux29~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~37\,
	combout => \arith_logic_unity|Add0~38_combout\,
	cout => \arith_logic_unity|Add0~39\);

-- Location: LCCOMB_X108_Y47_N16
\write_data[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[2]~15_combout\ = (\arith_logic_unity|Add0~38_combout\ & (\control|aluOp[1]~0_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~38_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[2]~15_combout\);

-- Location: FF_X106_Y47_N27
\register_file|registers:0:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[2]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(2));

-- Location: LCCOMB_X106_Y47_N10
\register_file|mux2|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux29~0_combout\ = (\register_file|mux2|Mux30~0_combout\ & ((\register_file|registers:0:regx|Q\(2)) # ((\register_file|registers_clk[1]~0_combout\ & \register_file|registers:1:regx|Q\(2))))) # (!\register_file|mux2|Mux30~0_combout\ & 
-- (\register_file|registers_clk[1]~0_combout\ & ((\register_file|registers:1:regx|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(2),
	datad => \register_file|registers:1:regx|Q\(2),
	combout => \register_file|mux2|Mux29~0_combout\);

-- Location: LCCOMB_X109_Y47_N10
\arith_logic_unity|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~34_combout\ = (\control|aluSrc~0_combout\ & (((!\register_file|mux2|Mux29~0_combout\)))) # (!\control|aluSrc~0_combout\ & ((\PC|Q\(2) & ((!\register_file|mux2|Mux29~0_combout\))) # (!\PC|Q\(2) & 
-- (\instruction_memory|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \PC|Q\(2),
	datac => \instruction_memory|Mux8~0_combout\,
	datad => \register_file|mux2|Mux29~0_combout\,
	combout => \arith_logic_unity|Add0~34_combout\);

-- Location: LCCOMB_X109_Y47_N24
\arith_logic_unity|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~40_combout\ = ((\register_file|mux1|Mux28~0_combout\ $ (\arith_logic_unity|Add0~33_combout\ $ (\arith_logic_unity|Add0~39\)))) # (GND)
-- \arith_logic_unity|Add0~41\ = CARRY((\register_file|mux1|Mux28~0_combout\ & ((!\arith_logic_unity|Add0~39\) # (!\arith_logic_unity|Add0~33_combout\))) # (!\register_file|mux1|Mux28~0_combout\ & (!\arith_logic_unity|Add0~33_combout\ & 
-- !\arith_logic_unity|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux28~0_combout\,
	datab => \arith_logic_unity|Add0~33_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~39\,
	combout => \arith_logic_unity|Add0~40_combout\,
	cout => \arith_logic_unity|Add0~41\);

-- Location: LCCOMB_X106_Y47_N30
\write_data[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[3]~14_combout\ = (\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~40_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Add0~40_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[3]~14_combout\);

-- Location: FF_X106_Y47_N7
\register_file|registers:1:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[3]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(3));

-- Location: LCCOMB_X106_Y47_N24
\register_file|mux1|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux28~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(3))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & (\register_file|registers:1:regx|Q\(3))) # (!\instruction_memory|Mux9~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(3),
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(3),
	datad => \instruction_memory|Mux9~0_combout\,
	combout => \register_file|mux1|Mux28~0_combout\);

-- Location: LCCOMB_X109_Y47_N26
\arith_logic_unity|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~42_combout\ = (\arith_logic_unity|Add0~31_combout\ & ((\register_file|mux1|Mux27~0_combout\ & (!\arith_logic_unity|Add0~41\)) # (!\register_file|mux1|Mux27~0_combout\ & ((\arith_logic_unity|Add0~41\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~31_combout\ & ((\register_file|mux1|Mux27~0_combout\ & (\arith_logic_unity|Add0~41\ & VCC)) # (!\register_file|mux1|Mux27~0_combout\ & (!\arith_logic_unity|Add0~41\))))
-- \arith_logic_unity|Add0~43\ = CARRY((\arith_logic_unity|Add0~31_combout\ & ((!\arith_logic_unity|Add0~41\) # (!\register_file|mux1|Mux27~0_combout\))) # (!\arith_logic_unity|Add0~31_combout\ & (!\register_file|mux1|Mux27~0_combout\ & 
-- !\arith_logic_unity|Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~31_combout\,
	datab => \register_file|mux1|Mux27~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~41\,
	combout => \arith_logic_unity|Add0~42_combout\,
	cout => \arith_logic_unity|Add0~43\);

-- Location: LCCOMB_X110_Y47_N24
\write_data[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[4]~13_combout\ = (\arith_logic_unity|Add0~42_combout\ & (\control|Equal3~2_combout\ & \control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~42_combout\,
	datab => \control|Equal3~2_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[4]~13_combout\);

-- Location: LCCOMB_X110_Y47_N4
\register_file|registers:0:regx|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[4]~feeder_combout\ = \write_data[4]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_data[4]~13_combout\,
	combout => \register_file|registers:0:regx|Q[4]~feeder_combout\);

-- Location: FF_X110_Y47_N5
\register_file|registers:0:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(4));

-- Location: LCCOMB_X110_Y47_N22
\arith_logic_unity|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~30_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(4) & ((!\register_file|registers:1:regx|Q\(4)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ & 
-- (((!\register_file|registers:1:regx|Q\(4))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(4),
	datad => \register_file|registers:1:regx|Q\(4),
	combout => \arith_logic_unity|Add0~30_combout\);

-- Location: LCCOMB_X110_Y47_N20
\arith_logic_unity|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~31_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \arith_logic_unity|Add0~30_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \arith_logic_unity|Add0~31_combout\);

-- Location: LCCOMB_X109_Y47_N28
\arith_logic_unity|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~44_combout\ = ((\register_file|mux1|Mux26~0_combout\ $ (\arith_logic_unity|Add0~29_combout\ $ (\arith_logic_unity|Add0~43\)))) # (GND)
-- \arith_logic_unity|Add0~45\ = CARRY((\register_file|mux1|Mux26~0_combout\ & ((!\arith_logic_unity|Add0~43\) # (!\arith_logic_unity|Add0~29_combout\))) # (!\register_file|mux1|Mux26~0_combout\ & (!\arith_logic_unity|Add0~29_combout\ & 
-- !\arith_logic_unity|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux26~0_combout\,
	datab => \arith_logic_unity|Add0~29_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~43\,
	combout => \arith_logic_unity|Add0~44_combout\,
	cout => \arith_logic_unity|Add0~45\);

-- Location: LCCOMB_X106_Y47_N26
\write_data[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[5]~12_combout\ = (\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~44_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Add0~44_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[5]~12_combout\);

-- Location: FF_X106_Y47_N23
\register_file|registers:1:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[5]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(5));

-- Location: LCCOMB_X106_Y47_N12
\register_file|mux1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux26~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(5))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & (\register_file|registers:1:regx|Q\(5))) # (!\instruction_memory|Mux9~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(5),
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(5),
	datad => \instruction_memory|Mux9~0_combout\,
	combout => \register_file|mux1|Mux26~0_combout\);

-- Location: LCCOMB_X109_Y47_N30
\arith_logic_unity|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~46_combout\ = (\register_file|mux1|Mux25~0_combout\ & ((\arith_logic_unity|Add0~27_combout\ & (!\arith_logic_unity|Add0~45\)) # (!\arith_logic_unity|Add0~27_combout\ & (\arith_logic_unity|Add0~45\ & VCC)))) # 
-- (!\register_file|mux1|Mux25~0_combout\ & ((\arith_logic_unity|Add0~27_combout\ & ((\arith_logic_unity|Add0~45\) # (GND))) # (!\arith_logic_unity|Add0~27_combout\ & (!\arith_logic_unity|Add0~45\))))
-- \arith_logic_unity|Add0~47\ = CARRY((\register_file|mux1|Mux25~0_combout\ & (\arith_logic_unity|Add0~27_combout\ & !\arith_logic_unity|Add0~45\)) # (!\register_file|mux1|Mux25~0_combout\ & ((\arith_logic_unity|Add0~27_combout\) # 
-- (!\arith_logic_unity|Add0~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~0_combout\,
	datab => \arith_logic_unity|Add0~27_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~45\,
	combout => \arith_logic_unity|Add0~46_combout\,
	cout => \arith_logic_unity|Add0~47\);

-- Location: LCCOMB_X106_Y47_N0
\write_data[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[6]~11_combout\ = (\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~46_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Add0~46_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[6]~11_combout\);

-- Location: FF_X106_Y47_N31
\register_file|registers:0:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[6]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(6));

-- Location: LCCOMB_X106_Y47_N28
\register_file|mux1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux25~0_combout\ = (\PC|Q\(2) & (\register_file|registers:0:regx|Q\(6))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:1:regx|Q\(6)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(6),
	datab => \PC|Q\(2),
	datac => \register_file|registers:1:regx|Q\(6),
	datad => \instruction_memory|Mux9~0_combout\,
	combout => \register_file|mux1|Mux25~0_combout\);

-- Location: LCCOMB_X109_Y46_N0
\arith_logic_unity|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~48_combout\ = ((\arith_logic_unity|Add0~25_combout\ $ (\register_file|mux1|Mux24~0_combout\ $ (\arith_logic_unity|Add0~47\)))) # (GND)
-- \arith_logic_unity|Add0~49\ = CARRY((\arith_logic_unity|Add0~25_combout\ & (\register_file|mux1|Mux24~0_combout\ & !\arith_logic_unity|Add0~47\)) # (!\arith_logic_unity|Add0~25_combout\ & ((\register_file|mux1|Mux24~0_combout\) # 
-- (!\arith_logic_unity|Add0~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~25_combout\,
	datab => \register_file|mux1|Mux24~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~47\,
	combout => \arith_logic_unity|Add0~48_combout\,
	cout => \arith_logic_unity|Add0~49\);

-- Location: LCCOMB_X108_Y48_N6
\write_data[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[7]~10_combout\ = (\arith_logic_unity|Add0~48_combout\ & (\control|aluOp[1]~0_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~48_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[7]~10_combout\);

-- Location: FF_X108_Y48_N5
\register_file|registers:0:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[7]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(7));

-- Location: LCCOMB_X108_Y48_N18
\arith_logic_unity|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~24_combout\ = (\register_file|registers_clk[1]~0_combout\ & (!\register_file|registers:1:regx|Q\(7) & ((!\register_file|registers:0:regx|Q\(7)) # (!\register_file|mux2|Mux30~0_combout\)))) # 
-- (!\register_file|registers_clk[1]~0_combout\ & (((!\register_file|registers:0:regx|Q\(7))) # (!\register_file|mux2|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers_clk[1]~0_combout\,
	datab => \register_file|mux2|Mux30~0_combout\,
	datac => \register_file|registers:0:regx|Q\(7),
	datad => \register_file|registers:1:regx|Q\(7),
	combout => \arith_logic_unity|Add0~24_combout\);

-- Location: LCCOMB_X108_Y48_N28
\arith_logic_unity|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~25_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~24_combout\,
	combout => \arith_logic_unity|Add0~25_combout\);

-- Location: LCCOMB_X109_Y46_N2
\arith_logic_unity|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~50_combout\ = (\arith_logic_unity|Add0~23_combout\ & ((\register_file|mux1|Mux23~0_combout\ & (!\arith_logic_unity|Add0~49\)) # (!\register_file|mux1|Mux23~0_combout\ & ((\arith_logic_unity|Add0~49\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~23_combout\ & ((\register_file|mux1|Mux23~0_combout\ & (\arith_logic_unity|Add0~49\ & VCC)) # (!\register_file|mux1|Mux23~0_combout\ & (!\arith_logic_unity|Add0~49\))))
-- \arith_logic_unity|Add0~51\ = CARRY((\arith_logic_unity|Add0~23_combout\ & ((!\arith_logic_unity|Add0~49\) # (!\register_file|mux1|Mux23~0_combout\))) # (!\arith_logic_unity|Add0~23_combout\ & (!\register_file|mux1|Mux23~0_combout\ & 
-- !\arith_logic_unity|Add0~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~23_combout\,
	datab => \register_file|mux1|Mux23~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~49\,
	combout => \arith_logic_unity|Add0~50_combout\,
	cout => \arith_logic_unity|Add0~51\);

-- Location: LCCOMB_X108_Y48_N12
\write_data[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[8]~9_combout\ = (\arith_logic_unity|Add0~50_combout\ & (\control|aluOp[1]~0_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arith_logic_unity|Add0~50_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[8]~9_combout\);

-- Location: LCCOMB_X108_Y48_N26
\register_file|registers:1:regx|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[8]~feeder_combout\ = \write_data[8]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_data[8]~9_combout\,
	combout => \register_file|registers:1:regx|Q[8]~feeder_combout\);

-- Location: FF_X108_Y48_N27
\register_file|registers:1:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(8));

-- Location: LCCOMB_X108_Y48_N10
\arith_logic_unity|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~22_combout\ = (\register_file|registers_clk[1]~0_combout\ & (!\register_file|registers:1:regx|Q\(8) & ((!\register_file|registers:0:regx|Q\(8)) # (!\register_file|mux2|Mux30~0_combout\)))) # 
-- (!\register_file|registers_clk[1]~0_combout\ & (((!\register_file|registers:0:regx|Q\(8))) # (!\register_file|mux2|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers_clk[1]~0_combout\,
	datab => \register_file|mux2|Mux30~0_combout\,
	datac => \register_file|registers:1:regx|Q\(8),
	datad => \register_file|registers:0:regx|Q\(8),
	combout => \arith_logic_unity|Add0~22_combout\);

-- Location: LCCOMB_X108_Y48_N20
\arith_logic_unity|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~23_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~22_combout\,
	combout => \arith_logic_unity|Add0~23_combout\);

-- Location: LCCOMB_X109_Y46_N4
\arith_logic_unity|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~52_combout\ = ((\register_file|mux1|Mux22~0_combout\ $ (\arith_logic_unity|Add0~21_combout\ $ (\arith_logic_unity|Add0~51\)))) # (GND)
-- \arith_logic_unity|Add0~53\ = CARRY((\register_file|mux1|Mux22~0_combout\ & ((!\arith_logic_unity|Add0~51\) # (!\arith_logic_unity|Add0~21_combout\))) # (!\register_file|mux1|Mux22~0_combout\ & (!\arith_logic_unity|Add0~21_combout\ & 
-- !\arith_logic_unity|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux22~0_combout\,
	datab => \arith_logic_unity|Add0~21_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~51\,
	combout => \arith_logic_unity|Add0~52_combout\,
	cout => \arith_logic_unity|Add0~53\);

-- Location: LCCOMB_X106_Y46_N0
\write_data[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[9]~8_combout\ = (\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~52_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Add0~52_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[9]~8_combout\);

-- Location: FF_X107_Y45_N15
\register_file|registers:0:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[9]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(9));

-- Location: LCCOMB_X107_Y45_N6
\register_file|mux1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux22~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(9))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:1:regx|Q\(9)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:0:regx|Q\(9),
	datad => \register_file|registers:1:regx|Q\(9),
	combout => \register_file|mux1|Mux22~0_combout\);

-- Location: LCCOMB_X109_Y46_N6
\arith_logic_unity|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~54_combout\ = (\arith_logic_unity|Add0~19_combout\ & ((\register_file|mux1|Mux21~0_combout\ & (!\arith_logic_unity|Add0~53\)) # (!\register_file|mux1|Mux21~0_combout\ & ((\arith_logic_unity|Add0~53\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~19_combout\ & ((\register_file|mux1|Mux21~0_combout\ & (\arith_logic_unity|Add0~53\ & VCC)) # (!\register_file|mux1|Mux21~0_combout\ & (!\arith_logic_unity|Add0~53\))))
-- \arith_logic_unity|Add0~55\ = CARRY((\arith_logic_unity|Add0~19_combout\ & ((!\arith_logic_unity|Add0~53\) # (!\register_file|mux1|Mux21~0_combout\))) # (!\arith_logic_unity|Add0~19_combout\ & (!\register_file|mux1|Mux21~0_combout\ & 
-- !\arith_logic_unity|Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~19_combout\,
	datab => \register_file|mux1|Mux21~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~53\,
	combout => \arith_logic_unity|Add0~54_combout\,
	cout => \arith_logic_unity|Add0~55\);

-- Location: LCCOMB_X110_Y47_N6
\write_data[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[10]~7_combout\ = (\control|aluOp[1]~0_combout\ & (\control|Equal3~2_combout\ & \arith_logic_unity|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \control|Equal3~2_combout\,
	datad => \arith_logic_unity|Add0~54_combout\,
	combout => \write_data[10]~7_combout\);

-- Location: FF_X110_Y47_N27
\register_file|registers:0:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[10]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(10));

-- Location: LCCOMB_X110_Y47_N0
\arith_logic_unity|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~18_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(10) & ((!\register_file|registers:1:regx|Q\(10)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(10))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(10),
	datad => \register_file|registers:1:regx|Q\(10),
	combout => \arith_logic_unity|Add0~18_combout\);

-- Location: LCCOMB_X110_Y47_N10
\arith_logic_unity|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~19_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~18_combout\,
	combout => \arith_logic_unity|Add0~19_combout\);

-- Location: LCCOMB_X109_Y46_N8
\arith_logic_unity|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~56_combout\ = ((\arith_logic_unity|Add0~17_combout\ $ (\register_file|mux1|Mux20~0_combout\ $ (\arith_logic_unity|Add0~55\)))) # (GND)
-- \arith_logic_unity|Add0~57\ = CARRY((\arith_logic_unity|Add0~17_combout\ & (\register_file|mux1|Mux20~0_combout\ & !\arith_logic_unity|Add0~55\)) # (!\arith_logic_unity|Add0~17_combout\ & ((\register_file|mux1|Mux20~0_combout\) # 
-- (!\arith_logic_unity|Add0~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~17_combout\,
	datab => \register_file|mux1|Mux20~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~55\,
	combout => \arith_logic_unity|Add0~56_combout\,
	cout => \arith_logic_unity|Add0~57\);

-- Location: LCCOMB_X110_Y47_N26
\write_data[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[11]~6_combout\ = (\arith_logic_unity|Add0~56_combout\ & (\control|Equal3~2_combout\ & \control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~56_combout\,
	datab => \control|Equal3~2_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[11]~6_combout\);

-- Location: FF_X110_Y47_N9
\register_file|registers:1:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[11]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(11));

-- Location: LCCOMB_X110_Y47_N16
\arith_logic_unity|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~16_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(11) & ((!\register_file|registers:1:regx|Q\(11)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(11))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:1:regx|Q\(11),
	datad => \register_file|registers:0:regx|Q\(11),
	combout => \arith_logic_unity|Add0~16_combout\);

-- Location: LCCOMB_X110_Y47_N30
\arith_logic_unity|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~17_combout\ = ((!\control|aluSrc~0_combout\ & !\PC|Q\(2))) # (!\arith_logic_unity|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datac => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~16_combout\,
	combout => \arith_logic_unity|Add0~17_combout\);

-- Location: LCCOMB_X109_Y46_N10
\arith_logic_unity|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~58_combout\ = (\arith_logic_unity|Add0~15_combout\ & ((\register_file|mux1|Mux19~0_combout\ & (!\arith_logic_unity|Add0~57\)) # (!\register_file|mux1|Mux19~0_combout\ & ((\arith_logic_unity|Add0~57\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~15_combout\ & ((\register_file|mux1|Mux19~0_combout\ & (\arith_logic_unity|Add0~57\ & VCC)) # (!\register_file|mux1|Mux19~0_combout\ & (!\arith_logic_unity|Add0~57\))))
-- \arith_logic_unity|Add0~59\ = CARRY((\arith_logic_unity|Add0~15_combout\ & ((!\arith_logic_unity|Add0~57\) # (!\register_file|mux1|Mux19~0_combout\))) # (!\arith_logic_unity|Add0~15_combout\ & (!\register_file|mux1|Mux19~0_combout\ & 
-- !\arith_logic_unity|Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~15_combout\,
	datab => \register_file|mux1|Mux19~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~57\,
	combout => \arith_logic_unity|Add0~58_combout\,
	cout => \arith_logic_unity|Add0~59\);

-- Location: LCCOMB_X107_Y45_N12
\write_data[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[12]~5_combout\ = (\arith_logic_unity|Add0~58_combout\ & (\control|Equal3~2_combout\ & \control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~58_combout\,
	datab => \control|Equal3~2_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[12]~5_combout\);

-- Location: FF_X108_Y45_N31
\register_file|registers:1:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[12]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(12));

-- Location: LCCOMB_X108_Y45_N18
\arith_logic_unity|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~14_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(12) & ((!\register_file|registers:1:regx|Q\(12)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(12))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:1:regx|Q\(12),
	datad => \register_file|registers:0:regx|Q\(12),
	combout => \arith_logic_unity|Add0~14_combout\);

-- Location: LCCOMB_X108_Y45_N20
\arith_logic_unity|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~15_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~14_combout\,
	combout => \arith_logic_unity|Add0~15_combout\);

-- Location: LCCOMB_X109_Y46_N12
\arith_logic_unity|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~60_combout\ = ((\register_file|mux1|Mux18~0_combout\ $ (\arith_logic_unity|Add0~13_combout\ $ (\arith_logic_unity|Add0~59\)))) # (GND)
-- \arith_logic_unity|Add0~61\ = CARRY((\register_file|mux1|Mux18~0_combout\ & ((!\arith_logic_unity|Add0~59\) # (!\arith_logic_unity|Add0~13_combout\))) # (!\register_file|mux1|Mux18~0_combout\ & (!\arith_logic_unity|Add0~13_combout\ & 
-- !\arith_logic_unity|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux18~0_combout\,
	datab => \arith_logic_unity|Add0~13_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~59\,
	combout => \arith_logic_unity|Add0~60_combout\,
	cout => \arith_logic_unity|Add0~61\);

-- Location: LCCOMB_X110_Y46_N14
\write_data[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[13]~4_combout\ = (\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~60_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Add0~60_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[13]~4_combout\);

-- Location: FF_X110_Y46_N17
\register_file|registers:1:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[13]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(13));

-- Location: LCCOMB_X110_Y46_N16
\register_file|mux1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux18~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(13))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & (\register_file|registers:1:regx|Q\(13))) # (!\instruction_memory|Mux9~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:1:regx|Q\(13),
	datad => \register_file|registers:0:regx|Q\(13),
	combout => \register_file|mux1|Mux18~0_combout\);

-- Location: LCCOMB_X109_Y46_N14
\arith_logic_unity|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~62_combout\ = (\arith_logic_unity|Add0~11_combout\ & ((\register_file|mux1|Mux17~0_combout\ & (!\arith_logic_unity|Add0~61\)) # (!\register_file|mux1|Mux17~0_combout\ & ((\arith_logic_unity|Add0~61\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~11_combout\ & ((\register_file|mux1|Mux17~0_combout\ & (\arith_logic_unity|Add0~61\ & VCC)) # (!\register_file|mux1|Mux17~0_combout\ & (!\arith_logic_unity|Add0~61\))))
-- \arith_logic_unity|Add0~63\ = CARRY((\arith_logic_unity|Add0~11_combout\ & ((!\arith_logic_unity|Add0~61\) # (!\register_file|mux1|Mux17~0_combout\))) # (!\arith_logic_unity|Add0~11_combout\ & (!\register_file|mux1|Mux17~0_combout\ & 
-- !\arith_logic_unity|Add0~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~11_combout\,
	datab => \register_file|mux1|Mux17~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~61\,
	combout => \arith_logic_unity|Add0~62_combout\,
	cout => \arith_logic_unity|Add0~63\);

-- Location: LCCOMB_X107_Y45_N14
\write_data[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[14]~3_combout\ = (\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~62_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Add0~62_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[14]~3_combout\);

-- Location: FF_X108_Y45_N23
\register_file|registers:0:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[14]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(14));

-- Location: LCCOMB_X108_Y45_N12
\arith_logic_unity|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~10_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(14) & ((!\register_file|registers:1:regx|Q\(14)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(14))) # (!\register_file|registers_clk[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers_clk[1]~0_combout\,
	datac => \register_file|registers:0:regx|Q\(14),
	datad => \register_file|registers:1:regx|Q\(14),
	combout => \arith_logic_unity|Add0~10_combout\);

-- Location: LCCOMB_X108_Y45_N2
\arith_logic_unity|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~11_combout\ = ((!\control|aluSrc~0_combout\ & !\PC|Q\(2))) # (!\arith_logic_unity|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datac => \PC|Q\(2),
	datad => \arith_logic_unity|Add0~10_combout\,
	combout => \arith_logic_unity|Add0~11_combout\);

-- Location: LCCOMB_X109_Y46_N16
\arith_logic_unity|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~64_combout\ = ((\arith_logic_unity|Add0~9_combout\ $ (\register_file|mux1|Mux16~0_combout\ $ (\arith_logic_unity|Add0~63\)))) # (GND)
-- \arith_logic_unity|Add0~65\ = CARRY((\arith_logic_unity|Add0~9_combout\ & (\register_file|mux1|Mux16~0_combout\ & !\arith_logic_unity|Add0~63\)) # (!\arith_logic_unity|Add0~9_combout\ & ((\register_file|mux1|Mux16~0_combout\) # 
-- (!\arith_logic_unity|Add0~63\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~9_combout\,
	datab => \register_file|mux1|Mux16~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~63\,
	combout => \arith_logic_unity|Add0~64_combout\,
	cout => \arith_logic_unity|Add0~65\);

-- Location: LCCOMB_X112_Y46_N26
\write_data[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[15]~2_combout\ = (\control|Equal3~2_combout\ & (\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal3~2_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~64_combout\,
	combout => \write_data[15]~2_combout\);

-- Location: FF_X108_Y46_N3
\register_file|registers:0:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[15]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(15));

-- Location: LCCOMB_X108_Y46_N4
\arith_logic_unity|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~8_combout\ = (\register_file|mux2|Mux30~0_combout\ & (!\register_file|registers:0:regx|Q\(15) & ((!\register_file|registers:1:regx|Q\(15)) # (!\register_file|registers_clk[1]~0_combout\)))) # (!\register_file|mux2|Mux30~0_combout\ 
-- & (((!\register_file|registers:1:regx|Q\(15)) # (!\register_file|registers_clk[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datab => \register_file|registers:0:regx|Q\(15),
	datac => \register_file|registers_clk[1]~0_combout\,
	datad => \register_file|registers:1:regx|Q\(15),
	combout => \arith_logic_unity|Add0~8_combout\);

-- Location: LCCOMB_X108_Y46_N6
\arith_logic_unity|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~9_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(2),
	datac => \arith_logic_unity|Add0~8_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \arith_logic_unity|Add0~9_combout\);

-- Location: LCCOMB_X109_Y46_N18
\arith_logic_unity|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~66_combout\ = (\arith_logic_unity|Add0~7_combout\ & ((\register_file|mux1|Mux15~0_combout\ & (!\arith_logic_unity|Add0~65\)) # (!\register_file|mux1|Mux15~0_combout\ & ((\arith_logic_unity|Add0~65\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~7_combout\ & ((\register_file|mux1|Mux15~0_combout\ & (\arith_logic_unity|Add0~65\ & VCC)) # (!\register_file|mux1|Mux15~0_combout\ & (!\arith_logic_unity|Add0~65\))))
-- \arith_logic_unity|Add0~67\ = CARRY((\arith_logic_unity|Add0~7_combout\ & ((!\arith_logic_unity|Add0~65\) # (!\register_file|mux1|Mux15~0_combout\))) # (!\arith_logic_unity|Add0~7_combout\ & (!\register_file|mux1|Mux15~0_combout\ & 
-- !\arith_logic_unity|Add0~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~7_combout\,
	datab => \register_file|mux1|Mux15~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~65\,
	combout => \arith_logic_unity|Add0~66_combout\,
	cout => \arith_logic_unity|Add0~67\);

-- Location: LCCOMB_X108_Y47_N10
\write_data[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[16]~1_combout\ = (\arith_logic_unity|Add0~66_combout\ & (\control|aluOp[1]~0_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~66_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[16]~1_combout\);

-- Location: FF_X108_Y47_N3
\register_file|registers:0:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[16]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(16));

-- Location: LCCOMB_X108_Y47_N0
\arith_logic_unity|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~6_combout\ = (\register_file|registers_clk[1]~0_combout\ & (!\register_file|registers:1:regx|Q\(16) & ((!\register_file|mux2|Mux30~0_combout\) # (!\register_file|registers:0:regx|Q\(16))))) # 
-- (!\register_file|registers_clk[1]~0_combout\ & (((!\register_file|mux2|Mux30~0_combout\)) # (!\register_file|registers:0:regx|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers_clk[1]~0_combout\,
	datab => \register_file|registers:0:regx|Q\(16),
	datac => \register_file|mux2|Mux30~0_combout\,
	datad => \register_file|registers:1:regx|Q\(16),
	combout => \arith_logic_unity|Add0~6_combout\);

-- Location: LCCOMB_X108_Y47_N14
\arith_logic_unity|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~7_combout\ = ((!\PC|Q\(2) & !\control|aluSrc~0_combout\)) # (!\arith_logic_unity|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~6_combout\,
	combout => \arith_logic_unity|Add0~7_combout\);

-- Location: LCCOMB_X109_Y46_N20
\arith_logic_unity|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~89_combout\ = ((\register_file|mux1|Mux14~0_combout\ $ (\arith_logic_unity|Add0~88_combout\ $ (\arith_logic_unity|Add0~67\)))) # (GND)
-- \arith_logic_unity|Add0~90\ = CARRY((\register_file|mux1|Mux14~0_combout\ & ((!\arith_logic_unity|Add0~67\) # (!\arith_logic_unity|Add0~88_combout\))) # (!\register_file|mux1|Mux14~0_combout\ & (!\arith_logic_unity|Add0~88_combout\ & 
-- !\arith_logic_unity|Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux14~0_combout\,
	datab => \arith_logic_unity|Add0~88_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~67\,
	combout => \arith_logic_unity|Add0~89_combout\,
	cout => \arith_logic_unity|Add0~90\);

-- Location: LCCOMB_X112_Y46_N10
\write_data[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[17]~31_combout\ = (\arith_logic_unity|Add0~89_combout\ & (\control|aluOp[1]~0_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~89_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[17]~31_combout\);

-- Location: FF_X108_Y46_N11
\register_file|registers:1:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[17]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(17));

-- Location: LCCOMB_X108_Y46_N10
\register_file|mux1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux14~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & ((\register_file|registers:0:regx|Q\(17)))) # (!\PC|Q\(2) & (\register_file|registers:1:regx|Q\(17))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:1:regx|Q\(17),
	datad => \register_file|registers:0:regx|Q\(17),
	combout => \register_file|mux1|Mux14~0_combout\);

-- Location: LCCOMB_X109_Y46_N22
\arith_logic_unity|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~91_combout\ = (\register_file|mux1|Mux13~0_combout\ & ((\arith_logic_unity|Add0~87_combout\ & (!\arith_logic_unity|Add0~90\)) # (!\arith_logic_unity|Add0~87_combout\ & (\arith_logic_unity|Add0~90\ & VCC)))) # 
-- (!\register_file|mux1|Mux13~0_combout\ & ((\arith_logic_unity|Add0~87_combout\ & ((\arith_logic_unity|Add0~90\) # (GND))) # (!\arith_logic_unity|Add0~87_combout\ & (!\arith_logic_unity|Add0~90\))))
-- \arith_logic_unity|Add0~92\ = CARRY((\register_file|mux1|Mux13~0_combout\ & (\arith_logic_unity|Add0~87_combout\ & !\arith_logic_unity|Add0~90\)) # (!\register_file|mux1|Mux13~0_combout\ & ((\arith_logic_unity|Add0~87_combout\) # 
-- (!\arith_logic_unity|Add0~90\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux13~0_combout\,
	datab => \arith_logic_unity|Add0~87_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~90\,
	combout => \arith_logic_unity|Add0~91_combout\,
	cout => \arith_logic_unity|Add0~92\);

-- Location: LCCOMB_X108_Y46_N0
\write_data[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[18]~30_combout\ = (\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~91_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Add0~91_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[18]~30_combout\);

-- Location: FF_X108_Y46_N9
\register_file|registers:1:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[18]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(18));

-- Location: LCCOMB_X108_Y46_N8
\register_file|mux1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux13~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & ((\register_file|registers:0:regx|Q\(18)))) # (!\PC|Q\(2) & (\register_file|registers:1:regx|Q\(18))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:1:regx|Q\(18),
	datad => \register_file|registers:0:regx|Q\(18),
	combout => \register_file|mux1|Mux13~0_combout\);

-- Location: LCCOMB_X109_Y46_N24
\arith_logic_unity|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~93_combout\ = ((\register_file|mux1|Mux12~0_combout\ $ (\arith_logic_unity|Add0~86_combout\ $ (\arith_logic_unity|Add0~92\)))) # (GND)
-- \arith_logic_unity|Add0~94\ = CARRY((\register_file|mux1|Mux12~0_combout\ & ((!\arith_logic_unity|Add0~92\) # (!\arith_logic_unity|Add0~86_combout\))) # (!\register_file|mux1|Mux12~0_combout\ & (!\arith_logic_unity|Add0~86_combout\ & 
-- !\arith_logic_unity|Add0~92\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux12~0_combout\,
	datab => \arith_logic_unity|Add0~86_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~92\,
	combout => \arith_logic_unity|Add0~93_combout\,
	cout => \arith_logic_unity|Add0~94\);

-- Location: LCCOMB_X110_Y46_N2
\write_data[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[19]~29_combout\ = (\control|Equal3~2_combout\ & (\arith_logic_unity|Add0~93_combout\ & \control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~2_combout\,
	datab => \arith_logic_unity|Add0~93_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[19]~29_combout\);

-- Location: FF_X108_Y47_N9
\register_file|registers:0:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[19]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(19));

-- Location: LCCOMB_X108_Y47_N8
\register_file|mux1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux12~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(19))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:1:regx|Q\(19)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:0:regx|Q\(19),
	datad => \register_file|registers:1:regx|Q\(19),
	combout => \register_file|mux1|Mux12~0_combout\);

-- Location: LCCOMB_X109_Y46_N26
\arith_logic_unity|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~95_combout\ = (\register_file|mux1|Mux11~0_combout\ & ((\arith_logic_unity|Add0~85_combout\ & (!\arith_logic_unity|Add0~94\)) # (!\arith_logic_unity|Add0~85_combout\ & (\arith_logic_unity|Add0~94\ & VCC)))) # 
-- (!\register_file|mux1|Mux11~0_combout\ & ((\arith_logic_unity|Add0~85_combout\ & ((\arith_logic_unity|Add0~94\) # (GND))) # (!\arith_logic_unity|Add0~85_combout\ & (!\arith_logic_unity|Add0~94\))))
-- \arith_logic_unity|Add0~96\ = CARRY((\register_file|mux1|Mux11~0_combout\ & (\arith_logic_unity|Add0~85_combout\ & !\arith_logic_unity|Add0~94\)) # (!\register_file|mux1|Mux11~0_combout\ & ((\arith_logic_unity|Add0~85_combout\) # 
-- (!\arith_logic_unity|Add0~94\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux11~0_combout\,
	datab => \arith_logic_unity|Add0~85_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~94\,
	combout => \arith_logic_unity|Add0~95_combout\,
	cout => \arith_logic_unity|Add0~96\);

-- Location: LCCOMB_X112_Y46_N28
\write_data[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[20]~28_combout\ = (\control|Equal3~2_combout\ & (\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal3~2_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~95_combout\,
	combout => \write_data[20]~28_combout\);

-- Location: LCCOMB_X105_Y46_N22
\register_file|registers:1:regx|Q[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[20]~feeder_combout\ = \write_data[20]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[20]~28_combout\,
	combout => \register_file|registers:1:regx|Q[20]~feeder_combout\);

-- Location: FF_X105_Y46_N23
\register_file|registers:1:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(20));

-- Location: LCCOMB_X105_Y46_N20
\register_file|mux1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux11~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(20))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux9~0_combout\ & (\register_file|registers:1:regx|Q\(20))) # (!\instruction_memory|Mux9~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:1:regx|Q\(20),
	datad => \register_file|registers:0:regx|Q\(20),
	combout => \register_file|mux1|Mux11~0_combout\);

-- Location: LCCOMB_X109_Y46_N28
\arith_logic_unity|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~97_combout\ = ((\register_file|mux1|Mux10~0_combout\ $ (\arith_logic_unity|Add0~84_combout\ $ (\arith_logic_unity|Add0~96\)))) # (GND)
-- \arith_logic_unity|Add0~98\ = CARRY((\register_file|mux1|Mux10~0_combout\ & ((!\arith_logic_unity|Add0~96\) # (!\arith_logic_unity|Add0~84_combout\))) # (!\register_file|mux1|Mux10~0_combout\ & (!\arith_logic_unity|Add0~84_combout\ & 
-- !\arith_logic_unity|Add0~96\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux10~0_combout\,
	datab => \arith_logic_unity|Add0~84_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~96\,
	combout => \arith_logic_unity|Add0~97_combout\,
	cout => \arith_logic_unity|Add0~98\);

-- Location: LCCOMB_X106_Y46_N4
\write_data[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[21]~27_combout\ = (\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~97_combout\ & \control|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Add0~97_combout\,
	datad => \control|Equal3~2_combout\,
	combout => \write_data[21]~27_combout\);

-- Location: FF_X106_Y46_N27
\register_file|registers:0:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[21]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(21));

-- Location: LCCOMB_X106_Y46_N20
\register_file|mux1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux10~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(21))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(21)))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(21),
	datad => \register_file|registers:1:regx|Q\(21),
	combout => \register_file|mux1|Mux10~0_combout\);

-- Location: LCCOMB_X109_Y45_N22
\branch_or_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~1_combout\ = ((!\arith_logic_unity|Add0~99_combout\ & (!\arith_logic_unity|Add0~123_combout\ & !\arith_logic_unity|Add0~111_combout\))) # (!\control|aluOp[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~99_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Add0~123_combout\,
	datad => \arith_logic_unity|Add0~111_combout\,
	combout => \branch_or_next~1_combout\);

-- Location: LCCOMB_X108_Y46_N16
\branch_or_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~0_combout\ = (\control|aluOp[1]~0_combout\ & (!\arith_logic_unity|Add0~66_combout\ & (!\arith_logic_unity|Add0~4_combout\))) # (!\control|aluOp[1]~0_combout\ & (((!\arith_logic_unity|LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Add0~66_combout\,
	datac => \arith_logic_unity|Add0~4_combout\,
	datad => \arith_logic_unity|LessThan0~62_combout\,
	combout => \branch_or_next~0_combout\);

-- Location: LCCOMB_X110_Y46_N30
\branch_or_next~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~8_combout\ = ((!\arith_logic_unity|Add0~62_combout\ & (!\arith_logic_unity|Add0~48_combout\ & !\arith_logic_unity|Add0~50_combout\))) # (!\control|aluOp[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~62_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Add0~48_combout\,
	datad => \arith_logic_unity|Add0~50_combout\,
	combout => \branch_or_next~8_combout\);

-- Location: LCCOMB_X112_Y46_N4
\branch_or_next~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~3_combout\ = (\PC|Q\(2) & (!\PC|Q\(3) & (!\instruction_memory|Mux3~0_combout\ & \instruction_memory|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \instruction_memory|Mux3~0_combout\,
	datad => \instruction_memory|Mux9~0_combout\,
	combout => \branch_or_next~3_combout\);

-- Location: LCCOMB_X109_Y47_N6
\branch_or_next~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~6_combout\ = ((!\arith_logic_unity|Add0~38_combout\ & (!\arith_logic_unity|Add0~42_combout\ & !\arith_logic_unity|Add0~40_combout\))) # (!\control|aluOp[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~38_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Add0~42_combout\,
	datad => \arith_logic_unity|Add0~40_combout\,
	combout => \branch_or_next~6_combout\);

-- Location: LCCOMB_X110_Y46_N8
\branch_or_next~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~4_combout\ = ((!\arith_logic_unity|Add0~52_combout\ & (!\arith_logic_unity|Add0~54_combout\ & !\arith_logic_unity|Add0~56_combout\))) # (!\control|aluOp[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Add0~52_combout\,
	datac => \arith_logic_unity|Add0~54_combout\,
	datad => \arith_logic_unity|Add0~56_combout\,
	combout => \branch_or_next~4_combout\);

-- Location: LCCOMB_X110_Y46_N18
\branch_or_next~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~5_combout\ = ((!\arith_logic_unity|Add0~44_combout\ & (!\arith_logic_unity|Add0~64_combout\ & !\arith_logic_unity|Add0~58_combout\))) # (!\control|aluOp[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Add0~44_combout\,
	datac => \arith_logic_unity|Add0~64_combout\,
	datad => \arith_logic_unity|Add0~58_combout\,
	combout => \branch_or_next~5_combout\);

-- Location: LCCOMB_X110_Y46_N4
\branch_or_next~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~7_combout\ = (\branch_or_next~3_combout\ & (\branch_or_next~6_combout\ & (\branch_or_next~4_combout\ & \branch_or_next~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~3_combout\,
	datab => \branch_or_next~6_combout\,
	datac => \branch_or_next~4_combout\,
	datad => \branch_or_next~5_combout\,
	combout => \branch_or_next~7_combout\);

-- Location: LCCOMB_X110_Y46_N24
\branch_or_next~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~9_combout\ = ((!\arith_logic_unity|Add0~91_combout\ & (!\arith_logic_unity|Add0~89_combout\ & !\arith_logic_unity|Add0~93_combout\))) # (!\control|aluOp[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Add0~91_combout\,
	datac => \arith_logic_unity|Add0~89_combout\,
	datad => \arith_logic_unity|Add0~93_combout\,
	combout => \branch_or_next~9_combout\);

-- Location: LCCOMB_X110_Y46_N10
\branch_or_next~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~10_combout\ = (\branch_or_next~9_combout\ & (((!\arith_logic_unity|Add0~46_combout\ & !\arith_logic_unity|Add0~36_combout\)) # (!\control|aluOp[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~46_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Add0~36_combout\,
	datad => \branch_or_next~9_combout\,
	combout => \branch_or_next~10_combout\);

-- Location: LCCOMB_X110_Y46_N20
\branch_or_next~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~11_combout\ = (\branch_or_next~8_combout\ & (\branch_or_next~7_combout\ & \branch_or_next~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~8_combout\,
	datac => \branch_or_next~7_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \branch_or_next~11_combout\);

-- Location: LCCOMB_X110_Y46_N22
\branch_or_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~2_combout\ = ((!\arith_logic_unity|Add0~60_combout\ & (!\arith_logic_unity|Add0~97_combout\ & !\arith_logic_unity|Add0~107_combout\))) # (!\control|aluOp[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~60_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Add0~97_combout\,
	datad => \arith_logic_unity|Add0~107_combout\,
	combout => \branch_or_next~2_combout\);

-- Location: LCCOMB_X110_Y46_N26
\branch_or_next~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~12_combout\ = (\branch_or_next~11_combout\ & (\branch_or_next~2_combout\ & ((!\arith_logic_unity|Add0~126_combout\) # (!\control|aluOp[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \branch_or_next~11_combout\,
	datac => \branch_or_next~2_combout\,
	datad => \arith_logic_unity|Add0~126_combout\,
	combout => \branch_or_next~12_combout\);

-- Location: LCCOMB_X109_Y45_N20
\branch_or_next~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~13_combout\ = (\arith_logic_unity|Add0~119_combout\) # ((\arith_logic_unity|Add0~95_combout\) # ((\arith_logic_unity|Add0~117_combout\) # (\arith_logic_unity|Add0~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~119_combout\,
	datab => \arith_logic_unity|Add0~95_combout\,
	datac => \arith_logic_unity|Add0~117_combout\,
	datad => \arith_logic_unity|Add0~121_combout\,
	combout => \branch_or_next~13_combout\);

-- Location: LCCOMB_X109_Y45_N18
\branch_or_next~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~14_combout\ = ((!\arith_logic_unity|Add0~105_combout\ & (!\arith_logic_unity|Add0~109_combout\ & !\branch_or_next~13_combout\))) # (!\control|aluOp[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Add0~105_combout\,
	datac => \arith_logic_unity|Add0~109_combout\,
	datad => \branch_or_next~13_combout\,
	combout => \branch_or_next~14_combout\);

-- Location: LCCOMB_X110_Y46_N28
\branch_or_next~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~15_combout\ = (\branch_or_next~1_combout\ & (\branch_or_next~0_combout\ & (\branch_or_next~12_combout\ & \branch_or_next~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~1_combout\,
	datab => \branch_or_next~0_combout\,
	datac => \branch_or_next~12_combout\,
	datad => \branch_or_next~14_combout\,
	combout => \branch_or_next~15_combout\);

-- Location: LCCOMB_X112_Y48_N8
\pc_in[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[5]~5_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & ((\branch_address[5]~4_combout\))) # (!\branch_or_next~15_combout\ & (\pc_incremented[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[5]~6_combout\,
	datab => \pc_in[3]~1_combout\,
	datac => \branch_address[5]~4_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[5]~5_combout\);

-- Location: FF_X112_Y48_N9
\PC|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(5));

-- Location: LCCOMB_X112_Y48_N4
\instruction_memory|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux8~0_combout\ = (\PC|Q\(5)) # ((\PC|Q\(4)) # ((!\PC|Q\(2) & \PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux8~0_combout\);

-- Location: LCCOMB_X112_Y48_N20
\pc_in[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[4]~3_combout\ = (\branch_or_next~15_combout\ & (\branch_address[4]~2_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[4]~2_combout\,
	datac => \pc_incremented[4]~4_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[4]~3_combout\);

-- Location: LCCOMB_X112_Y48_N24
\pc_in[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[4]~4_combout\ = (\control|Equal1~0_combout\ & ((\pc_in[4]~3_combout\))) # (!\control|Equal1~0_combout\ & (\instruction_memory|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux8~0_combout\,
	datac => \control|Equal1~0_combout\,
	datad => \pc_in[4]~3_combout\,
	combout => \pc_in[4]~4_combout\);

-- Location: FF_X112_Y48_N25
\PC|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(4));

-- Location: LCCOMB_X112_Y48_N30
\register_file|registers_clk[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk[1]~0_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & (!\PC|Q\(2) & \PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \register_file|registers_clk[1]~0_combout\);

-- Location: LCCOMB_X112_Y46_N22
\control|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Equal1~0_combout\ = (\register_file|registers_clk[1]~0_combout\) # ((\instruction_memory|Mux9~0_combout\ & ((!\instruction_memory|Mux3~0_combout\) # (!\PC|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \instruction_memory|Mux3~0_combout\,
	datac => \register_file|registers_clk[1]~0_combout\,
	datad => \instruction_memory|Mux9~0_combout\,
	combout => \control|Equal1~0_combout\);

-- Location: LCCOMB_X113_Y48_N0
\pc_in[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[2]~0_combout\ = (\control|Equal1~0_combout\ & \pc_incremented[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal1~0_combout\,
	datac => \pc_incremented[2]~0_combout\,
	combout => \pc_in[2]~0_combout\);

-- Location: FF_X112_Y48_N5
\PC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \pc_in[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(2));

-- Location: LCCOMB_X111_Y48_N0
\instruction_memory|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux9~1_combout\ = (\PC|Q\(2) & (!\PC|Q\(5) & (!\PC|Q\(4) & !\PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux9~1_combout\);

-- Location: LCCOMB_X112_Y48_N6
\pc_in[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[3]~2_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[3]~0_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[3]~0_combout\,
	datab => \pc_in[3]~1_combout\,
	datac => \pc_incremented[3]~2_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[3]~2_combout\);

-- Location: FF_X112_Y48_N7
\PC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(3));

-- Location: LCCOMB_X112_Y48_N0
\instruction_memory|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux4~0_combout\ = (\PC|Q\(3)) # ((\PC|Q\(2)) # ((\PC|Q\(5)) # (\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \instruction_memory|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y48_N10
\control|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Equal3~2_combout\ = (\instruction_memory|Mux4~0_combout\) # ((!\instruction_memory|Mux3~0_combout\ & (!\PC|Q\(4) & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \instruction_memory|Mux3~0_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \control|Equal3~2_combout\);

-- Location: LCCOMB_X111_Y48_N10
\pc_incremented[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[6]~8_combout\ = (\PC|Q\(6) & (\pc_incremented[5]~7\ $ (GND))) # (!\PC|Q\(6) & (!\pc_incremented[5]~7\ & VCC))
-- \pc_incremented[6]~9\ = CARRY((\PC|Q\(6) & !\pc_incremented[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(6),
	datad => VCC,
	cin => \pc_incremented[5]~7\,
	combout => \pc_incremented[6]~8_combout\,
	cout => \pc_incremented[6]~9\);

-- Location: LCCOMB_X111_Y44_N10
\branch_address[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[6]~6_combout\ = (\pc_incremented[6]~8_combout\ & (!\branch_address[5]~5\)) # (!\pc_incremented[6]~8_combout\ & ((\branch_address[5]~5\) # (GND)))
-- \branch_address[6]~7\ = CARRY((!\branch_address[5]~5\) # (!\pc_incremented[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[6]~8_combout\,
	datad => VCC,
	cin => \branch_address[5]~5\,
	combout => \branch_address[6]~6_combout\,
	cout => \branch_address[6]~7\);

-- Location: LCCOMB_X112_Y46_N8
\pc_in[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[6]~6_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[6]~6_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[6]~6_combout\,
	datab => \pc_in[3]~1_combout\,
	datac => \pc_incremented[6]~8_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[6]~6_combout\);

-- Location: FF_X112_Y46_N9
\PC|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(6));

-- Location: LCCOMB_X111_Y48_N12
\pc_incremented[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[7]~10_combout\ = (\PC|Q\(7) & (!\pc_incremented[6]~9\)) # (!\PC|Q\(7) & ((\pc_incremented[6]~9\) # (GND)))
-- \pc_incremented[7]~11\ = CARRY((!\pc_incremented[6]~9\) # (!\PC|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(7),
	datad => VCC,
	cin => \pc_incremented[6]~9\,
	combout => \pc_incremented[7]~10_combout\,
	cout => \pc_incremented[7]~11\);

-- Location: LCCOMB_X111_Y44_N12
\branch_address[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[7]~8_combout\ = (\pc_incremented[7]~10_combout\ & (\branch_address[6]~7\ $ (GND))) # (!\pc_incremented[7]~10_combout\ & (!\branch_address[6]~7\ & VCC))
-- \branch_address[7]~9\ = CARRY((\pc_incremented[7]~10_combout\ & !\branch_address[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[7]~10_combout\,
	datad => VCC,
	cin => \branch_address[6]~7\,
	combout => \branch_address[7]~8_combout\,
	cout => \branch_address[7]~9\);

-- Location: LCCOMB_X111_Y44_N0
\pc_in[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[7]~7_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & ((\branch_address[7]~8_combout\))) # (!\branch_or_next~15_combout\ & (\pc_incremented[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \pc_incremented[7]~10_combout\,
	datac => \branch_address[7]~8_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[7]~7_combout\);

-- Location: FF_X111_Y44_N1
\PC|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(7));

-- Location: LCCOMB_X111_Y48_N14
\pc_incremented[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[8]~12_combout\ = (\PC|Q\(8) & (\pc_incremented[7]~11\ $ (GND))) # (!\PC|Q\(8) & (!\pc_incremented[7]~11\ & VCC))
-- \pc_incremented[8]~13\ = CARRY((\PC|Q\(8) & !\pc_incremented[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(8),
	datad => VCC,
	cin => \pc_incremented[7]~11\,
	combout => \pc_incremented[8]~12_combout\,
	cout => \pc_incremented[8]~13\);

-- Location: LCCOMB_X111_Y44_N14
\branch_address[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[8]~10_combout\ = (\pc_incremented[8]~12_combout\ & (!\branch_address[7]~9\)) # (!\pc_incremented[8]~12_combout\ & ((\branch_address[7]~9\) # (GND)))
-- \branch_address[8]~11\ = CARRY((!\branch_address[7]~9\) # (!\pc_incremented[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[8]~12_combout\,
	datad => VCC,
	cin => \branch_address[7]~9\,
	combout => \branch_address[8]~10_combout\,
	cout => \branch_address[8]~11\);

-- Location: LCCOMB_X112_Y46_N18
\pc_in[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[8]~8_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[8]~10_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[8]~10_combout\,
	datab => \pc_in[3]~1_combout\,
	datac => \pc_incremented[8]~12_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[8]~8_combout\);

-- Location: FF_X112_Y46_N19
\PC|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(8));

-- Location: LCCOMB_X111_Y48_N16
\pc_incremented[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[9]~14_combout\ = (\PC|Q\(9) & (!\pc_incremented[8]~13\)) # (!\PC|Q\(9) & ((\pc_incremented[8]~13\) # (GND)))
-- \pc_incremented[9]~15\ = CARRY((!\pc_incremented[8]~13\) # (!\PC|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(9),
	datad => VCC,
	cin => \pc_incremented[8]~13\,
	combout => \pc_incremented[9]~14_combout\,
	cout => \pc_incremented[9]~15\);

-- Location: LCCOMB_X111_Y44_N16
\branch_address[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[9]~12_combout\ = (\pc_incremented[9]~14_combout\ & (\branch_address[8]~11\ $ (GND))) # (!\pc_incremented[9]~14_combout\ & (!\branch_address[8]~11\ & VCC))
-- \branch_address[9]~13\ = CARRY((\pc_incremented[9]~14_combout\ & !\branch_address[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[9]~14_combout\,
	datad => VCC,
	cin => \branch_address[8]~11\,
	combout => \branch_address[9]~12_combout\,
	cout => \branch_address[9]~13\);

-- Location: LCCOMB_X112_Y46_N12
\pc_in[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[9]~9_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & ((\branch_address[9]~12_combout\))) # (!\branch_or_next~15_combout\ & (\pc_incremented[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[9]~14_combout\,
	datab => \pc_in[3]~1_combout\,
	datac => \branch_address[9]~12_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[9]~9_combout\);

-- Location: FF_X112_Y46_N13
\PC|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(9));

-- Location: LCCOMB_X111_Y48_N18
\pc_incremented[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[10]~16_combout\ = (\PC|Q\(10) & (\pc_incremented[9]~15\ $ (GND))) # (!\PC|Q\(10) & (!\pc_incremented[9]~15\ & VCC))
-- \pc_incremented[10]~17\ = CARRY((\PC|Q\(10) & !\pc_incremented[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(10),
	datad => VCC,
	cin => \pc_incremented[9]~15\,
	combout => \pc_incremented[10]~16_combout\,
	cout => \pc_incremented[10]~17\);

-- Location: LCCOMB_X111_Y44_N18
\branch_address[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[10]~14_combout\ = (\pc_incremented[10]~16_combout\ & (!\branch_address[9]~13\)) # (!\pc_incremented[10]~16_combout\ & ((\branch_address[9]~13\) # (GND)))
-- \branch_address[10]~15\ = CARRY((!\branch_address[9]~13\) # (!\pc_incremented[10]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[10]~16_combout\,
	datad => VCC,
	cin => \branch_address[9]~13\,
	combout => \branch_address[10]~14_combout\,
	cout => \branch_address[10]~15\);

-- Location: LCCOMB_X111_Y46_N24
\pc_in[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[10]~10_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & ((\branch_address[10]~14_combout\))) # (!\branch_or_next~15_combout\ & (\pc_incremented[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[10]~16_combout\,
	datab => \branch_address[10]~14_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[10]~10_combout\);

-- Location: FF_X111_Y46_N25
\PC|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(10));

-- Location: LCCOMB_X111_Y48_N20
\pc_incremented[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[11]~18_combout\ = (\PC|Q\(11) & (!\pc_incremented[10]~17\)) # (!\PC|Q\(11) & ((\pc_incremented[10]~17\) # (GND)))
-- \pc_incremented[11]~19\ = CARRY((!\pc_incremented[10]~17\) # (!\PC|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(11),
	datad => VCC,
	cin => \pc_incremented[10]~17\,
	combout => \pc_incremented[11]~18_combout\,
	cout => \pc_incremented[11]~19\);

-- Location: LCCOMB_X111_Y44_N20
\branch_address[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[11]~16_combout\ = (\pc_incremented[11]~18_combout\ & (\branch_address[10]~15\ $ (GND))) # (!\pc_incremented[11]~18_combout\ & (!\branch_address[10]~15\ & VCC))
-- \branch_address[11]~17\ = CARRY((\pc_incremented[11]~18_combout\ & !\branch_address[10]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[11]~18_combout\,
	datad => VCC,
	cin => \branch_address[10]~15\,
	combout => \branch_address[11]~16_combout\,
	cout => \branch_address[11]~17\);

-- Location: LCCOMB_X111_Y46_N30
\pc_in[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[11]~11_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[11]~16_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[11]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_address[11]~16_combout\,
	datac => \pc_incremented[11]~18_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[11]~11_combout\);

-- Location: FF_X111_Y46_N31
\PC|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(11));

-- Location: LCCOMB_X111_Y48_N22
\pc_incremented[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[12]~20_combout\ = (\PC|Q\(12) & (\pc_incremented[11]~19\ $ (GND))) # (!\PC|Q\(12) & (!\pc_incremented[11]~19\ & VCC))
-- \pc_incremented[12]~21\ = CARRY((\PC|Q\(12) & !\pc_incremented[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(12),
	datad => VCC,
	cin => \pc_incremented[11]~19\,
	combout => \pc_incremented[12]~20_combout\,
	cout => \pc_incremented[12]~21\);

-- Location: LCCOMB_X111_Y44_N22
\branch_address[12]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[12]~18_combout\ = (\pc_incremented[12]~20_combout\ & (!\branch_address[11]~17\)) # (!\pc_incremented[12]~20_combout\ & ((\branch_address[11]~17\) # (GND)))
-- \branch_address[12]~19\ = CARRY((!\branch_address[11]~17\) # (!\pc_incremented[12]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[12]~20_combout\,
	datad => VCC,
	cin => \branch_address[11]~17\,
	combout => \branch_address[12]~18_combout\,
	cout => \branch_address[12]~19\);

-- Location: LCCOMB_X111_Y44_N2
\pc_in[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[12]~12_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[12]~18_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[12]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_address[12]~18_combout\,
	datac => \pc_incremented[12]~20_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[12]~12_combout\);

-- Location: FF_X111_Y44_N3
\PC|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(12));

-- Location: LCCOMB_X111_Y48_N24
\pc_incremented[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[13]~22_combout\ = (\PC|Q\(13) & (!\pc_incremented[12]~21\)) # (!\PC|Q\(13) & ((\pc_incremented[12]~21\) # (GND)))
-- \pc_incremented[13]~23\ = CARRY((!\pc_incremented[12]~21\) # (!\PC|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(13),
	datad => VCC,
	cin => \pc_incremented[12]~21\,
	combout => \pc_incremented[13]~22_combout\,
	cout => \pc_incremented[13]~23\);

-- Location: LCCOMB_X111_Y44_N24
\branch_address[13]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[13]~20_combout\ = (\pc_incremented[13]~22_combout\ & (\branch_address[12]~19\ $ (GND))) # (!\pc_incremented[13]~22_combout\ & (!\branch_address[12]~19\ & VCC))
-- \branch_address[13]~21\ = CARRY((\pc_incremented[13]~22_combout\ & !\branch_address[12]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[13]~22_combout\,
	datad => VCC,
	cin => \branch_address[12]~19\,
	combout => \branch_address[13]~20_combout\,
	cout => \branch_address[13]~21\);

-- Location: LCCOMB_X112_Y46_N30
\pc_in[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[13]~13_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & ((\branch_address[13]~20_combout\))) # (!\branch_or_next~15_combout\ & (\pc_incremented[13]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[13]~22_combout\,
	datab => \pc_in[3]~1_combout\,
	datac => \branch_address[13]~20_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[13]~13_combout\);

-- Location: FF_X112_Y46_N31
\PC|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(13));

-- Location: LCCOMB_X111_Y48_N26
\pc_incremented[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[14]~24_combout\ = (\PC|Q\(14) & (\pc_incremented[13]~23\ $ (GND))) # (!\PC|Q\(14) & (!\pc_incremented[13]~23\ & VCC))
-- \pc_incremented[14]~25\ = CARRY((\PC|Q\(14) & !\pc_incremented[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(14),
	datad => VCC,
	cin => \pc_incremented[13]~23\,
	combout => \pc_incremented[14]~24_combout\,
	cout => \pc_incremented[14]~25\);

-- Location: LCCOMB_X111_Y44_N26
\branch_address[14]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[14]~22_combout\ = (\pc_incremented[14]~24_combout\ & (!\branch_address[13]~21\)) # (!\pc_incremented[14]~24_combout\ & ((\branch_address[13]~21\) # (GND)))
-- \branch_address[14]~23\ = CARRY((!\branch_address[13]~21\) # (!\pc_incremented[14]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[14]~24_combout\,
	datad => VCC,
	cin => \branch_address[13]~21\,
	combout => \branch_address[14]~22_combout\,
	cout => \branch_address[14]~23\);

-- Location: LCCOMB_X112_Y46_N16
\pc_in[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[14]~14_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & ((\branch_address[14]~22_combout\))) # (!\branch_or_next~15_combout\ & (\pc_incremented[14]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[14]~24_combout\,
	datab => \branch_address[14]~22_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[14]~14_combout\);

-- Location: FF_X112_Y46_N17
\PC|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(14));

-- Location: LCCOMB_X111_Y48_N28
\pc_incremented[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[15]~26_combout\ = (\PC|Q\(15) & (!\pc_incremented[14]~25\)) # (!\PC|Q\(15) & ((\pc_incremented[14]~25\) # (GND)))
-- \pc_incremented[15]~27\ = CARRY((!\pc_incremented[14]~25\) # (!\PC|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(15),
	datad => VCC,
	cin => \pc_incremented[14]~25\,
	combout => \pc_incremented[15]~26_combout\,
	cout => \pc_incremented[15]~27\);

-- Location: LCCOMB_X111_Y44_N28
\branch_address[15]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[15]~24_combout\ = (\pc_incremented[15]~26_combout\ & (\branch_address[14]~23\ $ (GND))) # (!\pc_incremented[15]~26_combout\ & (!\branch_address[14]~23\ & VCC))
-- \branch_address[15]~25\ = CARRY((\pc_incremented[15]~26_combout\ & !\branch_address[14]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[15]~26_combout\,
	datad => VCC,
	cin => \branch_address[14]~23\,
	combout => \branch_address[15]~24_combout\,
	cout => \branch_address[15]~25\);

-- Location: LCCOMB_X111_Y46_N4
\pc_in[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[15]~15_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[15]~24_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[15]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_address[15]~24_combout\,
	datac => \pc_incremented[15]~26_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[15]~15_combout\);

-- Location: FF_X111_Y46_N5
\PC|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(15));

-- Location: LCCOMB_X111_Y48_N30
\pc_incremented[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[16]~28_combout\ = (\PC|Q\(16) & (\pc_incremented[15]~27\ $ (GND))) # (!\PC|Q\(16) & (!\pc_incremented[15]~27\ & VCC))
-- \pc_incremented[16]~29\ = CARRY((\PC|Q\(16) & !\pc_incremented[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(16),
	datad => VCC,
	cin => \pc_incremented[15]~27\,
	combout => \pc_incremented[16]~28_combout\,
	cout => \pc_incremented[16]~29\);

-- Location: LCCOMB_X111_Y44_N30
\branch_address[16]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[16]~26_combout\ = (\pc_incremented[16]~28_combout\ & (!\branch_address[15]~25\)) # (!\pc_incremented[16]~28_combout\ & ((\branch_address[15]~25\) # (GND)))
-- \branch_address[16]~27\ = CARRY((!\branch_address[15]~25\) # (!\pc_incremented[16]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[16]~28_combout\,
	datad => VCC,
	cin => \branch_address[15]~25\,
	combout => \branch_address[16]~26_combout\,
	cout => \branch_address[16]~27\);

-- Location: LCCOMB_X112_Y46_N2
\pc_in[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[16]~16_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[16]~26_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[16]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[16]~26_combout\,
	datab => \pc_in[3]~1_combout\,
	datac => \pc_incremented[16]~28_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[16]~16_combout\);

-- Location: FF_X112_Y46_N3
\PC|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(16));

-- Location: LCCOMB_X111_Y47_N0
\pc_incremented[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[17]~30_combout\ = (\PC|Q\(17) & (!\pc_incremented[16]~29\)) # (!\PC|Q\(17) & ((\pc_incremented[16]~29\) # (GND)))
-- \pc_incremented[17]~31\ = CARRY((!\pc_incremented[16]~29\) # (!\PC|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(17),
	datad => VCC,
	cin => \pc_incremented[16]~29\,
	combout => \pc_incremented[17]~30_combout\,
	cout => \pc_incremented[17]~31\);

-- Location: LCCOMB_X111_Y43_N0
\branch_address[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[17]~28_combout\ = (\pc_incremented[17]~30_combout\ & (\branch_address[16]~27\ $ (GND))) # (!\pc_incremented[17]~30_combout\ & (!\branch_address[16]~27\ & VCC))
-- \branch_address[17]~29\ = CARRY((\pc_incremented[17]~30_combout\ & !\branch_address[16]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[17]~30_combout\,
	datad => VCC,
	cin => \branch_address[16]~27\,
	combout => \branch_address[17]~28_combout\,
	cout => \branch_address[17]~29\);

-- Location: LCCOMB_X111_Y46_N2
\pc_in[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[17]~17_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[17]~28_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[17]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_address[17]~28_combout\,
	datac => \pc_incremented[17]~30_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[17]~17_combout\);

-- Location: FF_X111_Y46_N3
\PC|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(17));

-- Location: LCCOMB_X111_Y47_N2
\pc_incremented[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[18]~32_combout\ = (\PC|Q\(18) & (\pc_incremented[17]~31\ $ (GND))) # (!\PC|Q\(18) & (!\pc_incremented[17]~31\ & VCC))
-- \pc_incremented[18]~33\ = CARRY((\PC|Q\(18) & !\pc_incremented[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(18),
	datad => VCC,
	cin => \pc_incremented[17]~31\,
	combout => \pc_incremented[18]~32_combout\,
	cout => \pc_incremented[18]~33\);

-- Location: LCCOMB_X111_Y43_N2
\branch_address[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[18]~30_combout\ = (\pc_incremented[18]~32_combout\ & (!\branch_address[17]~29\)) # (!\pc_incremented[18]~32_combout\ & ((\branch_address[17]~29\) # (GND)))
-- \branch_address[18]~31\ = CARRY((!\branch_address[17]~29\) # (!\pc_incremented[18]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[18]~32_combout\,
	datad => VCC,
	cin => \branch_address[17]~29\,
	combout => \branch_address[18]~30_combout\,
	cout => \branch_address[18]~31\);

-- Location: LCCOMB_X111_Y46_N0
\pc_in[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[18]~18_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[18]~30_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[18]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[18]~30_combout\,
	datab => \pc_incremented[18]~32_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[18]~18_combout\);

-- Location: FF_X111_Y46_N1
\PC|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(18));

-- Location: LCCOMB_X111_Y47_N4
\pc_incremented[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[19]~34_combout\ = (\PC|Q\(19) & (!\pc_incremented[18]~33\)) # (!\PC|Q\(19) & ((\pc_incremented[18]~33\) # (GND)))
-- \pc_incremented[19]~35\ = CARRY((!\pc_incremented[18]~33\) # (!\PC|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(19),
	datad => VCC,
	cin => \pc_incremented[18]~33\,
	combout => \pc_incremented[19]~34_combout\,
	cout => \pc_incremented[19]~35\);

-- Location: LCCOMB_X111_Y43_N4
\branch_address[19]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[19]~32_combout\ = (\pc_incremented[19]~34_combout\ & (\branch_address[18]~31\ $ (GND))) # (!\pc_incremented[19]~34_combout\ & (!\branch_address[18]~31\ & VCC))
-- \branch_address[19]~33\ = CARRY((\pc_incremented[19]~34_combout\ & !\branch_address[18]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[19]~34_combout\,
	datad => VCC,
	cin => \branch_address[18]~31\,
	combout => \branch_address[19]~32_combout\,
	cout => \branch_address[19]~33\);

-- Location: LCCOMB_X111_Y46_N14
\pc_in[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[19]~19_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[19]~32_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[19]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[19]~32_combout\,
	datab => \pc_incremented[19]~34_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[19]~19_combout\);

-- Location: FF_X111_Y46_N15
\PC|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(19));

-- Location: LCCOMB_X111_Y47_N6
\pc_incremented[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[20]~36_combout\ = (\PC|Q\(20) & (\pc_incremented[19]~35\ $ (GND))) # (!\PC|Q\(20) & (!\pc_incremented[19]~35\ & VCC))
-- \pc_incremented[20]~37\ = CARRY((\PC|Q\(20) & !\pc_incremented[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(20),
	datad => VCC,
	cin => \pc_incremented[19]~35\,
	combout => \pc_incremented[20]~36_combout\,
	cout => \pc_incremented[20]~37\);

-- Location: LCCOMB_X111_Y43_N6
\branch_address[20]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[20]~34_combout\ = (\pc_incremented[20]~36_combout\ & (!\branch_address[19]~33\)) # (!\pc_incremented[20]~36_combout\ & ((\branch_address[19]~33\) # (GND)))
-- \branch_address[20]~35\ = CARRY((!\branch_address[19]~33\) # (!\pc_incremented[20]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[20]~36_combout\,
	datad => VCC,
	cin => \branch_address[19]~33\,
	combout => \branch_address[20]~34_combout\,
	cout => \branch_address[20]~35\);

-- Location: LCCOMB_X111_Y46_N28
\pc_in[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[20]~20_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[20]~34_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[20]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[20]~34_combout\,
	datab => \pc_incremented[20]~36_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[20]~20_combout\);

-- Location: FF_X111_Y46_N29
\PC|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(20));

-- Location: LCCOMB_X111_Y47_N8
\pc_incremented[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[21]~38_combout\ = (\PC|Q\(21) & (!\pc_incremented[20]~37\)) # (!\PC|Q\(21) & ((\pc_incremented[20]~37\) # (GND)))
-- \pc_incremented[21]~39\ = CARRY((!\pc_incremented[20]~37\) # (!\PC|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(21),
	datad => VCC,
	cin => \pc_incremented[20]~37\,
	combout => \pc_incremented[21]~38_combout\,
	cout => \pc_incremented[21]~39\);

-- Location: LCCOMB_X111_Y43_N8
\branch_address[21]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[21]~36_combout\ = (\pc_incremented[21]~38_combout\ & (\branch_address[20]~35\ $ (GND))) # (!\pc_incremented[21]~38_combout\ & (!\branch_address[20]~35\ & VCC))
-- \branch_address[21]~37\ = CARRY((\pc_incremented[21]~38_combout\ & !\branch_address[20]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[21]~38_combout\,
	datad => VCC,
	cin => \branch_address[20]~35\,
	combout => \branch_address[21]~36_combout\,
	cout => \branch_address[21]~37\);

-- Location: LCCOMB_X112_Y46_N0
\pc_in[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[21]~21_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & ((\branch_address[21]~36_combout\))) # (!\branch_or_next~15_combout\ & (\pc_incremented[21]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[21]~38_combout\,
	datab => \pc_in[3]~1_combout\,
	datac => \branch_address[21]~36_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[21]~21_combout\);

-- Location: FF_X112_Y46_N1
\PC|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(21));

-- Location: LCCOMB_X111_Y47_N10
\pc_incremented[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[22]~40_combout\ = (\PC|Q\(22) & (\pc_incremented[21]~39\ $ (GND))) # (!\PC|Q\(22) & (!\pc_incremented[21]~39\ & VCC))
-- \pc_incremented[22]~41\ = CARRY((\PC|Q\(22) & !\pc_incremented[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(22),
	datad => VCC,
	cin => \pc_incremented[21]~39\,
	combout => \pc_incremented[22]~40_combout\,
	cout => \pc_incremented[22]~41\);

-- Location: LCCOMB_X111_Y43_N10
\branch_address[22]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[22]~38_combout\ = (\pc_incremented[22]~40_combout\ & (!\branch_address[21]~37\)) # (!\pc_incremented[22]~40_combout\ & ((\branch_address[21]~37\) # (GND)))
-- \branch_address[22]~39\ = CARRY((!\branch_address[21]~37\) # (!\pc_incremented[22]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[22]~40_combout\,
	datad => VCC,
	cin => \branch_address[21]~37\,
	combout => \branch_address[22]~38_combout\,
	cout => \branch_address[22]~39\);

-- Location: LCCOMB_X111_Y46_N10
\pc_in[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[22]~22_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & ((\branch_address[22]~38_combout\))) # (!\branch_or_next~15_combout\ & (\pc_incremented[22]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[22]~40_combout\,
	datab => \branch_address[22]~38_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[22]~22_combout\);

-- Location: FF_X111_Y46_N11
\PC|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(22));

-- Location: LCCOMB_X111_Y47_N12
\pc_incremented[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[23]~42_combout\ = (\PC|Q\(23) & (!\pc_incremented[22]~41\)) # (!\PC|Q\(23) & ((\pc_incremented[22]~41\) # (GND)))
-- \pc_incremented[23]~43\ = CARRY((!\pc_incremented[22]~41\) # (!\PC|Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(23),
	datad => VCC,
	cin => \pc_incremented[22]~41\,
	combout => \pc_incremented[23]~42_combout\,
	cout => \pc_incremented[23]~43\);

-- Location: LCCOMB_X111_Y43_N12
\branch_address[23]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[23]~40_combout\ = (\pc_incremented[23]~42_combout\ & (\branch_address[22]~39\ $ (GND))) # (!\pc_incremented[23]~42_combout\ & (!\branch_address[22]~39\ & VCC))
-- \branch_address[23]~41\ = CARRY((\pc_incremented[23]~42_combout\ & !\branch_address[22]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[23]~42_combout\,
	datad => VCC,
	cin => \branch_address[22]~39\,
	combout => \branch_address[23]~40_combout\,
	cout => \branch_address[23]~41\);

-- Location: LCCOMB_X111_Y46_N20
\pc_in[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[23]~23_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[23]~40_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[23]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[23]~40_combout\,
	datab => \pc_incremented[23]~42_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[23]~23_combout\);

-- Location: FF_X111_Y46_N21
\PC|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(23));

-- Location: LCCOMB_X111_Y47_N14
\pc_incremented[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[24]~44_combout\ = (\PC|Q\(24) & (\pc_incremented[23]~43\ $ (GND))) # (!\PC|Q\(24) & (!\pc_incremented[23]~43\ & VCC))
-- \pc_incremented[24]~45\ = CARRY((\PC|Q\(24) & !\pc_incremented[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(24),
	datad => VCC,
	cin => \pc_incremented[23]~43\,
	combout => \pc_incremented[24]~44_combout\,
	cout => \pc_incremented[24]~45\);

-- Location: LCCOMB_X111_Y43_N14
\branch_address[24]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[24]~42_combout\ = (\pc_incremented[24]~44_combout\ & (!\branch_address[23]~41\)) # (!\pc_incremented[24]~44_combout\ & ((\branch_address[23]~41\) # (GND)))
-- \branch_address[24]~43\ = CARRY((!\branch_address[23]~41\) # (!\pc_incremented[24]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[24]~44_combout\,
	datad => VCC,
	cin => \branch_address[23]~41\,
	combout => \branch_address[24]~42_combout\,
	cout => \branch_address[24]~43\);

-- Location: LCCOMB_X111_Y46_N26
\pc_in[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[24]~24_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & ((\branch_address[24]~42_combout\))) # (!\branch_or_next~15_combout\ & (\pc_incremented[24]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \pc_incremented[24]~44_combout\,
	datac => \branch_address[24]~42_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[24]~24_combout\);

-- Location: FF_X111_Y46_N27
\PC|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(24));

-- Location: LCCOMB_X111_Y47_N16
\pc_incremented[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[25]~46_combout\ = (\PC|Q\(25) & (!\pc_incremented[24]~45\)) # (!\PC|Q\(25) & ((\pc_incremented[24]~45\) # (GND)))
-- \pc_incremented[25]~47\ = CARRY((!\pc_incremented[24]~45\) # (!\PC|Q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(25),
	datad => VCC,
	cin => \pc_incremented[24]~45\,
	combout => \pc_incremented[25]~46_combout\,
	cout => \pc_incremented[25]~47\);

-- Location: LCCOMB_X111_Y43_N16
\branch_address[25]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[25]~44_combout\ = (\pc_incremented[25]~46_combout\ & (\branch_address[24]~43\ $ (GND))) # (!\pc_incremented[25]~46_combout\ & (!\branch_address[24]~43\ & VCC))
-- \branch_address[25]~45\ = CARRY((\pc_incremented[25]~46_combout\ & !\branch_address[24]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[25]~46_combout\,
	datad => VCC,
	cin => \branch_address[24]~43\,
	combout => \branch_address[25]~44_combout\,
	cout => \branch_address[25]~45\);

-- Location: LCCOMB_X111_Y43_N30
\pc_in[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[25]~25_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[25]~44_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[25]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[25]~44_combout\,
	datab => \pc_incremented[25]~46_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[25]~25_combout\);

-- Location: FF_X111_Y43_N31
\PC|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(25));

-- Location: LCCOMB_X111_Y47_N18
\pc_incremented[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[26]~48_combout\ = (\PC|Q\(26) & (\pc_incremented[25]~47\ $ (GND))) # (!\PC|Q\(26) & (!\pc_incremented[25]~47\ & VCC))
-- \pc_incremented[26]~49\ = CARRY((\PC|Q\(26) & !\pc_incremented[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(26),
	datad => VCC,
	cin => \pc_incremented[25]~47\,
	combout => \pc_incremented[26]~48_combout\,
	cout => \pc_incremented[26]~49\);

-- Location: LCCOMB_X111_Y43_N18
\branch_address[26]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[26]~46_combout\ = (\pc_incremented[26]~48_combout\ & (!\branch_address[25]~45\)) # (!\pc_incremented[26]~48_combout\ & ((\branch_address[25]~45\) # (GND)))
-- \branch_address[26]~47\ = CARRY((!\branch_address[25]~45\) # (!\pc_incremented[26]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[26]~48_combout\,
	datad => VCC,
	cin => \branch_address[25]~45\,
	combout => \branch_address[26]~46_combout\,
	cout => \branch_address[26]~47\);

-- Location: LCCOMB_X111_Y46_N16
\pc_in[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[26]~26_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & (\branch_address[26]~46_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[26]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_address[26]~46_combout\,
	datac => \pc_incremented[26]~48_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[26]~26_combout\);

-- Location: FF_X111_Y46_N17
\PC|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(26));

-- Location: LCCOMB_X111_Y47_N20
\pc_incremented[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[27]~50_combout\ = (\PC|Q\(27) & (!\pc_incremented[26]~49\)) # (!\PC|Q\(27) & ((\pc_incremented[26]~49\) # (GND)))
-- \pc_incremented[27]~51\ = CARRY((!\pc_incremented[26]~49\) # (!\PC|Q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(27),
	datad => VCC,
	cin => \pc_incremented[26]~49\,
	combout => \pc_incremented[27]~50_combout\,
	cout => \pc_incremented[27]~51\);

-- Location: LCCOMB_X111_Y43_N20
\branch_address[27]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[27]~48_combout\ = (\pc_incremented[27]~50_combout\ & (\branch_address[26]~47\ $ (GND))) # (!\pc_incremented[27]~50_combout\ & (!\branch_address[26]~47\ & VCC))
-- \branch_address[27]~49\ = CARRY((\pc_incremented[27]~50_combout\ & !\branch_address[26]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[27]~50_combout\,
	datad => VCC,
	cin => \branch_address[26]~47\,
	combout => \branch_address[27]~48_combout\,
	cout => \branch_address[27]~49\);

-- Location: LCCOMB_X111_Y46_N22
\pc_in[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[27]~27_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~15_combout\ & ((\branch_address[27]~48_combout\))) # (!\branch_or_next~15_combout\ & (\pc_incremented[27]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[27]~50_combout\,
	datab => \branch_address[27]~48_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \pc_in[27]~27_combout\);

-- Location: FF_X111_Y46_N23
\PC|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(27));

-- Location: LCCOMB_X111_Y47_N22
\pc_incremented[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[28]~52_combout\ = (\PC|Q\(28) & (\pc_incremented[27]~51\ $ (GND))) # (!\PC|Q\(28) & (!\pc_incremented[27]~51\ & VCC))
-- \pc_incremented[28]~53\ = CARRY((\PC|Q\(28) & !\pc_incremented[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(28),
	datad => VCC,
	cin => \pc_incremented[27]~51\,
	combout => \pc_incremented[28]~52_combout\,
	cout => \pc_incremented[28]~53\);

-- Location: LCCOMB_X111_Y43_N22
\branch_address[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[28]~50_combout\ = (\pc_incremented[28]~52_combout\ & (!\branch_address[27]~49\)) # (!\pc_incremented[28]~52_combout\ & ((\branch_address[27]~49\) # (GND)))
-- \branch_address[28]~51\ = CARRY((!\branch_address[27]~49\) # (!\pc_incremented[28]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[28]~52_combout\,
	datad => VCC,
	cin => \branch_address[27]~49\,
	combout => \branch_address[28]~50_combout\,
	cout => \branch_address[28]~51\);

-- Location: LCCOMB_X111_Y46_N8
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\branch_or_next~15_combout\ & (\branch_address[28]~50_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[28]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[28]~50_combout\,
	datac => \pc_incremented[28]~52_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \Add1~0_combout\);

-- Location: FF_X111_Y46_N9
\PC|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add1~0_combout\,
	ena => \control|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(28));

-- Location: LCCOMB_X111_Y47_N24
\pc_incremented[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[29]~54_combout\ = (\PC|Q\(29) & (!\pc_incremented[28]~53\)) # (!\PC|Q\(29) & ((\pc_incremented[28]~53\) # (GND)))
-- \pc_incremented[29]~55\ = CARRY((!\pc_incremented[28]~53\) # (!\PC|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(29),
	datad => VCC,
	cin => \pc_incremented[28]~53\,
	combout => \pc_incremented[29]~54_combout\,
	cout => \pc_incremented[29]~55\);

-- Location: LCCOMB_X111_Y43_N24
\branch_address[29]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[29]~52_combout\ = (\pc_incremented[29]~54_combout\ & (\branch_address[28]~51\ $ (GND))) # (!\pc_incremented[29]~54_combout\ & (!\branch_address[28]~51\ & VCC))
-- \branch_address[29]~53\ = CARRY((\pc_incremented[29]~54_combout\ & !\branch_address[28]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[29]~54_combout\,
	datad => VCC,
	cin => \branch_address[28]~51\,
	combout => \branch_address[29]~52_combout\,
	cout => \branch_address[29]~53\);

-- Location: LCCOMB_X111_Y46_N6
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\branch_or_next~15_combout\ & (\branch_address[29]~52_combout\)) # (!\branch_or_next~15_combout\ & ((\pc_incremented[29]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \branch_address[29]~52_combout\,
	datac => \pc_incremented[29]~54_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \Add1~1_combout\);

-- Location: FF_X111_Y46_N7
\PC|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add1~1_combout\,
	ena => \control|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(29));

-- Location: LCCOMB_X111_Y47_N26
\pc_incremented[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[30]~56_combout\ = (\PC|Q\(30) & (\pc_incremented[29]~55\ $ (GND))) # (!\PC|Q\(30) & (!\pc_incremented[29]~55\ & VCC))
-- \pc_incremented[30]~57\ = CARRY((\PC|Q\(30) & !\pc_incremented[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(30),
	datad => VCC,
	cin => \pc_incremented[29]~55\,
	combout => \pc_incremented[30]~56_combout\,
	cout => \pc_incremented[30]~57\);

-- Location: LCCOMB_X111_Y43_N26
\branch_address[30]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[30]~54_combout\ = (\pc_incremented[30]~56_combout\ & (!\branch_address[29]~53\)) # (!\pc_incremented[30]~56_combout\ & ((\branch_address[29]~53\) # (GND)))
-- \branch_address[30]~55\ = CARRY((!\branch_address[29]~53\) # (!\pc_incremented[30]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[30]~56_combout\,
	datad => VCC,
	cin => \branch_address[29]~53\,
	combout => \branch_address[30]~54_combout\,
	cout => \branch_address[30]~55\);

-- Location: LCCOMB_X111_Y46_N12
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\branch_or_next~15_combout\ & ((\branch_address[30]~54_combout\))) # (!\branch_or_next~15_combout\ & (\pc_incremented[30]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[30]~56_combout\,
	datac => \branch_address[30]~54_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \Add1~2_combout\);

-- Location: FF_X111_Y46_N13
\PC|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add1~2_combout\,
	ena => \control|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(30));

-- Location: LCCOMB_X111_Y47_N28
\pc_incremented[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[31]~58_combout\ = \pc_incremented[30]~57\ $ (\PC|Q\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|Q\(31),
	cin => \pc_incremented[30]~57\,
	combout => \pc_incremented[31]~58_combout\);

-- Location: LCCOMB_X111_Y43_N28
\branch_address[31]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[31]~56_combout\ = \pc_incremented[31]~58_combout\ $ (!\branch_address[30]~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[31]~58_combout\,
	cin => \branch_address[30]~55\,
	combout => \branch_address[31]~56_combout\);

-- Location: LCCOMB_X111_Y46_N18
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\branch_or_next~15_combout\ & ((\branch_address[31]~56_combout\))) # (!\branch_or_next~15_combout\ & (\pc_incremented[31]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[31]~58_combout\,
	datac => \branch_address[31]~56_combout\,
	datad => \branch_or_next~15_combout\,
	combout => \Add1~3_combout\);

-- Location: FF_X111_Y46_N19
\PC|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add1~3_combout\,
	ena => \control|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(31));

ww_data_memory_output(0) <= \data_memory_output[0]~output_o\;

ww_data_memory_output(1) <= \data_memory_output[1]~output_o\;

ww_data_memory_output(2) <= \data_memory_output[2]~output_o\;

ww_data_memory_output(3) <= \data_memory_output[3]~output_o\;

ww_data_memory_output(4) <= \data_memory_output[4]~output_o\;

ww_data_memory_output(5) <= \data_memory_output[5]~output_o\;

ww_data_memory_output(6) <= \data_memory_output[6]~output_o\;

ww_data_memory_output(7) <= \data_memory_output[7]~output_o\;

ww_data_memory_output(8) <= \data_memory_output[8]~output_o\;

ww_data_memory_output(9) <= \data_memory_output[9]~output_o\;

ww_data_memory_output(10) <= \data_memory_output[10]~output_o\;

ww_data_memory_output(11) <= \data_memory_output[11]~output_o\;

ww_data_memory_output(12) <= \data_memory_output[12]~output_o\;

ww_data_memory_output(13) <= \data_memory_output[13]~output_o\;

ww_data_memory_output(14) <= \data_memory_output[14]~output_o\;

ww_data_memory_output(15) <= \data_memory_output[15]~output_o\;

ww_data_memory_output(16) <= \data_memory_output[16]~output_o\;

ww_data_memory_output(17) <= \data_memory_output[17]~output_o\;

ww_data_memory_output(18) <= \data_memory_output[18]~output_o\;

ww_data_memory_output(19) <= \data_memory_output[19]~output_o\;

ww_data_memory_output(20) <= \data_memory_output[20]~output_o\;

ww_data_memory_output(21) <= \data_memory_output[21]~output_o\;

ww_data_memory_output(22) <= \data_memory_output[22]~output_o\;

ww_data_memory_output(23) <= \data_memory_output[23]~output_o\;

ww_data_memory_output(24) <= \data_memory_output[24]~output_o\;

ww_data_memory_output(25) <= \data_memory_output[25]~output_o\;

ww_data_memory_output(26) <= \data_memory_output[26]~output_o\;

ww_data_memory_output(27) <= \data_memory_output[27]~output_o\;

ww_data_memory_output(28) <= \data_memory_output[28]~output_o\;

ww_data_memory_output(29) <= \data_memory_output[29]~output_o\;

ww_data_memory_output(30) <= \data_memory_output[30]~output_o\;

ww_data_memory_output(31) <= \data_memory_output[31]~output_o\;

ww_instruction_addr(0) <= \instruction_addr[0]~output_o\;

ww_instruction_addr(1) <= \instruction_addr[1]~output_o\;

ww_instruction_addr(2) <= \instruction_addr[2]~output_o\;

ww_instruction_addr(3) <= \instruction_addr[3]~output_o\;

ww_instruction_addr(4) <= \instruction_addr[4]~output_o\;

ww_instruction_addr(5) <= \instruction_addr[5]~output_o\;

ww_instruction_addr(6) <= \instruction_addr[6]~output_o\;

ww_instruction_addr(7) <= \instruction_addr[7]~output_o\;

ww_instruction_addr(8) <= \instruction_addr[8]~output_o\;

ww_instruction_addr(9) <= \instruction_addr[9]~output_o\;

ww_instruction_addr(10) <= \instruction_addr[10]~output_o\;

ww_instruction_addr(11) <= \instruction_addr[11]~output_o\;

ww_instruction_addr(12) <= \instruction_addr[12]~output_o\;

ww_instruction_addr(13) <= \instruction_addr[13]~output_o\;

ww_instruction_addr(14) <= \instruction_addr[14]~output_o\;

ww_instruction_addr(15) <= \instruction_addr[15]~output_o\;

ww_instruction_addr(16) <= \instruction_addr[16]~output_o\;

ww_instruction_addr(17) <= \instruction_addr[17]~output_o\;

ww_instruction_addr(18) <= \instruction_addr[18]~output_o\;

ww_instruction_addr(19) <= \instruction_addr[19]~output_o\;

ww_instruction_addr(20) <= \instruction_addr[20]~output_o\;

ww_instruction_addr(21) <= \instruction_addr[21]~output_o\;

ww_instruction_addr(22) <= \instruction_addr[22]~output_o\;

ww_instruction_addr(23) <= \instruction_addr[23]~output_o\;

ww_instruction_addr(24) <= \instruction_addr[24]~output_o\;

ww_instruction_addr(25) <= \instruction_addr[25]~output_o\;

ww_instruction_addr(26) <= \instruction_addr[26]~output_o\;

ww_instruction_addr(27) <= \instruction_addr[27]~output_o\;

ww_instruction_addr(28) <= \instruction_addr[28]~output_o\;

ww_instruction_addr(29) <= \instruction_addr[29]~output_o\;

ww_instruction_addr(30) <= \instruction_addr[30]~output_o\;

ww_instruction_addr(31) <= \instruction_addr[31]~output_o\;
END structure;


