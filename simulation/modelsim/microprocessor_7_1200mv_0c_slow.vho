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

-- DATE "12/28/2018 23:44:21"

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
	rst : IN std_logic;
	data_memory_output : BUFFER std_logic_vector(31 DOWNTO 0);
	instruction_addr : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END microprocessor;

-- Design Ports Information
-- data_memory_output[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[4]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[5]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[6]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[7]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[8]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[9]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[10]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[11]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[12]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[13]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[14]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[15]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[16]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[17]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[18]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[19]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[20]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[21]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[22]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[23]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[24]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[25]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[26]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[27]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[28]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[29]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[30]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[31]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[1]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[4]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[8]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[9]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[10]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[11]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[12]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[13]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[14]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[15]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[16]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[17]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[18]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[19]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[20]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[21]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[22]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[23]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[24]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[25]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[26]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[27]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[28]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[29]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[30]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[31]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_rst : std_logic;
SIGNAL ww_data_memory_output : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instruction_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL \data_memory|Decoder0~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_memory|Decoder0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_memory|Decoder0~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_memory|Decoder0~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_file|registers_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_file|registers_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \pc_incremented[2]~0_combout\ : std_logic;
SIGNAL \PC|Q~89_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \pc_incremented[2]~1\ : std_logic;
SIGNAL \pc_incremented[3]~2_combout\ : std_logic;
SIGNAL \PC|Q~63_combout\ : std_logic;
SIGNAL \pc_incremented[3]~3\ : std_logic;
SIGNAL \pc_incremented[4]~5\ : std_logic;
SIGNAL \pc_incremented[5]~6_combout\ : std_logic;
SIGNAL \PC|Q~65_combout\ : std_logic;
SIGNAL \pc_incremented[4]~4_combout\ : std_logic;
SIGNAL \instruction_memory|Mux14~0_combout\ : std_logic;
SIGNAL \PC|Q~64_combout\ : std_logic;
SIGNAL \control|Equal0~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux7~0_combout\ : std_logic;
SIGNAL \aluOp2[5]~0_combout\ : std_logic;
SIGNAL \register_file|registers_clk[0]~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux5~0_combout\ : std_logic;
SIGNAL \aluOp2[0]~5_combout\ : std_logic;
SIGNAL \control|aluControl[2]~0_combout\ : std_logic;
SIGNAL \control|Equal3~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~172_combout\ : std_logic;
SIGNAL \control|Equal3~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~173_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~174_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~149_combout\ : std_logic;
SIGNAL \instruction_memory|Mux6~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux31~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~81_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~175_combout\ : std_logic;
SIGNAL \register_file|registers_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \arith_logic_unity|Add0~177_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~171_combout\ : std_logic;
SIGNAL \register_file|registers_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \register_file|mux2|Mux0~0_combout\ : std_logic;
SIGNAL \aluOp2[31]~6_combout\ : std_logic;
SIGNAL \aluOp2[2]~2_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux29~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux28~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][3]~combout\ : std_logic;
SIGNAL \data_memory|Decoder0~1_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~1clkctrl_outclk\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][3]~combout\ : std_logic;
SIGNAL \data_memory|Decoder0~2_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~4_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~4clkctrl_outclk\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][3]~combout\ : std_logic;
SIGNAL \data_memory|Mux28~0_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~3_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~3clkctrl_outclk\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][3]~combout\ : std_logic;
SIGNAL \data_memory|Mux28~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~168_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux28~0_combout\ : std_logic;
SIGNAL \aluOp2[3]~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~147_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux29~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux30~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][1]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][1]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][1]~combout\ : std_logic;
SIGNAL \data_memory|Mux30~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][1]~combout\ : std_logic;
SIGNAL \data_memory|Mux30~1_combout\ : std_logic;
SIGNAL \aluOp2[1]~4_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~148_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~82\ : std_logic;
SIGNAL \arith_logic_unity|Add0~83_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~214_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~170_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux30~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~84\ : std_logic;
SIGNAL \arith_logic_unity|Add0~86\ : std_logic;
SIGNAL \arith_logic_unity|Add0~87_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~178_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~0_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~5_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~5clkctrl_outclk\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][2]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][2]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][2]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][2]~combout\ : std_logic;
SIGNAL \data_memory|Mux29~0_combout\ : std_logic;
SIGNAL \data_memory|Mux29~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~169_combout\ : std_logic;
SIGNAL \aluOp2[2]~3_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~80_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~85_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~179_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][31]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][31]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][31]~combout\ : std_logic;
SIGNAL \data_memory|Mux0~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][31]~combout\ : std_logic;
SIGNAL \data_memory|Mux0~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~150_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux1~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][30]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][30]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][30]~combout\ : std_logic;
SIGNAL \data_memory|Mux1~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][30]~combout\ : std_logic;
SIGNAL \data_memory|Mux1~1_combout\ : std_logic;
SIGNAL \aluOp2[30]~7_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~151_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux2~0_combout\ : std_logic;
SIGNAL \aluOp2[29]~8_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~152_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux3~0_combout\ : std_logic;
SIGNAL \aluOp2[28]~9_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][28]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][28]~combout\ : std_logic;
SIGNAL \data_memory|Mux3~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][28]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][28]~combout\ : std_logic;
SIGNAL \data_memory|Mux3~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~153_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][27]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][27]~combout\ : std_logic;
SIGNAL \data_memory|Mux4~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][27]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][27]~combout\ : std_logic;
SIGNAL \data_memory|Mux4~1_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux4~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][26]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][26]~combout\ : std_logic;
SIGNAL \data_memory|Mux5~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][26]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][26]~combout\ : std_logic;
SIGNAL \data_memory|Mux5~1_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux5~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux6~0_combout\ : std_logic;
SIGNAL \aluOp2[25]~12_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~156_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux7~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][24]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][24]~combout\ : std_logic;
SIGNAL \data_memory|Mux7~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][24]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][24]~combout\ : std_logic;
SIGNAL \data_memory|Mux7~1_combout\ : std_logic;
SIGNAL \aluOp2[24]~13_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~157_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux8~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][23]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][23]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][23]~combout\ : std_logic;
SIGNAL \data_memory|Mux8~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][23]~combout\ : std_logic;
SIGNAL \data_memory|Mux8~1_combout\ : std_logic;
SIGNAL \aluOp2[23]~14_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~158_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux9~0_combout\ : std_logic;
SIGNAL \aluOp2[22]~15_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~159_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux10~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][21]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][21]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][21]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][21]~combout\ : std_logic;
SIGNAL \data_memory|Mux10~0_combout\ : std_logic;
SIGNAL \data_memory|Mux10~1_combout\ : std_logic;
SIGNAL \aluOp2[21]~16_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~160_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[20]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux11~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][20]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][20]~combout\ : std_logic;
SIGNAL \data_memory|Mux11~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][20]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][20]~combout\ : std_logic;
SIGNAL \data_memory|Mux11~1_combout\ : std_logic;
SIGNAL \aluOp2[20]~17_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~161_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux12~0_combout\ : std_logic;
SIGNAL \aluOp2[19]~18_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~162_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux13~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][18]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][18]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][18]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][18]~combout\ : std_logic;
SIGNAL \data_memory|Mux13~0_combout\ : std_logic;
SIGNAL \data_memory|Mux13~1_combout\ : std_logic;
SIGNAL \aluOp2[18]~19_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~163_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[17]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux14~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][16]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][16]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][16]~combout\ : std_logic;
SIGNAL \data_memory|Mux15~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][16]~combout\ : std_logic;
SIGNAL \data_memory|Mux15~1_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux15~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux16~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][15]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][15]~combout\ : std_logic;
SIGNAL \data_memory|Mux16~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][15]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][15]~combout\ : std_logic;
SIGNAL \data_memory|Mux16~1_combout\ : std_logic;
SIGNAL \aluOp2[15]~22_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~166_combout\ : std_logic;
SIGNAL \aluOp2[14]~23_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~167_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux18~0_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[12]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux19~0_combout\ : std_logic;
SIGNAL \aluOp2[12]~25_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~169_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[11]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[11]~26_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~170_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux21~0_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[9]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux22~0_combout\ : std_logic;
SIGNAL \aluOp2[8]~29_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~173_combout\ : std_logic;
SIGNAL \aluOp2[7]~30_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~174_combout\ : std_logic;
SIGNAL \aluOp2[6]~31_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~175_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~89_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux26~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~90_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux27~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][4]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][4]~combout\ : std_logic;
SIGNAL \data_memory|Mux27~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][4]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][4]~combout\ : std_logic;
SIGNAL \data_memory|Mux27~1_combout\ : std_logic;
SIGNAL \aluOp2[4]~33_combout\ : std_logic;
SIGNAL \aluOp2[4]~34_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~176_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~88\ : std_logic;
SIGNAL \arith_logic_unity|Add0~91_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~234_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~213_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux27~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~92\ : std_logic;
SIGNAL \arith_logic_unity|Add0~93_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~233_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][5]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][5]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][5]~combout\ : std_logic;
SIGNAL \data_memory|Mux26~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][5]~combout\ : std_logic;
SIGNAL \data_memory|Mux26~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~212_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux26~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~94\ : std_logic;
SIGNAL \arith_logic_unity|Add0~95_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~232_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux25~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][6]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][6]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][6]~combout\ : std_logic;
SIGNAL \data_memory|Mux25~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][6]~combout\ : std_logic;
SIGNAL \data_memory|Mux25~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~211_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux25~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~96\ : std_logic;
SIGNAL \arith_logic_unity|Add0~97_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~231_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux24~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][7]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][7]~combout\ : std_logic;
SIGNAL \data_memory|Mux24~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][7]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][7]~combout\ : std_logic;
SIGNAL \data_memory|Mux24~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~210_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux24~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~98\ : std_logic;
SIGNAL \arith_logic_unity|Add0~99_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~230_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux23~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][8]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][8]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][8]~combout\ : std_logic;
SIGNAL \data_memory|Mux23~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][8]~combout\ : std_logic;
SIGNAL \data_memory|Mux23~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~209_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux23~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~100\ : std_logic;
SIGNAL \arith_logic_unity|Add0~101_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~229_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][9]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][9]~combout\ : std_logic;
SIGNAL \data_memory|Mux22~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][9]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][9]~combout\ : std_logic;
SIGNAL \data_memory|Mux22~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~208_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[9]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux22~0_combout\ : std_logic;
SIGNAL \aluOp2[9]~28_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~172_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~102\ : std_logic;
SIGNAL \arith_logic_unity|Add0~103_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~228_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux21~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][10]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][10]~combout\ : std_logic;
SIGNAL \data_memory|Mux21~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][10]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][10]~combout\ : std_logic;
SIGNAL \data_memory|Mux21~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~207_combout\ : std_logic;
SIGNAL \aluOp2[10]~27_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~171_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~104\ : std_logic;
SIGNAL \arith_logic_unity|Add0~105_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~227_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux20~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][11]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][11]~combout\ : std_logic;
SIGNAL \data_memory|Mux20~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][11]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][11]~combout\ : std_logic;
SIGNAL \data_memory|Mux20~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~206_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux20~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~106\ : std_logic;
SIGNAL \arith_logic_unity|Add0~107_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~226_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][12]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][12]~combout\ : std_logic;
SIGNAL \data_memory|Mux19~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][12]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][12]~combout\ : std_logic;
SIGNAL \data_memory|Mux19~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~205_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux19~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~108\ : std_logic;
SIGNAL \arith_logic_unity|Add0~109_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~225_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux18~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][13]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][13]~combout\ : std_logic;
SIGNAL \data_memory|Mux18~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][13]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][13]~combout\ : std_logic;
SIGNAL \data_memory|Mux18~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~204_combout\ : std_logic;
SIGNAL \aluOp2[13]~24_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~168_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~110\ : std_logic;
SIGNAL \arith_logic_unity|Add0~111_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~224_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux17~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][14]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][14]~combout\ : std_logic;
SIGNAL \data_memory|Mux17~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][14]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][14]~combout\ : std_logic;
SIGNAL \data_memory|Mux17~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~203_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux17~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~112\ : std_logic;
SIGNAL \arith_logic_unity|Add0~113_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~223_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~202_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux16~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~114\ : std_logic;
SIGNAL \arith_logic_unity|Add0~115_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~222_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~201_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux15~0_combout\ : std_logic;
SIGNAL \aluOp2[16]~21_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~165_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~116\ : std_logic;
SIGNAL \arith_logic_unity|Add0~117_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~221_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][17]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][17]~combout\ : std_logic;
SIGNAL \data_memory|Mux14~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][17]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][17]~combout\ : std_logic;
SIGNAL \data_memory|Mux14~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~200_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[17]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux14~0_combout\ : std_logic;
SIGNAL \aluOp2[17]~20_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~164_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~118\ : std_logic;
SIGNAL \arith_logic_unity|Add0~119_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~220_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~199_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux13~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~120\ : std_logic;
SIGNAL \arith_logic_unity|Add0~121_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~219_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][19]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][19]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][19]~combout\ : std_logic;
SIGNAL \data_memory|Mux12~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][19]~combout\ : std_logic;
SIGNAL \data_memory|Mux12~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~198_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux12~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~122\ : std_logic;
SIGNAL \arith_logic_unity|Add0~123_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~218_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~197_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[20]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux11~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~124\ : std_logic;
SIGNAL \arith_logic_unity|Add0~125_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~217_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~196_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux10~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~126\ : std_logic;
SIGNAL \arith_logic_unity|Add0~127_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~216_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][22]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][22]~combout\ : std_logic;
SIGNAL \data_memory|Mux9~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][22]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][22]~combout\ : std_logic;
SIGNAL \data_memory|Mux9~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~195_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux9~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~128\ : std_logic;
SIGNAL \arith_logic_unity|Add0~129_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~215_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~194_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux8~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~130\ : std_logic;
SIGNAL \arith_logic_unity|Add0~131_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~192_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~193_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux7~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~132\ : std_logic;
SIGNAL \arith_logic_unity|Add0~133_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][25]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][25]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][25]~combout\ : std_logic;
SIGNAL \data_memory|Mux6~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][25]~combout\ : std_logic;
SIGNAL \data_memory|Mux6~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~190_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~191_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux6~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~134\ : std_logic;
SIGNAL \arith_logic_unity|Add0~135_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~188_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~189_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux5~0_combout\ : std_logic;
SIGNAL \aluOp2[26]~11_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~155_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~136\ : std_logic;
SIGNAL \arith_logic_unity|Add0~137_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~186_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~187_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux4~0_combout\ : std_logic;
SIGNAL \aluOp2[27]~10_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~154_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~138\ : std_logic;
SIGNAL \arith_logic_unity|Add0~139_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~184_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~185_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux3~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~140\ : std_logic;
SIGNAL \arith_logic_unity|Add0~141_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][29]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][29]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][29]~combout\ : std_logic;
SIGNAL \data_memory|Mux2~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][29]~combout\ : std_logic;
SIGNAL \data_memory|Mux2~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~182_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~183_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux2~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~142\ : std_logic;
SIGNAL \arith_logic_unity|Add0~143_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~180_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~181_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux1~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~144\ : std_logic;
SIGNAL \arith_logic_unity|Add0~145_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~178_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~179_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux0~0_combout\ : std_logic;
SIGNAL \aluOp2[5]~32_combout\ : std_logic;
SIGNAL \aluOp2[2]~35_combout\ : std_logic;
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
SIGNAL \register_file|registers:0:regx|Q~176_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~177_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux31~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][0]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][0]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][0]~combout\ : std_logic;
SIGNAL \data_memory|Mux31~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][0]~combout\ : std_logic;
SIGNAL \data_memory|Mux31~1_combout\ : std_logic;
SIGNAL \pc_incremented[5]~7\ : std_logic;
SIGNAL \pc_incremented[6]~8_combout\ : std_logic;
SIGNAL \PC|Q~66_combout\ : std_logic;
SIGNAL \pc_incremented[6]~9\ : std_logic;
SIGNAL \pc_incremented[7]~10_combout\ : std_logic;
SIGNAL \PC|Q~67_combout\ : std_logic;
SIGNAL \pc_incremented[7]~11\ : std_logic;
SIGNAL \pc_incremented[8]~12_combout\ : std_logic;
SIGNAL \PC|Q~68_combout\ : std_logic;
SIGNAL \pc_incremented[8]~13\ : std_logic;
SIGNAL \pc_incremented[9]~14_combout\ : std_logic;
SIGNAL \PC|Q~69_combout\ : std_logic;
SIGNAL \pc_incremented[9]~15\ : std_logic;
SIGNAL \pc_incremented[10]~16_combout\ : std_logic;
SIGNAL \PC|Q~70_combout\ : std_logic;
SIGNAL \pc_incremented[10]~17\ : std_logic;
SIGNAL \pc_incremented[11]~18_combout\ : std_logic;
SIGNAL \PC|Q~71_combout\ : std_logic;
SIGNAL \pc_incremented[11]~19\ : std_logic;
SIGNAL \pc_incremented[12]~20_combout\ : std_logic;
SIGNAL \PC|Q~72_combout\ : std_logic;
SIGNAL \pc_incremented[12]~21\ : std_logic;
SIGNAL \pc_incremented[13]~22_combout\ : std_logic;
SIGNAL \PC|Q~73_combout\ : std_logic;
SIGNAL \pc_incremented[13]~23\ : std_logic;
SIGNAL \pc_incremented[14]~24_combout\ : std_logic;
SIGNAL \PC|Q~74_combout\ : std_logic;
SIGNAL \pc_incremented[14]~25\ : std_logic;
SIGNAL \pc_incremented[15]~26_combout\ : std_logic;
SIGNAL \PC|Q~75_combout\ : std_logic;
SIGNAL \pc_incremented[15]~27\ : std_logic;
SIGNAL \pc_incremented[16]~28_combout\ : std_logic;
SIGNAL \PC|Q~76_combout\ : std_logic;
SIGNAL \pc_incremented[16]~29\ : std_logic;
SIGNAL \pc_incremented[17]~30_combout\ : std_logic;
SIGNAL \PC|Q~77_combout\ : std_logic;
SIGNAL \pc_incremented[17]~31\ : std_logic;
SIGNAL \pc_incremented[18]~32_combout\ : std_logic;
SIGNAL \PC|Q~78_combout\ : std_logic;
SIGNAL \pc_incremented[18]~33\ : std_logic;
SIGNAL \pc_incremented[19]~34_combout\ : std_logic;
SIGNAL \PC|Q~79_combout\ : std_logic;
SIGNAL \pc_incremented[19]~35\ : std_logic;
SIGNAL \pc_incremented[20]~36_combout\ : std_logic;
SIGNAL \PC|Q~80_combout\ : std_logic;
SIGNAL \pc_incremented[20]~37\ : std_logic;
SIGNAL \pc_incremented[21]~38_combout\ : std_logic;
SIGNAL \PC|Q~81_combout\ : std_logic;
SIGNAL \pc_incremented[21]~39\ : std_logic;
SIGNAL \pc_incremented[22]~40_combout\ : std_logic;
SIGNAL \PC|Q~82_combout\ : std_logic;
SIGNAL \pc_incremented[22]~41\ : std_logic;
SIGNAL \pc_incremented[23]~42_combout\ : std_logic;
SIGNAL \PC|Q~83_combout\ : std_logic;
SIGNAL \pc_incremented[23]~43\ : std_logic;
SIGNAL \pc_incremented[24]~44_combout\ : std_logic;
SIGNAL \PC|Q~84_combout\ : std_logic;
SIGNAL \pc_incremented[24]~45\ : std_logic;
SIGNAL \pc_incremented[25]~46_combout\ : std_logic;
SIGNAL \PC|Q~85_combout\ : std_logic;
SIGNAL \pc_incremented[25]~47\ : std_logic;
SIGNAL \pc_incremented[26]~48_combout\ : std_logic;
SIGNAL \PC|Q~86_combout\ : std_logic;
SIGNAL \pc_incremented[26]~49\ : std_logic;
SIGNAL \pc_incremented[27]~50_combout\ : std_logic;
SIGNAL \PC|Q~87_combout\ : std_logic;
SIGNAL \pc_incremented[27]~51\ : std_logic;
SIGNAL \pc_incremented[28]~52_combout\ : std_logic;
SIGNAL \PC|Q~59_combout\ : std_logic;
SIGNAL \PC|Q[28]~88_combout\ : std_logic;
SIGNAL \pc_incremented[28]~53\ : std_logic;
SIGNAL \pc_incremented[29]~54_combout\ : std_logic;
SIGNAL \PC|Q~60_combout\ : std_logic;
SIGNAL \pc_incremented[29]~55\ : std_logic;
SIGNAL \pc_incremented[30]~56_combout\ : std_logic;
SIGNAL \PC|Q~61_combout\ : std_logic;
SIGNAL \pc_incremented[30]~57\ : std_logic;
SIGNAL \pc_incremented[31]~58_combout\ : std_logic;
SIGNAL \PC|Q~62_combout\ : std_logic;
SIGNAL \PC|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers:0:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL writeLoc : std_logic_vector(4 DOWNTO 0);
SIGNAL \register_file|registers:1:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers_clk\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_rst <= rst;
data_memory_output <= ww_data_memory_output;
instruction_addr <= ww_instruction_addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\data_memory|Decoder0~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \data_memory|Decoder0~3_combout\);

\data_memory|Decoder0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \data_memory|Decoder0~1_combout\);

\data_memory|Decoder0~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \data_memory|Decoder0~5_combout\);

\data_memory|Decoder0~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \data_memory|Decoder0~4_combout\);

\register_file|registers_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \register_file|registers_clk\(0));

\register_file|registers_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \register_file|registers_clk\(1));
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
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux31~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\data_memory_output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux30~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\data_memory_output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux29~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\data_memory_output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux28~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[3]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\data_memory_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux27~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[4]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\data_memory_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux26~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\data_memory_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux25~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[6]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\data_memory_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux24~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[7]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\data_memory_output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux23~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[8]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\data_memory_output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux22~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[9]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\data_memory_output[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux21~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[10]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\data_memory_output[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux20~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[11]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\data_memory_output[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux19~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[12]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\data_memory_output[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux18~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[13]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\data_memory_output[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux17~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[14]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\data_memory_output[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux16~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[15]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\data_memory_output[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux15~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[16]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\data_memory_output[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux14~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[17]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\data_memory_output[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux13~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[18]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\data_memory_output[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux12~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[19]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\data_memory_output[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux11~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[20]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\data_memory_output[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux10~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[21]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\data_memory_output[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux9~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[22]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\data_memory_output[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux8~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[23]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\data_memory_output[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux7~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[24]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\data_memory_output[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux6~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[25]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\data_memory_output[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux5~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[26]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\data_memory_output[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux4~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[27]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\data_memory_output[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux3~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[28]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\data_memory_output[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux2~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[29]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\data_memory_output[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux1~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[30]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\data_memory_output[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux0~1_combout\,
	oe => \control|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[31]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
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

-- Location: IOOBUF_X94_Y0_N2
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

-- Location: IOOBUF_X115_Y55_N16
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

-- Location: IOOBUF_X115_Y57_N16
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

-- Location: IOOBUF_X115_Y56_N16
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

-- Location: IOOBUF_X115_Y56_N23
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

-- Location: IOOBUF_X115_Y55_N23
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

-- Location: IOOBUF_X115_Y58_N23
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

-- Location: IOOBUF_X115_Y58_N16
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

-- Location: IOOBUF_X115_Y54_N16
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

-- Location: IOOBUF_X115_Y62_N16
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

-- Location: IOOBUF_X115_Y51_N2
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

-- Location: IOOBUF_X115_Y49_N9
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

-- Location: IOOBUF_X115_Y53_N16
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

-- Location: IOOBUF_X115_Y51_N9
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

-- Location: IOOBUF_X115_Y49_N2
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

-- Location: IOOBUF_X115_Y48_N2
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

-- Location: IOOBUF_X115_Y50_N2
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

-- Location: IOOBUF_X115_Y50_N9
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

-- Location: IOOBUF_X115_Y52_N2
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

-- Location: IOOBUF_X115_Y52_N9
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

-- Location: IOOBUF_X115_Y57_N23
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

-- Location: IOOBUF_X115_Y47_N16
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

-- Location: IOOBUF_X115_Y48_N9
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

-- Location: IOOBUF_X115_Y47_N23
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

-- Location: IOOBUF_X115_Y61_N16
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

-- Location: LCCOMB_X112_Y54_N2
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

-- Location: LCCOMB_X113_Y54_N28
\PC|Q~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~89_combout\ = (\PC|Q\(5)) # ((\PC|Q\(4)) # (\pc_incremented[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \pc_incremented[2]~0_combout\,
	combout => \PC|Q~89_combout\);

-- Location: IOIBUF_X115_Y61_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X112_Y54_N3
\PC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \PC|Q~89_combout\,
	sclr => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(2));

-- Location: LCCOMB_X112_Y54_N4
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

-- Location: LCCOMB_X111_Y57_N30
\PC|Q~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~63_combout\ = (\pc_incremented[3]~2_combout\ & (!\PC|Q\(4) & !\PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[3]~2_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \PC|Q~63_combout\);

-- Location: FF_X111_Y57_N31
\PC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~63_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(3));

-- Location: LCCOMB_X112_Y54_N6
\pc_incremented[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[4]~4_combout\ = (\PC|Q\(4) & (\pc_incremented[3]~3\ $ (GND))) # (!\PC|Q\(4) & (!\pc_incremented[3]~3\ & VCC))
-- \pc_incremented[4]~5\ = CARRY((\PC|Q\(4) & !\pc_incremented[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datad => VCC,
	cin => \pc_incremented[3]~3\,
	combout => \pc_incremented[4]~4_combout\,
	cout => \pc_incremented[4]~5\);

-- Location: LCCOMB_X112_Y54_N8
\pc_incremented[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[5]~6_combout\ = (\PC|Q\(5) & (!\pc_incremented[4]~5\)) # (!\PC|Q\(5) & ((\pc_incremented[4]~5\) # (GND)))
-- \pc_incremented[5]~7\ = CARRY((!\pc_incremented[4]~5\) # (!\PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datad => VCC,
	cin => \pc_incremented[4]~5\,
	combout => \pc_incremented[5]~6_combout\,
	cout => \pc_incremented[5]~7\);

-- Location: LCCOMB_X111_Y57_N10
\PC|Q~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~65_combout\ = (\pc_incremented[5]~6_combout\ & (!\rst~input_o\ & (!\PC|Q\(5) & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[5]~6_combout\,
	datab => \rst~input_o\,
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \PC|Q~65_combout\);

-- Location: FF_X111_Y57_N11
\PC|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(5));

-- Location: LCCOMB_X111_Y57_N18
\instruction_memory|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux14~0_combout\ = (!\PC|Q\(5) & ((\PC|Q\(4) & (!\PC|Q\(2) & !\PC|Q\(3))) # (!\PC|Q\(4) & (\PC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux14~0_combout\);

-- Location: LCCOMB_X111_Y57_N14
\PC|Q~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~64_combout\ = (\PC|Q\(5) & (((!\instruction_memory|Mux14~0_combout\)))) # (!\PC|Q\(5) & ((\PC|Q\(4) & ((!\instruction_memory|Mux14~0_combout\))) # (!\PC|Q\(4) & (\pc_incremented[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \pc_incremented[4]~4_combout\,
	datac => \PC|Q\(4),
	datad => \instruction_memory|Mux14~0_combout\,
	combout => \PC|Q~64_combout\);

-- Location: FF_X111_Y57_N15
\PC|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~64_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(4));

-- Location: LCCOMB_X113_Y57_N22
\control|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Equal0~0_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & (!\PC|Q\(3) & !\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(3),
	datad => \PC|Q\(2),
	combout => \control|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y57_N16
\instruction_memory|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux7~0_combout\ = (\PC|Q\(2)) # ((\PC|Q\(3)) # ((\PC|Q\(4)) # (\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \instruction_memory|Mux7~0_combout\);

-- Location: LCCOMB_X113_Y57_N14
\writeLoc[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- writeLoc(0) = (\control|Equal0~0_combout\ & ((!\instruction_memory|Mux7~0_combout\))) # (!\control|Equal0~0_combout\ & (!\instruction_memory|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal0~0_combout\,
	datac => \instruction_memory|Mux7~0_combout\,
	datad => \instruction_memory|Mux7~0_combout\,
	combout => writeLoc(0));

-- Location: LCCOMB_X111_Y57_N6
\aluOp2[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[5]~0_combout\ = (!\PC|Q\(4) & !\PC|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \aluOp2[5]~0_combout\);

-- Location: LCCOMB_X113_Y57_N10
\register_file|registers_clk[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk[0]~0_combout\ = (\aluOp2[5]~0_combout\ & (!\CLK~input_o\ & ((!\PC|Q\(2)) # (!\PC|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[5]~0_combout\,
	datab => \PC|Q\(3),
	datac => \CLK~input_o\,
	datad => \PC|Q\(2),
	combout => \register_file|registers_clk[0]~0_combout\);

-- Location: LCCOMB_X113_Y57_N16
\register_file|registers_clk[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(0) = LCELL((!writeLoc(0) & \register_file|registers_clk[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => writeLoc(0),
	datad => \register_file|registers_clk[0]~0_combout\,
	combout => \register_file|registers_clk\(0));

-- Location: LCCOMB_X111_Y57_N2
\instruction_memory|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux5~0_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & ((\PC|Q\(2)) # (\PC|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \instruction_memory|Mux5~0_combout\);

-- Location: LCCOMB_X113_Y57_N8
\register_file|registers_clk[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(1) = LCELL((writeLoc(0) & \register_file|registers_clk[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => writeLoc(0),
	datad => \register_file|registers_clk[0]~0_combout\,
	combout => \register_file|registers_clk\(1));

-- Location: FF_X111_Y60_N25
\register_file|registers:1:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(1),
	asdata => \register_file|registers:0:regx|Q~177_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(0));

-- Location: LCCOMB_X111_Y60_N20
\aluOp2[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[0]~5_combout\ = (!\instruction_memory|Mux5~0_combout\ & ((\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(0)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \register_file|registers:1:regx|Q\(0),
	datac => \register_file|registers:0:regx|Q\(0),
	datad => \instruction_memory|Mux7~0_combout\,
	combout => \aluOp2[0]~5_combout\);

-- Location: LCCOMB_X111_Y57_N12
\control|aluControl[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[2]~0_combout\ = (!\PC|Q\(2) & ((\PC|Q\(3)) # ((\PC|Q\(4) & !\PC|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(4),
	datac => \PC|Q\(3),
	datad => \PC|Q\(5),
	combout => \control|aluControl[2]~0_combout\);

-- Location: LCCOMB_X112_Y56_N12
\control|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Equal3~0_combout\ = (\PC|Q\(2) & (!\PC|Q\(4) & !\PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \control|Equal3~0_combout\);

-- Location: LCCOMB_X111_Y60_N16
\register_file|registers:0:regx|Q~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~172_combout\ = (!\rst~input_o\ & (!\control|Equal3~0_combout\ & ((\control|aluControl[2]~0_combout\) # (!\aluOp2[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[5]~0_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datac => \rst~input_o\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~172_combout\);

-- Location: LCCOMB_X111_Y58_N20
\control|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Equal3~1_combout\ = (\PC|Q\(2) & (!\PC|Q\(4) & (!\PC|Q\(3) & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(4),
	datac => \PC|Q\(3),
	datad => \PC|Q\(5),
	combout => \control|Equal3~1_combout\);

-- Location: LCCOMB_X111_Y58_N28
\register_file|registers:0:regx|Q~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~173_combout\ = (!\rst~input_o\ & \control|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \control|Equal3~1_combout\,
	combout => \register_file|registers:0:regx|Q~173_combout\);

-- Location: LCCOMB_X111_Y60_N24
\register_file|registers:0:regx|Q~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~174_combout\ = (!\rst~input_o\ & (!\control|Equal3~1_combout\ & \control|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \control|Equal3~1_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~174_combout\);

-- Location: LCCOMB_X111_Y60_N30
\arith_logic_unity|Add0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~149_combout\ = \aluOp2[0]~5_combout\ $ (((\PC|Q\(5)) # ((\PC|Q\(4)) # (\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \control|aluControl[2]~0_combout\,
	datad => \aluOp2[0]~5_combout\,
	combout => \arith_logic_unity|Add0~149_combout\);

-- Location: LCCOMB_X111_Y57_N22
\instruction_memory|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux6~0_combout\ = (\PC|Q\(4)) # ((\PC|Q\(5)) # ((!\PC|Q\(2) & \PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(4),
	datac => \PC|Q\(3),
	datad => \PC|Q\(5),
	combout => \instruction_memory|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y60_N22
\register_file|mux1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux31~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(0)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:1:regx|Q\(0),
	datac => \register_file|registers:0:regx|Q\(0),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux1|Mux31~0_combout\);

-- Location: LCCOMB_X110_Y57_N0
\arith_logic_unity|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~81_combout\ = (\arith_logic_unity|Add0~149_combout\ & (\register_file|mux1|Mux31~0_combout\ $ (VCC))) # (!\arith_logic_unity|Add0~149_combout\ & (\register_file|mux1|Mux31~0_combout\ & VCC))
-- \arith_logic_unity|Add0~82\ = CARRY((\arith_logic_unity|Add0~149_combout\ & \register_file|mux1|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~149_combout\,
	datab => \register_file|mux1|Mux31~0_combout\,
	datad => VCC,
	combout => \arith_logic_unity|Add0~81_combout\,
	cout => \arith_logic_unity|Add0~82\);

-- Location: LCCOMB_X111_Y60_N26
\register_file|registers:0:regx|Q~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~175_combout\ = (\data_memory|Mux31~1_combout\ & ((\register_file|registers:0:regx|Q~173_combout\) # ((\register_file|registers:0:regx|Q~174_combout\ & \arith_logic_unity|Add0~81_combout\)))) # 
-- (!\data_memory|Mux31~1_combout\ & (((\register_file|registers:0:regx|Q~174_combout\ & \arith_logic_unity|Add0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux31~1_combout\,
	datab => \register_file|registers:0:regx|Q~173_combout\,
	datac => \register_file|registers:0:regx|Q~174_combout\,
	datad => \arith_logic_unity|Add0~81_combout\,
	combout => \register_file|registers:0:regx|Q~175_combout\);

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X111_Y60_N10
\arith_logic_unity|Add0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~177_combout\ = (!\PC|Q\(2) & (!\PC|Q\(3) & (!\PC|Q\(4) & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \arith_logic_unity|Add0~177_combout\);

-- Location: LCCOMB_X111_Y60_N4
\register_file|registers:0:regx|Q~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~171_combout\ = (!\rst~input_o\ & (!\control|Equal3~1_combout\ & \arith_logic_unity|Add0~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \control|Equal3~1_combout\,
	datad => \arith_logic_unity|Add0~177_combout\,
	combout => \register_file|registers:0:regx|Q~171_combout\);

-- Location: CLKCTRL_G11
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

-- Location: FF_X108_Y56_N21
\register_file|registers:1:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~179_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(31));

-- Location: LCCOMB_X108_Y56_N24
\register_file|mux2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux0~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(31))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(31),
	datab => \instruction_memory|Mux7~0_combout\,
	datad => \register_file|registers:1:regx|Q\(31),
	combout => \register_file|mux2|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y56_N2
\aluOp2[31]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[31]~6_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux0~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \register_file|mux2|Mux0~0_combout\,
	datad => \aluOp2[5]~0_combout\,
	combout => \aluOp2[31]~6_combout\);

-- Location: LCCOMB_X111_Y57_N4
\aluOp2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[2]~2_combout\ = (!\PC|Q\(2) & (!\PC|Q\(4) & (\PC|Q\(3) & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(4),
	datac => \PC|Q\(3),
	datad => \PC|Q\(5),
	combout => \aluOp2[2]~2_combout\);

-- Location: FF_X112_Y57_N13
\register_file|registers:0:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(0),
	asdata => \register_file|registers:0:regx|Q~169_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(2));

-- Location: LCCOMB_X114_Y57_N26
\register_file|mux2|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux29~0_combout\ = (\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(2)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(2),
	datac => \register_file|registers:0:regx|Q\(2),
	datad => \instruction_memory|Mux7~0_combout\,
	combout => \register_file|mux2|Mux29~0_combout\);

-- Location: FF_X113_Y57_N1
\register_file|registers:0:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(0),
	asdata => \register_file|registers:0:regx|Q~168_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(3));

-- Location: LCCOMB_X114_Y57_N12
\register_file|mux2|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux28~0_combout\ = (\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(3)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(3),
	datac => \register_file|registers:0:regx|Q\(3),
	datad => \instruction_memory|Mux7~0_combout\,
	combout => \register_file|mux2|Mux28~0_combout\);

-- Location: LCCOMB_X113_Y57_N24
\data_memory|possible_outputs[3][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][3]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\register_file|mux2|Mux28~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\data_memory|possible_outputs[3][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux28~0_combout\,
	datac => \data_memory|Decoder0~5clkctrl_outclk\,
	datad => \data_memory|possible_outputs[3][3]~combout\,
	combout => \data_memory|possible_outputs[3][3]~combout\);

-- Location: LCCOMB_X112_Y56_N18
\data_memory|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~1_combout\ = (!\arith_logic_unity|Add0~179_combout\ & \data_memory|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arith_logic_unity|Add0~179_combout\,
	datad => \data_memory|Decoder0~0_combout\,
	combout => \data_memory|Decoder0~1_combout\);

-- Location: CLKCTRL_G9
\data_memory|Decoder0~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \data_memory|Decoder0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \data_memory|Decoder0~1clkctrl_outclk\);

-- Location: LCCOMB_X114_Y57_N30
\data_memory|possible_outputs[2][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][3]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux28~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux28~0_combout\,
	datac => \data_memory|possible_outputs[2][3]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][3]~combout\);

-- Location: LCCOMB_X112_Y56_N0
\data_memory|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~2_combout\ = (\PC|Q\(3) & (!\arith_logic_unity|Add0~178_combout\ & (\instruction_memory|Mux5~0_combout\ & \control|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \data_memory|Decoder0~2_combout\);

-- Location: LCCOMB_X112_Y56_N16
\data_memory|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~4_combout\ = (!\arith_logic_unity|Add0~179_combout\ & \data_memory|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arith_logic_unity|Add0~179_combout\,
	datad => \data_memory|Decoder0~2_combout\,
	combout => \data_memory|Decoder0~4_combout\);

-- Location: CLKCTRL_G7
\data_memory|Decoder0~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \data_memory|Decoder0~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \data_memory|Decoder0~4clkctrl_outclk\);

-- Location: LCCOMB_X113_Y57_N12
\data_memory|possible_outputs[0][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][3]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux28~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][3]~combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \register_file|mux2|Mux28~0_combout\,
	combout => \data_memory|possible_outputs[0][3]~combout\);

-- Location: LCCOMB_X113_Y57_N20
\data_memory|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux28~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & (\arith_logic_unity|Add0~178_combout\)) # (!\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\ & (\data_memory|possible_outputs[2][3]~combout\)) # 
-- (!\arith_logic_unity|Add0~178_combout\ & ((\data_memory|possible_outputs[0][3]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|possible_outputs[2][3]~combout\,
	datad => \data_memory|possible_outputs[0][3]~combout\,
	combout => \data_memory|Mux28~0_combout\);

-- Location: LCCOMB_X112_Y56_N6
\data_memory|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~3_combout\ = (\arith_logic_unity|Add0~179_combout\ & \data_memory|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arith_logic_unity|Add0~179_combout\,
	datad => \data_memory|Decoder0~2_combout\,
	combout => \data_memory|Decoder0~3_combout\);

-- Location: CLKCTRL_G5
\data_memory|Decoder0~3clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \data_memory|Decoder0~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \data_memory|Decoder0~3clkctrl_outclk\);

-- Location: LCCOMB_X113_Y57_N2
\data_memory|possible_outputs[1][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][3]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux28~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][3]~combout\,
	datac => \register_file|mux2|Mux28~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][3]~combout\);

-- Location: LCCOMB_X113_Y57_N26
\data_memory|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux28~1_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\data_memory|Mux28~0_combout\ & (\data_memory|possible_outputs[3][3]~combout\)) # (!\data_memory|Mux28~0_combout\ & ((\data_memory|possible_outputs[1][3]~combout\))))) # 
-- (!\arith_logic_unity|Add0~179_combout\ & (((\data_memory|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \data_memory|possible_outputs[3][3]~combout\,
	datac => \data_memory|Mux28~0_combout\,
	datad => \data_memory|possible_outputs[1][3]~combout\,
	combout => \data_memory|Mux28~1_combout\);

-- Location: LCCOMB_X113_Y57_N30
\register_file|registers:0:regx|Q~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~168_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux28~1_combout\))) # (!\control|Equal3~1_combout\ & (\arith_logic_unity|Add0~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \control|Equal3~1_combout\,
	datac => \rst~input_o\,
	datad => \data_memory|Mux28~1_combout\,
	combout => \register_file|registers:0:regx|Q~168_combout\);

-- Location: FF_X113_Y57_N9
\register_file|registers:1:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(1),
	asdata => \register_file|registers:0:regx|Q~168_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(3));

-- Location: LCCOMB_X113_Y57_N4
\register_file|mux1|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux28~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(3)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:1:regx|Q\(3),
	datac => \register_file|registers:0:regx|Q\(3),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux1|Mux28~0_combout\);

-- Location: LCCOMB_X113_Y57_N0
\aluOp2[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[3]~1_combout\ = (!\instruction_memory|Mux5~0_combout\ & ((\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(3)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \register_file|registers:1:regx|Q\(3),
	datac => \register_file|registers:0:regx|Q\(3),
	datad => \instruction_memory|Mux7~0_combout\,
	combout => \aluOp2[3]~1_combout\);

-- Location: LCCOMB_X113_Y57_N18
\arith_logic_unity|Add0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~147_combout\ = \aluOp2[3]~1_combout\ $ (((\PC|Q\(4)) # ((\PC|Q\(5)) # (\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \control|aluControl[2]~0_combout\,
	datad => \aluOp2[3]~1_combout\,
	combout => \arith_logic_unity|Add0~147_combout\);

-- Location: LCCOMB_X111_Y57_N8
\register_file|mux1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux29~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(2))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:0:regx|Q\(2),
	datad => \register_file|registers:1:regx|Q\(2),
	combout => \register_file|mux1|Mux29~0_combout\);

-- Location: FF_X112_Y57_N21
\register_file|registers:1:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(1),
	asdata => \register_file|registers:0:regx|Q~170_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(1));

-- Location: LCCOMB_X114_Y57_N28
\register_file|mux2|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux30~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(1))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(1),
	datac => \register_file|registers:1:regx|Q\(1),
	datad => \instruction_memory|Mux7~0_combout\,
	combout => \register_file|mux2|Mux30~0_combout\);

-- Location: LCCOMB_X112_Y57_N10
\data_memory|possible_outputs[3][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][1]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux30~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][1]~combout\,
	datac => \register_file|mux2|Mux30~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][1]~combout\);

-- Location: LCCOMB_X112_Y57_N4
\data_memory|possible_outputs[2][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][1]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux30~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux30~0_combout\,
	datac => \data_memory|possible_outputs[2][1]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][1]~combout\);

-- Location: LCCOMB_X112_Y57_N2
\data_memory|possible_outputs[0][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][1]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\register_file|mux2|Mux30~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\data_memory|possible_outputs[0][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux30~0_combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \data_memory|possible_outputs[0][1]~combout\,
	combout => \data_memory|possible_outputs[0][1]~combout\);

-- Location: LCCOMB_X112_Y57_N18
\data_memory|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux30~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & ((\arith_logic_unity|Add0~179_combout\) # ((\data_memory|possible_outputs[2][1]~combout\)))) # (!\arith_logic_unity|Add0~178_combout\ & (!\arith_logic_unity|Add0~179_combout\ & 
-- ((\data_memory|possible_outputs[0][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \data_memory|possible_outputs[2][1]~combout\,
	datad => \data_memory|possible_outputs[0][1]~combout\,
	combout => \data_memory|Mux30~0_combout\);

-- Location: LCCOMB_X113_Y57_N6
\data_memory|possible_outputs[1][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][1]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux30~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][1]~combout\,
	datac => \register_file|mux2|Mux30~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][1]~combout\);

-- Location: LCCOMB_X112_Y57_N14
\data_memory|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux30~1_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\data_memory|Mux30~0_combout\ & (\data_memory|possible_outputs[3][1]~combout\)) # (!\data_memory|Mux30~0_combout\ & ((\data_memory|possible_outputs[1][1]~combout\))))) # 
-- (!\arith_logic_unity|Add0~179_combout\ & (((\data_memory|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][1]~combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \data_memory|Mux30~0_combout\,
	datad => \data_memory|possible_outputs[1][1]~combout\,
	combout => \data_memory|Mux30~1_combout\);

-- Location: LCCOMB_X112_Y57_N30
\aluOp2[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[1]~4_combout\ = (!\instruction_memory|Mux5~0_combout\ & ((\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(1)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datab => \register_file|registers:1:regx|Q\(1),
	datac => \register_file|registers:0:regx|Q\(1),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \aluOp2[1]~4_combout\);

-- Location: LCCOMB_X111_Y57_N26
\arith_logic_unity|Add0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~148_combout\ = \aluOp2[1]~4_combout\ $ (((\PC|Q\(5)) # ((\PC|Q\(4)) # (\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \control|aluControl[2]~0_combout\,
	datad => \aluOp2[1]~4_combout\,
	combout => \arith_logic_unity|Add0~148_combout\);

-- Location: LCCOMB_X110_Y57_N2
\arith_logic_unity|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~83_combout\ = (\register_file|mux1|Mux30~0_combout\ & ((\arith_logic_unity|Add0~148_combout\ & (\arith_logic_unity|Add0~82\ & VCC)) # (!\arith_logic_unity|Add0~148_combout\ & (!\arith_logic_unity|Add0~82\)))) # 
-- (!\register_file|mux1|Mux30~0_combout\ & ((\arith_logic_unity|Add0~148_combout\ & (!\arith_logic_unity|Add0~82\)) # (!\arith_logic_unity|Add0~148_combout\ & ((\arith_logic_unity|Add0~82\) # (GND)))))
-- \arith_logic_unity|Add0~84\ = CARRY((\register_file|mux1|Mux30~0_combout\ & (!\arith_logic_unity|Add0~148_combout\ & !\arith_logic_unity|Add0~82\)) # (!\register_file|mux1|Mux30~0_combout\ & ((!\arith_logic_unity|Add0~82\) # 
-- (!\arith_logic_unity|Add0~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux30~0_combout\,
	datab => \arith_logic_unity|Add0~148_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~82\,
	combout => \arith_logic_unity|Add0~83_combout\,
	cout => \arith_logic_unity|Add0~84\);

-- Location: LCCOMB_X112_Y57_N16
\register_file|registers:0:regx|Q~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~214_combout\ = (!\PC|Q\(5) & (\PC|Q\(2) & (\arith_logic_unity|Add0~83_combout\ & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(2),
	datac => \arith_logic_unity|Add0~83_combout\,
	datad => \PC|Q\(4),
	combout => \register_file|registers:0:regx|Q~214_combout\);

-- Location: LCCOMB_X112_Y57_N0
\register_file|registers:0:regx|Q~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~170_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & (\data_memory|Mux30~1_combout\)) # (!\control|Equal3~1_combout\ & ((\register_file|registers:0:regx|Q~214_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \data_memory|Mux30~1_combout\,
	datac => \register_file|registers:0:regx|Q~214_combout\,
	datad => \control|Equal3~1_combout\,
	combout => \register_file|registers:0:regx|Q~170_combout\);

-- Location: FF_X112_Y57_N31
\register_file|registers:0:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(0),
	asdata => \register_file|registers:0:regx|Q~170_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(1));

-- Location: LCCOMB_X112_Y57_N20
\register_file|mux1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux30~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(1))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(1),
	datac => \register_file|registers:1:regx|Q\(1),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux1|Mux30~0_combout\);

-- Location: LCCOMB_X110_Y57_N4
\arith_logic_unity|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~85_combout\ = ((\arith_logic_unity|Add0~80_combout\ $ (\register_file|mux1|Mux29~0_combout\ $ (!\arith_logic_unity|Add0~84\)))) # (GND)
-- \arith_logic_unity|Add0~86\ = CARRY((\arith_logic_unity|Add0~80_combout\ & ((\register_file|mux1|Mux29~0_combout\) # (!\arith_logic_unity|Add0~84\))) # (!\arith_logic_unity|Add0~80_combout\ & (\register_file|mux1|Mux29~0_combout\ & 
-- !\arith_logic_unity|Add0~84\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~80_combout\,
	datab => \register_file|mux1|Mux29~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~84\,
	combout => \arith_logic_unity|Add0~85_combout\,
	cout => \arith_logic_unity|Add0~86\);

-- Location: LCCOMB_X110_Y57_N6
\arith_logic_unity|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~87_combout\ = (\register_file|mux1|Mux28~0_combout\ & ((\arith_logic_unity|Add0~147_combout\ & (\arith_logic_unity|Add0~86\ & VCC)) # (!\arith_logic_unity|Add0~147_combout\ & (!\arith_logic_unity|Add0~86\)))) # 
-- (!\register_file|mux1|Mux28~0_combout\ & ((\arith_logic_unity|Add0~147_combout\ & (!\arith_logic_unity|Add0~86\)) # (!\arith_logic_unity|Add0~147_combout\ & ((\arith_logic_unity|Add0~86\) # (GND)))))
-- \arith_logic_unity|Add0~88\ = CARRY((\register_file|mux1|Mux28~0_combout\ & (!\arith_logic_unity|Add0~147_combout\ & !\arith_logic_unity|Add0~86\)) # (!\register_file|mux1|Mux28~0_combout\ & ((!\arith_logic_unity|Add0~86\) # 
-- (!\arith_logic_unity|Add0~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux28~0_combout\,
	datab => \arith_logic_unity|Add0~147_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~86\,
	combout => \arith_logic_unity|Add0~87_combout\,
	cout => \arith_logic_unity|Add0~88\);

-- Location: LCCOMB_X111_Y60_N18
\arith_logic_unity|Add0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~178_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & (\arith_logic_unity|Add0~87_combout\ & \PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \arith_logic_unity|Add0~87_combout\,
	datad => \PC|Q\(2),
	combout => \arith_logic_unity|Add0~178_combout\);

-- Location: LCCOMB_X112_Y56_N2
\data_memory|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~0_combout\ = (\PC|Q\(3) & (\arith_logic_unity|Add0~178_combout\ & (\instruction_memory|Mux5~0_combout\ & \control|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \data_memory|Decoder0~0_combout\);

-- Location: LCCOMB_X112_Y56_N14
\data_memory|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~5_combout\ = (\arith_logic_unity|Add0~179_combout\ & \data_memory|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arith_logic_unity|Add0~179_combout\,
	datad => \data_memory|Decoder0~0_combout\,
	combout => \data_memory|Decoder0~5_combout\);

-- Location: CLKCTRL_G6
\data_memory|Decoder0~5clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \data_memory|Decoder0~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \data_memory|Decoder0~5clkctrl_outclk\);

-- Location: LCCOMB_X112_Y57_N28
\data_memory|possible_outputs[3][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][2]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux29~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][2]~combout\,
	datab => \register_file|mux2|Mux29~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][2]~combout\);

-- Location: LCCOMB_X112_Y57_N24
\data_memory|possible_outputs[2][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][2]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux29~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][2]~combout\,
	datac => \register_file|mux2|Mux29~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][2]~combout\);

-- Location: LCCOMB_X112_Y57_N8
\data_memory|possible_outputs[0][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][2]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux29~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][2]~combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \register_file|mux2|Mux29~0_combout\,
	combout => \data_memory|possible_outputs[0][2]~combout\);

-- Location: LCCOMB_X113_Y57_N28
\data_memory|possible_outputs[1][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][2]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux29~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][2]~combout\,
	datac => \register_file|mux2|Mux29~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][2]~combout\);

-- Location: LCCOMB_X112_Y57_N22
\data_memory|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux29~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & (\arith_logic_unity|Add0~179_combout\)) # (!\arith_logic_unity|Add0~178_combout\ & ((\arith_logic_unity|Add0~179_combout\ & ((\data_memory|possible_outputs[1][2]~combout\))) # 
-- (!\arith_logic_unity|Add0~179_combout\ & (\data_memory|possible_outputs[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \data_memory|possible_outputs[0][2]~combout\,
	datad => \data_memory|possible_outputs[1][2]~combout\,
	combout => \data_memory|Mux29~0_combout\);

-- Location: LCCOMB_X112_Y57_N6
\data_memory|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux29~1_combout\ = (\data_memory|Mux29~0_combout\ & ((\data_memory|possible_outputs[3][2]~combout\) # ((!\arith_logic_unity|Add0~178_combout\)))) # (!\data_memory|Mux29~0_combout\ & (((\data_memory|possible_outputs[2][2]~combout\ & 
-- \arith_logic_unity|Add0~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][2]~combout\,
	datab => \data_memory|possible_outputs[2][2]~combout\,
	datac => \data_memory|Mux29~0_combout\,
	datad => \arith_logic_unity|Add0~178_combout\,
	combout => \data_memory|Mux29~1_combout\);

-- Location: LCCOMB_X112_Y57_N26
\register_file|registers:0:regx|Q~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~169_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & (\data_memory|Mux29~1_combout\)) # (!\control|Equal3~1_combout\ & ((\arith_logic_unity|Add0~179_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux29~1_combout\,
	datab => \control|Equal3~1_combout\,
	datac => \arith_logic_unity|Add0~179_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~169_combout\);

-- Location: FF_X112_Y57_N29
\register_file|registers:1:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(1),
	asdata => \register_file|registers:0:regx|Q~169_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(2));

-- Location: LCCOMB_X112_Y57_N12
\aluOp2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[2]~3_combout\ = (!\instruction_memory|Mux5~0_combout\ & ((\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(2)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datab => \register_file|registers:1:regx|Q\(2),
	datac => \register_file|registers:0:regx|Q\(2),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \aluOp2[2]~3_combout\);

-- Location: LCCOMB_X111_Y57_N20
\arith_logic_unity|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~80_combout\ = (\control|aluControl[2]~0_combout\ & (!\aluOp2[2]~2_combout\ & (!\aluOp2[2]~3_combout\))) # (!\control|aluControl[2]~0_combout\ & (\aluOp2[5]~0_combout\ $ (((!\aluOp2[2]~2_combout\ & !\aluOp2[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \aluOp2[2]~2_combout\,
	datac => \aluOp2[2]~3_combout\,
	datad => \aluOp2[5]~0_combout\,
	combout => \arith_logic_unity|Add0~80_combout\);

-- Location: LCCOMB_X111_Y57_N24
\arith_logic_unity|Add0~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~179_combout\ = (\PC|Q\(2) & (\arith_logic_unity|Add0~85_combout\ & (!\PC|Q\(4) & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \arith_logic_unity|Add0~85_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \arith_logic_unity|Add0~179_combout\);

-- Location: LCCOMB_X108_Y56_N20
\data_memory|possible_outputs[1][31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][31]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux0~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][31]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datab => \data_memory|possible_outputs[1][31]~combout\,
	datad => \register_file|mux2|Mux0~0_combout\,
	combout => \data_memory|possible_outputs[1][31]~combout\);

-- Location: LCCOMB_X107_Y56_N22
\data_memory|possible_outputs[0][31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][31]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux0~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][31]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][31]~combout\,
	datac => \register_file|mux2|Mux0~0_combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][31]~combout\);

-- Location: LCCOMB_X107_Y56_N12
\data_memory|possible_outputs[2][31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][31]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux0~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][31]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][31]~combout\,
	datac => \register_file|mux2|Mux0~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][31]~combout\);

-- Location: LCCOMB_X107_Y56_N24
\data_memory|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux0~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & (((\arith_logic_unity|Add0~178_combout\)))) # (!\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\ & ((\data_memory|possible_outputs[2][31]~combout\))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (\data_memory|possible_outputs[0][31]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][31]~combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \arith_logic_unity|Add0~178_combout\,
	datad => \data_memory|possible_outputs[2][31]~combout\,
	combout => \data_memory|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y56_N10
\data_memory|possible_outputs[3][31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][31]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux0~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][31]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][31]~combout\,
	datac => \data_memory|Decoder0~5clkctrl_outclk\,
	datad => \register_file|mux2|Mux0~0_combout\,
	combout => \data_memory|possible_outputs[3][31]~combout\);

-- Location: LCCOMB_X108_Y56_N8
\data_memory|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux0~1_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\data_memory|Mux0~0_combout\ & ((\data_memory|possible_outputs[3][31]~combout\))) # (!\data_memory|Mux0~0_combout\ & (\data_memory|possible_outputs[1][31]~combout\)))) # 
-- (!\arith_logic_unity|Add0~179_combout\ & (((\data_memory|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \data_memory|possible_outputs[1][31]~combout\,
	datac => \data_memory|Mux0~0_combout\,
	datad => \data_memory|possible_outputs[3][31]~combout\,
	combout => \data_memory|Mux0~1_combout\);

-- Location: LCCOMB_X111_Y56_N0
\arith_logic_unity|Add0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~150_combout\ = \aluOp2[31]~6_combout\ $ (((\control|aluControl[2]~0_combout\) # ((\PC|Q\(4)) # (\PC|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \PC|Q\(4),
	datac => \PC|Q\(5),
	datad => \aluOp2[31]~6_combout\,
	combout => \arith_logic_unity|Add0~150_combout\);

-- Location: FF_X110_Y59_N19
\register_file|registers:1:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~181_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(30));

-- Location: LCCOMB_X110_Y59_N30
\register_file|mux2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux1~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(30))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datab => \register_file|registers:0:regx|Q\(30),
	datad => \register_file|registers:1:regx|Q\(30),
	combout => \register_file|mux2|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y59_N2
\data_memory|possible_outputs[2][30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][30]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux1~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][30]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux1~0_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[2][30]~combout\,
	combout => \data_memory|possible_outputs[2][30]~combout\);

-- Location: LCCOMB_X107_Y59_N16
\data_memory|possible_outputs[1][30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][30]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux1~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][30]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][30]~combout\,
	datac => \register_file|mux2|Mux1~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][30]~combout\);

-- Location: LCCOMB_X108_Y59_N20
\data_memory|possible_outputs[0][30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][30]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux1~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][30]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][30]~combout\,
	datac => \register_file|mux2|Mux1~0_combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][30]~combout\);

-- Location: LCCOMB_X108_Y59_N10
\data_memory|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux1~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\) # ((\data_memory|possible_outputs[1][30]~combout\)))) # (!\arith_logic_unity|Add0~179_combout\ & (!\arith_logic_unity|Add0~178_combout\ & 
-- ((\data_memory|possible_outputs[0][30]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|possible_outputs[1][30]~combout\,
	datad => \data_memory|possible_outputs[0][30]~combout\,
	combout => \data_memory|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y59_N18
\data_memory|possible_outputs[3][30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][30]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\register_file|mux2|Mux1~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\data_memory|possible_outputs[3][30]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux1~0_combout\,
	datab => \data_memory|possible_outputs[3][30]~combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][30]~combout\);

-- Location: LCCOMB_X108_Y59_N8
\data_memory|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux1~1_combout\ = (\arith_logic_unity|Add0~178_combout\ & ((\data_memory|Mux1~0_combout\ & ((\data_memory|possible_outputs[3][30]~combout\))) # (!\data_memory|Mux1~0_combout\ & (\data_memory|possible_outputs[2][30]~combout\)))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (((\data_memory|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \data_memory|possible_outputs[2][30]~combout\,
	datac => \data_memory|Mux1~0_combout\,
	datad => \data_memory|possible_outputs[3][30]~combout\,
	combout => \data_memory|Mux1~1_combout\);

-- Location: LCCOMB_X110_Y59_N0
\aluOp2[30]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[30]~7_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\register_file|mux2|Mux1~0_combout\) # (\PC|Q\(3))))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \aluOp2[5]~0_combout\,
	datac => \register_file|mux2|Mux1~0_combout\,
	datad => \PC|Q\(3),
	combout => \aluOp2[30]~7_combout\);

-- Location: LCCOMB_X111_Y56_N10
\arith_logic_unity|Add0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~151_combout\ = \aluOp2[30]~7_combout\ $ (((\control|aluControl[2]~0_combout\) # ((\PC|Q\(4)) # (\PC|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \PC|Q\(4),
	datac => \PC|Q\(5),
	datad => \aluOp2[30]~7_combout\,
	combout => \arith_logic_unity|Add0~151_combout\);

-- Location: FF_X110_Y59_N21
\register_file|registers:1:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~183_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(29));

-- Location: LCCOMB_X110_Y59_N2
\register_file|mux2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux2~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(29))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datac => \register_file|registers:0:regx|Q\(29),
	datad => \register_file|registers:1:regx|Q\(29),
	combout => \register_file|mux2|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y59_N24
\aluOp2[29]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[29]~8_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux2~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \aluOp2[5]~0_combout\,
	datad => \register_file|mux2|Mux2~0_combout\,
	combout => \aluOp2[29]~8_combout\);

-- Location: LCCOMB_X110_Y58_N4
\arith_logic_unity|Add0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~152_combout\ = \aluOp2[29]~8_combout\ $ (((\PC|Q\(5)) # ((\control|aluControl[2]~0_combout\) # (\PC|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \control|aluControl[2]~0_combout\,
	datac => \aluOp2[29]~8_combout\,
	datad => \PC|Q\(4),
	combout => \arith_logic_unity|Add0~152_combout\);

-- Location: FF_X108_Y56_N25
\register_file|registers:1:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~185_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(28));

-- Location: LCCOMB_X108_Y56_N30
\register_file|mux2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux3~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(28))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(28),
	datab => \instruction_memory|Mux7~0_combout\,
	datad => \register_file|registers:1:regx|Q\(28),
	combout => \register_file|mux2|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y56_N16
\aluOp2[28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[28]~9_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux3~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \aluOp2[5]~0_combout\,
	datac => \PC|Q\(3),
	datad => \register_file|mux2|Mux3~0_combout\,
	combout => \aluOp2[28]~9_combout\);

-- Location: LCCOMB_X108_Y56_N4
\data_memory|possible_outputs[1][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][28]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux3~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][28]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][28]~combout\,
	datac => \register_file|mux2|Mux3~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][28]~combout\);

-- Location: LCCOMB_X108_Y56_N22
\data_memory|possible_outputs[0][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][28]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux3~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][28]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][28]~combout\,
	datac => \register_file|mux2|Mux3~0_combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][28]~combout\);

-- Location: LCCOMB_X108_Y56_N12
\data_memory|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux3~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & (((\arith_logic_unity|Add0~179_combout\)))) # (!\arith_logic_unity|Add0~178_combout\ & ((\arith_logic_unity|Add0~179_combout\ & (\data_memory|possible_outputs[1][28]~combout\)) # 
-- (!\arith_logic_unity|Add0~179_combout\ & ((\data_memory|possible_outputs[0][28]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \data_memory|possible_outputs[1][28]~combout\,
	datac => \data_memory|possible_outputs[0][28]~combout\,
	datad => \arith_logic_unity|Add0~179_combout\,
	combout => \data_memory|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y56_N26
\data_memory|possible_outputs[2][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][28]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux3~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][28]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux3~0_combout\,
	datac => \data_memory|possible_outputs[2][28]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][28]~combout\);

-- Location: LCCOMB_X108_Y56_N28
\data_memory|possible_outputs[3][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][28]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux3~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][28]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~5clkctrl_outclk\,
	datab => \data_memory|possible_outputs[3][28]~combout\,
	datac => \register_file|mux2|Mux3~0_combout\,
	combout => \data_memory|possible_outputs[3][28]~combout\);

-- Location: LCCOMB_X108_Y56_N18
\data_memory|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux3~1_combout\ = (\arith_logic_unity|Add0~178_combout\ & ((\data_memory|Mux3~0_combout\ & ((\data_memory|possible_outputs[3][28]~combout\))) # (!\data_memory|Mux3~0_combout\ & (\data_memory|possible_outputs[2][28]~combout\)))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (\data_memory|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \data_memory|Mux3~0_combout\,
	datac => \data_memory|possible_outputs[2][28]~combout\,
	datad => \data_memory|possible_outputs[3][28]~combout\,
	combout => \data_memory|Mux3~1_combout\);

-- Location: LCCOMB_X109_Y56_N20
\arith_logic_unity|Add0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~153_combout\ = \aluOp2[28]~9_combout\ $ (((\control|aluControl[2]~0_combout\) # ((\PC|Q\(4)) # (\PC|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \PC|Q\(4),
	datac => \PC|Q\(5),
	datad => \aluOp2[28]~9_combout\,
	combout => \arith_logic_unity|Add0~153_combout\);

-- Location: LCCOMB_X109_Y59_N0
\data_memory|possible_outputs[0][27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][27]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux4~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][27]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][27]~combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \register_file|mux2|Mux4~0_combout\,
	combout => \data_memory|possible_outputs[0][27]~combout\);

-- Location: LCCOMB_X108_Y59_N12
\data_memory|possible_outputs[2][27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][27]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux4~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][27]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux4~0_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[2][27]~combout\,
	combout => \data_memory|possible_outputs[2][27]~combout\);

-- Location: LCCOMB_X109_Y59_N14
\data_memory|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux4~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & (((\arith_logic_unity|Add0~178_combout\)))) # (!\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\ & ((\data_memory|possible_outputs[2][27]~combout\))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (\data_memory|possible_outputs[0][27]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \data_memory|possible_outputs[0][27]~combout\,
	datac => \arith_logic_unity|Add0~178_combout\,
	datad => \data_memory|possible_outputs[2][27]~combout\,
	combout => \data_memory|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y59_N26
\data_memory|possible_outputs[3][27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][27]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux4~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][27]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][27]~combout\,
	datab => \register_file|mux2|Mux4~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][27]~combout\);

-- Location: LCCOMB_X109_Y59_N16
\data_memory|possible_outputs[1][27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][27]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux4~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][27]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datab => \data_memory|possible_outputs[1][27]~combout\,
	datad => \register_file|mux2|Mux4~0_combout\,
	combout => \data_memory|possible_outputs[1][27]~combout\);

-- Location: LCCOMB_X109_Y59_N8
\data_memory|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux4~1_combout\ = (\data_memory|Mux4~0_combout\ & (((\data_memory|possible_outputs[3][27]~combout\)) # (!\arith_logic_unity|Add0~179_combout\))) # (!\data_memory|Mux4~0_combout\ & (\arith_logic_unity|Add0~179_combout\ & 
-- ((\data_memory|possible_outputs[1][27]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux4~0_combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \data_memory|possible_outputs[3][27]~combout\,
	datad => \data_memory|possible_outputs[1][27]~combout\,
	combout => \data_memory|Mux4~1_combout\);

-- Location: FF_X109_Y59_N23
\register_file|registers:0:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~187_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(27));

-- Location: LCCOMB_X109_Y59_N4
\register_file|mux1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux4~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(27))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:0:regx|Q\(27),
	datad => \register_file|registers:1:regx|Q\(27),
	combout => \register_file|mux1|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y59_N22
\data_memory|possible_outputs[0][26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][26]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux5~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][26]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][26]~combout\,
	datac => \register_file|mux2|Mux5~0_combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][26]~combout\);

-- Location: LCCOMB_X111_Y59_N16
\data_memory|possible_outputs[1][26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][26]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux5~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][26]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][26]~combout\,
	datab => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux5~0_combout\,
	combout => \data_memory|possible_outputs[1][26]~combout\);

-- Location: LCCOMB_X112_Y59_N18
\data_memory|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux5~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & (((\data_memory|possible_outputs[1][26]~combout\) # (\arith_logic_unity|Add0~178_combout\)))) # (!\arith_logic_unity|Add0~179_combout\ & (\data_memory|possible_outputs[0][26]~combout\ 
-- & ((!\arith_logic_unity|Add0~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][26]~combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \data_memory|possible_outputs[1][26]~combout\,
	datad => \arith_logic_unity|Add0~178_combout\,
	combout => \data_memory|Mux5~0_combout\);

-- Location: LCCOMB_X112_Y59_N16
\data_memory|possible_outputs[3][26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][26]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux5~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][26]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][26]~combout\,
	datac => \register_file|mux2|Mux5~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][26]~combout\);

-- Location: LCCOMB_X112_Y59_N0
\data_memory|possible_outputs[2][26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][26]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux5~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][26]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux5~0_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[2][26]~combout\,
	combout => \data_memory|possible_outputs[2][26]~combout\);

-- Location: LCCOMB_X112_Y59_N28
\data_memory|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux5~1_combout\ = (\data_memory|Mux5~0_combout\ & ((\data_memory|possible_outputs[3][26]~combout\) # ((!\arith_logic_unity|Add0~178_combout\)))) # (!\data_memory|Mux5~0_combout\ & (((\arith_logic_unity|Add0~178_combout\ & 
-- \data_memory|possible_outputs[2][26]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux5~0_combout\,
	datab => \data_memory|possible_outputs[3][26]~combout\,
	datac => \arith_logic_unity|Add0~178_combout\,
	datad => \data_memory|possible_outputs[2][26]~combout\,
	combout => \data_memory|Mux5~1_combout\);

-- Location: FF_X111_Y59_N1
\register_file|registers:1:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~189_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(26));

-- Location: LCCOMB_X111_Y59_N14
\register_file|mux1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux5~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(26))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(26),
	datab => \register_file|registers:1:regx|Q\(26),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux1|Mux5~0_combout\);

-- Location: FF_X109_Y59_N17
\register_file|registers:1:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~191_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(25));

-- Location: LCCOMB_X109_Y59_N2
\register_file|mux2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux6~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(25))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(25),
	datac => \instruction_memory|Mux7~0_combout\,
	datad => \register_file|registers:1:regx|Q\(25),
	combout => \register_file|mux2|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y60_N12
\aluOp2[25]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[25]~12_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux6~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \aluOp2[5]~0_combout\,
	datad => \register_file|mux2|Mux6~0_combout\,
	combout => \aluOp2[25]~12_combout\);

-- Location: LCCOMB_X109_Y60_N10
\arith_logic_unity|Add0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~156_combout\ = \aluOp2[25]~12_combout\ $ (((\PC|Q\(5)) # ((\control|aluControl[2]~0_combout\) # (\PC|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \control|aluControl[2]~0_combout\,
	datac => \PC|Q\(4),
	datad => \aluOp2[25]~12_combout\,
	combout => \arith_logic_unity|Add0~156_combout\);

-- Location: FF_X109_Y60_N29
\register_file|registers:1:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~193_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(24));

-- Location: LCCOMB_X109_Y60_N20
\register_file|mux2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux7~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(24))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(24),
	datab => \instruction_memory|Mux7~0_combout\,
	datad => \register_file|registers:1:regx|Q\(24),
	combout => \register_file|mux2|Mux7~0_combout\);

-- Location: LCCOMB_X108_Y59_N4
\data_memory|possible_outputs[0][24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][24]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\register_file|mux2|Mux7~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\data_memory|possible_outputs[0][24]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux7~0_combout\,
	datac => \data_memory|possible_outputs[0][24]~combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][24]~combout\);

-- Location: LCCOMB_X109_Y59_N24
\data_memory|possible_outputs[1][24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][24]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux7~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[1][24]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux7~0_combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \data_memory|possible_outputs[1][24]~combout\,
	combout => \data_memory|possible_outputs[1][24]~combout\);

-- Location: LCCOMB_X108_Y59_N16
\data_memory|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux7~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & (((\arith_logic_unity|Add0~178_combout\) # (\data_memory|possible_outputs[1][24]~combout\)))) # (!\arith_logic_unity|Add0~179_combout\ & (\data_memory|possible_outputs[0][24]~combout\ 
-- & (!\arith_logic_unity|Add0~178_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \data_memory|possible_outputs[0][24]~combout\,
	datac => \arith_logic_unity|Add0~178_combout\,
	datad => \data_memory|possible_outputs[1][24]~combout\,
	combout => \data_memory|Mux7~0_combout\);

-- Location: LCCOMB_X108_Y59_N26
\data_memory|possible_outputs[3][24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][24]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux7~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][24]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][24]~combout\,
	datac => \register_file|mux2|Mux7~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][24]~combout\);

-- Location: LCCOMB_X108_Y59_N6
\data_memory|possible_outputs[2][24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][24]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux7~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][24]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux7~0_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[2][24]~combout\,
	combout => \data_memory|possible_outputs[2][24]~combout\);

-- Location: LCCOMB_X108_Y59_N22
\data_memory|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux7~1_combout\ = (\arith_logic_unity|Add0~178_combout\ & ((\data_memory|Mux7~0_combout\ & (\data_memory|possible_outputs[3][24]~combout\)) # (!\data_memory|Mux7~0_combout\ & ((\data_memory|possible_outputs[2][24]~combout\))))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (\data_memory|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \data_memory|Mux7~0_combout\,
	datac => \data_memory|possible_outputs[3][24]~combout\,
	datad => \data_memory|possible_outputs[2][24]~combout\,
	combout => \data_memory|Mux7~1_combout\);

-- Location: LCCOMB_X109_Y60_N6
\aluOp2[24]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[24]~13_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux7~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \aluOp2[5]~0_combout\,
	datad => \register_file|mux2|Mux7~0_combout\,
	combout => \aluOp2[24]~13_combout\);

-- Location: LCCOMB_X109_Y60_N0
\arith_logic_unity|Add0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~157_combout\ = \aluOp2[24]~13_combout\ $ (((\PC|Q\(5)) # ((\control|aluControl[2]~0_combout\) # (\PC|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \control|aluControl[2]~0_combout\,
	datac => \PC|Q\(4),
	datad => \aluOp2[24]~13_combout\,
	combout => \arith_logic_unity|Add0~157_combout\);

-- Location: FF_X111_Y56_N25
\register_file|registers:0:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~194_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(23));

-- Location: LCCOMB_X111_Y56_N24
\register_file|mux2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux8~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(23))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux7~0_combout\,
	datac => \register_file|registers:0:regx|Q\(23),
	datad => \register_file|registers:1:regx|Q\(23),
	combout => \register_file|mux2|Mux8~0_combout\);

-- Location: LCCOMB_X111_Y56_N4
\data_memory|possible_outputs[1][23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][23]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux8~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][23]~combout\,
	datac => \register_file|mux2|Mux8~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][23]~combout\);

-- Location: LCCOMB_X112_Y56_N4
\data_memory|possible_outputs[0][23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][23]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux8~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][23]~combout\,
	datac => \register_file|mux2|Mux8~0_combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][23]~combout\);

-- Location: LCCOMB_X112_Y56_N10
\data_memory|possible_outputs[2][23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][23]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux8~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][23]~combout\,
	datac => \register_file|mux2|Mux8~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][23]~combout\);

-- Location: LCCOMB_X112_Y56_N24
\data_memory|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux8~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & (((\arith_logic_unity|Add0~178_combout\)))) # (!\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\ & ((\data_memory|possible_outputs[2][23]~combout\))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (\data_memory|possible_outputs[0][23]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \data_memory|possible_outputs[0][23]~combout\,
	datac => \arith_logic_unity|Add0~178_combout\,
	datad => \data_memory|possible_outputs[2][23]~combout\,
	combout => \data_memory|Mux8~0_combout\);

-- Location: LCCOMB_X111_Y56_N6
\data_memory|possible_outputs[3][23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][23]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux8~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][23]~combout\,
	datac => \register_file|mux2|Mux8~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][23]~combout\);

-- Location: LCCOMB_X111_Y56_N28
\data_memory|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux8~1_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\data_memory|Mux8~0_combout\ & ((\data_memory|possible_outputs[3][23]~combout\))) # (!\data_memory|Mux8~0_combout\ & (\data_memory|possible_outputs[1][23]~combout\)))) # 
-- (!\arith_logic_unity|Add0~179_combout\ & (((\data_memory|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \data_memory|possible_outputs[1][23]~combout\,
	datac => \data_memory|Mux8~0_combout\,
	datad => \data_memory|possible_outputs[3][23]~combout\,
	combout => \data_memory|Mux8~1_combout\);

-- Location: LCCOMB_X111_Y56_N8
\aluOp2[23]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[23]~14_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux8~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \aluOp2[5]~0_combout\,
	datac => \PC|Q\(2),
	datad => \register_file|mux2|Mux8~0_combout\,
	combout => \aluOp2[23]~14_combout\);

-- Location: LCCOMB_X111_Y56_N22
\arith_logic_unity|Add0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~158_combout\ = \aluOp2[23]~14_combout\ $ (((\PC|Q\(5)) # ((\control|aluControl[2]~0_combout\) # (\PC|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \control|aluControl[2]~0_combout\,
	datac => \aluOp2[23]~14_combout\,
	datad => \PC|Q\(4),
	combout => \arith_logic_unity|Add0~158_combout\);

-- Location: FF_X109_Y60_N25
\register_file|registers:1:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~195_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(22));

-- Location: LCCOMB_X109_Y60_N22
\register_file|mux2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux9~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(22))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(22),
	datab => \instruction_memory|Mux7~0_combout\,
	datad => \register_file|registers:1:regx|Q\(22),
	combout => \register_file|mux2|Mux9~0_combout\);

-- Location: LCCOMB_X109_Y60_N14
\aluOp2[22]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[22]~15_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux9~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \register_file|mux2|Mux9~0_combout\,
	datad => \aluOp2[5]~0_combout\,
	combout => \aluOp2[22]~15_combout\);

-- Location: LCCOMB_X109_Y60_N30
\arith_logic_unity|Add0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~159_combout\ = \aluOp2[22]~15_combout\ $ (((\PC|Q\(5)) # ((\control|aluControl[2]~0_combout\) # (\PC|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \control|aluControl[2]~0_combout\,
	datac => \aluOp2[22]~15_combout\,
	datad => \PC|Q\(4),
	combout => \arith_logic_unity|Add0~159_combout\);

-- Location: FF_X113_Y60_N21
\register_file|registers:0:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~196_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(21));

-- Location: LCCOMB_X113_Y60_N20
\register_file|mux2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux10~0_combout\ = (\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(21)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(21),
	datac => \register_file|registers:0:regx|Q\(21),
	datad => \instruction_memory|Mux7~0_combout\,
	combout => \register_file|mux2|Mux10~0_combout\);

-- Location: LCCOMB_X113_Y60_N8
\data_memory|possible_outputs[1][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][21]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux10~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][21]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|Decoder0~3clkctrl_outclk\,
	datac => \data_memory|possible_outputs[1][21]~combout\,
	datad => \register_file|mux2|Mux10~0_combout\,
	combout => \data_memory|possible_outputs[1][21]~combout\);

-- Location: LCCOMB_X113_Y60_N4
\data_memory|possible_outputs[3][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][21]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux10~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][21]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|Decoder0~5clkctrl_outclk\,
	datac => \data_memory|possible_outputs[3][21]~combout\,
	datad => \register_file|mux2|Mux10~0_combout\,
	combout => \data_memory|possible_outputs[3][21]~combout\);

-- Location: LCCOMB_X114_Y60_N30
\data_memory|possible_outputs[2][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][21]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux10~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][21]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][21]~combout\,
	datac => \register_file|mux2|Mux10~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][21]~combout\);

-- Location: LCCOMB_X113_Y60_N18
\data_memory|possible_outputs[0][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][21]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux10~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][21]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][21]~combout\,
	datac => \register_file|mux2|Mux10~0_combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][21]~combout\);

-- Location: LCCOMB_X113_Y60_N0
\data_memory|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux10~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & (\arith_logic_unity|Add0~178_combout\)) # (!\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\ & (\data_memory|possible_outputs[2][21]~combout\)) # 
-- (!\arith_logic_unity|Add0~178_combout\ & ((\data_memory|possible_outputs[0][21]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|possible_outputs[2][21]~combout\,
	datad => \data_memory|possible_outputs[0][21]~combout\,
	combout => \data_memory|Mux10~0_combout\);

-- Location: LCCOMB_X113_Y60_N30
\data_memory|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux10~1_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\data_memory|Mux10~0_combout\ & ((\data_memory|possible_outputs[3][21]~combout\))) # (!\data_memory|Mux10~0_combout\ & (\data_memory|possible_outputs[1][21]~combout\)))) # 
-- (!\arith_logic_unity|Add0~179_combout\ & (((\data_memory|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \data_memory|possible_outputs[1][21]~combout\,
	datac => \data_memory|possible_outputs[3][21]~combout\,
	datad => \data_memory|Mux10~0_combout\,
	combout => \data_memory|Mux10~1_combout\);

-- Location: LCCOMB_X113_Y60_N16
\aluOp2[21]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[21]~16_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux10~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \aluOp2[5]~0_combout\,
	datad => \register_file|mux2|Mux10~0_combout\,
	combout => \aluOp2[21]~16_combout\);

-- Location: LCCOMB_X113_Y60_N28
\arith_logic_unity|Add0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~160_combout\ = \aluOp2[21]~16_combout\ $ (((\PC|Q\(4)) # ((\PC|Q\(5)) # (\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \control|aluControl[2]~0_combout\,
	datad => \aluOp2[21]~16_combout\,
	combout => \arith_logic_unity|Add0~160_combout\);

-- Location: LCCOMB_X108_Y60_N30
\register_file|registers:1:regx|Q[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[20]~feeder_combout\ = \register_file|registers:0:regx|Q~197_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~197_combout\,
	combout => \register_file|registers:1:regx|Q[20]~feeder_combout\);

-- Location: FF_X108_Y60_N31
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

-- Location: LCCOMB_X108_Y60_N22
\register_file|mux2|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux11~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(20))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(20),
	datac => \instruction_memory|Mux7~0_combout\,
	datad => \register_file|registers:1:regx|Q\(20),
	combout => \register_file|mux2|Mux11~0_combout\);

-- Location: LCCOMB_X108_Y60_N8
\data_memory|possible_outputs[1][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][20]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux11~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[1][20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datab => \register_file|mux2|Mux11~0_combout\,
	datac => \data_memory|possible_outputs[1][20]~combout\,
	combout => \data_memory|possible_outputs[1][20]~combout\);

-- Location: LCCOMB_X108_Y60_N14
\data_memory|possible_outputs[0][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][20]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\register_file|mux2|Mux11~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\data_memory|possible_outputs[0][20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux11~0_combout\,
	datac => \data_memory|possible_outputs[0][20]~combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][20]~combout\);

-- Location: LCCOMB_X108_Y60_N20
\data_memory|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux11~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\data_memory|possible_outputs[1][20]~combout\) # ((\arith_logic_unity|Add0~178_combout\)))) # (!\arith_logic_unity|Add0~179_combout\ & 
-- (((\data_memory|possible_outputs[0][20]~combout\ & !\arith_logic_unity|Add0~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \data_memory|possible_outputs[1][20]~combout\,
	datac => \data_memory|possible_outputs[0][20]~combout\,
	datad => \arith_logic_unity|Add0~178_combout\,
	combout => \data_memory|Mux11~0_combout\);

-- Location: LCCOMB_X107_Y60_N26
\data_memory|possible_outputs[3][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][20]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\register_file|mux2|Mux11~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\data_memory|possible_outputs[3][20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux11~0_combout\,
	datac => \data_memory|possible_outputs[3][20]~combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][20]~combout\);

-- Location: LCCOMB_X108_Y60_N6
\data_memory|possible_outputs[2][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][20]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux11~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux11~0_combout\,
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[2][20]~combout\,
	combout => \data_memory|possible_outputs[2][20]~combout\);

-- Location: LCCOMB_X108_Y60_N18
\data_memory|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux11~1_combout\ = (\data_memory|Mux11~0_combout\ & (((\data_memory|possible_outputs[3][20]~combout\)) # (!\arith_logic_unity|Add0~178_combout\))) # (!\data_memory|Mux11~0_combout\ & (\arith_logic_unity|Add0~178_combout\ & 
-- ((\data_memory|possible_outputs[2][20]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux11~0_combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|possible_outputs[3][20]~combout\,
	datad => \data_memory|possible_outputs[2][20]~combout\,
	combout => \data_memory|Mux11~1_combout\);

-- Location: LCCOMB_X108_Y60_N24
\aluOp2[20]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[20]~17_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux11~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \register_file|mux2|Mux11~0_combout\,
	datad => \aluOp2[5]~0_combout\,
	combout => \aluOp2[20]~17_combout\);

-- Location: LCCOMB_X111_Y56_N16
\arith_logic_unity|Add0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~161_combout\ = \aluOp2[20]~17_combout\ $ (((\PC|Q\(5)) # ((\PC|Q\(4)) # (\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \control|aluControl[2]~0_combout\,
	datad => \aluOp2[20]~17_combout\,
	combout => \arith_logic_unity|Add0~161_combout\);

-- Location: FF_X109_Y58_N3
\register_file|registers:1:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~198_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(19));

-- Location: LCCOMB_X109_Y58_N4
\register_file|mux2|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux12~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(19))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux7~0_combout\,
	datac => \register_file|registers:0:regx|Q\(19),
	datad => \register_file|registers:1:regx|Q\(19),
	combout => \register_file|mux2|Mux12~0_combout\);

-- Location: LCCOMB_X109_Y58_N22
\aluOp2[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[19]~18_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux12~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \register_file|mux2|Mux12~0_combout\,
	datad => \aluOp2[5]~0_combout\,
	combout => \aluOp2[19]~18_combout\);

-- Location: LCCOMB_X109_Y58_N6
\arith_logic_unity|Add0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~162_combout\ = \aluOp2[19]~18_combout\ $ (((\PC|Q\(5)) # ((\control|aluControl[2]~0_combout\) # (\PC|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \control|aluControl[2]~0_combout\,
	datac => \aluOp2[19]~18_combout\,
	datad => \PC|Q\(4),
	combout => \arith_logic_unity|Add0~162_combout\);

-- Location: FF_X112_Y60_N3
\register_file|registers:0:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~199_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(18));

-- Location: LCCOMB_X112_Y60_N24
\register_file|mux2|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux13~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(18))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(18),
	datac => \register_file|registers:1:regx|Q\(18),
	datad => \instruction_memory|Mux7~0_combout\,
	combout => \register_file|mux2|Mux13~0_combout\);

-- Location: LCCOMB_X112_Y62_N20
\data_memory|possible_outputs[3][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][18]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux13~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][18]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][18]~combout\,
	datac => \register_file|mux2|Mux13~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][18]~combout\);

-- Location: LCCOMB_X112_Y60_N14
\data_memory|possible_outputs[2][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][18]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux13~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][18]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datac => \data_memory|possible_outputs[2][18]~combout\,
	datad => \register_file|mux2|Mux13~0_combout\,
	combout => \data_memory|possible_outputs[2][18]~combout\);

-- Location: LCCOMB_X112_Y60_N8
\data_memory|possible_outputs[1][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][18]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux13~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[1][18]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux13~0_combout\,
	datab => \data_memory|possible_outputs[1][18]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][18]~combout\);

-- Location: LCCOMB_X112_Y60_N18
\data_memory|possible_outputs[0][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][18]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\register_file|mux2|Mux13~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\data_memory|possible_outputs[0][18]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux13~0_combout\,
	datab => \data_memory|possible_outputs[0][18]~combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][18]~combout\);

-- Location: LCCOMB_X112_Y60_N28
\data_memory|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux13~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & (\arith_logic_unity|Add0~179_combout\)) # (!\arith_logic_unity|Add0~178_combout\ & ((\arith_logic_unity|Add0~179_combout\ & (\data_memory|possible_outputs[1][18]~combout\)) # 
-- (!\arith_logic_unity|Add0~179_combout\ & ((\data_memory|possible_outputs[0][18]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \data_memory|possible_outputs[1][18]~combout\,
	datad => \data_memory|possible_outputs[0][18]~combout\,
	combout => \data_memory|Mux13~0_combout\);

-- Location: LCCOMB_X112_Y60_N30
\data_memory|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux13~1_combout\ = (\arith_logic_unity|Add0~178_combout\ & ((\data_memory|Mux13~0_combout\ & (\data_memory|possible_outputs[3][18]~combout\)) # (!\data_memory|Mux13~0_combout\ & ((\data_memory|possible_outputs[2][18]~combout\))))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (((\data_memory|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][18]~combout\,
	datab => \data_memory|possible_outputs[2][18]~combout\,
	datac => \arith_logic_unity|Add0~178_combout\,
	datad => \data_memory|Mux13~0_combout\,
	combout => \data_memory|Mux13~1_combout\);

-- Location: LCCOMB_X112_Y60_N6
\aluOp2[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[18]~19_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux13~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \aluOp2[5]~0_combout\,
	datad => \register_file|mux2|Mux13~0_combout\,
	combout => \aluOp2[18]~19_combout\);

-- Location: LCCOMB_X111_Y56_N26
\arith_logic_unity|Add0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~163_combout\ = \aluOp2[18]~19_combout\ $ (((\PC|Q\(5)) # ((\PC|Q\(4)) # (\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \control|aluControl[2]~0_combout\,
	datad => \aluOp2[18]~19_combout\,
	combout => \arith_logic_unity|Add0~163_combout\);

-- Location: LCCOMB_X110_Y58_N2
\register_file|registers:1:regx|Q[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[17]~feeder_combout\ = \register_file|registers:0:regx|Q~200_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~200_combout\,
	combout => \register_file|registers:1:regx|Q[17]~feeder_combout\);

-- Location: FF_X110_Y58_N3
\register_file|registers:1:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(17));

-- Location: LCCOMB_X110_Y58_N12
\register_file|mux1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux14~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(17))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(17),
	datad => \register_file|registers:1:regx|Q\(17),
	combout => \register_file|mux1|Mux14~0_combout\);

-- Location: LCCOMB_X109_Y56_N26
\data_memory|possible_outputs[2][16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][16]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux15~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][16]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~1clkctrl_outclk\,
	datab => \register_file|mux2|Mux15~0_combout\,
	datad => \data_memory|possible_outputs[2][16]~combout\,
	combout => \data_memory|possible_outputs[2][16]~combout\);

-- Location: LCCOMB_X109_Y56_N14
\data_memory|possible_outputs[0][16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][16]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux15~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][16]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][16]~combout\,
	datac => \register_file|mux2|Mux15~0_combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][16]~combout\);

-- Location: LCCOMB_X109_Y56_N4
\data_memory|possible_outputs[1][16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][16]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux15~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[1][16]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datac => \register_file|mux2|Mux15~0_combout\,
	datad => \data_memory|possible_outputs[1][16]~combout\,
	combout => \data_memory|possible_outputs[1][16]~combout\);

-- Location: LCCOMB_X109_Y56_N28
\data_memory|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux15~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\) # ((\data_memory|possible_outputs[1][16]~combout\)))) # (!\arith_logic_unity|Add0~179_combout\ & (!\arith_logic_unity|Add0~178_combout\ & 
-- (\data_memory|possible_outputs[0][16]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|possible_outputs[0][16]~combout\,
	datad => \data_memory|possible_outputs[1][16]~combout\,
	combout => \data_memory|Mux15~0_combout\);

-- Location: LCCOMB_X106_Y56_N12
\data_memory|possible_outputs[3][16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][16]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux15~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][16]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][16]~combout\,
	datab => \register_file|mux2|Mux15~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][16]~combout\);

-- Location: LCCOMB_X109_Y56_N30
\data_memory|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux15~1_combout\ = (\arith_logic_unity|Add0~178_combout\ & ((\data_memory|Mux15~0_combout\ & ((\data_memory|possible_outputs[3][16]~combout\))) # (!\data_memory|Mux15~0_combout\ & (\data_memory|possible_outputs[2][16]~combout\)))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (((\data_memory|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \data_memory|possible_outputs[2][16]~combout\,
	datac => \data_memory|Mux15~0_combout\,
	datad => \data_memory|possible_outputs[3][16]~combout\,
	combout => \data_memory|Mux15~1_combout\);

-- Location: FF_X109_Y56_N13
\register_file|registers:1:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~201_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(16));

-- Location: LCCOMB_X109_Y56_N8
\register_file|mux1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux15~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(16))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:0:regx|Q\(16),
	datad => \register_file|registers:1:regx|Q\(16),
	combout => \register_file|mux1|Mux15~0_combout\);

-- Location: FF_X111_Y59_N17
\register_file|registers:0:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~202_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(15));

-- Location: LCCOMB_X111_Y59_N30
\register_file|mux2|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux16~0_combout\ = (\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(15)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datab => \register_file|registers:1:regx|Q\(15),
	datad => \register_file|registers:0:regx|Q\(15),
	combout => \register_file|mux2|Mux16~0_combout\);

-- Location: LCCOMB_X113_Y59_N30
\data_memory|possible_outputs[0][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][15]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\register_file|mux2|Mux16~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\data_memory|possible_outputs[0][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux16~0_combout\,
	datac => \data_memory|possible_outputs[0][15]~combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][15]~combout\);

-- Location: LCCOMB_X113_Y59_N4
\data_memory|possible_outputs[2][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][15]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux16~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux16~0_combout\,
	datab => \data_memory|possible_outputs[2][15]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][15]~combout\);

-- Location: LCCOMB_X112_Y59_N24
\data_memory|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux16~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & (\arith_logic_unity|Add0~178_combout\)) # (!\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\ & ((\data_memory|possible_outputs[2][15]~combout\))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (\data_memory|possible_outputs[0][15]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|possible_outputs[0][15]~combout\,
	datad => \data_memory|possible_outputs[2][15]~combout\,
	combout => \data_memory|Mux16~0_combout\);

-- Location: LCCOMB_X111_Y59_N8
\data_memory|possible_outputs[1][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][15]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux16~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][15]~combout\,
	datac => \register_file|mux2|Mux16~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][15]~combout\);

-- Location: LCCOMB_X110_Y59_N18
\data_memory|possible_outputs[3][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][15]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux16~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][15]~combout\,
	datab => \register_file|mux2|Mux16~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][15]~combout\);

-- Location: LCCOMB_X111_Y59_N24
\data_memory|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux16~1_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\data_memory|Mux16~0_combout\ & ((\data_memory|possible_outputs[3][15]~combout\))) # (!\data_memory|Mux16~0_combout\ & (\data_memory|possible_outputs[1][15]~combout\)))) # 
-- (!\arith_logic_unity|Add0~179_combout\ & (\data_memory|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \data_memory|Mux16~0_combout\,
	datac => \data_memory|possible_outputs[1][15]~combout\,
	datad => \data_memory|possible_outputs[3][15]~combout\,
	combout => \data_memory|Mux16~1_combout\);

-- Location: LCCOMB_X111_Y59_N4
\aluOp2[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[15]~22_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\register_file|mux2|Mux16~0_combout\) # (\PC|Q\(3))))) # (!\aluOp2[5]~0_combout\ & (\register_file|mux2|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux16~0_combout\,
	datab => \PC|Q\(3),
	datac => \PC|Q\(2),
	datad => \aluOp2[5]~0_combout\,
	combout => \aluOp2[15]~22_combout\);

-- Location: LCCOMB_X111_Y57_N28
\arith_logic_unity|Add0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~166_combout\ = \aluOp2[15]~22_combout\ $ (((\PC|Q\(5)) # ((\PC|Q\(4)) # (\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \control|aluControl[2]~0_combout\,
	datad => \aluOp2[15]~22_combout\,
	combout => \arith_logic_unity|Add0~166_combout\);

-- Location: FF_X112_Y61_N25
\register_file|registers:1:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~203_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(14));

-- Location: LCCOMB_X112_Y61_N28
\aluOp2[14]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[14]~23_combout\ = (!\instruction_memory|Mux5~0_combout\ & ((\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(14))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \register_file|registers:0:regx|Q\(14),
	datac => \instruction_memory|Mux7~0_combout\,
	datad => \register_file|registers:1:regx|Q\(14),
	combout => \aluOp2[14]~23_combout\);

-- Location: LCCOMB_X111_Y61_N4
\arith_logic_unity|Add0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~167_combout\ = \aluOp2[14]~23_combout\ $ (((\control|aluControl[2]~0_combout\) # ((\PC|Q\(5)) # (\PC|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \aluOp2[14]~23_combout\,
	combout => \arith_logic_unity|Add0~167_combout\);

-- Location: FF_X109_Y61_N7
\register_file|registers:1:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~204_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(13));

-- Location: LCCOMB_X109_Y61_N4
\register_file|mux1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux18~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(13))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(13),
	datad => \register_file|registers:1:regx|Q\(13),
	combout => \register_file|mux1|Mux18~0_combout\);

-- Location: LCCOMB_X110_Y59_N10
\register_file|registers:1:regx|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[12]~feeder_combout\ = \register_file|registers:0:regx|Q~205_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~205_combout\,
	combout => \register_file|registers:1:regx|Q[12]~feeder_combout\);

-- Location: FF_X110_Y59_N11
\register_file|registers:1:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(12));

-- Location: LCCOMB_X110_Y59_N12
\register_file|mux2|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux19~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(12))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datab => \register_file|registers:0:regx|Q\(12),
	datad => \register_file|registers:1:regx|Q\(12),
	combout => \register_file|mux2|Mux19~0_combout\);

-- Location: LCCOMB_X110_Y59_N8
\aluOp2[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[12]~25_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux19~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \aluOp2[5]~0_combout\,
	datac => \PC|Q\(3),
	datad => \register_file|mux2|Mux19~0_combout\,
	combout => \aluOp2[12]~25_combout\);

-- Location: LCCOMB_X110_Y59_N6
\arith_logic_unity|Add0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~169_combout\ = \aluOp2[12]~25_combout\ $ (((\PC|Q\(4)) # ((\control|aluControl[2]~0_combout\) # (\PC|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \control|aluControl[2]~0_combout\,
	datac => \aluOp2[12]~25_combout\,
	datad => \PC|Q\(5),
	combout => \arith_logic_unity|Add0~169_combout\);

-- Location: LCCOMB_X113_Y61_N12
\register_file|registers:1:regx|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[11]~feeder_combout\ = \register_file|registers:0:regx|Q~206_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~206_combout\,
	combout => \register_file|registers:1:regx|Q[11]~feeder_combout\);

-- Location: FF_X113_Y61_N13
\register_file|registers:1:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(11));

-- Location: LCCOMB_X113_Y61_N4
\aluOp2[11]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[11]~26_combout\ = (!\instruction_memory|Mux5~0_combout\ & ((\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(11))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \instruction_memory|Mux7~0_combout\,
	datac => \register_file|registers:0:regx|Q\(11),
	datad => \register_file|registers:1:regx|Q\(11),
	combout => \aluOp2[11]~26_combout\);

-- Location: LCCOMB_X113_Y61_N24
\arith_logic_unity|Add0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~170_combout\ = \aluOp2[11]~26_combout\ $ (((\control|aluControl[2]~0_combout\) # ((\PC|Q\(4)) # (\PC|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \aluOp2[11]~26_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \arith_logic_unity|Add0~170_combout\);

-- Location: FF_X109_Y57_N3
\register_file|registers:1:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~207_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(10));

-- Location: LCCOMB_X109_Y57_N2
\register_file|mux1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux21~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(10)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(10),
	datad => \register_file|registers:0:regx|Q\(10),
	combout => \register_file|mux1|Mux21~0_combout\);

-- Location: LCCOMB_X111_Y58_N16
\register_file|registers:1:regx|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[9]~feeder_combout\ = \register_file|registers:0:regx|Q~208_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~208_combout\,
	combout => \register_file|registers:1:regx|Q[9]~feeder_combout\);

-- Location: FF_X111_Y58_N17
\register_file|registers:1:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(9));

-- Location: LCCOMB_X111_Y58_N6
\register_file|mux1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux22~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(9))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(9),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:1:regx|Q\(9),
	combout => \register_file|mux1|Mux22~0_combout\);

-- Location: FF_X109_Y57_N25
\register_file|registers:0:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~209_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(8));

-- Location: LCCOMB_X109_Y57_N24
\aluOp2[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[8]~29_combout\ = (!\instruction_memory|Mux5~0_combout\ & ((\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(8))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(8),
	datad => \register_file|registers:1:regx|Q\(8),
	combout => \aluOp2[8]~29_combout\);

-- Location: LCCOMB_X109_Y57_N20
\arith_logic_unity|Add0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~173_combout\ = \aluOp2[8]~29_combout\ $ (((\PC|Q\(4)) # ((\control|aluControl[2]~0_combout\) # (\PC|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \control|aluControl[2]~0_combout\,
	datac => \PC|Q\(5),
	datad => \aluOp2[8]~29_combout\,
	combout => \arith_logic_unity|Add0~173_combout\);

-- Location: FF_X109_Y57_N11
\register_file|registers:1:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~210_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(7));

-- Location: LCCOMB_X109_Y57_N4
\aluOp2[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[7]~30_combout\ = (!\instruction_memory|Mux5~0_combout\ & ((\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(7))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(7),
	datad => \register_file|registers:1:regx|Q\(7),
	combout => \aluOp2[7]~30_combout\);

-- Location: LCCOMB_X109_Y57_N6
\arith_logic_unity|Add0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~174_combout\ = \aluOp2[7]~30_combout\ $ (((\PC|Q\(4)) # ((\control|aluControl[2]~0_combout\) # (\PC|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \control|aluControl[2]~0_combout\,
	datac => \aluOp2[7]~30_combout\,
	datad => \PC|Q\(5),
	combout => \arith_logic_unity|Add0~174_combout\);

-- Location: FF_X109_Y61_N25
\register_file|registers:1:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~211_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(6));

-- Location: LCCOMB_X109_Y61_N26
\aluOp2[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[6]~31_combout\ = (!\instruction_memory|Mux5~0_combout\ & ((\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(6))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(6),
	datad => \register_file|registers:1:regx|Q\(6),
	combout => \aluOp2[6]~31_combout\);

-- Location: LCCOMB_X109_Y61_N10
\arith_logic_unity|Add0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~175_combout\ = \aluOp2[6]~31_combout\ $ (((\PC|Q\(5)) # ((\PC|Q\(4)) # (\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \control|aluControl[2]~0_combout\,
	datad => \aluOp2[6]~31_combout\,
	combout => \arith_logic_unity|Add0~175_combout\);

-- Location: LCCOMB_X111_Y61_N22
\arith_logic_unity|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~89_combout\ = \control|aluControl[2]~0_combout\ $ (((!\instruction_memory|Mux5~0_combout\) # (!\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \PC|Q\(2),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \arith_logic_unity|Add0~89_combout\);

-- Location: FF_X112_Y61_N13
\register_file|registers:1:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~212_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(5));

-- Location: LCCOMB_X112_Y61_N2
\register_file|mux2|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux26~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(5))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datab => \register_file|registers:0:regx|Q\(5),
	datad => \register_file|registers:1:regx|Q\(5),
	combout => \register_file|mux2|Mux26~0_combout\);

-- Location: LCCOMB_X111_Y61_N0
\arith_logic_unity|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~90_combout\ = (\instruction_memory|Mux5~0_combout\ & (((\arith_logic_unity|Add0~89_combout\)) # (!\aluOp2[5]~0_combout\))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|mux2|Mux26~0_combout\ $ 
-- (((!\arith_logic_unity|Add0~89_combout\) # (!\aluOp2[5]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \aluOp2[5]~0_combout\,
	datac => \arith_logic_unity|Add0~89_combout\,
	datad => \register_file|mux2|Mux26~0_combout\,
	combout => \arith_logic_unity|Add0~90_combout\);

-- Location: FF_X111_Y61_N17
\register_file|registers:1:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~213_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(4));

-- Location: LCCOMB_X111_Y61_N16
\register_file|mux2|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux27~0_combout\ = (\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(4)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux7~0_combout\,
	datac => \register_file|registers:1:regx|Q\(4),
	datad => \register_file|registers:0:regx|Q\(4),
	combout => \register_file|mux2|Mux27~0_combout\);

-- Location: LCCOMB_X111_Y61_N14
\data_memory|possible_outputs[0][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][4]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux27~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][4]~combout\,
	datac => \register_file|mux2|Mux27~0_combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][4]~combout\);

-- Location: LCCOMB_X111_Y61_N8
\data_memory|possible_outputs[1][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][4]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux27~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][4]~combout\,
	datac => \register_file|mux2|Mux27~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][4]~combout\);

-- Location: LCCOMB_X111_Y61_N24
\data_memory|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux27~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & (((\arith_logic_unity|Add0~179_combout\)))) # (!\arith_logic_unity|Add0~178_combout\ & ((\arith_logic_unity|Add0~179_combout\ & ((\data_memory|possible_outputs[1][4]~combout\))) # 
-- (!\arith_logic_unity|Add0~179_combout\ & (\data_memory|possible_outputs[0][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \data_memory|possible_outputs[0][4]~combout\,
	datac => \data_memory|possible_outputs[1][4]~combout\,
	datad => \arith_logic_unity|Add0~179_combout\,
	combout => \data_memory|Mux27~0_combout\);

-- Location: LCCOMB_X111_Y61_N6
\data_memory|possible_outputs[2][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][4]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux27~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datac => \register_file|mux2|Mux27~0_combout\,
	datad => \data_memory|possible_outputs[2][4]~combout\,
	combout => \data_memory|possible_outputs[2][4]~combout\);

-- Location: LCCOMB_X111_Y62_N4
\data_memory|possible_outputs[3][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][4]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\register_file|mux2|Mux27~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\data_memory|possible_outputs[3][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux27~0_combout\,
	datac => \data_memory|possible_outputs[3][4]~combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][4]~combout\);

-- Location: LCCOMB_X111_Y61_N30
\data_memory|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux27~1_combout\ = (\data_memory|Mux27~0_combout\ & (((\data_memory|possible_outputs[3][4]~combout\) # (!\arith_logic_unity|Add0~178_combout\)))) # (!\data_memory|Mux27~0_combout\ & (\data_memory|possible_outputs[2][4]~combout\ & 
-- ((\arith_logic_unity|Add0~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux27~0_combout\,
	datab => \data_memory|possible_outputs[2][4]~combout\,
	datac => \data_memory|possible_outputs[3][4]~combout\,
	datad => \arith_logic_unity|Add0~178_combout\,
	combout => \data_memory|Mux27~1_combout\);

-- Location: LCCOMB_X111_Y61_N12
\aluOp2[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[4]~33_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(4))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux7~0_combout\,
	datac => \register_file|registers:0:regx|Q\(4),
	datad => \register_file|registers:1:regx|Q\(4),
	combout => \aluOp2[4]~33_combout\);

-- Location: LCCOMB_X111_Y61_N26
\aluOp2[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[4]~34_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\aluOp2[4]~33_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\aluOp2[4]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \aluOp2[5]~0_combout\,
	datad => \aluOp2[4]~33_combout\,
	combout => \aluOp2[4]~34_combout\);

-- Location: LCCOMB_X111_Y61_N18
\arith_logic_unity|Add0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~176_combout\ = \aluOp2[4]~34_combout\ $ (((\PC|Q\(5)) # ((\PC|Q\(4)) # (\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \aluOp2[4]~34_combout\,
	datad => \control|aluControl[2]~0_combout\,
	combout => \arith_logic_unity|Add0~176_combout\);

-- Location: LCCOMB_X110_Y57_N8
\arith_logic_unity|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~91_combout\ = ((\register_file|mux1|Mux27~0_combout\ $ (\arith_logic_unity|Add0~176_combout\ $ (!\arith_logic_unity|Add0~88\)))) # (GND)
-- \arith_logic_unity|Add0~92\ = CARRY((\register_file|mux1|Mux27~0_combout\ & ((\arith_logic_unity|Add0~176_combout\) # (!\arith_logic_unity|Add0~88\))) # (!\register_file|mux1|Mux27~0_combout\ & (\arith_logic_unity|Add0~176_combout\ & 
-- !\arith_logic_unity|Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux27~0_combout\,
	datab => \arith_logic_unity|Add0~176_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~88\,
	combout => \arith_logic_unity|Add0~91_combout\,
	cout => \arith_logic_unity|Add0~92\);

-- Location: LCCOMB_X111_Y61_N28
\register_file|registers:0:regx|Q~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~234_combout\ = (\PC|Q\(2) & (!\PC|Q\(4) & (\arith_logic_unity|Add0~91_combout\ & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(4),
	datac => \arith_logic_unity|Add0~91_combout\,
	datad => \PC|Q\(5),
	combout => \register_file|registers:0:regx|Q~234_combout\);

-- Location: LCCOMB_X111_Y61_N10
\register_file|registers:0:regx|Q~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~213_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & (\data_memory|Mux27~1_combout\)) # (!\control|Equal3~1_combout\ & ((\register_file|registers:0:regx|Q~234_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~1_combout\,
	datab => \data_memory|Mux27~1_combout\,
	datac => \rst~input_o\,
	datad => \register_file|registers:0:regx|Q~234_combout\,
	combout => \register_file|registers:0:regx|Q~213_combout\);

-- Location: FF_X111_Y61_N23
\register_file|registers:0:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~213_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(4));

-- Location: LCCOMB_X111_Y61_N2
\register_file|mux1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux27~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(4))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:0:regx|Q\(4),
	datad => \register_file|registers:1:regx|Q\(4),
	combout => \register_file|mux1|Mux27~0_combout\);

-- Location: LCCOMB_X110_Y57_N10
\arith_logic_unity|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~93_combout\ = (\register_file|mux1|Mux26~0_combout\ & ((\arith_logic_unity|Add0~90_combout\ & (\arith_logic_unity|Add0~92\ & VCC)) # (!\arith_logic_unity|Add0~90_combout\ & (!\arith_logic_unity|Add0~92\)))) # 
-- (!\register_file|mux1|Mux26~0_combout\ & ((\arith_logic_unity|Add0~90_combout\ & (!\arith_logic_unity|Add0~92\)) # (!\arith_logic_unity|Add0~90_combout\ & ((\arith_logic_unity|Add0~92\) # (GND)))))
-- \arith_logic_unity|Add0~94\ = CARRY((\register_file|mux1|Mux26~0_combout\ & (!\arith_logic_unity|Add0~90_combout\ & !\arith_logic_unity|Add0~92\)) # (!\register_file|mux1|Mux26~0_combout\ & ((!\arith_logic_unity|Add0~92\) # 
-- (!\arith_logic_unity|Add0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux26~0_combout\,
	datab => \arith_logic_unity|Add0~90_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~92\,
	combout => \arith_logic_unity|Add0~93_combout\,
	cout => \arith_logic_unity|Add0~94\);

-- Location: LCCOMB_X112_Y61_N22
\register_file|registers:0:regx|Q~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~233_combout\ = (!\PC|Q\(5) & (\PC|Q\(2) & (!\PC|Q\(4) & \arith_logic_unity|Add0~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(2),
	datac => \PC|Q\(4),
	datad => \arith_logic_unity|Add0~93_combout\,
	combout => \register_file|registers:0:regx|Q~233_combout\);

-- Location: LCCOMB_X112_Y61_N24
\data_memory|possible_outputs[1][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][5]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux26~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][5]~combout\,
	datab => \register_file|mux2|Mux26~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][5]~combout\);

-- Location: LCCOMB_X112_Y61_N26
\data_memory|possible_outputs[0][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][5]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux26~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][5]~combout\,
	datab => \register_file|mux2|Mux26~0_combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][5]~combout\);

-- Location: LCCOMB_X112_Y61_N4
\data_memory|possible_outputs[2][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][5]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux26~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][5]~combout\,
	datac => \register_file|mux2|Mux26~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][5]~combout\);

-- Location: LCCOMB_X112_Y61_N20
\data_memory|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux26~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & (((\data_memory|possible_outputs[2][5]~combout\) # (\arith_logic_unity|Add0~179_combout\)))) # (!\arith_logic_unity|Add0~178_combout\ & (\data_memory|possible_outputs[0][5]~combout\ & 
-- ((!\arith_logic_unity|Add0~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][5]~combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|possible_outputs[2][5]~combout\,
	datad => \arith_logic_unity|Add0~179_combout\,
	combout => \data_memory|Mux26~0_combout\);

-- Location: LCCOMB_X108_Y61_N4
\data_memory|possible_outputs[3][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][5]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\register_file|mux2|Mux26~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\data_memory|possible_outputs[3][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux26~0_combout\,
	datac => \data_memory|possible_outputs[3][5]~combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][5]~combout\);

-- Location: LCCOMB_X112_Y61_N30
\data_memory|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux26~1_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\data_memory|Mux26~0_combout\ & ((\data_memory|possible_outputs[3][5]~combout\))) # (!\data_memory|Mux26~0_combout\ & (\data_memory|possible_outputs[1][5]~combout\)))) # 
-- (!\arith_logic_unity|Add0~179_combout\ & (((\data_memory|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][5]~combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \data_memory|Mux26~0_combout\,
	datad => \data_memory|possible_outputs[3][5]~combout\,
	combout => \data_memory|Mux26~1_combout\);

-- Location: LCCOMB_X112_Y61_N6
\register_file|registers:0:regx|Q~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~212_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux26~1_combout\))) # (!\control|Equal3~1_combout\ & (\register_file|registers:0:regx|Q~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~1_combout\,
	datab => \rst~input_o\,
	datac => \register_file|registers:0:regx|Q~233_combout\,
	datad => \data_memory|Mux26~1_combout\,
	combout => \register_file|registers:0:regx|Q~212_combout\);

-- Location: FF_X112_Y61_N19
\register_file|registers:0:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~212_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(5));

-- Location: LCCOMB_X112_Y61_N10
\register_file|mux1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux26~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(5))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(5),
	datad => \register_file|registers:1:regx|Q\(5),
	combout => \register_file|mux1|Mux26~0_combout\);

-- Location: LCCOMB_X110_Y57_N12
\arith_logic_unity|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~95_combout\ = ((\register_file|mux1|Mux25~0_combout\ $ (\arith_logic_unity|Add0~175_combout\ $ (!\arith_logic_unity|Add0~94\)))) # (GND)
-- \arith_logic_unity|Add0~96\ = CARRY((\register_file|mux1|Mux25~0_combout\ & ((\arith_logic_unity|Add0~175_combout\) # (!\arith_logic_unity|Add0~94\))) # (!\register_file|mux1|Mux25~0_combout\ & (\arith_logic_unity|Add0~175_combout\ & 
-- !\arith_logic_unity|Add0~94\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~0_combout\,
	datab => \arith_logic_unity|Add0~175_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~94\,
	combout => \arith_logic_unity|Add0~95_combout\,
	cout => \arith_logic_unity|Add0~96\);

-- Location: LCCOMB_X109_Y61_N30
\register_file|registers:0:regx|Q~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~232_combout\ = (!\PC|Q\(5) & (\PC|Q\(2) & (!\PC|Q\(4) & \arith_logic_unity|Add0~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(2),
	datac => \PC|Q\(4),
	datad => \arith_logic_unity|Add0~95_combout\,
	combout => \register_file|registers:0:regx|Q~232_combout\);

-- Location: LCCOMB_X109_Y61_N6
\register_file|mux2|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux25~0_combout\ = (\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(6)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(6),
	datab => \instruction_memory|Mux7~0_combout\,
	datad => \register_file|registers:0:regx|Q\(6),
	combout => \register_file|mux2|Mux25~0_combout\);

-- Location: LCCOMB_X108_Y61_N22
\data_memory|possible_outputs[3][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][6]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux25~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][6]~combout\,
	datac => \register_file|mux2|Mux25~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][6]~combout\);

-- Location: LCCOMB_X109_Y61_N14
\data_memory|possible_outputs[0][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][6]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux25~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][6]~combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \register_file|mux2|Mux25~0_combout\,
	combout => \data_memory|possible_outputs[0][6]~combout\);

-- Location: LCCOMB_X109_Y61_N0
\data_memory|possible_outputs[1][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][6]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux25~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datac => \data_memory|possible_outputs[1][6]~combout\,
	datad => \register_file|mux2|Mux25~0_combout\,
	combout => \data_memory|possible_outputs[1][6]~combout\);

-- Location: LCCOMB_X109_Y61_N12
\data_memory|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux25~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\) # ((\data_memory|possible_outputs[1][6]~combout\)))) # (!\arith_logic_unity|Add0~179_combout\ & (!\arith_logic_unity|Add0~178_combout\ & 
-- (\data_memory|possible_outputs[0][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|possible_outputs[0][6]~combout\,
	datad => \data_memory|possible_outputs[1][6]~combout\,
	combout => \data_memory|Mux25~0_combout\);

-- Location: LCCOMB_X109_Y61_N24
\data_memory|possible_outputs[2][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][6]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux25~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~1clkctrl_outclk\,
	datab => \data_memory|possible_outputs[2][6]~combout\,
	datad => \register_file|mux2|Mux25~0_combout\,
	combout => \data_memory|possible_outputs[2][6]~combout\);

-- Location: LCCOMB_X109_Y61_N22
\data_memory|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux25~1_combout\ = (\arith_logic_unity|Add0~178_combout\ & ((\data_memory|Mux25~0_combout\ & (\data_memory|possible_outputs[3][6]~combout\)) # (!\data_memory|Mux25~0_combout\ & ((\data_memory|possible_outputs[2][6]~combout\))))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (((\data_memory|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][6]~combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|Mux25~0_combout\,
	datad => \data_memory|possible_outputs[2][6]~combout\,
	combout => \data_memory|Mux25~1_combout\);

-- Location: LCCOMB_X109_Y61_N2
\register_file|registers:0:regx|Q~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~211_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux25~1_combout\))) # (!\control|Equal3~1_combout\ & (\register_file|registers:0:regx|Q~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~1_combout\,
	datab => \register_file|registers:0:regx|Q~232_combout\,
	datac => \rst~input_o\,
	datad => \data_memory|Mux25~1_combout\,
	combout => \register_file|registers:0:regx|Q~211_combout\);

-- Location: FF_X109_Y61_N27
\register_file|registers:0:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~211_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(6));

-- Location: LCCOMB_X109_Y61_N18
\register_file|mux1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux25~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(6))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:0:regx|Q\(6),
	datad => \register_file|registers:1:regx|Q\(6),
	combout => \register_file|mux1|Mux25~0_combout\);

-- Location: LCCOMB_X110_Y57_N14
\arith_logic_unity|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~97_combout\ = (\register_file|mux1|Mux24~0_combout\ & ((\arith_logic_unity|Add0~174_combout\ & (\arith_logic_unity|Add0~96\ & VCC)) # (!\arith_logic_unity|Add0~174_combout\ & (!\arith_logic_unity|Add0~96\)))) # 
-- (!\register_file|mux1|Mux24~0_combout\ & ((\arith_logic_unity|Add0~174_combout\ & (!\arith_logic_unity|Add0~96\)) # (!\arith_logic_unity|Add0~174_combout\ & ((\arith_logic_unity|Add0~96\) # (GND)))))
-- \arith_logic_unity|Add0~98\ = CARRY((\register_file|mux1|Mux24~0_combout\ & (!\arith_logic_unity|Add0~174_combout\ & !\arith_logic_unity|Add0~96\)) # (!\register_file|mux1|Mux24~0_combout\ & ((!\arith_logic_unity|Add0~96\) # 
-- (!\arith_logic_unity|Add0~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux24~0_combout\,
	datab => \arith_logic_unity|Add0~174_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~96\,
	combout => \arith_logic_unity|Add0~97_combout\,
	cout => \arith_logic_unity|Add0~98\);

-- Location: LCCOMB_X109_Y57_N22
\register_file|registers:0:regx|Q~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~231_combout\ = (!\PC|Q\(5) & (\PC|Q\(2) & (\arith_logic_unity|Add0~97_combout\ & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(2),
	datac => \arith_logic_unity|Add0~97_combout\,
	datad => \PC|Q\(4),
	combout => \register_file|registers:0:regx|Q~231_combout\);

-- Location: LCCOMB_X108_Y57_N0
\register_file|mux2|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux24~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(7))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(7),
	datac => \register_file|registers:1:regx|Q\(7),
	datad => \instruction_memory|Mux7~0_combout\,
	combout => \register_file|mux2|Mux24~0_combout\);

-- Location: LCCOMB_X108_Y60_N10
\data_memory|possible_outputs[2][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][7]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux24~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][7]~combout\,
	datab => \register_file|mux2|Mux24~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][7]~combout\);

-- Location: LCCOMB_X108_Y60_N12
\data_memory|possible_outputs[0][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][7]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux24~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][7]~combout\,
	datac => \register_file|mux2|Mux24~0_combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][7]~combout\);

-- Location: LCCOMB_X108_Y60_N0
\data_memory|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux24~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & (((\arith_logic_unity|Add0~178_combout\)))) # (!\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\ & (\data_memory|possible_outputs[2][7]~combout\)) # 
-- (!\arith_logic_unity|Add0~178_combout\ & ((\data_memory|possible_outputs[0][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][7]~combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \arith_logic_unity|Add0~178_combout\,
	datad => \data_memory|possible_outputs[0][7]~combout\,
	combout => \data_memory|Mux24~0_combout\);

-- Location: LCCOMB_X107_Y60_N4
\data_memory|possible_outputs[3][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][7]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\register_file|mux2|Mux24~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\data_memory|possible_outputs[3][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux24~0_combout\,
	datac => \data_memory|possible_outputs[3][7]~combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][7]~combout\);

-- Location: LCCOMB_X108_Y60_N28
\data_memory|possible_outputs[1][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][7]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux24~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datab => \data_memory|possible_outputs[1][7]~combout\,
	datac => \register_file|mux2|Mux24~0_combout\,
	combout => \data_memory|possible_outputs[1][7]~combout\);

-- Location: LCCOMB_X108_Y60_N2
\data_memory|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux24~1_combout\ = (\data_memory|Mux24~0_combout\ & ((\data_memory|possible_outputs[3][7]~combout\) # ((!\arith_logic_unity|Add0~179_combout\)))) # (!\data_memory|Mux24~0_combout\ & (((\arith_logic_unity|Add0~179_combout\ & 
-- \data_memory|possible_outputs[1][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux24~0_combout\,
	datab => \data_memory|possible_outputs[3][7]~combout\,
	datac => \arith_logic_unity|Add0~179_combout\,
	datad => \data_memory|possible_outputs[1][7]~combout\,
	combout => \data_memory|Mux24~1_combout\);

-- Location: LCCOMB_X109_Y57_N16
\register_file|registers:0:regx|Q~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~210_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux24~1_combout\))) # (!\control|Equal3~1_combout\ & (\register_file|registers:0:regx|Q~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \control|Equal3~1_combout\,
	datac => \register_file|registers:0:regx|Q~231_combout\,
	datad => \data_memory|Mux24~1_combout\,
	combout => \register_file|registers:0:regx|Q~210_combout\);

-- Location: FF_X109_Y57_N5
\register_file|registers:0:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~210_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(7));

-- Location: LCCOMB_X109_Y57_N10
\register_file|mux1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux24~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(7))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(7),
	datac => \register_file|registers:1:regx|Q\(7),
	combout => \register_file|mux1|Mux24~0_combout\);

-- Location: LCCOMB_X110_Y57_N16
\arith_logic_unity|Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~99_combout\ = ((\register_file|mux1|Mux23~0_combout\ $ (\arith_logic_unity|Add0~173_combout\ $ (!\arith_logic_unity|Add0~98\)))) # (GND)
-- \arith_logic_unity|Add0~100\ = CARRY((\register_file|mux1|Mux23~0_combout\ & ((\arith_logic_unity|Add0~173_combout\) # (!\arith_logic_unity|Add0~98\))) # (!\register_file|mux1|Mux23~0_combout\ & (\arith_logic_unity|Add0~173_combout\ & 
-- !\arith_logic_unity|Add0~98\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux23~0_combout\,
	datab => \arith_logic_unity|Add0~173_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~98\,
	combout => \arith_logic_unity|Add0~99_combout\,
	cout => \arith_logic_unity|Add0~100\);

-- Location: LCCOMB_X109_Y57_N8
\register_file|registers:0:regx|Q~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~230_combout\ = (!\PC|Q\(4) & (\PC|Q\(2) & (!\PC|Q\(5) & \arith_logic_unity|Add0~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(2),
	datac => \PC|Q\(5),
	datad => \arith_logic_unity|Add0~99_combout\,
	combout => \register_file|registers:0:regx|Q~230_combout\);

-- Location: LCCOMB_X108_Y57_N10
\register_file|mux2|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux23~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(8))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(8),
	datab => \register_file|registers:1:regx|Q\(8),
	datad => \instruction_memory|Mux7~0_combout\,
	combout => \register_file|mux2|Mux23~0_combout\);

-- Location: LCCOMB_X109_Y58_N2
\data_memory|possible_outputs[2][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][8]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux23~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][8]~combout\,
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux23~0_combout\,
	combout => \data_memory|possible_outputs[2][8]~combout\);

-- Location: LCCOMB_X109_Y58_N18
\data_memory|possible_outputs[1][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][8]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux23~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[1][8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux23~0_combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \data_memory|possible_outputs[1][8]~combout\,
	combout => \data_memory|possible_outputs[1][8]~combout\);

-- Location: LCCOMB_X109_Y58_N20
\data_memory|possible_outputs[0][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][8]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\register_file|mux2|Mux23~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\data_memory|possible_outputs[0][8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux23~0_combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \data_memory|possible_outputs[0][8]~combout\,
	combout => \data_memory|possible_outputs[0][8]~combout\);

-- Location: LCCOMB_X109_Y58_N12
\data_memory|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux23~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & (((\arith_logic_unity|Add0~179_combout\)))) # (!\arith_logic_unity|Add0~178_combout\ & ((\arith_logic_unity|Add0~179_combout\ & (\data_memory|possible_outputs[1][8]~combout\)) # 
-- (!\arith_logic_unity|Add0~179_combout\ & ((\data_memory|possible_outputs[0][8]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \data_memory|possible_outputs[1][8]~combout\,
	datac => \arith_logic_unity|Add0~179_combout\,
	datad => \data_memory|possible_outputs[0][8]~combout\,
	combout => \data_memory|Mux23~0_combout\);

-- Location: LCCOMB_X108_Y58_N20
\data_memory|possible_outputs[3][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][8]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\register_file|mux2|Mux23~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\data_memory|possible_outputs[3][8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux23~0_combout\,
	datab => \data_memory|possible_outputs[3][8]~combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][8]~combout\);

-- Location: LCCOMB_X109_Y58_N14
\data_memory|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux23~1_combout\ = (\arith_logic_unity|Add0~178_combout\ & ((\data_memory|Mux23~0_combout\ & ((\data_memory|possible_outputs[3][8]~combout\))) # (!\data_memory|Mux23~0_combout\ & (\data_memory|possible_outputs[2][8]~combout\)))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (((\data_memory|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \data_memory|possible_outputs[2][8]~combout\,
	datac => \data_memory|Mux23~0_combout\,
	datad => \data_memory|possible_outputs[3][8]~combout\,
	combout => \data_memory|Mux23~1_combout\);

-- Location: LCCOMB_X109_Y57_N26
\register_file|registers:0:regx|Q~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~209_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux23~1_combout\))) # (!\control|Equal3~1_combout\ & (\register_file|registers:0:regx|Q~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \control|Equal3~1_combout\,
	datac => \register_file|registers:0:regx|Q~230_combout\,
	datad => \data_memory|Mux23~1_combout\,
	combout => \register_file|registers:0:regx|Q~209_combout\);

-- Location: FF_X109_Y57_N19
\register_file|registers:1:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~209_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(8));

-- Location: LCCOMB_X109_Y57_N18
\register_file|mux1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux23~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(8)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(8),
	datad => \register_file|registers:0:regx|Q\(8),
	combout => \register_file|mux1|Mux23~0_combout\);

-- Location: LCCOMB_X110_Y57_N18
\arith_logic_unity|Add0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~101_combout\ = (\arith_logic_unity|Add0~172_combout\ & ((\register_file|mux1|Mux22~0_combout\ & (\arith_logic_unity|Add0~100\ & VCC)) # (!\register_file|mux1|Mux22~0_combout\ & (!\arith_logic_unity|Add0~100\)))) # 
-- (!\arith_logic_unity|Add0~172_combout\ & ((\register_file|mux1|Mux22~0_combout\ & (!\arith_logic_unity|Add0~100\)) # (!\register_file|mux1|Mux22~0_combout\ & ((\arith_logic_unity|Add0~100\) # (GND)))))
-- \arith_logic_unity|Add0~102\ = CARRY((\arith_logic_unity|Add0~172_combout\ & (!\register_file|mux1|Mux22~0_combout\ & !\arith_logic_unity|Add0~100\)) # (!\arith_logic_unity|Add0~172_combout\ & ((!\arith_logic_unity|Add0~100\) # 
-- (!\register_file|mux1|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~172_combout\,
	datab => \register_file|mux1|Mux22~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~100\,
	combout => \arith_logic_unity|Add0~101_combout\,
	cout => \arith_logic_unity|Add0~102\);

-- Location: LCCOMB_X111_Y58_N14
\register_file|registers:0:regx|Q~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~229_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & (\arith_logic_unity|Add0~101_combout\ & \PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \arith_logic_unity|Add0~101_combout\,
	datad => \PC|Q\(2),
	combout => \register_file|registers:0:regx|Q~229_combout\);

-- Location: LCCOMB_X111_Y58_N30
\data_memory|possible_outputs[2][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][9]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux22~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][9]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~1clkctrl_outclk\,
	datac => \register_file|mux2|Mux22~0_combout\,
	datad => \data_memory|possible_outputs[2][9]~combout\,
	combout => \data_memory|possible_outputs[2][9]~combout\);

-- Location: LCCOMB_X111_Y58_N8
\data_memory|possible_outputs[0][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][9]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux22~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][9]~combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \register_file|mux2|Mux22~0_combout\,
	combout => \data_memory|possible_outputs[0][9]~combout\);

-- Location: LCCOMB_X111_Y58_N22
\data_memory|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux22~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & ((\data_memory|possible_outputs[2][9]~combout\) # ((\arith_logic_unity|Add0~179_combout\)))) # (!\arith_logic_unity|Add0~178_combout\ & (((\data_memory|possible_outputs[0][9]~combout\ 
-- & !\arith_logic_unity|Add0~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][9]~combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|possible_outputs[0][9]~combout\,
	datad => \arith_logic_unity|Add0~179_combout\,
	combout => \data_memory|Mux22~0_combout\);

-- Location: LCCOMB_X111_Y58_N4
\data_memory|possible_outputs[1][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][9]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux22~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datab => \data_memory|possible_outputs[1][9]~combout\,
	datad => \register_file|mux2|Mux22~0_combout\,
	combout => \data_memory|possible_outputs[1][9]~combout\);

-- Location: LCCOMB_X112_Y58_N24
\data_memory|possible_outputs[3][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][9]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux22~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][9]~combout\,
	datac => \register_file|mux2|Mux22~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][9]~combout\);

-- Location: LCCOMB_X111_Y58_N0
\data_memory|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux22~1_combout\ = (\data_memory|Mux22~0_combout\ & (((\data_memory|possible_outputs[3][9]~combout\) # (!\arith_logic_unity|Add0~179_combout\)))) # (!\data_memory|Mux22~0_combout\ & (\data_memory|possible_outputs[1][9]~combout\ & 
-- (\arith_logic_unity|Add0~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux22~0_combout\,
	datab => \data_memory|possible_outputs[1][9]~combout\,
	datac => \arith_logic_unity|Add0~179_combout\,
	datad => \data_memory|possible_outputs[3][9]~combout\,
	combout => \data_memory|Mux22~1_combout\);

-- Location: LCCOMB_X111_Y58_N26
\register_file|registers:0:regx|Q~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~208_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux22~1_combout\))) # (!\control|Equal3~1_combout\ & (\register_file|registers:0:regx|Q~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~229_combout\,
	datab => \rst~input_o\,
	datac => \control|Equal3~1_combout\,
	datad => \data_memory|Mux22~1_combout\,
	combout => \register_file|registers:0:regx|Q~208_combout\);

-- Location: LCCOMB_X111_Y58_N10
\register_file|registers:0:regx|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[9]~feeder_combout\ = \register_file|registers:0:regx|Q~208_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~208_combout\,
	combout => \register_file|registers:0:regx|Q[9]~feeder_combout\);

-- Location: FF_X111_Y58_N11
\register_file|registers:0:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(9));

-- Location: LCCOMB_X111_Y58_N12
\register_file|mux2|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux22~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(9))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(9),
	datac => \instruction_memory|Mux7~0_combout\,
	datad => \register_file|registers:1:regx|Q\(9),
	combout => \register_file|mux2|Mux22~0_combout\);

-- Location: LCCOMB_X111_Y58_N2
\aluOp2[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[9]~28_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux22~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \aluOp2[5]~0_combout\,
	datad => \register_file|mux2|Mux22~0_combout\,
	combout => \aluOp2[9]~28_combout\);

-- Location: LCCOMB_X111_Y58_N24
\arith_logic_unity|Add0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~172_combout\ = \aluOp2[9]~28_combout\ $ (((\control|aluControl[2]~0_combout\) # ((\PC|Q\(5)) # (\PC|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \aluOp2[9]~28_combout\,
	combout => \arith_logic_unity|Add0~172_combout\);

-- Location: LCCOMB_X110_Y57_N20
\arith_logic_unity|Add0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~103_combout\ = ((\arith_logic_unity|Add0~171_combout\ $ (\register_file|mux1|Mux21~0_combout\ $ (!\arith_logic_unity|Add0~102\)))) # (GND)
-- \arith_logic_unity|Add0~104\ = CARRY((\arith_logic_unity|Add0~171_combout\ & ((\register_file|mux1|Mux21~0_combout\) # (!\arith_logic_unity|Add0~102\))) # (!\arith_logic_unity|Add0~171_combout\ & (\register_file|mux1|Mux21~0_combout\ & 
-- !\arith_logic_unity|Add0~102\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~171_combout\,
	datab => \register_file|mux1|Mux21~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~102\,
	combout => \arith_logic_unity|Add0~103_combout\,
	cout => \arith_logic_unity|Add0~104\);

-- Location: LCCOMB_X109_Y57_N30
\register_file|registers:0:regx|Q~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~228_combout\ = (\PC|Q\(2) & (!\PC|Q\(4) & (!\PC|Q\(5) & \arith_logic_unity|Add0~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(4),
	datac => \PC|Q\(5),
	datad => \arith_logic_unity|Add0~103_combout\,
	combout => \register_file|registers:0:regx|Q~228_combout\);

-- Location: LCCOMB_X108_Y57_N28
\register_file|mux2|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux21~0_combout\ = (\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(10)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:1:regx|Q\(10),
	datac => \register_file|registers:0:regx|Q\(10),
	datad => \instruction_memory|Mux7~0_combout\,
	combout => \register_file|mux2|Mux21~0_combout\);

-- Location: LCCOMB_X108_Y57_N30
\data_memory|possible_outputs[0][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][10]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux21~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][10]~combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \register_file|mux2|Mux21~0_combout\,
	combout => \data_memory|possible_outputs[0][10]~combout\);

-- Location: LCCOMB_X108_Y57_N20
\data_memory|possible_outputs[1][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][10]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux21~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][10]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux21~0_combout\,
	combout => \data_memory|possible_outputs[1][10]~combout\);

-- Location: LCCOMB_X108_Y57_N8
\data_memory|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux21~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & (\arith_logic_unity|Add0~179_combout\)) # (!\arith_logic_unity|Add0~178_combout\ & ((\arith_logic_unity|Add0~179_combout\ & ((\data_memory|possible_outputs[1][10]~combout\))) # 
-- (!\arith_logic_unity|Add0~179_combout\ & (\data_memory|possible_outputs[0][10]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \data_memory|possible_outputs[0][10]~combout\,
	datad => \data_memory|possible_outputs[1][10]~combout\,
	combout => \data_memory|Mux21~0_combout\);

-- Location: LCCOMB_X107_Y57_N4
\data_memory|possible_outputs[3][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][10]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\register_file|mux2|Mux21~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\data_memory|possible_outputs[3][10]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux21~0_combout\,
	datac => \data_memory|Decoder0~5clkctrl_outclk\,
	datad => \data_memory|possible_outputs[3][10]~combout\,
	combout => \data_memory|possible_outputs[3][10]~combout\);

-- Location: LCCOMB_X108_Y57_N22
\data_memory|possible_outputs[2][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][10]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux21~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][10]~combout\,
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux21~0_combout\,
	combout => \data_memory|possible_outputs[2][10]~combout\);

-- Location: LCCOMB_X108_Y57_N6
\data_memory|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux21~1_combout\ = (\data_memory|Mux21~0_combout\ & ((\data_memory|possible_outputs[3][10]~combout\) # ((!\arith_logic_unity|Add0~178_combout\)))) # (!\data_memory|Mux21~0_combout\ & (((\data_memory|possible_outputs[2][10]~combout\ & 
-- \arith_logic_unity|Add0~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux21~0_combout\,
	datab => \data_memory|possible_outputs[3][10]~combout\,
	datac => \data_memory|possible_outputs[2][10]~combout\,
	datad => \arith_logic_unity|Add0~178_combout\,
	combout => \data_memory|Mux21~1_combout\);

-- Location: LCCOMB_X109_Y57_N0
\register_file|registers:0:regx|Q~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~207_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux21~1_combout\))) # (!\control|Equal3~1_combout\ & (\register_file|registers:0:regx|Q~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~228_combout\,
	datab => \control|Equal3~1_combout\,
	datac => \data_memory|Mux21~1_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~207_combout\);

-- Location: FF_X109_Y57_N13
\register_file|registers:0:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~207_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(10));

-- Location: LCCOMB_X109_Y57_N12
\aluOp2[10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[10]~27_combout\ = (!\instruction_memory|Mux5~0_combout\ & ((\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(10))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(10),
	datad => \register_file|registers:1:regx|Q\(10),
	combout => \aluOp2[10]~27_combout\);

-- Location: LCCOMB_X109_Y57_N14
\arith_logic_unity|Add0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~171_combout\ = \aluOp2[10]~27_combout\ $ (((\PC|Q\(4)) # ((\PC|Q\(5)) # (\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \aluOp2[10]~27_combout\,
	datad => \control|aluControl[2]~0_combout\,
	combout => \arith_logic_unity|Add0~171_combout\);

-- Location: LCCOMB_X110_Y57_N22
\arith_logic_unity|Add0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~105_combout\ = (\register_file|mux1|Mux20~0_combout\ & ((\arith_logic_unity|Add0~170_combout\ & (\arith_logic_unity|Add0~104\ & VCC)) # (!\arith_logic_unity|Add0~170_combout\ & (!\arith_logic_unity|Add0~104\)))) # 
-- (!\register_file|mux1|Mux20~0_combout\ & ((\arith_logic_unity|Add0~170_combout\ & (!\arith_logic_unity|Add0~104\)) # (!\arith_logic_unity|Add0~170_combout\ & ((\arith_logic_unity|Add0~104\) # (GND)))))
-- \arith_logic_unity|Add0~106\ = CARRY((\register_file|mux1|Mux20~0_combout\ & (!\arith_logic_unity|Add0~170_combout\ & !\arith_logic_unity|Add0~104\)) # (!\register_file|mux1|Mux20~0_combout\ & ((!\arith_logic_unity|Add0~104\) # 
-- (!\arith_logic_unity|Add0~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux20~0_combout\,
	datab => \arith_logic_unity|Add0~170_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~104\,
	combout => \arith_logic_unity|Add0~105_combout\,
	cout => \arith_logic_unity|Add0~106\);

-- Location: LCCOMB_X113_Y61_N6
\register_file|registers:0:regx|Q~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~227_combout\ = (\PC|Q\(2) & (!\PC|Q\(5) & (!\PC|Q\(4) & \arith_logic_unity|Add0~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \arith_logic_unity|Add0~105_combout\,
	combout => \register_file|registers:0:regx|Q~227_combout\);

-- Location: LCCOMB_X113_Y61_N26
\register_file|mux2|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux20~0_combout\ = (\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(11)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(11),
	datac => \register_file|registers:0:regx|Q\(11),
	datad => \instruction_memory|Mux7~0_combout\,
	combout => \register_file|mux2|Mux20~0_combout\);

-- Location: LCCOMB_X113_Y61_N10
\data_memory|possible_outputs[2][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][11]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux20~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][11]~combout\,
	datab => \register_file|mux2|Mux20~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][11]~combout\);

-- Location: LCCOMB_X113_Y61_N16
\data_memory|possible_outputs[0][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][11]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux20~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][11]~combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \register_file|mux2|Mux20~0_combout\,
	combout => \data_memory|possible_outputs[0][11]~combout\);

-- Location: LCCOMB_X113_Y61_N0
\data_memory|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux20~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & (((\arith_logic_unity|Add0~178_combout\)))) # (!\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\ & (\data_memory|possible_outputs[2][11]~combout\)) # 
-- (!\arith_logic_unity|Add0~178_combout\ & ((\data_memory|possible_outputs[0][11]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][11]~combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \arith_logic_unity|Add0~178_combout\,
	datad => \data_memory|possible_outputs[0][11]~combout\,
	combout => \data_memory|Mux20~0_combout\);

-- Location: LCCOMB_X114_Y61_N12
\data_memory|possible_outputs[3][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][11]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux20~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~5clkctrl_outclk\,
	datac => \data_memory|possible_outputs[3][11]~combout\,
	datad => \register_file|mux2|Mux20~0_combout\,
	combout => \data_memory|possible_outputs[3][11]~combout\);

-- Location: LCCOMB_X113_Y61_N28
\data_memory|possible_outputs[1][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][11]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux20~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][11]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux20~0_combout\,
	combout => \data_memory|possible_outputs[1][11]~combout\);

-- Location: LCCOMB_X113_Y61_N30
\data_memory|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux20~1_combout\ = (\data_memory|Mux20~0_combout\ & (((\data_memory|possible_outputs[3][11]~combout\)) # (!\arith_logic_unity|Add0~179_combout\))) # (!\data_memory|Mux20~0_combout\ & (\arith_logic_unity|Add0~179_combout\ & 
-- ((\data_memory|possible_outputs[1][11]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux20~0_combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \data_memory|possible_outputs[3][11]~combout\,
	datad => \data_memory|possible_outputs[1][11]~combout\,
	combout => \data_memory|Mux20~1_combout\);

-- Location: LCCOMB_X113_Y61_N22
\register_file|registers:0:regx|Q~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~206_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux20~1_combout\))) # (!\control|Equal3~1_combout\ & (\register_file|registers:0:regx|Q~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~1_combout\,
	datab => \rst~input_o\,
	datac => \register_file|registers:0:regx|Q~227_combout\,
	datad => \data_memory|Mux20~1_combout\,
	combout => \register_file|registers:0:regx|Q~206_combout\);

-- Location: FF_X113_Y61_N27
\register_file|registers:0:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~206_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(11));

-- Location: LCCOMB_X113_Y61_N18
\register_file|mux1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux20~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(11))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:0:regx|Q\(11),
	datad => \register_file|registers:1:regx|Q\(11),
	combout => \register_file|mux1|Mux20~0_combout\);

-- Location: LCCOMB_X110_Y57_N24
\arith_logic_unity|Add0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~107_combout\ = ((\register_file|mux1|Mux19~0_combout\ $ (\arith_logic_unity|Add0~169_combout\ $ (!\arith_logic_unity|Add0~106\)))) # (GND)
-- \arith_logic_unity|Add0~108\ = CARRY((\register_file|mux1|Mux19~0_combout\ & ((\arith_logic_unity|Add0~169_combout\) # (!\arith_logic_unity|Add0~106\))) # (!\register_file|mux1|Mux19~0_combout\ & (\arith_logic_unity|Add0~169_combout\ & 
-- !\arith_logic_unity|Add0~106\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux19~0_combout\,
	datab => \arith_logic_unity|Add0~169_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~106\,
	combout => \arith_logic_unity|Add0~107_combout\,
	cout => \arith_logic_unity|Add0~108\);

-- Location: LCCOMB_X109_Y57_N28
\register_file|registers:0:regx|Q~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~226_combout\ = (\PC|Q\(2) & (\arith_logic_unity|Add0~107_combout\ & (!\PC|Q\(5) & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \arith_logic_unity|Add0~107_combout\,
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \register_file|registers:0:regx|Q~226_combout\);

-- Location: LCCOMB_X112_Y59_N4
\data_memory|possible_outputs[0][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][12]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux19~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][12]~combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \register_file|mux2|Mux19~0_combout\,
	combout => \data_memory|possible_outputs[0][12]~combout\);

-- Location: LCCOMB_X111_Y59_N0
\data_memory|possible_outputs[1][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][12]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux19~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][12]~combout\,
	datab => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux19~0_combout\,
	combout => \data_memory|possible_outputs[1][12]~combout\);

-- Location: LCCOMB_X112_Y59_N8
\data_memory|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux19~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & (\arith_logic_unity|Add0~179_combout\)) # (!\arith_logic_unity|Add0~178_combout\ & ((\arith_logic_unity|Add0~179_combout\ & ((\data_memory|possible_outputs[1][12]~combout\))) # 
-- (!\arith_logic_unity|Add0~179_combout\ & (\data_memory|possible_outputs[0][12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \data_memory|possible_outputs[0][12]~combout\,
	datad => \data_memory|possible_outputs[1][12]~combout\,
	combout => \data_memory|Mux19~0_combout\);

-- Location: LCCOMB_X112_Y59_N30
\data_memory|possible_outputs[3][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][12]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux19~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][12]~combout\,
	datab => \register_file|mux2|Mux19~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][12]~combout\);

-- Location: LCCOMB_X112_Y59_N2
\data_memory|possible_outputs[2][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][12]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux19~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux19~0_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[2][12]~combout\,
	combout => \data_memory|possible_outputs[2][12]~combout\);

-- Location: LCCOMB_X112_Y59_N10
\data_memory|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux19~1_combout\ = (\data_memory|Mux19~0_combout\ & (((\data_memory|possible_outputs[3][12]~combout\)) # (!\arith_logic_unity|Add0~178_combout\))) # (!\data_memory|Mux19~0_combout\ & (\arith_logic_unity|Add0~178_combout\ & 
-- ((\data_memory|possible_outputs[2][12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux19~0_combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|possible_outputs[3][12]~combout\,
	datad => \data_memory|possible_outputs[2][12]~combout\,
	combout => \data_memory|Mux19~1_combout\);

-- Location: LCCOMB_X110_Y59_N28
\register_file|registers:0:regx|Q~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~205_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux19~1_combout\))) # (!\control|Equal3~1_combout\ & (\register_file|registers:0:regx|Q~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \control|Equal3~1_combout\,
	datac => \register_file|registers:0:regx|Q~226_combout\,
	datad => \data_memory|Mux19~1_combout\,
	combout => \register_file|registers:0:regx|Q~205_combout\);

-- Location: FF_X110_Y59_N5
\register_file|registers:0:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~205_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(12));

-- Location: LCCOMB_X110_Y59_N14
\register_file|mux1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux19~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(12))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(12),
	datad => \register_file|registers:1:regx|Q\(12),
	combout => \register_file|mux1|Mux19~0_combout\);

-- Location: LCCOMB_X110_Y57_N26
\arith_logic_unity|Add0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~109_combout\ = (\arith_logic_unity|Add0~168_combout\ & ((\register_file|mux1|Mux18~0_combout\ & (\arith_logic_unity|Add0~108\ & VCC)) # (!\register_file|mux1|Mux18~0_combout\ & (!\arith_logic_unity|Add0~108\)))) # 
-- (!\arith_logic_unity|Add0~168_combout\ & ((\register_file|mux1|Mux18~0_combout\ & (!\arith_logic_unity|Add0~108\)) # (!\register_file|mux1|Mux18~0_combout\ & ((\arith_logic_unity|Add0~108\) # (GND)))))
-- \arith_logic_unity|Add0~110\ = CARRY((\arith_logic_unity|Add0~168_combout\ & (!\register_file|mux1|Mux18~0_combout\ & !\arith_logic_unity|Add0~108\)) # (!\arith_logic_unity|Add0~168_combout\ & ((!\arith_logic_unity|Add0~108\) # 
-- (!\register_file|mux1|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~168_combout\,
	datab => \register_file|mux1|Mux18~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~108\,
	combout => \arith_logic_unity|Add0~109_combout\,
	cout => \arith_logic_unity|Add0~110\);

-- Location: LCCOMB_X109_Y61_N8
\register_file|registers:0:regx|Q~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~225_combout\ = (\arith_logic_unity|Add0~109_combout\ & (\PC|Q\(2) & (!\PC|Q\(4) & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~109_combout\,
	datab => \PC|Q\(2),
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \register_file|registers:0:regx|Q~225_combout\);

-- Location: LCCOMB_X109_Y60_N24
\register_file|mux2|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux18~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(13))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(13),
	datab => \instruction_memory|Mux7~0_combout\,
	datad => \register_file|registers:1:regx|Q\(13),
	combout => \register_file|mux2|Mux18~0_combout\);

-- Location: LCCOMB_X112_Y60_N10
\data_memory|possible_outputs[2][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][13]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux18~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][13]~combout\,
	datac => \register_file|mux2|Mux18~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][13]~combout\);

-- Location: LCCOMB_X112_Y60_N12
\data_memory|possible_outputs[0][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][13]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux18~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][13]~combout\,
	datab => \register_file|mux2|Mux18~0_combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][13]~combout\);

-- Location: LCCOMB_X112_Y60_N0
\data_memory|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux18~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & (((\arith_logic_unity|Add0~178_combout\)))) # (!\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\ & (\data_memory|possible_outputs[2][13]~combout\)) # 
-- (!\arith_logic_unity|Add0~178_combout\ & ((\data_memory|possible_outputs[0][13]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][13]~combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \arith_logic_unity|Add0~178_combout\,
	datad => \data_memory|possible_outputs[0][13]~combout\,
	combout => \data_memory|Mux18~0_combout\);

-- Location: LCCOMB_X114_Y60_N4
\data_memory|possible_outputs[3][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][13]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\register_file|mux2|Mux18~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\data_memory|possible_outputs[3][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|Decoder0~5clkctrl_outclk\,
	datac => \register_file|mux2|Mux18~0_combout\,
	datad => \data_memory|possible_outputs[3][13]~combout\,
	combout => \data_memory|possible_outputs[3][13]~combout\);

-- Location: LCCOMB_X112_Y60_N16
\data_memory|possible_outputs[1][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][13]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux18~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[1][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux18~0_combout\,
	datab => \data_memory|possible_outputs[1][13]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][13]~combout\);

-- Location: LCCOMB_X112_Y60_N26
\data_memory|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux18~1_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\data_memory|Mux18~0_combout\ & (\data_memory|possible_outputs[3][13]~combout\)) # (!\data_memory|Mux18~0_combout\ & ((\data_memory|possible_outputs[1][13]~combout\))))) # 
-- (!\arith_logic_unity|Add0~179_combout\ & (\data_memory|Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \data_memory|Mux18~0_combout\,
	datac => \data_memory|possible_outputs[3][13]~combout\,
	datad => \data_memory|possible_outputs[1][13]~combout\,
	combout => \data_memory|Mux18~1_combout\);

-- Location: LCCOMB_X109_Y61_N20
\register_file|registers:0:regx|Q~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~204_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux18~1_combout\))) # (!\control|Equal3~1_combout\ & (\register_file|registers:0:regx|Q~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~1_combout\,
	datab => \rst~input_o\,
	datac => \register_file|registers:0:regx|Q~225_combout\,
	datad => \data_memory|Mux18~1_combout\,
	combout => \register_file|registers:0:regx|Q~204_combout\);

-- Location: FF_X109_Y61_N17
\register_file|registers:0:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~204_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(13));

-- Location: LCCOMB_X109_Y61_N16
\aluOp2[13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[13]~24_combout\ = (!\instruction_memory|Mux5~0_combout\ & ((\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(13))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(13),
	datad => \register_file|registers:1:regx|Q\(13),
	combout => \aluOp2[13]~24_combout\);

-- Location: LCCOMB_X109_Y61_N28
\arith_logic_unity|Add0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~168_combout\ = \aluOp2[13]~24_combout\ $ (((\PC|Q\(5)) # ((\PC|Q\(4)) # (\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \control|aluControl[2]~0_combout\,
	datad => \aluOp2[13]~24_combout\,
	combout => \arith_logic_unity|Add0~168_combout\);

-- Location: LCCOMB_X110_Y57_N28
\arith_logic_unity|Add0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~111_combout\ = ((\register_file|mux1|Mux17~0_combout\ $ (\arith_logic_unity|Add0~167_combout\ $ (!\arith_logic_unity|Add0~110\)))) # (GND)
-- \arith_logic_unity|Add0~112\ = CARRY((\register_file|mux1|Mux17~0_combout\ & ((\arith_logic_unity|Add0~167_combout\) # (!\arith_logic_unity|Add0~110\))) # (!\register_file|mux1|Mux17~0_combout\ & (\arith_logic_unity|Add0~167_combout\ & 
-- !\arith_logic_unity|Add0~110\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux17~0_combout\,
	datab => \arith_logic_unity|Add0~167_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~110\,
	combout => \arith_logic_unity|Add0~111_combout\,
	cout => \arith_logic_unity|Add0~112\);

-- Location: LCCOMB_X112_Y61_N8
\register_file|registers:0:regx|Q~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~224_combout\ = (!\PC|Q\(5) & (\PC|Q\(2) & (!\PC|Q\(4) & \arith_logic_unity|Add0~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(2),
	datac => \PC|Q\(4),
	datad => \arith_logic_unity|Add0~111_combout\,
	combout => \register_file|registers:0:regx|Q~224_combout\);

-- Location: LCCOMB_X112_Y61_N18
\register_file|mux2|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux17~0_combout\ = (\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(14)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(14),
	datab => \instruction_memory|Mux7~0_combout\,
	datad => \register_file|registers:0:regx|Q\(14),
	combout => \register_file|mux2|Mux17~0_combout\);

-- Location: LCCOMB_X113_Y61_N14
\data_memory|possible_outputs[1][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][14]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux17~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][14]~combout\,
	datac => \register_file|mux2|Mux17~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][14]~combout\);

-- Location: LCCOMB_X113_Y61_N8
\data_memory|possible_outputs[0][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][14]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux17~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][14]~combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \register_file|mux2|Mux17~0_combout\,
	combout => \data_memory|possible_outputs[0][14]~combout\);

-- Location: LCCOMB_X113_Y61_N20
\data_memory|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux17~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & (((\arith_logic_unity|Add0~179_combout\)))) # (!\arith_logic_unity|Add0~178_combout\ & ((\arith_logic_unity|Add0~179_combout\ & (\data_memory|possible_outputs[1][14]~combout\)) # 
-- (!\arith_logic_unity|Add0~179_combout\ & ((\data_memory|possible_outputs[0][14]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \data_memory|possible_outputs[1][14]~combout\,
	datac => \data_memory|possible_outputs[0][14]~combout\,
	datad => \arith_logic_unity|Add0~179_combout\,
	combout => \data_memory|Mux17~0_combout\);

-- Location: LCCOMB_X112_Y61_N12
\data_memory|possible_outputs[2][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][14]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux17~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~1clkctrl_outclk\,
	datab => \data_memory|possible_outputs[2][14]~combout\,
	datad => \register_file|mux2|Mux17~0_combout\,
	combout => \data_memory|possible_outputs[2][14]~combout\);

-- Location: LCCOMB_X114_Y61_N30
\data_memory|possible_outputs[3][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][14]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux17~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][14]~combout\,
	datac => \register_file|mux2|Mux17~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][14]~combout\);

-- Location: LCCOMB_X112_Y61_N0
\data_memory|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux17~1_combout\ = (\data_memory|Mux17~0_combout\ & (((\data_memory|possible_outputs[3][14]~combout\) # (!\arith_logic_unity|Add0~178_combout\)))) # (!\data_memory|Mux17~0_combout\ & (\data_memory|possible_outputs[2][14]~combout\ & 
-- (\arith_logic_unity|Add0~178_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux17~0_combout\,
	datab => \data_memory|possible_outputs[2][14]~combout\,
	datac => \arith_logic_unity|Add0~178_combout\,
	datad => \data_memory|possible_outputs[3][14]~combout\,
	combout => \data_memory|Mux17~1_combout\);

-- Location: LCCOMB_X112_Y61_N16
\register_file|registers:0:regx|Q~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~203_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux17~1_combout\))) # (!\control|Equal3~1_combout\ & (\register_file|registers:0:regx|Q~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~1_combout\,
	datab => \rst~input_o\,
	datac => \register_file|registers:0:regx|Q~224_combout\,
	datad => \data_memory|Mux17~1_combout\,
	combout => \register_file|registers:0:regx|Q~203_combout\);

-- Location: FF_X112_Y61_N3
\register_file|registers:0:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~203_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(14));

-- Location: LCCOMB_X112_Y61_N14
\register_file|mux1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux17~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(14))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(14),
	datad => \register_file|registers:1:regx|Q\(14),
	combout => \register_file|mux1|Mux17~0_combout\);

-- Location: LCCOMB_X110_Y57_N30
\arith_logic_unity|Add0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~113_combout\ = (\register_file|mux1|Mux16~0_combout\ & ((\arith_logic_unity|Add0~166_combout\ & (\arith_logic_unity|Add0~112\ & VCC)) # (!\arith_logic_unity|Add0~166_combout\ & (!\arith_logic_unity|Add0~112\)))) # 
-- (!\register_file|mux1|Mux16~0_combout\ & ((\arith_logic_unity|Add0~166_combout\ & (!\arith_logic_unity|Add0~112\)) # (!\arith_logic_unity|Add0~166_combout\ & ((\arith_logic_unity|Add0~112\) # (GND)))))
-- \arith_logic_unity|Add0~114\ = CARRY((\register_file|mux1|Mux16~0_combout\ & (!\arith_logic_unity|Add0~166_combout\ & !\arith_logic_unity|Add0~112\)) # (!\register_file|mux1|Mux16~0_combout\ & ((!\arith_logic_unity|Add0~112\) # 
-- (!\arith_logic_unity|Add0~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux16~0_combout\,
	datab => \arith_logic_unity|Add0~166_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~112\,
	combout => \arith_logic_unity|Add0~113_combout\,
	cout => \arith_logic_unity|Add0~114\);

-- Location: LCCOMB_X111_Y59_N26
\register_file|registers:0:regx|Q~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~223_combout\ = (!\PC|Q\(5) & (\arith_logic_unity|Add0~113_combout\ & (\PC|Q\(2) & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \arith_logic_unity|Add0~113_combout\,
	datac => \PC|Q\(2),
	datad => \PC|Q\(4),
	combout => \register_file|registers:0:regx|Q~223_combout\);

-- Location: LCCOMB_X111_Y59_N28
\register_file|registers:0:regx|Q~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~202_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & (\data_memory|Mux16~1_combout\)) # (!\control|Equal3~1_combout\ & ((\register_file|registers:0:regx|Q~223_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \data_memory|Mux16~1_combout\,
	datac => \control|Equal3~1_combout\,
	datad => \register_file|registers:0:regx|Q~223_combout\,
	combout => \register_file|registers:0:regx|Q~202_combout\);

-- Location: FF_X111_Y59_N15
\register_file|registers:1:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~202_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(15));

-- Location: LCCOMB_X111_Y59_N10
\register_file|mux1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux16~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(15)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(15),
	datad => \register_file|registers:0:regx|Q\(15),
	combout => \register_file|mux1|Mux16~0_combout\);

-- Location: LCCOMB_X110_Y56_N0
\arith_logic_unity|Add0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~115_combout\ = ((\arith_logic_unity|Add0~165_combout\ $ (\register_file|mux1|Mux15~0_combout\ $ (!\arith_logic_unity|Add0~114\)))) # (GND)
-- \arith_logic_unity|Add0~116\ = CARRY((\arith_logic_unity|Add0~165_combout\ & ((\register_file|mux1|Mux15~0_combout\) # (!\arith_logic_unity|Add0~114\))) # (!\arith_logic_unity|Add0~165_combout\ & (\register_file|mux1|Mux15~0_combout\ & 
-- !\arith_logic_unity|Add0~114\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~165_combout\,
	datab => \register_file|mux1|Mux15~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~114\,
	combout => \arith_logic_unity|Add0~115_combout\,
	cout => \arith_logic_unity|Add0~116\);

-- Location: LCCOMB_X109_Y56_N22
\register_file|registers:0:regx|Q~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~222_combout\ = (\PC|Q\(2) & (!\PC|Q\(4) & (\arith_logic_unity|Add0~115_combout\ & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(4),
	datac => \arith_logic_unity|Add0~115_combout\,
	datad => \PC|Q\(5),
	combout => \register_file|registers:0:regx|Q~222_combout\);

-- Location: LCCOMB_X109_Y56_N18
\register_file|registers:0:regx|Q~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~201_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & (\data_memory|Mux15~1_combout\)) # (!\control|Equal3~1_combout\ & ((\register_file|registers:0:regx|Q~222_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~1_combout\,
	datab => \data_memory|Mux15~1_combout\,
	datac => \register_file|registers:0:regx|Q~222_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~201_combout\);

-- Location: FF_X109_Y56_N9
\register_file|registers:0:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~201_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(16));

-- Location: LCCOMB_X109_Y56_N6
\register_file|mux2|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux15~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(16))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datab => \register_file|registers:0:regx|Q\(16),
	datad => \register_file|registers:1:regx|Q\(16),
	combout => \register_file|mux2|Mux15~0_combout\);

-- Location: LCCOMB_X109_Y56_N24
\aluOp2[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[16]~21_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\register_file|mux2|Mux15~0_combout\) # (\PC|Q\(3))))) # (!\aluOp2[5]~0_combout\ & (\register_file|mux2|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux15~0_combout\,
	datab => \PC|Q\(3),
	datac => \PC|Q\(2),
	datad => \aluOp2[5]~0_combout\,
	combout => \aluOp2[16]~21_combout\);

-- Location: LCCOMB_X109_Y56_N0
\arith_logic_unity|Add0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~165_combout\ = \aluOp2[16]~21_combout\ $ (((\control|aluControl[2]~0_combout\) # ((\PC|Q\(4)) # (\PC|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \PC|Q\(4),
	datac => \PC|Q\(5),
	datad => \aluOp2[16]~21_combout\,
	combout => \arith_logic_unity|Add0~165_combout\);

-- Location: LCCOMB_X110_Y56_N2
\arith_logic_unity|Add0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~117_combout\ = (\arith_logic_unity|Add0~164_combout\ & ((\register_file|mux1|Mux14~0_combout\ & (\arith_logic_unity|Add0~116\ & VCC)) # (!\register_file|mux1|Mux14~0_combout\ & (!\arith_logic_unity|Add0~116\)))) # 
-- (!\arith_logic_unity|Add0~164_combout\ & ((\register_file|mux1|Mux14~0_combout\ & (!\arith_logic_unity|Add0~116\)) # (!\register_file|mux1|Mux14~0_combout\ & ((\arith_logic_unity|Add0~116\) # (GND)))))
-- \arith_logic_unity|Add0~118\ = CARRY((\arith_logic_unity|Add0~164_combout\ & (!\register_file|mux1|Mux14~0_combout\ & !\arith_logic_unity|Add0~116\)) # (!\arith_logic_unity|Add0~164_combout\ & ((!\arith_logic_unity|Add0~116\) # 
-- (!\register_file|mux1|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~164_combout\,
	datab => \register_file|mux1|Mux14~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~116\,
	combout => \arith_logic_unity|Add0~117_combout\,
	cout => \arith_logic_unity|Add0~118\);

-- Location: LCCOMB_X110_Y58_N8
\register_file|registers:0:regx|Q~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~221_combout\ = (!\PC|Q\(5) & (\PC|Q\(2) & (\arith_logic_unity|Add0~117_combout\ & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(2),
	datac => \arith_logic_unity|Add0~117_combout\,
	datad => \PC|Q\(4),
	combout => \register_file|registers:0:regx|Q~221_combout\);

-- Location: LCCOMB_X110_Y58_N22
\data_memory|possible_outputs[0][17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][17]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux14~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][17]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][17]~combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \register_file|mux2|Mux14~0_combout\,
	combout => \data_memory|possible_outputs[0][17]~combout\);

-- Location: LCCOMB_X110_Y58_N16
\data_memory|possible_outputs[2][17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][17]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux14~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[2][17]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~1clkctrl_outclk\,
	datac => \data_memory|possible_outputs[2][17]~combout\,
	datad => \register_file|mux2|Mux14~0_combout\,
	combout => \data_memory|possible_outputs[2][17]~combout\);

-- Location: LCCOMB_X110_Y58_N24
\data_memory|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux14~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & (((\arith_logic_unity|Add0~179_combout\) # (\data_memory|possible_outputs[2][17]~combout\)))) # (!\arith_logic_unity|Add0~178_combout\ & (\data_memory|possible_outputs[0][17]~combout\ 
-- & (!\arith_logic_unity|Add0~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][17]~combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \arith_logic_unity|Add0~179_combout\,
	datad => \data_memory|possible_outputs[2][17]~combout\,
	combout => \data_memory|Mux14~0_combout\);

-- Location: LCCOMB_X107_Y58_N8
\data_memory|possible_outputs[3][17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][17]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\register_file|mux2|Mux14~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\data_memory|possible_outputs[3][17]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux14~0_combout\,
	datac => \data_memory|possible_outputs[3][17]~combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][17]~combout\);

-- Location: LCCOMB_X110_Y58_N6
\data_memory|possible_outputs[1][17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][17]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux14~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][17]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][17]~combout\,
	datac => \register_file|mux2|Mux14~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][17]~combout\);

-- Location: LCCOMB_X110_Y58_N10
\data_memory|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux14~1_combout\ = (\data_memory|Mux14~0_combout\ & (((\data_memory|possible_outputs[3][17]~combout\)) # (!\arith_logic_unity|Add0~179_combout\))) # (!\data_memory|Mux14~0_combout\ & (\arith_logic_unity|Add0~179_combout\ & 
-- ((\data_memory|possible_outputs[1][17]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux14~0_combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \data_memory|possible_outputs[3][17]~combout\,
	datad => \data_memory|possible_outputs[1][17]~combout\,
	combout => \data_memory|Mux14~1_combout\);

-- Location: LCCOMB_X110_Y58_N14
\register_file|registers:0:regx|Q~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~200_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux14~1_combout\))) # (!\control|Equal3~1_combout\ & (\register_file|registers:0:regx|Q~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~1_combout\,
	datab => \rst~input_o\,
	datac => \register_file|registers:0:regx|Q~221_combout\,
	datad => \data_memory|Mux14~1_combout\,
	combout => \register_file|registers:0:regx|Q~200_combout\);

-- Location: LCCOMB_X110_Y58_N20
\register_file|registers:0:regx|Q[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[17]~feeder_combout\ = \register_file|registers:0:regx|Q~200_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~200_combout\,
	combout => \register_file|registers:0:regx|Q[17]~feeder_combout\);

-- Location: FF_X110_Y58_N21
\register_file|registers:0:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(17));

-- Location: LCCOMB_X110_Y58_N30
\register_file|mux2|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux14~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(17))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datab => \register_file|registers:0:regx|Q\(17),
	datad => \register_file|registers:1:regx|Q\(17),
	combout => \register_file|mux2|Mux14~0_combout\);

-- Location: LCCOMB_X110_Y58_N28
\aluOp2[17]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[17]~20_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux14~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \register_file|mux2|Mux14~0_combout\,
	datad => \aluOp2[5]~0_combout\,
	combout => \aluOp2[17]~20_combout\);

-- Location: LCCOMB_X110_Y58_N26
\arith_logic_unity|Add0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~164_combout\ = \aluOp2[17]~20_combout\ $ (((\PC|Q\(4)) # ((\PC|Q\(5)) # (\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \control|aluControl[2]~0_combout\,
	datad => \aluOp2[17]~20_combout\,
	combout => \arith_logic_unity|Add0~164_combout\);

-- Location: LCCOMB_X110_Y56_N4
\arith_logic_unity|Add0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~119_combout\ = ((\register_file|mux1|Mux13~0_combout\ $ (\arith_logic_unity|Add0~163_combout\ $ (!\arith_logic_unity|Add0~118\)))) # (GND)
-- \arith_logic_unity|Add0~120\ = CARRY((\register_file|mux1|Mux13~0_combout\ & ((\arith_logic_unity|Add0~163_combout\) # (!\arith_logic_unity|Add0~118\))) # (!\register_file|mux1|Mux13~0_combout\ & (\arith_logic_unity|Add0~163_combout\ & 
-- !\arith_logic_unity|Add0~118\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux13~0_combout\,
	datab => \arith_logic_unity|Add0~163_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~118\,
	combout => \arith_logic_unity|Add0~119_combout\,
	cout => \arith_logic_unity|Add0~120\);

-- Location: LCCOMB_X111_Y56_N14
\register_file|registers:0:regx|Q~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~220_combout\ = (!\PC|Q\(5) & (\PC|Q\(2) & (\arith_logic_unity|Add0~119_combout\ & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(2),
	datac => \arith_logic_unity|Add0~119_combout\,
	datad => \PC|Q\(4),
	combout => \register_file|registers:0:regx|Q~220_combout\);

-- Location: LCCOMB_X112_Y60_N20
\register_file|registers:0:regx|Q~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~199_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & (\data_memory|Mux13~1_combout\)) # (!\control|Equal3~1_combout\ & ((\register_file|registers:0:regx|Q~220_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \control|Equal3~1_combout\,
	datac => \data_memory|Mux13~1_combout\,
	datad => \register_file|registers:0:regx|Q~220_combout\,
	combout => \register_file|registers:0:regx|Q~199_combout\);

-- Location: FF_X112_Y60_N5
\register_file|registers:1:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~199_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(18));

-- Location: LCCOMB_X112_Y60_N2
\register_file|mux1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux13~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(18)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:1:regx|Q\(18),
	datac => \register_file|registers:0:regx|Q\(18),
	combout => \register_file|mux1|Mux13~0_combout\);

-- Location: LCCOMB_X110_Y56_N6
\arith_logic_unity|Add0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~121_combout\ = (\register_file|mux1|Mux12~0_combout\ & ((\arith_logic_unity|Add0~162_combout\ & (\arith_logic_unity|Add0~120\ & VCC)) # (!\arith_logic_unity|Add0~162_combout\ & (!\arith_logic_unity|Add0~120\)))) # 
-- (!\register_file|mux1|Mux12~0_combout\ & ((\arith_logic_unity|Add0~162_combout\ & (!\arith_logic_unity|Add0~120\)) # (!\arith_logic_unity|Add0~162_combout\ & ((\arith_logic_unity|Add0~120\) # (GND)))))
-- \arith_logic_unity|Add0~122\ = CARRY((\register_file|mux1|Mux12~0_combout\ & (!\arith_logic_unity|Add0~162_combout\ & !\arith_logic_unity|Add0~120\)) # (!\register_file|mux1|Mux12~0_combout\ & ((!\arith_logic_unity|Add0~120\) # 
-- (!\arith_logic_unity|Add0~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux12~0_combout\,
	datab => \arith_logic_unity|Add0~162_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~120\,
	combout => \arith_logic_unity|Add0~121_combout\,
	cout => \arith_logic_unity|Add0~122\);

-- Location: LCCOMB_X109_Y58_N28
\register_file|registers:0:regx|Q~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~219_combout\ = (!\PC|Q\(5) & (\arith_logic_unity|Add0~121_combout\ & (\PC|Q\(2) & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \arith_logic_unity|Add0~121_combout\,
	datac => \PC|Q\(2),
	datad => \PC|Q\(4),
	combout => \register_file|registers:0:regx|Q~219_combout\);

-- Location: LCCOMB_X108_Y58_N22
\data_memory|possible_outputs[3][19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][19]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\register_file|mux2|Mux12~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\data_memory|possible_outputs[3][19]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux12~0_combout\,
	datac => \data_memory|possible_outputs[3][19]~combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][19]~combout\);

-- Location: LCCOMB_X109_Y58_N26
\data_memory|possible_outputs[0][19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][19]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux12~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][19]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][19]~combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \register_file|mux2|Mux12~0_combout\,
	combout => \data_memory|possible_outputs[0][19]~combout\);

-- Location: LCCOMB_X109_Y58_N8
\data_memory|possible_outputs[2][19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][19]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux12~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][19]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux12~0_combout\,
	datac => \data_memory|possible_outputs[2][19]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][19]~combout\);

-- Location: LCCOMB_X109_Y58_N16
\data_memory|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux12~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & (\arith_logic_unity|Add0~178_combout\)) # (!\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\ & ((\data_memory|possible_outputs[2][19]~combout\))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (\data_memory|possible_outputs[0][19]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|possible_outputs[0][19]~combout\,
	datad => \data_memory|possible_outputs[2][19]~combout\,
	combout => \data_memory|Mux12~0_combout\);

-- Location: LCCOMB_X109_Y58_N10
\data_memory|possible_outputs[1][19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][19]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux12~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][19]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][19]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux12~0_combout\,
	combout => \data_memory|possible_outputs[1][19]~combout\);

-- Location: LCCOMB_X109_Y58_N30
\data_memory|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux12~1_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\data_memory|Mux12~0_combout\ & (\data_memory|possible_outputs[3][19]~combout\)) # (!\data_memory|Mux12~0_combout\ & ((\data_memory|possible_outputs[1][19]~combout\))))) # 
-- (!\arith_logic_unity|Add0~179_combout\ & (((\data_memory|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \data_memory|possible_outputs[3][19]~combout\,
	datac => \data_memory|Mux12~0_combout\,
	datad => \data_memory|possible_outputs[1][19]~combout\,
	combout => \data_memory|Mux12~1_combout\);

-- Location: LCCOMB_X109_Y58_N24
\register_file|registers:0:regx|Q~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~198_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux12~1_combout\))) # (!\control|Equal3~1_combout\ & (\register_file|registers:0:regx|Q~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~1_combout\,
	datab => \rst~input_o\,
	datac => \register_file|registers:0:regx|Q~219_combout\,
	datad => \data_memory|Mux12~1_combout\,
	combout => \register_file|registers:0:regx|Q~198_combout\);

-- Location: FF_X109_Y58_N5
\register_file|registers:0:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~198_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(19));

-- Location: LCCOMB_X109_Y58_N0
\register_file|mux1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux12~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(19))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(19),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:1:regx|Q\(19),
	combout => \register_file|mux1|Mux12~0_combout\);

-- Location: LCCOMB_X110_Y56_N8
\arith_logic_unity|Add0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~123_combout\ = ((\register_file|mux1|Mux11~0_combout\ $ (\arith_logic_unity|Add0~161_combout\ $ (!\arith_logic_unity|Add0~122\)))) # (GND)
-- \arith_logic_unity|Add0~124\ = CARRY((\register_file|mux1|Mux11~0_combout\ & ((\arith_logic_unity|Add0~161_combout\) # (!\arith_logic_unity|Add0~122\))) # (!\register_file|mux1|Mux11~0_combout\ & (\arith_logic_unity|Add0~161_combout\ & 
-- !\arith_logic_unity|Add0~122\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux11~0_combout\,
	datab => \arith_logic_unity|Add0~161_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~122\,
	combout => \arith_logic_unity|Add0~123_combout\,
	cout => \arith_logic_unity|Add0~124\);

-- Location: LCCOMB_X109_Y60_N26
\register_file|registers:0:regx|Q~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~218_combout\ = (!\PC|Q\(4) & (\PC|Q\(2) & (\arith_logic_unity|Add0~123_combout\ & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(2),
	datac => \arith_logic_unity|Add0~123_combout\,
	datad => \PC|Q\(5),
	combout => \register_file|registers:0:regx|Q~218_combout\);

-- Location: LCCOMB_X108_Y60_N26
\register_file|registers:0:regx|Q~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~197_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & (\data_memory|Mux11~1_combout\)) # (!\control|Equal3~1_combout\ & ((\register_file|registers:0:regx|Q~218_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~1_combout\,
	datab => \rst~input_o\,
	datac => \data_memory|Mux11~1_combout\,
	datad => \register_file|registers:0:regx|Q~218_combout\,
	combout => \register_file|registers:0:regx|Q~197_combout\);

-- Location: LCCOMB_X108_Y60_N4
\register_file|registers:0:regx|Q[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[20]~feeder_combout\ = \register_file|registers:0:regx|Q~197_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~197_combout\,
	combout => \register_file|registers:0:regx|Q[20]~feeder_combout\);

-- Location: FF_X108_Y60_N5
\register_file|registers:0:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(20));

-- Location: LCCOMB_X108_Y60_N16
\register_file|mux1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux11~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(20))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:0:regx|Q\(20),
	datad => \register_file|registers:1:regx|Q\(20),
	combout => \register_file|mux1|Mux11~0_combout\);

-- Location: LCCOMB_X110_Y56_N10
\arith_logic_unity|Add0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~125_combout\ = (\register_file|mux1|Mux10~0_combout\ & ((\arith_logic_unity|Add0~160_combout\ & (\arith_logic_unity|Add0~124\ & VCC)) # (!\arith_logic_unity|Add0~160_combout\ & (!\arith_logic_unity|Add0~124\)))) # 
-- (!\register_file|mux1|Mux10~0_combout\ & ((\arith_logic_unity|Add0~160_combout\ & (!\arith_logic_unity|Add0~124\)) # (!\arith_logic_unity|Add0~160_combout\ & ((\arith_logic_unity|Add0~124\) # (GND)))))
-- \arith_logic_unity|Add0~126\ = CARRY((\register_file|mux1|Mux10~0_combout\ & (!\arith_logic_unity|Add0~160_combout\ & !\arith_logic_unity|Add0~124\)) # (!\register_file|mux1|Mux10~0_combout\ & ((!\arith_logic_unity|Add0~124\) # 
-- (!\arith_logic_unity|Add0~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux10~0_combout\,
	datab => \arith_logic_unity|Add0~160_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~124\,
	combout => \arith_logic_unity|Add0~125_combout\,
	cout => \arith_logic_unity|Add0~126\);

-- Location: LCCOMB_X113_Y60_N6
\register_file|registers:0:regx|Q~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~217_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & (\arith_logic_unity|Add0~125_combout\ & \PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \arith_logic_unity|Add0~125_combout\,
	datad => \PC|Q\(2),
	combout => \register_file|registers:0:regx|Q~217_combout\);

-- Location: LCCOMB_X113_Y60_N26
\register_file|registers:0:regx|Q~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~196_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & (\data_memory|Mux10~1_combout\)) # (!\control|Equal3~1_combout\ & ((\register_file|registers:0:regx|Q~217_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~1_combout\,
	datab => \data_memory|Mux10~1_combout\,
	datac => \register_file|registers:0:regx|Q~217_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~196_combout\);

-- Location: FF_X113_Y60_N11
\register_file|registers:1:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~196_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(21));

-- Location: LCCOMB_X113_Y60_N10
\register_file|mux1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux10~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(21)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(21),
	datad => \register_file|registers:0:regx|Q\(21),
	combout => \register_file|mux1|Mux10~0_combout\);

-- Location: LCCOMB_X110_Y56_N12
\arith_logic_unity|Add0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~127_combout\ = ((\register_file|mux1|Mux9~0_combout\ $ (\arith_logic_unity|Add0~159_combout\ $ (!\arith_logic_unity|Add0~126\)))) # (GND)
-- \arith_logic_unity|Add0~128\ = CARRY((\register_file|mux1|Mux9~0_combout\ & ((\arith_logic_unity|Add0~159_combout\) # (!\arith_logic_unity|Add0~126\))) # (!\register_file|mux1|Mux9~0_combout\ & (\arith_logic_unity|Add0~159_combout\ & 
-- !\arith_logic_unity|Add0~126\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux9~0_combout\,
	datab => \arith_logic_unity|Add0~159_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~126\,
	combout => \arith_logic_unity|Add0~127_combout\,
	cout => \arith_logic_unity|Add0~128\);

-- Location: LCCOMB_X109_Y60_N8
\register_file|registers:0:regx|Q~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~216_combout\ = (!\PC|Q\(5) & (\PC|Q\(2) & (!\PC|Q\(4) & \arith_logic_unity|Add0~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(2),
	datac => \PC|Q\(4),
	datad => \arith_logic_unity|Add0~127_combout\,
	combout => \register_file|registers:0:regx|Q~216_combout\);

-- Location: LCCOMB_X113_Y60_N2
\data_memory|possible_outputs[1][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][22]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux9~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][22]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][22]~combout\,
	datac => \register_file|mux2|Mux9~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][22]~combout\);

-- Location: LCCOMB_X113_Y60_N24
\data_memory|possible_outputs[0][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][22]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux9~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][22]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][22]~combout\,
	datac => \register_file|mux2|Mux9~0_combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][22]~combout\);

-- Location: LCCOMB_X113_Y60_N12
\data_memory|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux9~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & ((\data_memory|possible_outputs[1][22]~combout\) # ((\arith_logic_unity|Add0~178_combout\)))) # (!\arith_logic_unity|Add0~179_combout\ & (((!\arith_logic_unity|Add0~178_combout\ & 
-- \data_memory|possible_outputs[0][22]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \data_memory|possible_outputs[1][22]~combout\,
	datac => \arith_logic_unity|Add0~178_combout\,
	datad => \data_memory|possible_outputs[0][22]~combout\,
	combout => \data_memory|Mux9~0_combout\);

-- Location: LCCOMB_X114_Y60_N12
\data_memory|possible_outputs[2][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][22]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux9~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][22]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~1clkctrl_outclk\,
	datab => \register_file|mux2|Mux9~0_combout\,
	datad => \data_memory|possible_outputs[2][22]~combout\,
	combout => \data_memory|possible_outputs[2][22]~combout\);

-- Location: LCCOMB_X113_Y60_N14
\data_memory|possible_outputs[3][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][22]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux9~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][22]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][22]~combout\,
	datab => \data_memory|Decoder0~5clkctrl_outclk\,
	datac => \register_file|mux2|Mux9~0_combout\,
	combout => \data_memory|possible_outputs[3][22]~combout\);

-- Location: LCCOMB_X113_Y60_N22
\data_memory|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux9~1_combout\ = (\data_memory|Mux9~0_combout\ & (((\data_memory|possible_outputs[3][22]~combout\) # (!\arith_logic_unity|Add0~178_combout\)))) # (!\data_memory|Mux9~0_combout\ & (\data_memory|possible_outputs[2][22]~combout\ & 
-- ((\arith_logic_unity|Add0~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux9~0_combout\,
	datab => \data_memory|possible_outputs[2][22]~combout\,
	datac => \data_memory|possible_outputs[3][22]~combout\,
	datad => \arith_logic_unity|Add0~178_combout\,
	combout => \data_memory|Mux9~1_combout\);

-- Location: LCCOMB_X109_Y60_N4
\register_file|registers:0:regx|Q~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~195_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & ((\data_memory|Mux9~1_combout\))) # (!\control|Equal3~1_combout\ & (\register_file|registers:0:regx|Q~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~216_combout\,
	datab => \control|Equal3~1_combout\,
	datac => \data_memory|Mux9~1_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~195_combout\);

-- Location: FF_X109_Y60_N21
\register_file|registers:0:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~195_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(22));

-- Location: LCCOMB_X109_Y60_N28
\register_file|mux1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux9~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(22))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(22),
	datab => \register_file|registers:1:regx|Q\(22),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux1|Mux9~0_combout\);

-- Location: LCCOMB_X110_Y56_N14
\arith_logic_unity|Add0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~129_combout\ = (\register_file|mux1|Mux8~0_combout\ & ((\arith_logic_unity|Add0~158_combout\ & (\arith_logic_unity|Add0~128\ & VCC)) # (!\arith_logic_unity|Add0~158_combout\ & (!\arith_logic_unity|Add0~128\)))) # 
-- (!\register_file|mux1|Mux8~0_combout\ & ((\arith_logic_unity|Add0~158_combout\ & (!\arith_logic_unity|Add0~128\)) # (!\arith_logic_unity|Add0~158_combout\ & ((\arith_logic_unity|Add0~128\) # (GND)))))
-- \arith_logic_unity|Add0~130\ = CARRY((\register_file|mux1|Mux8~0_combout\ & (!\arith_logic_unity|Add0~158_combout\ & !\arith_logic_unity|Add0~128\)) # (!\register_file|mux1|Mux8~0_combout\ & ((!\arith_logic_unity|Add0~128\) # 
-- (!\arith_logic_unity|Add0~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux8~0_combout\,
	datab => \arith_logic_unity|Add0~158_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~128\,
	combout => \arith_logic_unity|Add0~129_combout\,
	cout => \arith_logic_unity|Add0~130\);

-- Location: LCCOMB_X111_Y56_N12
\register_file|registers:0:regx|Q~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~215_combout\ = (\PC|Q\(2) & (!\PC|Q\(5) & (\arith_logic_unity|Add0~129_combout\ & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(5),
	datac => \arith_logic_unity|Add0~129_combout\,
	datad => \PC|Q\(4),
	combout => \register_file|registers:0:regx|Q~215_combout\);

-- Location: LCCOMB_X111_Y56_N30
\register_file|registers:0:regx|Q~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~194_combout\ = (!\rst~input_o\ & ((\control|Equal3~1_combout\ & (\data_memory|Mux8~1_combout\)) # (!\control|Equal3~1_combout\ & ((\register_file|registers:0:regx|Q~215_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \control|Equal3~1_combout\,
	datac => \data_memory|Mux8~1_combout\,
	datad => \register_file|registers:0:regx|Q~215_combout\,
	combout => \register_file|registers:0:regx|Q~194_combout\);

-- Location: FF_X111_Y56_N19
\register_file|registers:1:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~194_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(23));

-- Location: LCCOMB_X111_Y56_N18
\register_file|mux1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux8~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(23)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(23),
	datad => \register_file|registers:0:regx|Q\(23),
	combout => \register_file|mux1|Mux8~0_combout\);

-- Location: LCCOMB_X110_Y56_N16
\arith_logic_unity|Add0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~131_combout\ = ((\register_file|mux1|Mux7~0_combout\ $ (\arith_logic_unity|Add0~157_combout\ $ (!\arith_logic_unity|Add0~130\)))) # (GND)
-- \arith_logic_unity|Add0~132\ = CARRY((\register_file|mux1|Mux7~0_combout\ & ((\arith_logic_unity|Add0~157_combout\) # (!\arith_logic_unity|Add0~130\))) # (!\register_file|mux1|Mux7~0_combout\ & (\arith_logic_unity|Add0~157_combout\ & 
-- !\arith_logic_unity|Add0~130\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux7~0_combout\,
	datab => \arith_logic_unity|Add0~157_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~130\,
	combout => \arith_logic_unity|Add0~131_combout\,
	cout => \arith_logic_unity|Add0~132\);

-- Location: LCCOMB_X109_Y60_N16
\register_file|registers:0:regx|Q~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~192_combout\ = (\register_file|registers:0:regx|Q~173_combout\ & ((\data_memory|Mux7~1_combout\) # ((\register_file|registers:0:regx|Q~174_combout\ & \arith_logic_unity|Add0~131_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~173_combout\ & (((\register_file|registers:0:regx|Q~174_combout\ & \arith_logic_unity|Add0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~173_combout\,
	datab => \data_memory|Mux7~1_combout\,
	datac => \register_file|registers:0:regx|Q~174_combout\,
	datad => \arith_logic_unity|Add0~131_combout\,
	combout => \register_file|registers:0:regx|Q~192_combout\);

-- Location: LCCOMB_X109_Y60_N2
\register_file|registers:0:regx|Q~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~193_combout\ = (\register_file|registers:0:regx|Q~192_combout\) # ((\register_file|registers:0:regx|Q~171_combout\ & (\register_file|mux1|Mux7~0_combout\ $ (\aluOp2[24]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~171_combout\,
	datab => \register_file|registers:0:regx|Q~192_combout\,
	datac => \register_file|mux1|Mux7~0_combout\,
	datad => \aluOp2[24]~13_combout\,
	combout => \register_file|registers:0:regx|Q~193_combout\);

-- Location: FF_X109_Y60_N23
\register_file|registers:0:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~193_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(24));

-- Location: LCCOMB_X109_Y60_N18
\register_file|mux1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux7~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(24))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:0:regx|Q\(24),
	datad => \register_file|registers:1:regx|Q\(24),
	combout => \register_file|mux1|Mux7~0_combout\);

-- Location: LCCOMB_X110_Y56_N18
\arith_logic_unity|Add0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~133_combout\ = (\register_file|mux1|Mux6~0_combout\ & ((\arith_logic_unity|Add0~156_combout\ & (\arith_logic_unity|Add0~132\ & VCC)) # (!\arith_logic_unity|Add0~156_combout\ & (!\arith_logic_unity|Add0~132\)))) # 
-- (!\register_file|mux1|Mux6~0_combout\ & ((\arith_logic_unity|Add0~156_combout\ & (!\arith_logic_unity|Add0~132\)) # (!\arith_logic_unity|Add0~156_combout\ & ((\arith_logic_unity|Add0~132\) # (GND)))))
-- \arith_logic_unity|Add0~134\ = CARRY((\register_file|mux1|Mux6~0_combout\ & (!\arith_logic_unity|Add0~156_combout\ & !\arith_logic_unity|Add0~132\)) # (!\register_file|mux1|Mux6~0_combout\ & ((!\arith_logic_unity|Add0~132\) # 
-- (!\arith_logic_unity|Add0~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux6~0_combout\,
	datab => \arith_logic_unity|Add0~156_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~132\,
	combout => \arith_logic_unity|Add0~133_combout\,
	cout => \arith_logic_unity|Add0~134\);

-- Location: LCCOMB_X109_Y59_N30
\data_memory|possible_outputs[3][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][25]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\register_file|mux2|Mux6~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\data_memory|possible_outputs[3][25]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][25]~combout\,
	datab => \register_file|mux2|Mux6~0_combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][25]~combout\);

-- Location: LCCOMB_X108_Y59_N30
\data_memory|possible_outputs[0][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][25]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux6~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][25]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][25]~combout\,
	datac => \register_file|mux2|Mux6~0_combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][25]~combout\);

-- Location: LCCOMB_X108_Y59_N28
\data_memory|possible_outputs[2][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][25]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux6~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][25]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux6~0_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[2][25]~combout\,
	combout => \data_memory|possible_outputs[2][25]~combout\);

-- Location: LCCOMB_X108_Y59_N24
\data_memory|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux6~0_combout\ = (\arith_logic_unity|Add0~179_combout\ & (\arith_logic_unity|Add0~178_combout\)) # (!\arith_logic_unity|Add0~179_combout\ & ((\arith_logic_unity|Add0~178_combout\ & ((\data_memory|possible_outputs[2][25]~combout\))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (\data_memory|possible_outputs[0][25]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~179_combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|possible_outputs[0][25]~combout\,
	datad => \data_memory|possible_outputs[2][25]~combout\,
	combout => \data_memory|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y59_N6
\data_memory|possible_outputs[1][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][25]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux6~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][25]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][25]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux6~0_combout\,
	combout => \data_memory|possible_outputs[1][25]~combout\);

-- Location: LCCOMB_X109_Y59_N28
\data_memory|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux6~1_combout\ = (\data_memory|Mux6~0_combout\ & ((\data_memory|possible_outputs[3][25]~combout\) # ((!\arith_logic_unity|Add0~179_combout\)))) # (!\data_memory|Mux6~0_combout\ & (((\arith_logic_unity|Add0~179_combout\ & 
-- \data_memory|possible_outputs[1][25]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][25]~combout\,
	datab => \data_memory|Mux6~0_combout\,
	datac => \arith_logic_unity|Add0~179_combout\,
	datad => \data_memory|possible_outputs[1][25]~combout\,
	combout => \data_memory|Mux6~1_combout\);

-- Location: LCCOMB_X109_Y59_N20
\register_file|registers:0:regx|Q~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~190_combout\ = (\register_file|registers:0:regx|Q~174_combout\ & ((\arith_logic_unity|Add0~133_combout\) # ((\register_file|registers:0:regx|Q~173_combout\ & \data_memory|Mux6~1_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~174_combout\ & (\register_file|registers:0:regx|Q~173_combout\ & ((\data_memory|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~174_combout\,
	datab => \register_file|registers:0:regx|Q~173_combout\,
	datac => \arith_logic_unity|Add0~133_combout\,
	datad => \data_memory|Mux6~1_combout\,
	combout => \register_file|registers:0:regx|Q~190_combout\);

-- Location: LCCOMB_X109_Y59_N10
\register_file|registers:0:regx|Q~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~191_combout\ = (\register_file|registers:0:regx|Q~190_combout\) # ((\register_file|registers:0:regx|Q~171_combout\ & (\register_file|mux1|Mux6~0_combout\ $ (\aluOp2[25]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~190_combout\,
	datab => \register_file|mux1|Mux6~0_combout\,
	datac => \aluOp2[25]~12_combout\,
	datad => \register_file|registers:0:regx|Q~171_combout\,
	combout => \register_file|registers:0:regx|Q~191_combout\);

-- Location: FF_X109_Y59_N31
\register_file|registers:0:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~191_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(25));

-- Location: LCCOMB_X109_Y59_N22
\register_file|mux1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux6~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(25))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(25),
	datad => \register_file|registers:1:regx|Q\(25),
	combout => \register_file|mux1|Mux6~0_combout\);

-- Location: LCCOMB_X110_Y56_N20
\arith_logic_unity|Add0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~135_combout\ = ((\arith_logic_unity|Add0~155_combout\ $ (\register_file|mux1|Mux5~0_combout\ $ (!\arith_logic_unity|Add0~134\)))) # (GND)
-- \arith_logic_unity|Add0~136\ = CARRY((\arith_logic_unity|Add0~155_combout\ & ((\register_file|mux1|Mux5~0_combout\) # (!\arith_logic_unity|Add0~134\))) # (!\arith_logic_unity|Add0~155_combout\ & (\register_file|mux1|Mux5~0_combout\ & 
-- !\arith_logic_unity|Add0~134\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~155_combout\,
	datab => \register_file|mux1|Mux5~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~134\,
	combout => \arith_logic_unity|Add0~135_combout\,
	cout => \arith_logic_unity|Add0~136\);

-- Location: LCCOMB_X111_Y59_N20
\register_file|registers:0:regx|Q~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~188_combout\ = (\register_file|registers:0:regx|Q~174_combout\ & ((\arith_logic_unity|Add0~135_combout\) # ((\data_memory|Mux5~1_combout\ & \register_file|registers:0:regx|Q~173_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~174_combout\ & (\data_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~174_combout\,
	datab => \data_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q~173_combout\,
	datad => \arith_logic_unity|Add0~135_combout\,
	combout => \register_file|registers:0:regx|Q~188_combout\);

-- Location: LCCOMB_X111_Y59_N18
\register_file|registers:0:regx|Q~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~189_combout\ = (\register_file|registers:0:regx|Q~188_combout\) # ((\register_file|registers:0:regx|Q~171_combout\ & (\register_file|mux1|Mux5~0_combout\ $ (\aluOp2[26]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~171_combout\,
	datab => \register_file|registers:0:regx|Q~188_combout\,
	datac => \register_file|mux1|Mux5~0_combout\,
	datad => \aluOp2[26]~11_combout\,
	combout => \register_file|registers:0:regx|Q~189_combout\);

-- Location: FF_X111_Y59_N31
\register_file|registers:0:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~189_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(26));

-- Location: LCCOMB_X111_Y59_N12
\register_file|mux2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux5~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(26))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~0_combout\,
	datac => \register_file|registers:0:regx|Q\(26),
	datad => \register_file|registers:1:regx|Q\(26),
	combout => \register_file|mux2|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y59_N2
\aluOp2[26]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[26]~11_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux5~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[5]~0_combout\,
	datab => \PC|Q\(3),
	datac => \PC|Q\(2),
	datad => \register_file|mux2|Mux5~0_combout\,
	combout => \aluOp2[26]~11_combout\);

-- Location: LCCOMB_X111_Y56_N20
\arith_logic_unity|Add0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~155_combout\ = \aluOp2[26]~11_combout\ $ (((\PC|Q\(5)) # ((\PC|Q\(4)) # (\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \aluOp2[26]~11_combout\,
	datad => \control|aluControl[2]~0_combout\,
	combout => \arith_logic_unity|Add0~155_combout\);

-- Location: LCCOMB_X110_Y56_N22
\arith_logic_unity|Add0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~137_combout\ = (\arith_logic_unity|Add0~154_combout\ & ((\register_file|mux1|Mux4~0_combout\ & (\arith_logic_unity|Add0~136\ & VCC)) # (!\register_file|mux1|Mux4~0_combout\ & (!\arith_logic_unity|Add0~136\)))) # 
-- (!\arith_logic_unity|Add0~154_combout\ & ((\register_file|mux1|Mux4~0_combout\ & (!\arith_logic_unity|Add0~136\)) # (!\register_file|mux1|Mux4~0_combout\ & ((\arith_logic_unity|Add0~136\) # (GND)))))
-- \arith_logic_unity|Add0~138\ = CARRY((\arith_logic_unity|Add0~154_combout\ & (!\register_file|mux1|Mux4~0_combout\ & !\arith_logic_unity|Add0~136\)) # (!\arith_logic_unity|Add0~154_combout\ & ((!\arith_logic_unity|Add0~136\) # 
-- (!\register_file|mux1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~154_combout\,
	datab => \register_file|mux1|Mux4~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~136\,
	combout => \arith_logic_unity|Add0~137_combout\,
	cout => \arith_logic_unity|Add0~138\);

-- Location: LCCOMB_X109_Y59_N12
\register_file|registers:0:regx|Q~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~186_combout\ = (\data_memory|Mux4~1_combout\ & ((\register_file|registers:0:regx|Q~173_combout\) # ((\arith_logic_unity|Add0~137_combout\ & \register_file|registers:0:regx|Q~174_combout\)))) # 
-- (!\data_memory|Mux4~1_combout\ & (((\arith_logic_unity|Add0~137_combout\ & \register_file|registers:0:regx|Q~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux4~1_combout\,
	datab => \register_file|registers:0:regx|Q~173_combout\,
	datac => \arith_logic_unity|Add0~137_combout\,
	datad => \register_file|registers:0:regx|Q~174_combout\,
	combout => \register_file|registers:0:regx|Q~186_combout\);

-- Location: LCCOMB_X109_Y59_N18
\register_file|registers:0:regx|Q~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~187_combout\ = (\register_file|registers:0:regx|Q~186_combout\) # ((\register_file|registers:0:regx|Q~171_combout\ & (\register_file|mux1|Mux4~0_combout\ $ (\aluOp2[27]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~186_combout\,
	datab => \register_file|registers:0:regx|Q~171_combout\,
	datac => \register_file|mux1|Mux4~0_combout\,
	datad => \aluOp2[27]~10_combout\,
	combout => \register_file|registers:0:regx|Q~187_combout\);

-- Location: FF_X109_Y56_N27
\register_file|registers:1:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~187_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(27));

-- Location: LCCOMB_X109_Y56_N12
\register_file|mux2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux4~0_combout\ = (\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:0:regx|Q\(27)))) # (!\instruction_memory|Mux7~0_combout\ & (\register_file|registers:1:regx|Q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(27),
	datab => \register_file|registers:0:regx|Q\(27),
	datad => \instruction_memory|Mux7~0_combout\,
	combout => \register_file|mux2|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y56_N2
\aluOp2[27]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[27]~10_combout\ = (\aluOp2[5]~0_combout\ & (!\PC|Q\(2) & ((\PC|Q\(3)) # (\register_file|mux2|Mux4~0_combout\)))) # (!\aluOp2[5]~0_combout\ & (((\register_file|mux2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \aluOp2[5]~0_combout\,
	datac => \PC|Q\(3),
	datad => \register_file|mux2|Mux4~0_combout\,
	combout => \aluOp2[27]~10_combout\);

-- Location: LCCOMB_X109_Y56_N10
\arith_logic_unity|Add0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~154_combout\ = \aluOp2[27]~10_combout\ $ (((\control|aluControl[2]~0_combout\) # ((\PC|Q\(4)) # (\PC|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \PC|Q\(4),
	datac => \PC|Q\(5),
	datad => \aluOp2[27]~10_combout\,
	combout => \arith_logic_unity|Add0~154_combout\);

-- Location: LCCOMB_X110_Y56_N24
\arith_logic_unity|Add0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~139_combout\ = ((\register_file|mux1|Mux3~0_combout\ $ (\arith_logic_unity|Add0~153_combout\ $ (!\arith_logic_unity|Add0~138\)))) # (GND)
-- \arith_logic_unity|Add0~140\ = CARRY((\register_file|mux1|Mux3~0_combout\ & ((\arith_logic_unity|Add0~153_combout\) # (!\arith_logic_unity|Add0~138\))) # (!\register_file|mux1|Mux3~0_combout\ & (\arith_logic_unity|Add0~153_combout\ & 
-- !\arith_logic_unity|Add0~138\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux3~0_combout\,
	datab => \arith_logic_unity|Add0~153_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~138\,
	combout => \arith_logic_unity|Add0~139_combout\,
	cout => \arith_logic_unity|Add0~140\);

-- Location: LCCOMB_X108_Y56_N0
\register_file|registers:0:regx|Q~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~184_combout\ = (\data_memory|Mux3~1_combout\ & ((\register_file|registers:0:regx|Q~173_combout\) # ((\register_file|registers:0:regx|Q~174_combout\ & \arith_logic_unity|Add0~139_combout\)))) # 
-- (!\data_memory|Mux3~1_combout\ & (\register_file|registers:0:regx|Q~174_combout\ & ((\arith_logic_unity|Add0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux3~1_combout\,
	datab => \register_file|registers:0:regx|Q~174_combout\,
	datac => \register_file|registers:0:regx|Q~173_combout\,
	datad => \arith_logic_unity|Add0~139_combout\,
	combout => \register_file|registers:0:regx|Q~184_combout\);

-- Location: LCCOMB_X108_Y56_N14
\register_file|registers:0:regx|Q~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~185_combout\ = (\register_file|registers:0:regx|Q~184_combout\) # ((\register_file|registers:0:regx|Q~171_combout\ & (\aluOp2[28]~9_combout\ $ (\register_file|mux1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~171_combout\,
	datab => \aluOp2[28]~9_combout\,
	datac => \register_file|mux1|Mux3~0_combout\,
	datad => \register_file|registers:0:regx|Q~184_combout\,
	combout => \register_file|registers:0:regx|Q~185_combout\);

-- Location: FF_X108_Y56_N7
\register_file|registers:0:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~185_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(28));

-- Location: LCCOMB_X108_Y56_N26
\register_file|mux1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux3~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(28))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(28),
	datab => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:1:regx|Q\(28),
	combout => \register_file|mux1|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y56_N26
\arith_logic_unity|Add0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~141_combout\ = (\register_file|mux1|Mux2~0_combout\ & ((\arith_logic_unity|Add0~152_combout\ & (\arith_logic_unity|Add0~140\ & VCC)) # (!\arith_logic_unity|Add0~152_combout\ & (!\arith_logic_unity|Add0~140\)))) # 
-- (!\register_file|mux1|Mux2~0_combout\ & ((\arith_logic_unity|Add0~152_combout\ & (!\arith_logic_unity|Add0~140\)) # (!\arith_logic_unity|Add0~152_combout\ & ((\arith_logic_unity|Add0~140\) # (GND)))))
-- \arith_logic_unity|Add0~142\ = CARRY((\register_file|mux1|Mux2~0_combout\ & (!\arith_logic_unity|Add0~152_combout\ & !\arith_logic_unity|Add0~140\)) # (!\register_file|mux1|Mux2~0_combout\ & ((!\arith_logic_unity|Add0~140\) # 
-- (!\arith_logic_unity|Add0~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux2~0_combout\,
	datab => \arith_logic_unity|Add0~152_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~140\,
	combout => \arith_logic_unity|Add0~141_combout\,
	cout => \arith_logic_unity|Add0~142\);

-- Location: LCCOMB_X112_Y59_N26
\data_memory|possible_outputs[3][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][29]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\register_file|mux2|Mux2~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\data_memory|possible_outputs[3][29]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux2~0_combout\,
	datac => \data_memory|possible_outputs[3][29]~combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][29]~combout\);

-- Location: LCCOMB_X112_Y59_N14
\data_memory|possible_outputs[2][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][29]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux2~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][29]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux2~0_combout\,
	datab => \data_memory|possible_outputs[2][29]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][29]~combout\);

-- Location: LCCOMB_X112_Y59_N12
\data_memory|possible_outputs[0][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][29]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux2~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][29]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][29]~combout\,
	datac => \register_file|mux2|Mux2~0_combout\,
	datad => \data_memory|Decoder0~4clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][29]~combout\);

-- Location: LCCOMB_X112_Y59_N6
\data_memory|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux2~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & ((\arith_logic_unity|Add0~179_combout\) # ((\data_memory|possible_outputs[2][29]~combout\)))) # (!\arith_logic_unity|Add0~178_combout\ & (!\arith_logic_unity|Add0~179_combout\ & 
-- ((\data_memory|possible_outputs[0][29]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \data_memory|possible_outputs[2][29]~combout\,
	datad => \data_memory|possible_outputs[0][29]~combout\,
	combout => \data_memory|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y59_N22
\data_memory|possible_outputs[1][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][29]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux2~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][29]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][29]~combout\,
	datac => \register_file|mux2|Mux2~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][29]~combout\);

-- Location: LCCOMB_X112_Y59_N20
\data_memory|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux2~1_combout\ = (\data_memory|Mux2~0_combout\ & ((\data_memory|possible_outputs[3][29]~combout\) # ((!\arith_logic_unity|Add0~179_combout\)))) # (!\data_memory|Mux2~0_combout\ & (((\arith_logic_unity|Add0~179_combout\ & 
-- \data_memory|possible_outputs[1][29]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][29]~combout\,
	datab => \data_memory|Mux2~0_combout\,
	datac => \arith_logic_unity|Add0~179_combout\,
	datad => \data_memory|possible_outputs[1][29]~combout\,
	combout => \data_memory|Mux2~1_combout\);

-- Location: LCCOMB_X111_Y59_N6
\register_file|registers:0:regx|Q~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~182_combout\ = (\register_file|registers:0:regx|Q~174_combout\ & ((\arith_logic_unity|Add0~141_combout\) # ((\register_file|registers:0:regx|Q~173_combout\ & \data_memory|Mux2~1_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~174_combout\ & (((\register_file|registers:0:regx|Q~173_combout\ & \data_memory|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~174_combout\,
	datab => \arith_logic_unity|Add0~141_combout\,
	datac => \register_file|registers:0:regx|Q~173_combout\,
	datad => \data_memory|Mux2~1_combout\,
	combout => \register_file|registers:0:regx|Q~182_combout\);

-- Location: LCCOMB_X110_Y59_N22
\register_file|registers:0:regx|Q~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~183_combout\ = (\register_file|registers:0:regx|Q~182_combout\) # ((\register_file|registers:0:regx|Q~171_combout\ & (\aluOp2[29]~8_combout\ $ (\register_file|mux1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~182_combout\,
	datab => \register_file|registers:0:regx|Q~171_combout\,
	datac => \aluOp2[29]~8_combout\,
	datad => \register_file|mux1|Mux2~0_combout\,
	combout => \register_file|registers:0:regx|Q~183_combout\);

-- Location: FF_X110_Y59_N15
\register_file|registers:0:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~183_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(29));

-- Location: LCCOMB_X110_Y59_N4
\register_file|mux1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux2~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(29))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(29),
	datad => \register_file|registers:1:regx|Q\(29),
	combout => \register_file|mux1|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y56_N28
\arith_logic_unity|Add0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~143_combout\ = ((\register_file|mux1|Mux1~0_combout\ $ (\arith_logic_unity|Add0~151_combout\ $ (!\arith_logic_unity|Add0~142\)))) # (GND)
-- \arith_logic_unity|Add0~144\ = CARRY((\register_file|mux1|Mux1~0_combout\ & ((\arith_logic_unity|Add0~151_combout\) # (!\arith_logic_unity|Add0~142\))) # (!\register_file|mux1|Mux1~0_combout\ & (\arith_logic_unity|Add0~151_combout\ & 
-- !\arith_logic_unity|Add0~142\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux1~0_combout\,
	datab => \arith_logic_unity|Add0~151_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~142\,
	combout => \arith_logic_unity|Add0~143_combout\,
	cout => \arith_logic_unity|Add0~144\);

-- Location: LCCOMB_X110_Y59_N26
\register_file|registers:0:regx|Q~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~180_combout\ = (\data_memory|Mux1~1_combout\ & ((\register_file|registers:0:regx|Q~173_combout\) # ((\arith_logic_unity|Add0~143_combout\ & \register_file|registers:0:regx|Q~174_combout\)))) # 
-- (!\data_memory|Mux1~1_combout\ & (((\arith_logic_unity|Add0~143_combout\ & \register_file|registers:0:regx|Q~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux1~1_combout\,
	datab => \register_file|registers:0:regx|Q~173_combout\,
	datac => \arith_logic_unity|Add0~143_combout\,
	datad => \register_file|registers:0:regx|Q~174_combout\,
	combout => \register_file|registers:0:regx|Q~180_combout\);

-- Location: LCCOMB_X110_Y59_N16
\register_file|registers:0:regx|Q~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~181_combout\ = (\register_file|registers:0:regx|Q~180_combout\) # ((\register_file|registers:0:regx|Q~171_combout\ & (\register_file|mux1|Mux1~0_combout\ $ (\aluOp2[30]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux1~0_combout\,
	datab => \register_file|registers:0:regx|Q~180_combout\,
	datac => \aluOp2[30]~7_combout\,
	datad => \register_file|registers:0:regx|Q~171_combout\,
	combout => \register_file|registers:0:regx|Q~181_combout\);

-- Location: FF_X110_Y59_N13
\register_file|registers:0:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~181_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(30));

-- Location: LCCOMB_X110_Y59_N20
\register_file|mux1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux1~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(30))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(30),
	datad => \register_file|registers:1:regx|Q\(30),
	combout => \register_file|mux1|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y56_N30
\arith_logic_unity|Add0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~145_combout\ = \arith_logic_unity|Add0~150_combout\ $ (\arith_logic_unity|Add0~144\ $ (\register_file|mux1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arith_logic_unity|Add0~150_combout\,
	datad => \register_file|mux1|Mux0~0_combout\,
	cin => \arith_logic_unity|Add0~144\,
	combout => \arith_logic_unity|Add0~145_combout\);

-- Location: LCCOMB_X108_Y56_N16
\register_file|registers:0:regx|Q~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~178_combout\ = (\register_file|registers:0:regx|Q~173_combout\ & ((\data_memory|Mux0~1_combout\) # ((\register_file|registers:0:regx|Q~174_combout\ & \arith_logic_unity|Add0~145_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~173_combout\ & (\register_file|registers:0:regx|Q~174_combout\ & ((\arith_logic_unity|Add0~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~173_combout\,
	datab => \register_file|registers:0:regx|Q~174_combout\,
	datac => \data_memory|Mux0~1_combout\,
	datad => \arith_logic_unity|Add0~145_combout\,
	combout => \register_file|registers:0:regx|Q~178_combout\);

-- Location: LCCOMB_X108_Y56_N2
\register_file|registers:0:regx|Q~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~179_combout\ = (\register_file|registers:0:regx|Q~178_combout\) # ((\register_file|registers:0:regx|Q~171_combout\ & (\aluOp2[31]~6_combout\ $ (\register_file|mux1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~171_combout\,
	datab => \aluOp2[31]~6_combout\,
	datac => \register_file|registers:0:regx|Q~178_combout\,
	datad => \register_file|mux1|Mux0~0_combout\,
	combout => \register_file|registers:0:regx|Q~179_combout\);

-- Location: FF_X108_Y56_N31
\register_file|registers:0:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~179_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(31));

-- Location: LCCOMB_X108_Y56_N6
\register_file|mux1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux0~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(31))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(31),
	datab => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:1:regx|Q\(31),
	combout => \register_file|mux1|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y61_N20
\aluOp2[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[5]~32_combout\ = (\instruction_memory|Mux5~0_combout\ & (!\PC|Q\(2) & (\aluOp2[5]~0_combout\))) # (!\instruction_memory|Mux5~0_combout\ & (((\register_file|mux2|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \aluOp2[5]~0_combout\,
	datad => \register_file|mux2|Mux26~0_combout\,
	combout => \aluOp2[5]~32_combout\);

-- Location: LCCOMB_X111_Y57_N0
\aluOp2[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[2]~35_combout\ = (\aluOp2[2]~3_combout\) # ((!\instruction_memory|Mux14~0_combout\ & \instruction_memory|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux14~0_combout\,
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \aluOp2[2]~3_combout\,
	combout => \aluOp2[2]~35_combout\);

-- Location: LCCOMB_X110_Y61_N0
\arith_logic_unity|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~1_cout\ = CARRY((!\register_file|mux1|Mux31~0_combout\ & \aluOp2[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux31~0_combout\,
	datab => \aluOp2[0]~5_combout\,
	datad => VCC,
	cout => \arith_logic_unity|LessThan0~1_cout\);

-- Location: LCCOMB_X110_Y61_N2
\arith_logic_unity|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~3_cout\ = CARRY((\register_file|mux1|Mux30~0_combout\ & ((!\arith_logic_unity|LessThan0~1_cout\) # (!\aluOp2[1]~4_combout\))) # (!\register_file|mux1|Mux30~0_combout\ & (!\aluOp2[1]~4_combout\ & 
-- !\arith_logic_unity|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux30~0_combout\,
	datab => \aluOp2[1]~4_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~1_cout\,
	cout => \arith_logic_unity|LessThan0~3_cout\);

-- Location: LCCOMB_X110_Y61_N4
\arith_logic_unity|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~5_cout\ = CARRY((\register_file|mux1|Mux29~0_combout\ & (\aluOp2[2]~35_combout\ & !\arith_logic_unity|LessThan0~3_cout\)) # (!\register_file|mux1|Mux29~0_combout\ & ((\aluOp2[2]~35_combout\) # 
-- (!\arith_logic_unity|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux29~0_combout\,
	datab => \aluOp2[2]~35_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~3_cout\,
	cout => \arith_logic_unity|LessThan0~5_cout\);

-- Location: LCCOMB_X110_Y61_N6
\arith_logic_unity|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~7_cout\ = CARRY((\register_file|mux1|Mux28~0_combout\ & ((!\arith_logic_unity|LessThan0~5_cout\) # (!\aluOp2[3]~1_combout\))) # (!\register_file|mux1|Mux28~0_combout\ & (!\aluOp2[3]~1_combout\ & 
-- !\arith_logic_unity|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux28~0_combout\,
	datab => \aluOp2[3]~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~5_cout\,
	cout => \arith_logic_unity|LessThan0~7_cout\);

-- Location: LCCOMB_X110_Y61_N8
\arith_logic_unity|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~9_cout\ = CARRY((\register_file|mux1|Mux27~0_combout\ & (\aluOp2[4]~34_combout\ & !\arith_logic_unity|LessThan0~7_cout\)) # (!\register_file|mux1|Mux27~0_combout\ & ((\aluOp2[4]~34_combout\) # 
-- (!\arith_logic_unity|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux27~0_combout\,
	datab => \aluOp2[4]~34_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~7_cout\,
	cout => \arith_logic_unity|LessThan0~9_cout\);

-- Location: LCCOMB_X110_Y61_N10
\arith_logic_unity|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~11_cout\ = CARRY((\aluOp2[5]~32_combout\ & (\register_file|mux1|Mux26~0_combout\ & !\arith_logic_unity|LessThan0~9_cout\)) # (!\aluOp2[5]~32_combout\ & ((\register_file|mux1|Mux26~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[5]~32_combout\,
	datab => \register_file|mux1|Mux26~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~9_cout\,
	cout => \arith_logic_unity|LessThan0~11_cout\);

-- Location: LCCOMB_X110_Y61_N12
\arith_logic_unity|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~13_cout\ = CARRY((\aluOp2[6]~31_combout\ & ((!\arith_logic_unity|LessThan0~11_cout\) # (!\register_file|mux1|Mux25~0_combout\))) # (!\aluOp2[6]~31_combout\ & (!\register_file|mux1|Mux25~0_combout\ & 
-- !\arith_logic_unity|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[6]~31_combout\,
	datab => \register_file|mux1|Mux25~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~11_cout\,
	cout => \arith_logic_unity|LessThan0~13_cout\);

-- Location: LCCOMB_X110_Y61_N14
\arith_logic_unity|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~15_cout\ = CARRY((\aluOp2[7]~30_combout\ & (\register_file|mux1|Mux24~0_combout\ & !\arith_logic_unity|LessThan0~13_cout\)) # (!\aluOp2[7]~30_combout\ & ((\register_file|mux1|Mux24~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[7]~30_combout\,
	datab => \register_file|mux1|Mux24~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~13_cout\,
	cout => \arith_logic_unity|LessThan0~15_cout\);

-- Location: LCCOMB_X110_Y61_N16
\arith_logic_unity|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~17_cout\ = CARRY((\aluOp2[8]~29_combout\ & ((!\arith_logic_unity|LessThan0~15_cout\) # (!\register_file|mux1|Mux23~0_combout\))) # (!\aluOp2[8]~29_combout\ & (!\register_file|mux1|Mux23~0_combout\ & 
-- !\arith_logic_unity|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[8]~29_combout\,
	datab => \register_file|mux1|Mux23~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~15_cout\,
	cout => \arith_logic_unity|LessThan0~17_cout\);

-- Location: LCCOMB_X110_Y61_N18
\arith_logic_unity|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~19_cout\ = CARRY((\aluOp2[9]~28_combout\ & (\register_file|mux1|Mux22~0_combout\ & !\arith_logic_unity|LessThan0~17_cout\)) # (!\aluOp2[9]~28_combout\ & ((\register_file|mux1|Mux22~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[9]~28_combout\,
	datab => \register_file|mux1|Mux22~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~17_cout\,
	cout => \arith_logic_unity|LessThan0~19_cout\);

-- Location: LCCOMB_X110_Y61_N20
\arith_logic_unity|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~21_cout\ = CARRY((\register_file|mux1|Mux21~0_combout\ & (\aluOp2[10]~27_combout\ & !\arith_logic_unity|LessThan0~19_cout\)) # (!\register_file|mux1|Mux21~0_combout\ & ((\aluOp2[10]~27_combout\) # 
-- (!\arith_logic_unity|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux21~0_combout\,
	datab => \aluOp2[10]~27_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~19_cout\,
	cout => \arith_logic_unity|LessThan0~21_cout\);

-- Location: LCCOMB_X110_Y61_N22
\arith_logic_unity|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~23_cout\ = CARRY((\register_file|mux1|Mux20~0_combout\ & ((!\arith_logic_unity|LessThan0~21_cout\) # (!\aluOp2[11]~26_combout\))) # (!\register_file|mux1|Mux20~0_combout\ & (!\aluOp2[11]~26_combout\ & 
-- !\arith_logic_unity|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux20~0_combout\,
	datab => \aluOp2[11]~26_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~21_cout\,
	cout => \arith_logic_unity|LessThan0~23_cout\);

-- Location: LCCOMB_X110_Y61_N24
\arith_logic_unity|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~25_cout\ = CARRY((\register_file|mux1|Mux19~0_combout\ & (\aluOp2[12]~25_combout\ & !\arith_logic_unity|LessThan0~23_cout\)) # (!\register_file|mux1|Mux19~0_combout\ & ((\aluOp2[12]~25_combout\) # 
-- (!\arith_logic_unity|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux19~0_combout\,
	datab => \aluOp2[12]~25_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~23_cout\,
	cout => \arith_logic_unity|LessThan0~25_cout\);

-- Location: LCCOMB_X110_Y61_N26
\arith_logic_unity|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~27_cout\ = CARRY((\aluOp2[13]~24_combout\ & (\register_file|mux1|Mux18~0_combout\ & !\arith_logic_unity|LessThan0~25_cout\)) # (!\aluOp2[13]~24_combout\ & ((\register_file|mux1|Mux18~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[13]~24_combout\,
	datab => \register_file|mux1|Mux18~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~25_cout\,
	cout => \arith_logic_unity|LessThan0~27_cout\);

-- Location: LCCOMB_X110_Y61_N28
\arith_logic_unity|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~29_cout\ = CARRY((\register_file|mux1|Mux17~0_combout\ & (\aluOp2[14]~23_combout\ & !\arith_logic_unity|LessThan0~27_cout\)) # (!\register_file|mux1|Mux17~0_combout\ & ((\aluOp2[14]~23_combout\) # 
-- (!\arith_logic_unity|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux17~0_combout\,
	datab => \aluOp2[14]~23_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~27_cout\,
	cout => \arith_logic_unity|LessThan0~29_cout\);

-- Location: LCCOMB_X110_Y61_N30
\arith_logic_unity|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~31_cout\ = CARRY((\register_file|mux1|Mux16~0_combout\ & ((!\arith_logic_unity|LessThan0~29_cout\) # (!\aluOp2[15]~22_combout\))) # (!\register_file|mux1|Mux16~0_combout\ & (!\aluOp2[15]~22_combout\ & 
-- !\arith_logic_unity|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux16~0_combout\,
	datab => \aluOp2[15]~22_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~29_cout\,
	cout => \arith_logic_unity|LessThan0~31_cout\);

-- Location: LCCOMB_X110_Y60_N0
\arith_logic_unity|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~33_cout\ = CARRY((\aluOp2[16]~21_combout\ & ((!\arith_logic_unity|LessThan0~31_cout\) # (!\register_file|mux1|Mux15~0_combout\))) # (!\aluOp2[16]~21_combout\ & (!\register_file|mux1|Mux15~0_combout\ & 
-- !\arith_logic_unity|LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[16]~21_combout\,
	datab => \register_file|mux1|Mux15~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~31_cout\,
	cout => \arith_logic_unity|LessThan0~33_cout\);

-- Location: LCCOMB_X110_Y60_N2
\arith_logic_unity|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~35_cout\ = CARRY((\aluOp2[17]~20_combout\ & (\register_file|mux1|Mux14~0_combout\ & !\arith_logic_unity|LessThan0~33_cout\)) # (!\aluOp2[17]~20_combout\ & ((\register_file|mux1|Mux14~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[17]~20_combout\,
	datab => \register_file|mux1|Mux14~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~33_cout\,
	cout => \arith_logic_unity|LessThan0~35_cout\);

-- Location: LCCOMB_X110_Y60_N4
\arith_logic_unity|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~37_cout\ = CARRY((\register_file|mux1|Mux13~0_combout\ & (\aluOp2[18]~19_combout\ & !\arith_logic_unity|LessThan0~35_cout\)) # (!\register_file|mux1|Mux13~0_combout\ & ((\aluOp2[18]~19_combout\) # 
-- (!\arith_logic_unity|LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux13~0_combout\,
	datab => \aluOp2[18]~19_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~35_cout\,
	cout => \arith_logic_unity|LessThan0~37_cout\);

-- Location: LCCOMB_X110_Y60_N6
\arith_logic_unity|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~39_cout\ = CARRY((\register_file|mux1|Mux12~0_combout\ & ((!\arith_logic_unity|LessThan0~37_cout\) # (!\aluOp2[19]~18_combout\))) # (!\register_file|mux1|Mux12~0_combout\ & (!\aluOp2[19]~18_combout\ & 
-- !\arith_logic_unity|LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux12~0_combout\,
	datab => \aluOp2[19]~18_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~37_cout\,
	cout => \arith_logic_unity|LessThan0~39_cout\);

-- Location: LCCOMB_X110_Y60_N8
\arith_logic_unity|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~41_cout\ = CARRY((\aluOp2[20]~17_combout\ & ((!\arith_logic_unity|LessThan0~39_cout\) # (!\register_file|mux1|Mux11~0_combout\))) # (!\aluOp2[20]~17_combout\ & (!\register_file|mux1|Mux11~0_combout\ & 
-- !\arith_logic_unity|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[20]~17_combout\,
	datab => \register_file|mux1|Mux11~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~39_cout\,
	cout => \arith_logic_unity|LessThan0~41_cout\);

-- Location: LCCOMB_X110_Y60_N10
\arith_logic_unity|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~43_cout\ = CARRY((\aluOp2[21]~16_combout\ & (\register_file|mux1|Mux10~0_combout\ & !\arith_logic_unity|LessThan0~41_cout\)) # (!\aluOp2[21]~16_combout\ & ((\register_file|mux1|Mux10~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[21]~16_combout\,
	datab => \register_file|mux1|Mux10~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~41_cout\,
	cout => \arith_logic_unity|LessThan0~43_cout\);

-- Location: LCCOMB_X110_Y60_N12
\arith_logic_unity|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~45_cout\ = CARRY((\aluOp2[22]~15_combout\ & ((!\arith_logic_unity|LessThan0~43_cout\) # (!\register_file|mux1|Mux9~0_combout\))) # (!\aluOp2[22]~15_combout\ & (!\register_file|mux1|Mux9~0_combout\ & 
-- !\arith_logic_unity|LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[22]~15_combout\,
	datab => \register_file|mux1|Mux9~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~43_cout\,
	cout => \arith_logic_unity|LessThan0~45_cout\);

-- Location: LCCOMB_X110_Y60_N14
\arith_logic_unity|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~47_cout\ = CARRY((\register_file|mux1|Mux8~0_combout\ & ((!\arith_logic_unity|LessThan0~45_cout\) # (!\aluOp2[23]~14_combout\))) # (!\register_file|mux1|Mux8~0_combout\ & (!\aluOp2[23]~14_combout\ & 
-- !\arith_logic_unity|LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux8~0_combout\,
	datab => \aluOp2[23]~14_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~45_cout\,
	cout => \arith_logic_unity|LessThan0~47_cout\);

-- Location: LCCOMB_X110_Y60_N16
\arith_logic_unity|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~49_cout\ = CARRY((\aluOp2[24]~13_combout\ & ((!\arith_logic_unity|LessThan0~47_cout\) # (!\register_file|mux1|Mux7~0_combout\))) # (!\aluOp2[24]~13_combout\ & (!\register_file|mux1|Mux7~0_combout\ & 
-- !\arith_logic_unity|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[24]~13_combout\,
	datab => \register_file|mux1|Mux7~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~47_cout\,
	cout => \arith_logic_unity|LessThan0~49_cout\);

-- Location: LCCOMB_X110_Y60_N18
\arith_logic_unity|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~51_cout\ = CARRY((\aluOp2[25]~12_combout\ & (\register_file|mux1|Mux6~0_combout\ & !\arith_logic_unity|LessThan0~49_cout\)) # (!\aluOp2[25]~12_combout\ & ((\register_file|mux1|Mux6~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[25]~12_combout\,
	datab => \register_file|mux1|Mux6~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~49_cout\,
	cout => \arith_logic_unity|LessThan0~51_cout\);

-- Location: LCCOMB_X110_Y60_N20
\arith_logic_unity|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~53_cout\ = CARRY((\register_file|mux1|Mux5~0_combout\ & (\aluOp2[26]~11_combout\ & !\arith_logic_unity|LessThan0~51_cout\)) # (!\register_file|mux1|Mux5~0_combout\ & ((\aluOp2[26]~11_combout\) # 
-- (!\arith_logic_unity|LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux5~0_combout\,
	datab => \aluOp2[26]~11_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~51_cout\,
	cout => \arith_logic_unity|LessThan0~53_cout\);

-- Location: LCCOMB_X110_Y60_N22
\arith_logic_unity|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~55_cout\ = CARRY((\aluOp2[27]~10_combout\ & (\register_file|mux1|Mux4~0_combout\ & !\arith_logic_unity|LessThan0~53_cout\)) # (!\aluOp2[27]~10_combout\ & ((\register_file|mux1|Mux4~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[27]~10_combout\,
	datab => \register_file|mux1|Mux4~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~53_cout\,
	cout => \arith_logic_unity|LessThan0~55_cout\);

-- Location: LCCOMB_X110_Y60_N24
\arith_logic_unity|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~57_cout\ = CARRY((\aluOp2[28]~9_combout\ & ((!\arith_logic_unity|LessThan0~55_cout\) # (!\register_file|mux1|Mux3~0_combout\))) # (!\aluOp2[28]~9_combout\ & (!\register_file|mux1|Mux3~0_combout\ & 
-- !\arith_logic_unity|LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[28]~9_combout\,
	datab => \register_file|mux1|Mux3~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~55_cout\,
	cout => \arith_logic_unity|LessThan0~57_cout\);

-- Location: LCCOMB_X110_Y60_N26
\arith_logic_unity|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~59_cout\ = CARRY((\register_file|mux1|Mux2~0_combout\ & ((!\arith_logic_unity|LessThan0~57_cout\) # (!\aluOp2[29]~8_combout\))) # (!\register_file|mux1|Mux2~0_combout\ & (!\aluOp2[29]~8_combout\ & 
-- !\arith_logic_unity|LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux2~0_combout\,
	datab => \aluOp2[29]~8_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~57_cout\,
	cout => \arith_logic_unity|LessThan0~59_cout\);

-- Location: LCCOMB_X110_Y60_N28
\arith_logic_unity|LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~61_cout\ = CARRY((\register_file|mux1|Mux1~0_combout\ & (\aluOp2[30]~7_combout\ & !\arith_logic_unity|LessThan0~59_cout\)) # (!\register_file|mux1|Mux1~0_combout\ & ((\aluOp2[30]~7_combout\) # 
-- (!\arith_logic_unity|LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux1~0_combout\,
	datab => \aluOp2[30]~7_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~59_cout\,
	cout => \arith_logic_unity|LessThan0~61_cout\);

-- Location: LCCOMB_X110_Y60_N30
\arith_logic_unity|LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~62_combout\ = (\register_file|mux1|Mux0~0_combout\ & (\arith_logic_unity|LessThan0~61_cout\ & \aluOp2[31]~6_combout\)) # (!\register_file|mux1|Mux0~0_combout\ & ((\arith_logic_unity|LessThan0~61_cout\) # 
-- (\aluOp2[31]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux0~0_combout\,
	datad => \aluOp2[31]~6_combout\,
	cin => \arith_logic_unity|LessThan0~61_cout\,
	combout => \arith_logic_unity|LessThan0~62_combout\);

-- Location: LCCOMB_X111_Y60_N8
\register_file|registers:0:regx|Q~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~176_combout\ = (\register_file|registers:0:regx|Q~175_combout\) # ((\register_file|registers:0:regx|Q~172_combout\ & (!\control|Equal3~1_combout\ & \arith_logic_unity|LessThan0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~172_combout\,
	datab => \control|Equal3~1_combout\,
	datac => \register_file|registers:0:regx|Q~175_combout\,
	datad => \arith_logic_unity|LessThan0~62_combout\,
	combout => \register_file|registers:0:regx|Q~176_combout\);

-- Location: LCCOMB_X111_Y60_N28
\register_file|registers:0:regx|Q~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~177_combout\ = (\register_file|registers:0:regx|Q~176_combout\) # ((\register_file|registers:0:regx|Q~171_combout\ & (\aluOp2[0]~5_combout\ $ (\register_file|mux1|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[0]~5_combout\,
	datab => \register_file|registers:0:regx|Q~176_combout\,
	datac => \register_file|mux1|Mux31~0_combout\,
	datad => \register_file|registers:0:regx|Q~171_combout\,
	combout => \register_file|registers:0:regx|Q~177_combout\);

-- Location: FF_X111_Y60_N5
\register_file|registers:0:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(0),
	asdata => \register_file|registers:0:regx|Q~177_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(0));

-- Location: LCCOMB_X112_Y60_N4
\register_file|mux2|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux31~0_combout\ = (\instruction_memory|Mux7~0_combout\ & (\register_file|registers:0:regx|Q\(0))) # (!\instruction_memory|Mux7~0_combout\ & ((\register_file|registers:1:regx|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(0),
	datab => \register_file|registers:1:regx|Q\(0),
	datad => \instruction_memory|Mux7~0_combout\,
	combout => \register_file|mux2|Mux31~0_combout\);

-- Location: LCCOMB_X111_Y60_N6
\data_memory|possible_outputs[3][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][0]~combout\ = (GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & (\register_file|mux2|Mux31~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~5clkctrl_outclk\) & ((\data_memory|possible_outputs[3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux31~0_combout\,
	datac => \data_memory|possible_outputs[3][0]~combout\,
	datad => \data_memory|Decoder0~5clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][0]~combout\);

-- Location: LCCOMB_X111_Y60_N14
\data_memory|possible_outputs[1][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][0]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux31~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][0]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux31~0_combout\,
	combout => \data_memory|possible_outputs[1][0]~combout\);

-- Location: LCCOMB_X111_Y60_N0
\data_memory|possible_outputs[0][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][0]~combout\ = (GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & ((\register_file|mux2|Mux31~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~4clkctrl_outclk\) & (\data_memory|possible_outputs[0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][0]~combout\,
	datac => \data_memory|Decoder0~4clkctrl_outclk\,
	datad => \register_file|mux2|Mux31~0_combout\,
	combout => \data_memory|possible_outputs[0][0]~combout\);

-- Location: LCCOMB_X111_Y60_N12
\data_memory|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux31~0_combout\ = (\arith_logic_unity|Add0~178_combout\ & (\arith_logic_unity|Add0~179_combout\)) # (!\arith_logic_unity|Add0~178_combout\ & ((\arith_logic_unity|Add0~179_combout\ & (\data_memory|possible_outputs[1][0]~combout\)) # 
-- (!\arith_logic_unity|Add0~179_combout\ & ((\data_memory|possible_outputs[0][0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~178_combout\,
	datab => \arith_logic_unity|Add0~179_combout\,
	datac => \data_memory|possible_outputs[1][0]~combout\,
	datad => \data_memory|possible_outputs[0][0]~combout\,
	combout => \data_memory|Mux31~0_combout\);

-- Location: LCCOMB_X112_Y60_N22
\data_memory|possible_outputs[2][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][0]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux31~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux31~0_combout\,
	datac => \data_memory|possible_outputs[2][0]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][0]~combout\);

-- Location: LCCOMB_X111_Y60_N2
\data_memory|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux31~1_combout\ = (\arith_logic_unity|Add0~178_combout\ & ((\data_memory|Mux31~0_combout\ & (\data_memory|possible_outputs[3][0]~combout\)) # (!\data_memory|Mux31~0_combout\ & ((\data_memory|possible_outputs[2][0]~combout\))))) # 
-- (!\arith_logic_unity|Add0~178_combout\ & (((\data_memory|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][0]~combout\,
	datab => \arith_logic_unity|Add0~178_combout\,
	datac => \data_memory|Mux31~0_combout\,
	datad => \data_memory|possible_outputs[2][0]~combout\,
	combout => \data_memory|Mux31~1_combout\);

-- Location: LCCOMB_X112_Y54_N10
\pc_incremented[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[6]~8_combout\ = (\PC|Q\(6) & (\pc_incremented[5]~7\ $ (GND))) # (!\PC|Q\(6) & (!\pc_incremented[5]~7\ & VCC))
-- \pc_incremented[6]~9\ = CARRY((\PC|Q\(6) & !\pc_incremented[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(6),
	datad => VCC,
	cin => \pc_incremented[5]~7\,
	combout => \pc_incremented[6]~8_combout\,
	cout => \pc_incremented[6]~9\);

-- Location: LCCOMB_X113_Y54_N20
\PC|Q~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~66_combout\ = (!\PC|Q\(5) & (\pc_incremented[6]~8_combout\ & !\PC|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \pc_incremented[6]~8_combout\,
	datac => \PC|Q\(4),
	combout => \PC|Q~66_combout\);

-- Location: FF_X113_Y54_N21
\PC|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~66_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(6));

-- Location: LCCOMB_X112_Y54_N12
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

-- Location: LCCOMB_X113_Y54_N2
\PC|Q~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~67_combout\ = (\pc_incremented[7]~10_combout\ & (!\PC|Q\(4) & !\PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[7]~10_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \PC|Q~67_combout\);

-- Location: FF_X113_Y54_N3
\PC|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~67_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(7));

-- Location: LCCOMB_X112_Y54_N14
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

-- Location: LCCOMB_X113_Y54_N6
\PC|Q~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~68_combout\ = (\pc_incremented[8]~12_combout\ & (!\PC|Q\(5) & (!\rst~input_o\ & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[8]~12_combout\,
	datab => \PC|Q\(5),
	datac => \rst~input_o\,
	datad => \PC|Q\(4),
	combout => \PC|Q~68_combout\);

-- Location: FF_X113_Y54_N7
\PC|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(8));

-- Location: LCCOMB_X112_Y54_N16
\pc_incremented[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[9]~14_combout\ = (\PC|Q\(9) & (!\pc_incremented[8]~13\)) # (!\PC|Q\(9) & ((\pc_incremented[8]~13\) # (GND)))
-- \pc_incremented[9]~15\ = CARRY((!\pc_incremented[8]~13\) # (!\PC|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(9),
	datad => VCC,
	cin => \pc_incremented[8]~13\,
	combout => \pc_incremented[9]~14_combout\,
	cout => \pc_incremented[9]~15\);

-- Location: LCCOMB_X113_Y54_N4
\PC|Q~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~69_combout\ = (!\rst~input_o\ & (!\PC|Q\(5) & (\pc_incremented[9]~14_combout\ & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \PC|Q\(5),
	datac => \pc_incremented[9]~14_combout\,
	datad => \PC|Q\(4),
	combout => \PC|Q~69_combout\);

-- Location: FF_X113_Y54_N5
\PC|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(9));

-- Location: LCCOMB_X112_Y54_N18
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

-- Location: LCCOMB_X113_Y54_N30
\PC|Q~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~70_combout\ = (!\PC|Q\(4) & (\pc_incremented[10]~16_combout\ & (!\rst~input_o\ & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \pc_incremented[10]~16_combout\,
	datac => \rst~input_o\,
	datad => \PC|Q\(5),
	combout => \PC|Q~70_combout\);

-- Location: FF_X113_Y54_N31
\PC|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(10));

-- Location: LCCOMB_X112_Y54_N20
\pc_incremented[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[11]~18_combout\ = (\PC|Q\(11) & (!\pc_incremented[10]~17\)) # (!\PC|Q\(11) & ((\pc_incremented[10]~17\) # (GND)))
-- \pc_incremented[11]~19\ = CARRY((!\pc_incremented[10]~17\) # (!\PC|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(11),
	datad => VCC,
	cin => \pc_incremented[10]~17\,
	combout => \pc_incremented[11]~18_combout\,
	cout => \pc_incremented[11]~19\);

-- Location: LCCOMB_X113_Y54_N12
\PC|Q~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~71_combout\ = (\pc_incremented[11]~18_combout\ & (!\PC|Q\(4) & !\PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[11]~18_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \PC|Q~71_combout\);

-- Location: FF_X113_Y54_N13
\PC|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~71_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(11));

-- Location: LCCOMB_X112_Y54_N22
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

-- Location: LCCOMB_X113_Y54_N0
\PC|Q~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~72_combout\ = (\pc_incremented[12]~20_combout\ & (!\PC|Q\(5) & (!\rst~input_o\ & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[12]~20_combout\,
	datab => \PC|Q\(5),
	datac => \rst~input_o\,
	datad => \PC|Q\(4),
	combout => \PC|Q~72_combout\);

-- Location: FF_X113_Y54_N1
\PC|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(12));

-- Location: LCCOMB_X112_Y54_N24
\pc_incremented[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[13]~22_combout\ = (\PC|Q\(13) & (!\pc_incremented[12]~21\)) # (!\PC|Q\(13) & ((\pc_incremented[12]~21\) # (GND)))
-- \pc_incremented[13]~23\ = CARRY((!\pc_incremented[12]~21\) # (!\PC|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(13),
	datad => VCC,
	cin => \pc_incremented[12]~21\,
	combout => \pc_incremented[13]~22_combout\,
	cout => \pc_incremented[13]~23\);

-- Location: LCCOMB_X113_Y54_N14
\PC|Q~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~73_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & \pc_incremented[13]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \pc_incremented[13]~22_combout\,
	combout => \PC|Q~73_combout\);

-- Location: FF_X113_Y54_N15
\PC|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~73_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(13));

-- Location: LCCOMB_X112_Y54_N26
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

-- Location: LCCOMB_X113_Y54_N8
\PC|Q~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~74_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & \pc_incremented[14]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \pc_incremented[14]~24_combout\,
	combout => \PC|Q~74_combout\);

-- Location: FF_X113_Y54_N9
\PC|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~74_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(14));

-- Location: LCCOMB_X112_Y54_N28
\pc_incremented[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[15]~26_combout\ = (\PC|Q\(15) & (!\pc_incremented[14]~25\)) # (!\PC|Q\(15) & ((\pc_incremented[14]~25\) # (GND)))
-- \pc_incremented[15]~27\ = CARRY((!\pc_incremented[14]~25\) # (!\PC|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(15),
	datad => VCC,
	cin => \pc_incremented[14]~25\,
	combout => \pc_incremented[15]~26_combout\,
	cout => \pc_incremented[15]~27\);

-- Location: LCCOMB_X113_Y54_N26
\PC|Q~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~75_combout\ = (\pc_incremented[15]~26_combout\ & (!\PC|Q\(5) & (!\rst~input_o\ & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[15]~26_combout\,
	datab => \PC|Q\(5),
	datac => \rst~input_o\,
	datad => \PC|Q\(4),
	combout => \PC|Q~75_combout\);

-- Location: FF_X113_Y54_N27
\PC|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(15));

-- Location: LCCOMB_X112_Y54_N30
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

-- Location: LCCOMB_X112_Y54_N0
\PC|Q~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~76_combout\ = (\pc_incremented[16]~28_combout\ & (!\PC|Q\(5) & (!\rst~input_o\ & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[16]~28_combout\,
	datab => \PC|Q\(5),
	datac => \rst~input_o\,
	datad => \PC|Q\(4),
	combout => \PC|Q~76_combout\);

-- Location: FF_X112_Y54_N1
\PC|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(16));

-- Location: LCCOMB_X112_Y53_N0
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

-- Location: LCCOMB_X113_Y53_N4
\PC|Q~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~77_combout\ = (\pc_incremented[17]~30_combout\ & (!\PC|Q\(4) & !\PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[17]~30_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \PC|Q~77_combout\);

-- Location: FF_X113_Y53_N5
\PC|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~77_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(17));

-- Location: LCCOMB_X112_Y53_N2
\pc_incremented[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[18]~32_combout\ = (\PC|Q\(18) & (\pc_incremented[17]~31\ $ (GND))) # (!\PC|Q\(18) & (!\pc_incremented[17]~31\ & VCC))
-- \pc_incremented[18]~33\ = CARRY((\PC|Q\(18) & !\pc_incremented[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(18),
	datad => VCC,
	cin => \pc_incremented[17]~31\,
	combout => \pc_incremented[18]~32_combout\,
	cout => \pc_incremented[18]~33\);

-- Location: LCCOMB_X113_Y53_N2
\PC|Q~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~78_combout\ = (\pc_incremented[18]~32_combout\ & (!\PC|Q\(4) & !\PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[18]~32_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \PC|Q~78_combout\);

-- Location: FF_X113_Y53_N3
\PC|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~78_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(18));

-- Location: LCCOMB_X112_Y53_N4
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

-- Location: LCCOMB_X113_Y53_N6
\PC|Q~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~79_combout\ = (!\rst~input_o\ & (!\PC|Q\(4) & (\pc_incremented[19]~34_combout\ & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \PC|Q\(4),
	datac => \pc_incremented[19]~34_combout\,
	datad => \PC|Q\(5),
	combout => \PC|Q~79_combout\);

-- Location: FF_X113_Y53_N7
\PC|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(19));

-- Location: LCCOMB_X112_Y53_N6
\pc_incremented[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[20]~36_combout\ = (\PC|Q\(20) & (\pc_incremented[19]~35\ $ (GND))) # (!\PC|Q\(20) & (!\pc_incremented[19]~35\ & VCC))
-- \pc_incremented[20]~37\ = CARRY((\PC|Q\(20) & !\pc_incremented[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(20),
	datad => VCC,
	cin => \pc_incremented[19]~35\,
	combout => \pc_incremented[20]~36_combout\,
	cout => \pc_incremented[20]~37\);

-- Location: LCCOMB_X113_Y53_N8
\PC|Q~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~80_combout\ = (!\rst~input_o\ & (!\PC|Q\(5) & (!\PC|Q\(4) & \pc_incremented[20]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \pc_incremented[20]~36_combout\,
	combout => \PC|Q~80_combout\);

-- Location: FF_X113_Y53_N9
\PC|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(20));

-- Location: LCCOMB_X112_Y53_N8
\pc_incremented[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[21]~38_combout\ = (\PC|Q\(21) & (!\pc_incremented[20]~37\)) # (!\PC|Q\(21) & ((\pc_incremented[20]~37\) # (GND)))
-- \pc_incremented[21]~39\ = CARRY((!\pc_incremented[20]~37\) # (!\PC|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(21),
	datad => VCC,
	cin => \pc_incremented[20]~37\,
	combout => \pc_incremented[21]~38_combout\,
	cout => \pc_incremented[21]~39\);

-- Location: LCCOMB_X113_Y53_N22
\PC|Q~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~81_combout\ = (!\rst~input_o\ & (\pc_incremented[21]~38_combout\ & (!\PC|Q\(4) & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \pc_incremented[21]~38_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \PC|Q~81_combout\);

-- Location: FF_X113_Y53_N23
\PC|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(21));

-- Location: LCCOMB_X112_Y53_N10
\pc_incremented[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[22]~40_combout\ = (\PC|Q\(22) & (\pc_incremented[21]~39\ $ (GND))) # (!\PC|Q\(22) & (!\pc_incremented[21]~39\ & VCC))
-- \pc_incremented[22]~41\ = CARRY((\PC|Q\(22) & !\pc_incremented[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(22),
	datad => VCC,
	cin => \pc_incremented[21]~39\,
	combout => \pc_incremented[22]~40_combout\,
	cout => \pc_incremented[22]~41\);

-- Location: LCCOMB_X113_Y53_N12
\PC|Q~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~82_combout\ = (\pc_incremented[22]~40_combout\ & (!\PC|Q\(4) & (!\rst~input_o\ & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[22]~40_combout\,
	datab => \PC|Q\(4),
	datac => \rst~input_o\,
	datad => \PC|Q\(5),
	combout => \PC|Q~82_combout\);

-- Location: FF_X113_Y53_N13
\PC|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(22));

-- Location: LCCOMB_X112_Y53_N12
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

-- Location: LCCOMB_X113_Y53_N0
\PC|Q~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~83_combout\ = (\PC|Q\(5) & (((!\instruction_memory|Mux6~0_combout\)))) # (!\PC|Q\(5) & ((\PC|Q\(4) & ((!\instruction_memory|Mux6~0_combout\))) # (!\PC|Q\(4) & (\pc_incremented[23]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \pc_incremented[23]~42_combout\,
	datac => \PC|Q\(4),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \PC|Q~83_combout\);

-- Location: FF_X113_Y53_N1
\PC|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~83_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(23));

-- Location: LCCOMB_X112_Y53_N14
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

-- Location: LCCOMB_X113_Y53_N18
\PC|Q~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~84_combout\ = (!\rst~input_o\ & (!\PC|Q\(4) & (\pc_incremented[24]~44_combout\ & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \PC|Q\(4),
	datac => \pc_incremented[24]~44_combout\,
	datad => \PC|Q\(5),
	combout => \PC|Q~84_combout\);

-- Location: FF_X113_Y53_N19
\PC|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(24));

-- Location: LCCOMB_X112_Y53_N16
\pc_incremented[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[25]~46_combout\ = (\PC|Q\(25) & (!\pc_incremented[24]~45\)) # (!\PC|Q\(25) & ((\pc_incremented[24]~45\) # (GND)))
-- \pc_incremented[25]~47\ = CARRY((!\pc_incremented[24]~45\) # (!\PC|Q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(25),
	datad => VCC,
	cin => \pc_incremented[24]~45\,
	combout => \pc_incremented[25]~46_combout\,
	cout => \pc_incremented[25]~47\);

-- Location: LCCOMB_X113_Y53_N24
\PC|Q~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~85_combout\ = (\pc_incremented[25]~46_combout\ & (!\PC|Q\(4) & (!\rst~input_o\ & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[25]~46_combout\,
	datab => \PC|Q\(4),
	datac => \rst~input_o\,
	datad => \PC|Q\(5),
	combout => \PC|Q~85_combout\);

-- Location: FF_X113_Y53_N25
\PC|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(25));

-- Location: LCCOMB_X112_Y53_N18
\pc_incremented[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[26]~48_combout\ = (\PC|Q\(26) & (\pc_incremented[25]~47\ $ (GND))) # (!\PC|Q\(26) & (!\pc_incremented[25]~47\ & VCC))
-- \pc_incremented[26]~49\ = CARRY((\PC|Q\(26) & !\pc_incremented[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(26),
	datad => VCC,
	cin => \pc_incremented[25]~47\,
	combout => \pc_incremented[26]~48_combout\,
	cout => \pc_incremented[26]~49\);

-- Location: LCCOMB_X113_Y53_N30
\PC|Q~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~86_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & (!\rst~input_o\ & \pc_incremented[26]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \rst~input_o\,
	datad => \pc_incremented[26]~48_combout\,
	combout => \PC|Q~86_combout\);

-- Location: FF_X113_Y53_N31
\PC|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(26));

-- Location: LCCOMB_X112_Y53_N20
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

-- Location: LCCOMB_X113_Y53_N20
\PC|Q~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~87_combout\ = (!\rst~input_o\ & (\pc_incremented[27]~50_combout\ & (!\PC|Q\(4) & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \pc_incremented[27]~50_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \PC|Q~87_combout\);

-- Location: FF_X113_Y53_N21
\PC|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(27));

-- Location: LCCOMB_X112_Y53_N22
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

-- Location: LCCOMB_X111_Y53_N16
\PC|Q~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~59_combout\ = (!\rst~input_o\ & \pc_incremented[28]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \pc_incremented[28]~52_combout\,
	combout => \PC|Q~59_combout\);

-- Location: LCCOMB_X111_Y53_N18
\PC|Q[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q[28]~88_combout\ = (\rst~input_o\) # ((\instruction_memory|Mux5~0_combout\) # ((!\PC|Q\(5) & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \PC|Q\(5),
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \PC|Q\(4),
	combout => \PC|Q[28]~88_combout\);

-- Location: FF_X111_Y53_N17
\PC|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~59_combout\,
	ena => \PC|Q[28]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(28));

-- Location: LCCOMB_X112_Y53_N24
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

-- Location: LCCOMB_X111_Y53_N10
\PC|Q~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~60_combout\ = (!\rst~input_o\ & \pc_incremented[29]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \pc_incremented[29]~54_combout\,
	combout => \PC|Q~60_combout\);

-- Location: FF_X111_Y53_N11
\PC|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~60_combout\,
	ena => \PC|Q[28]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(29));

-- Location: LCCOMB_X112_Y53_N26
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

-- Location: LCCOMB_X111_Y53_N28
\PC|Q~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~61_combout\ = (!\rst~input_o\ & \pc_incremented[30]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \pc_incremented[30]~56_combout\,
	combout => \PC|Q~61_combout\);

-- Location: FF_X111_Y53_N29
\PC|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~61_combout\,
	ena => \PC|Q[28]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(30));

-- Location: LCCOMB_X112_Y53_N28
\pc_incremented[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[31]~58_combout\ = \PC|Q\(31) $ (\pc_incremented[30]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(31),
	cin => \pc_incremented[30]~57\,
	combout => \pc_incremented[31]~58_combout\);

-- Location: LCCOMB_X112_Y53_N30
\PC|Q~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~62_combout\ = (\pc_incremented[31]~58_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_incremented[31]~58_combout\,
	datad => \rst~input_o\,
	combout => \PC|Q~62_combout\);

-- Location: FF_X112_Y53_N31
\PC|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~62_combout\,
	ena => \PC|Q[28]~88_combout\,
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


