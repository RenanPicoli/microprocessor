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

-- DATE "12/28/2018 13:51:05"

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
	instruction_addr : OUT std_logic_vector(31 DOWNTO 0)
	);
END microprocessor;

-- Design Ports Information
-- data_memory_output[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[4]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[5]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[6]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[7]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[8]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[9]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[10]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[11]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[12]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[13]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[14]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[15]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[16]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[17]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[18]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[19]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[20]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[21]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[22]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[23]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[24]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[25]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[26]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[27]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[28]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[29]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[30]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[31]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[0]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[1]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[4]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[8]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[9]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[10]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[11]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[12]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[13]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[14]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[15]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[16]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[17]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[18]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[19]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[20]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[21]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[22]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[23]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[24]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[25]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[26]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[27]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[28]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[29]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[30]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[31]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \data_memory|Decoder0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_memory|Decoder0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_memory|Decoder0~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_memory|Decoder0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \pc_incremented[2]~1\ : std_logic;
SIGNAL \pc_incremented[3]~2_combout\ : std_logic;
SIGNAL \PC|Q~58_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \instruction_memory|Mux9~0_combout\ : std_logic;
SIGNAL \pc_incremented[3]~3\ : std_logic;
SIGNAL \pc_incremented[4]~4_combout\ : std_logic;
SIGNAL \PC|Q~59_combout\ : std_logic;
SIGNAL \pc_incremented[4]~5\ : std_logic;
SIGNAL \pc_incremented[5]~6_combout\ : std_logic;
SIGNAL \PC|Q~60_combout\ : std_logic;
SIGNAL \pc_incremented[2]~0_combout\ : std_logic;
SIGNAL \PC|Q~57_combout\ : std_logic;
SIGNAL \control|aluSrc~0_combout\ : std_logic;
SIGNAL \control|aluControl[0]~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux6~0_combout\ : std_logic;
SIGNAL \control|Equal4~1_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux28~0_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~1_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~1clkctrl_outclk\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][3]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][3]~combout\ : std_logic;
SIGNAL \data_memory|Decoder0~0_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~0clkctrl_outclk\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][3]~combout\ : std_logic;
SIGNAL \data_memory|Decoder0~2_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~2clkctrl_outclk\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][3]~combout\ : std_logic;
SIGNAL \data_memory|Mux28~0_combout\ : std_logic;
SIGNAL \data_memory|Mux28~1_combout\ : std_logic;
SIGNAL \control|Equal3~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux5~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux28~0_combout\ : std_logic;
SIGNAL \aluOp2[3]~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux29~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~48_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux30~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][1]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][1]~combout\ : std_logic;
SIGNAL \data_memory|Mux30~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][1]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][1]~combout\ : std_logic;
SIGNAL \data_memory|Mux30~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~2_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~3_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux30~0_combout\ : std_logic;
SIGNAL \control|aluControl[2]~1_combout\ : std_logic;
SIGNAL \control|Equal4~0_combout\ : std_logic;
SIGNAL \register_file|registers_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \register_file|registers_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[31]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux0~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[30]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux1~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][30]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][30]~combout\ : std_logic;
SIGNAL \data_memory|Mux1~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][30]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][30]~combout\ : std_logic;
SIGNAL \data_memory|Mux1~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~39_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~11_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux1~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux2~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][29]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][29]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][29]~combout\ : std_logic;
SIGNAL \data_memory|Mux2~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][29]~combout\ : std_logic;
SIGNAL \data_memory|Mux2~1_combout\ : std_logic;
SIGNAL \aluOp2[29]~6_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~40_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~14_combout\ : std_logic;
SIGNAL \aluOp2[28]~7_combout\ : std_logic;
SIGNAL \aluOp2[27]~8_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux5~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux6~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][25]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][25]~combout\ : std_logic;
SIGNAL \data_memory|Mux6~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][25]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][25]~combout\ : std_logic;
SIGNAL \data_memory|Mux6~1_combout\ : std_logic;
SIGNAL \aluOp2[25]~10_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~44_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~26_combout\ : std_logic;
SIGNAL \aluOp2[24]~11_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux8~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][23]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][23]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][23]~combout\ : std_logic;
SIGNAL \data_memory|Mux8~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][23]~combout\ : std_logic;
SIGNAL \data_memory|Mux8~1_combout\ : std_logic;
SIGNAL \aluOp2[23]~12_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~46_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~32_combout\ : std_logic;
SIGNAL \aluOp2[22]~13_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux10~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][21]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][21]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][21]~combout\ : std_logic;
SIGNAL \data_memory|Mux10~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][21]~combout\ : std_logic;
SIGNAL \data_memory|Mux10~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~49_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~38_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux10~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux11~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][20]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][20]~combout\ : std_logic;
SIGNAL \data_memory|Mux11~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][20]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][20]~combout\ : std_logic;
SIGNAL \data_memory|Mux11~1_combout\ : std_logic;
SIGNAL \aluOp2[20]~15_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~50_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~41_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux12~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][19]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][19]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][19]~combout\ : std_logic;
SIGNAL \data_memory|Mux12~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][19]~combout\ : std_logic;
SIGNAL \data_memory|Mux12~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~51_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~44_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux12~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[18]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux13~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][18]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][18]~combout\ : std_logic;
SIGNAL \data_memory|Mux13~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][18]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][18]~combout\ : std_logic;
SIGNAL \data_memory|Mux13~1_combout\ : std_logic;
SIGNAL \aluOp2[18]~17_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~52_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~47_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux14~0_combout\ : std_logic;
SIGNAL \aluOp2[16]~19_combout\ : std_logic;
SIGNAL \aluOp2[15]~20_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux17~0_combout\ : std_logic;
SIGNAL \aluOp2[13]~22_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux19~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][12]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][12]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][12]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][12]~combout\ : std_logic;
SIGNAL \data_memory|Mux19~0_combout\ : std_logic;
SIGNAL \data_memory|Mux19~1_combout\ : std_logic;
SIGNAL \aluOp2[12]~23_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~58_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~65_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux20~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][11]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][11]~combout\ : std_logic;
SIGNAL \data_memory|Mux20~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][11]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][11]~combout\ : std_logic;
SIGNAL \data_memory|Mux20~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~59_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~68_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux20~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux21~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[9]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[9]~26_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[8]~feeder_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~62_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux23~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][8]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][8]~combout\ : std_logic;
SIGNAL \data_memory|Mux23~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][8]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][8]~combout\ : std_logic;
SIGNAL \data_memory|Mux23~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~77_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux23~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux24~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][7]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][7]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][7]~combout\ : std_logic;
SIGNAL \data_memory|Mux24~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][7]~combout\ : std_logic;
SIGNAL \data_memory|Mux24~1_combout\ : std_logic;
SIGNAL \aluOp2[7]~28_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~63_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~80_combout\ : std_logic;
SIGNAL \aluOp2[6]~29_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[5]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux26~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][5]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][5]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][5]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][5]~combout\ : std_logic;
SIGNAL \data_memory|Mux26~0_combout\ : std_logic;
SIGNAL \data_memory|Mux26~1_combout\ : std_logic;
SIGNAL \aluOp2[5]~30_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~65_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~86_combout\ : std_logic;
SIGNAL \aluOp2[4]~31_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~7\ : std_logic;
SIGNAL \arith_logic_unity|Add0~8_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux31~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~1_cout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~3\ : std_logic;
SIGNAL \arith_logic_unity|Add1~5_cout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~7_cout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~8_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~66_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux27~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][4]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][4]~combout\ : std_logic;
SIGNAL \data_memory|Mux27~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][4]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][4]~combout\ : std_logic;
SIGNAL \data_memory|Mux27~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~89_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~90_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~91_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux27~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~9\ : std_logic;
SIGNAL \arith_logic_unity|Add0~10_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~9\ : std_logic;
SIGNAL \arith_logic_unity|Add1~10_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~87_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~88_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux26~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~11\ : std_logic;
SIGNAL \arith_logic_unity|Add1~12_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux25~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][6]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][6]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][6]~combout\ : std_logic;
SIGNAL \data_memory|Mux25~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][6]~combout\ : std_logic;
SIGNAL \data_memory|Mux25~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~64_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~83_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~11\ : std_logic;
SIGNAL \arith_logic_unity|Add0~12_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~84_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~85_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux25~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~13\ : std_logic;
SIGNAL \arith_logic_unity|Add1~14_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~13\ : std_logic;
SIGNAL \arith_logic_unity|Add0~14_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~81_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~82_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux24~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~15\ : std_logic;
SIGNAL \arith_logic_unity|Add1~16_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~15\ : std_logic;
SIGNAL \arith_logic_unity|Add0~16_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~78_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~79_combout\ : std_logic;
SIGNAL \aluOp2[8]~27_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~17\ : std_logic;
SIGNAL \arith_logic_unity|Add1~18_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux22~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][9]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][9]~combout\ : std_logic;
SIGNAL \data_memory|Mux22~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][9]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][9]~combout\ : std_logic;
SIGNAL \data_memory|Mux22~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~61_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~74_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~17\ : std_logic;
SIGNAL \arith_logic_unity|Add0~18_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~75_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~76_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[9]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux22~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~19\ : std_logic;
SIGNAL \arith_logic_unity|Add1~20_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~19\ : std_logic;
SIGNAL \arith_logic_unity|Add0~20_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux21~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][10]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][10]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][10]~combout\ : std_logic;
SIGNAL \data_memory|Mux21~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][10]~combout\ : std_logic;
SIGNAL \data_memory|Mux21~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~60_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~71_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~72_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~73_combout\ : std_logic;
SIGNAL \aluOp2[10]~25_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~21\ : std_logic;
SIGNAL \arith_logic_unity|Add1~22_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~21\ : std_logic;
SIGNAL \arith_logic_unity|Add0~22_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~69_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~70_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[11]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[11]~24_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~23\ : std_logic;
SIGNAL \arith_logic_unity|Add0~24_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~23\ : std_logic;
SIGNAL \arith_logic_unity|Add1~24_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~66_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~67_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux19~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~25\ : std_logic;
SIGNAL \arith_logic_unity|Add0~26_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~57_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux18~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][13]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][13]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][13]~combout\ : std_logic;
SIGNAL \data_memory|Mux18~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][13]~combout\ : std_logic;
SIGNAL \data_memory|Mux18~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~62_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~25\ : std_logic;
SIGNAL \arith_logic_unity|Add1~26_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~63_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~64_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux18~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~27\ : std_logic;
SIGNAL \arith_logic_unity|Add1~28_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~56_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux17~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][14]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][14]~combout\ : std_logic;
SIGNAL \data_memory|Mux17~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][14]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][14]~combout\ : std_logic;
SIGNAL \data_memory|Mux17~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~59_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~27\ : std_logic;
SIGNAL \arith_logic_unity|Add0~28_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~60_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~61_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[14]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[14]~21_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~29\ : std_logic;
SIGNAL \arith_logic_unity|Add0~30_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~55_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux16~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][15]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][15]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][15]~combout\ : std_logic;
SIGNAL \data_memory|Mux16~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][15]~combout\ : std_logic;
SIGNAL \data_memory|Mux16~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~56_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~29\ : std_logic;
SIGNAL \arith_logic_unity|Add1~30_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~57_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~58_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[15]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux16~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~31\ : std_logic;
SIGNAL \arith_logic_unity|Add1~32_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux15~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][16]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][16]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][16]~combout\ : std_logic;
SIGNAL \data_memory|Mux15~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][16]~combout\ : std_logic;
SIGNAL \data_memory|Mux15~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~54_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~53_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~31\ : std_logic;
SIGNAL \arith_logic_unity|Add0~32_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~54_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~55_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[16]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux15~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~33\ : std_logic;
SIGNAL \arith_logic_unity|Add1~34_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux14~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][17]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][17]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][17]~combout\ : std_logic;
SIGNAL \data_memory|Mux14~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][17]~combout\ : std_logic;
SIGNAL \data_memory|Mux14~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~53_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~50_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~33\ : std_logic;
SIGNAL \arith_logic_unity|Add0~34_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~51_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~52_combout\ : std_logic;
SIGNAL \aluOp2[17]~18_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~35\ : std_logic;
SIGNAL \arith_logic_unity|Add1~36_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~35\ : std_logic;
SIGNAL \arith_logic_unity|Add0~36_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~48_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~49_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux13~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~37\ : std_logic;
SIGNAL \arith_logic_unity|Add1~38_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~37\ : std_logic;
SIGNAL \arith_logic_unity|Add0~38_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~45_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~46_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[19]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[19]~16_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~39\ : std_logic;
SIGNAL \arith_logic_unity|Add1~40_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~39\ : std_logic;
SIGNAL \arith_logic_unity|Add0~40_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~42_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~43_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[20]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux11~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~41\ : std_logic;
SIGNAL \arith_logic_unity|Add1~42_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~41\ : std_logic;
SIGNAL \arith_logic_unity|Add0~42_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~39_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~40_combout\ : std_logic;
SIGNAL \aluOp2[21]~14_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~43\ : std_logic;
SIGNAL \arith_logic_unity|Add1~44_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~47_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux9~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][22]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][22]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][22]~combout\ : std_logic;
SIGNAL \data_memory|Mux9~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][22]~combout\ : std_logic;
SIGNAL \data_memory|Mux9~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~35_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~43\ : std_logic;
SIGNAL \arith_logic_unity|Add0~44_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~36_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~37_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux9~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~45\ : std_logic;
SIGNAL \arith_logic_unity|Add1~46_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~45\ : std_logic;
SIGNAL \arith_logic_unity|Add0~46_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~33_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~34_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux8~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~47\ : std_logic;
SIGNAL \arith_logic_unity|Add1~48_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux7~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][24]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][24]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][24]~combout\ : std_logic;
SIGNAL \data_memory|Mux7~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][24]~combout\ : std_logic;
SIGNAL \data_memory|Mux7~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~45_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~29_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~47\ : std_logic;
SIGNAL \arith_logic_unity|Add0~48_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~30_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~31_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux7~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~49\ : std_logic;
SIGNAL \arith_logic_unity|Add0~50_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~49\ : std_logic;
SIGNAL \arith_logic_unity|Add1~50_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~27_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~28_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux6~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~51\ : std_logic;
SIGNAL \arith_logic_unity|Add0~52_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~43_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux5~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][26]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][26]~combout\ : std_logic;
SIGNAL \data_memory|Mux5~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][26]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][26]~combout\ : std_logic;
SIGNAL \data_memory|Mux5~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~23_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~51\ : std_logic;
SIGNAL \arith_logic_unity|Add1~52_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~24_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~25_combout\ : std_logic;
SIGNAL \aluOp2[26]~9_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~53\ : std_logic;
SIGNAL \arith_logic_unity|Add1~54_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux4~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][27]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][27]~combout\ : std_logic;
SIGNAL \data_memory|Mux4~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][27]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][27]~combout\ : std_logic;
SIGNAL \data_memory|Mux4~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~42_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~20_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~53\ : std_logic;
SIGNAL \arith_logic_unity|Add0~54_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~21_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~22_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux4~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~55\ : std_logic;
SIGNAL \arith_logic_unity|Add1~56_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~41_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux3~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][28]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][28]~combout\ : std_logic;
SIGNAL \data_memory|Mux3~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][28]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][28]~combout\ : std_logic;
SIGNAL \data_memory|Mux3~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~17_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~55\ : std_logic;
SIGNAL \arith_logic_unity|Add0~56_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~18_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~19_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux3~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~57\ : std_logic;
SIGNAL \arith_logic_unity|Add1~58_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~57\ : std_logic;
SIGNAL \arith_logic_unity|Add0~58_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~15_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~16_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux2~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~59\ : std_logic;
SIGNAL \arith_logic_unity|Add0~60_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~59\ : std_logic;
SIGNAL \arith_logic_unity|Add1~60_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~12_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~13_combout\ : std_logic;
SIGNAL \aluOp2[30]~5_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~61\ : std_logic;
SIGNAL \arith_logic_unity|Add1~62_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~61\ : std_logic;
SIGNAL \arith_logic_unity|Add0~62_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux0~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][31]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][31]~combout\ : std_logic;
SIGNAL \data_memory|Mux0~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][31]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][31]~combout\ : std_logic;
SIGNAL \data_memory|Mux0~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~38_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~8_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~9_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~10_combout\ : std_logic;
SIGNAL \aluOp2[31]~4_combout\ : std_logic;
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
SIGNAL \arith_logic_unity|Add0~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~6_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~7_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux31~0_combout\ : std_logic;
SIGNAL \aluOp2[0]~3_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~1\ : std_logic;
SIGNAL \arith_logic_unity|Add0~2_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~2_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~4_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~5_combout\ : std_logic;
SIGNAL \aluOp2[1]~2_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~3\ : std_logic;
SIGNAL \arith_logic_unity|Add0~5\ : std_logic;
SIGNAL \arith_logic_unity|Add0~6_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux28~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux28~1_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~3_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~3clkctrl_outclk\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][2]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][2]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][2]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][2]~combout\ : std_logic;
SIGNAL \data_memory|Mux29~0_combout\ : std_logic;
SIGNAL \data_memory|Mux29~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~1_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux29~0_combout\ : std_logic;
SIGNAL \aluOp2[2]~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~4_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux29~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux29~1_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][0]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][0]~combout\ : std_logic;
SIGNAL \data_memory|Mux31~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][0]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][0]~combout\ : std_logic;
SIGNAL \data_memory|Mux31~1_combout\ : std_logic;
SIGNAL \pc_incremented[5]~7\ : std_logic;
SIGNAL \pc_incremented[6]~8_combout\ : std_logic;
SIGNAL \PC|Q~61_combout\ : std_logic;
SIGNAL \pc_incremented[6]~9\ : std_logic;
SIGNAL \pc_incremented[7]~10_combout\ : std_logic;
SIGNAL \PC|Q~62_combout\ : std_logic;
SIGNAL \pc_incremented[7]~11\ : std_logic;
SIGNAL \pc_incremented[8]~12_combout\ : std_logic;
SIGNAL \PC|Q~63_combout\ : std_logic;
SIGNAL \pc_incremented[8]~13\ : std_logic;
SIGNAL \pc_incremented[9]~14_combout\ : std_logic;
SIGNAL \PC|Q~64_combout\ : std_logic;
SIGNAL \pc_incremented[9]~15\ : std_logic;
SIGNAL \pc_incremented[10]~16_combout\ : std_logic;
SIGNAL \PC|Q~65_combout\ : std_logic;
SIGNAL \pc_incremented[10]~17\ : std_logic;
SIGNAL \pc_incremented[11]~18_combout\ : std_logic;
SIGNAL \PC|Q~66_combout\ : std_logic;
SIGNAL \pc_incremented[11]~19\ : std_logic;
SIGNAL \pc_incremented[12]~20_combout\ : std_logic;
SIGNAL \PC|Q~67_combout\ : std_logic;
SIGNAL \pc_incremented[12]~21\ : std_logic;
SIGNAL \pc_incremented[13]~22_combout\ : std_logic;
SIGNAL \PC|Q~68_combout\ : std_logic;
SIGNAL \pc_incremented[13]~23\ : std_logic;
SIGNAL \pc_incremented[14]~24_combout\ : std_logic;
SIGNAL \PC|Q~69_combout\ : std_logic;
SIGNAL \pc_incremented[14]~25\ : std_logic;
SIGNAL \pc_incremented[15]~26_combout\ : std_logic;
SIGNAL \PC|Q~70_combout\ : std_logic;
SIGNAL \pc_incremented[15]~27\ : std_logic;
SIGNAL \pc_incremented[16]~28_combout\ : std_logic;
SIGNAL \PC|Q~71_combout\ : std_logic;
SIGNAL \pc_incremented[16]~29\ : std_logic;
SIGNAL \pc_incremented[17]~30_combout\ : std_logic;
SIGNAL \PC|Q~72_combout\ : std_logic;
SIGNAL \pc_incremented[17]~31\ : std_logic;
SIGNAL \pc_incremented[18]~32_combout\ : std_logic;
SIGNAL \PC|Q~73_combout\ : std_logic;
SIGNAL \pc_incremented[18]~33\ : std_logic;
SIGNAL \pc_incremented[19]~34_combout\ : std_logic;
SIGNAL \PC|Q~74_combout\ : std_logic;
SIGNAL \pc_incremented[19]~35\ : std_logic;
SIGNAL \pc_incremented[20]~36_combout\ : std_logic;
SIGNAL \PC|Q~75_combout\ : std_logic;
SIGNAL \pc_incremented[20]~37\ : std_logic;
SIGNAL \pc_incremented[21]~38_combout\ : std_logic;
SIGNAL \PC|Q~76_combout\ : std_logic;
SIGNAL \pc_incremented[21]~39\ : std_logic;
SIGNAL \pc_incremented[22]~40_combout\ : std_logic;
SIGNAL \PC|Q~77_combout\ : std_logic;
SIGNAL \pc_incremented[22]~41\ : std_logic;
SIGNAL \pc_incremented[23]~42_combout\ : std_logic;
SIGNAL \PC|Q~78_combout\ : std_logic;
SIGNAL \pc_incremented[23]~43\ : std_logic;
SIGNAL \pc_incremented[24]~44_combout\ : std_logic;
SIGNAL \PC|Q~79_combout\ : std_logic;
SIGNAL \pc_incremented[24]~45\ : std_logic;
SIGNAL \pc_incremented[25]~46_combout\ : std_logic;
SIGNAL \PC|Q~80_combout\ : std_logic;
SIGNAL \pc_incremented[25]~47\ : std_logic;
SIGNAL \pc_incremented[26]~48_combout\ : std_logic;
SIGNAL \PC|Q~81_combout\ : std_logic;
SIGNAL \pc_incremented[26]~49\ : std_logic;
SIGNAL \pc_incremented[27]~50_combout\ : std_logic;
SIGNAL \PC|Q~82_combout\ : std_logic;
SIGNAL \pc_incremented[27]~51\ : std_logic;
SIGNAL \pc_incremented[28]~52_combout\ : std_logic;
SIGNAL \PC|Q~52_combout\ : std_logic;
SIGNAL \PC|Q[29]~53_combout\ : std_logic;
SIGNAL \pc_incremented[28]~53\ : std_logic;
SIGNAL \pc_incremented[29]~54_combout\ : std_logic;
SIGNAL \PC|Q~54_combout\ : std_logic;
SIGNAL \pc_incremented[29]~55\ : std_logic;
SIGNAL \pc_incremented[30]~56_combout\ : std_logic;
SIGNAL \PC|Q~55_combout\ : std_logic;
SIGNAL \pc_incremented[30]~57\ : std_logic;
SIGNAL \pc_incremented[31]~58_combout\ : std_logic;
SIGNAL \PC|Q~56_combout\ : std_logic;
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

\data_memory|Decoder0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \data_memory|Decoder0~1_combout\);

\data_memory|Decoder0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \data_memory|Decoder0~0_combout\);

\data_memory|Decoder0~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \data_memory|Decoder0~3_combout\);

\data_memory|Decoder0~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \data_memory|Decoder0~2_combout\);

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
	oe => \control|Equal3~0_combout\,
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
	oe => \control|Equal3~0_combout\,
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
	oe => \control|Equal3~0_combout\,
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
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[3]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\data_memory_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux27~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[4]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\data_memory_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux26~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[5]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\data_memory_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux25~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[6]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\data_memory_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux24~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[7]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\data_memory_output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux23~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[8]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\data_memory_output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux22~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[9]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\data_memory_output[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux21~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[10]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\data_memory_output[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux20~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[11]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\data_memory_output[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux19~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[12]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\data_memory_output[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux18~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[13]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\data_memory_output[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux17~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[14]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\data_memory_output[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux16~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[15]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\data_memory_output[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux15~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[16]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\data_memory_output[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux14~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[17]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\data_memory_output[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux13~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[18]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\data_memory_output[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux12~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[19]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\data_memory_output[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux11~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[20]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\data_memory_output[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux10~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[21]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\data_memory_output[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux9~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[22]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\data_memory_output[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux8~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[23]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\data_memory_output[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux7~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[24]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\data_memory_output[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux6~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[25]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\data_memory_output[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux5~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[26]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\data_memory_output[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux4~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[27]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\data_memory_output[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux3~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[28]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\data_memory_output[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux2~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[29]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\data_memory_output[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux1~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[30]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\data_memory_output[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|Mux0~1_combout\,
	oe => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[31]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
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

-- Location: IOOBUF_X113_Y0_N9
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

-- Location: IOOBUF_X115_Y41_N2
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

-- Location: IOOBUF_X115_Y47_N16
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

-- Location: IOOBUF_X115_Y45_N16
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

-- Location: IOOBUF_X115_Y44_N2
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

-- Location: IOOBUF_X115_Y47_N23
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

-- Location: IOOBUF_X115_Y46_N2
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

-- Location: IOOBUF_X115_Y44_N9
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

-- Location: IOOBUF_X115_Y41_N9
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

-- Location: IOOBUF_X115_Y45_N23
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

-- Location: IOOBUF_X115_Y28_N9
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

-- Location: IOOBUF_X115_Y20_N9
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

-- Location: IOOBUF_X115_Y42_N16
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

-- Location: IOOBUF_X115_Y40_N2
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

-- Location: IOOBUF_X115_Y33_N2
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

-- Location: IOOBUF_X115_Y30_N9
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

-- Location: IOOBUF_X115_Y46_N9
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

-- Location: IOOBUF_X115_Y18_N9
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

-- Location: IOOBUF_X115_Y50_N9
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

-- Location: IOOBUF_X115_Y36_N16
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

-- Location: IOOBUF_X115_Y50_N2
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

-- Location: IOOBUF_X115_Y36_N2
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

-- Location: IOOBUF_X115_Y33_N9
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

-- Location: IOOBUF_X115_Y36_N9
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

-- Location: IOOBUF_X115_Y21_N16
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

-- Location: LCCOMB_X106_Y37_N2
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

-- Location: LCCOMB_X106_Y37_N4
\pc_incremented[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[3]~2_combout\ = (\PC|Q\(3) & (!\pc_incremented[2]~1\)) # (!\PC|Q\(3) & ((\pc_incremented[2]~1\) # (GND)))
-- \pc_incremented[3]~3\ = CARRY((!\pc_incremented[2]~1\) # (!\PC|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(3),
	datad => VCC,
	cin => \pc_incremented[2]~1\,
	combout => \pc_incremented[3]~2_combout\,
	cout => \pc_incremented[3]~3\);

-- Location: LCCOMB_X100_Y33_N8
\PC|Q~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~58_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & \pc_incremented[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(4),
	datac => \PC|Q\(5),
	datad => \pc_incremented[3]~2_combout\,
	combout => \PC|Q~58_combout\);

-- Location: IOIBUF_X115_Y30_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X100_Y33_N9
\PC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~58_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(3));

-- Location: LCCOMB_X100_Y33_N30
\instruction_memory|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux9~0_combout\ = (!\PC|Q\(5) & (\PC|Q\(4) $ (((\PC|Q\(2)) # (\PC|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \instruction_memory|Mux9~0_combout\);

-- Location: LCCOMB_X106_Y37_N6
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

-- Location: LCCOMB_X100_Y33_N18
\PC|Q~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~59_combout\ = (\PC|Q\(5) & (!\instruction_memory|Mux9~0_combout\)) # (!\PC|Q\(5) & ((\PC|Q\(4) & (!\instruction_memory|Mux9~0_combout\)) # (!\PC|Q\(4) & ((\pc_incremented[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \pc_incremented[4]~4_combout\,
	combout => \PC|Q~59_combout\);

-- Location: FF_X100_Y33_N19
\PC|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~59_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(4));

-- Location: LCCOMB_X106_Y37_N8
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

-- Location: LCCOMB_X100_Y33_N4
\PC|Q~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~60_combout\ = (!\PC|Q\(4) & (!\rst~input_o\ & (!\PC|Q\(5) & \pc_incremented[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \rst~input_o\,
	datac => \PC|Q\(5),
	datad => \pc_incremented[5]~6_combout\,
	combout => \PC|Q~60_combout\);

-- Location: FF_X100_Y33_N5
\PC|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(5));

-- Location: LCCOMB_X107_Y37_N0
\PC|Q~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~57_combout\ = (\PC|Q\(5)) # ((\PC|Q\(4)) # (\pc_incremented[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \pc_incremented[2]~0_combout\,
	combout => \PC|Q~57_combout\);

-- Location: FF_X106_Y37_N3
\PC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \PC|Q~57_combout\,
	sclr => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(2));

-- Location: LCCOMB_X100_Y33_N10
\control|aluSrc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluSrc~0_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & ((\PC|Q\(2)) # (\PC|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(5),
	datac => \PC|Q\(3),
	datad => \PC|Q\(4),
	combout => \control|aluSrc~0_combout\);

-- Location: LCCOMB_X100_Y33_N14
\control|aluControl[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[0]~0_combout\ = (!\PC|Q\(5) & !\PC|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \control|aluControl[0]~0_combout\);

-- Location: LCCOMB_X100_Y33_N12
\instruction_memory|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux6~0_combout\ = (\PC|Q\(2)) # ((\PC|Q\(3)) # ((\PC|Q\(5)) # (\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \instruction_memory|Mux6~0_combout\);

-- Location: LCCOMB_X97_Y33_N4
\writeLoc[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- writeLoc(0) = (\instruction_memory|Mux6~0_combout\ & (!\instruction_memory|Mux6~0_combout\)) # (!\instruction_memory|Mux6~0_combout\ & ((!\instruction_memory|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \instruction_memory|Mux6~0_combout\,
	combout => writeLoc(0));

-- Location: LCCOMB_X97_Y33_N24
\control|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Equal4~1_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & (\PC|Q\(2) & \PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \control|Equal4~1_combout\);

-- Location: LCCOMB_X97_Y33_N18
\register_file|registers_clk[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(0) = LCELL((\control|aluControl[0]~0_combout\ & (!\CLK~input_o\ & (!writeLoc(0) & !\control|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datab => \CLK~input_o\,
	datac => writeLoc(0),
	datad => \control|Equal4~1_combout\,
	combout => \register_file|registers_clk\(0));

-- Location: LCCOMB_X97_Y33_N14
\register_file|registers_clk[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(1) = LCELL((\control|aluControl[0]~0_combout\ & (!\control|Equal4~1_combout\ & (writeLoc(0) & !\CLK~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datab => \control|Equal4~1_combout\,
	datac => writeLoc(0),
	datad => \CLK~input_o\,
	combout => \register_file|registers_clk\(1));

-- Location: FF_X98_Y33_N31
\register_file|registers:1:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(1),
	asdata => \register_file|registers:0:regx|Q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(3));

-- Location: LCCOMB_X96_Y33_N18
\register_file|mux2|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux28~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(3)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(3),
	datab => \register_file|registers:0:regx|Q\(3),
	datac => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux28~0_combout\);

-- Location: LCCOMB_X97_Y33_N2
\data_memory|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~1_combout\ = (\control|Equal4~1_combout\ & (!\arith_logic_unity|Mux28~1_combout\ & \arith_logic_unity|Mux29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal4~1_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Decoder0~1_combout\);

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X98_Y33_N2
\data_memory|possible_outputs[1][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][3]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux28~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux28~0_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[1][3]~combout\,
	combout => \data_memory|possible_outputs[1][3]~combout\);

-- Location: LCCOMB_X97_Y33_N26
\data_memory|possible_outputs[3][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][3]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux28~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux28~0_combout\,
	datac => \data_memory|possible_outputs[3][3]~combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][3]~combout\);

-- Location: LCCOMB_X96_Y33_N24
\data_memory|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~0_combout\ = (\control|Equal4~1_combout\ & (\arith_logic_unity|Mux28~1_combout\ & !\arith_logic_unity|Mux29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal4~1_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Decoder0~0_combout\);

-- Location: CLKCTRL_G9
\data_memory|Decoder0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \data_memory|Decoder0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \data_memory|Decoder0~0clkctrl_outclk\);

-- Location: LCCOMB_X96_Y33_N28
\data_memory|possible_outputs[2][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][3]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux28~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][3]~combout\,
	datac => \register_file|mux2|Mux28~0_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][3]~combout\);

-- Location: LCCOMB_X96_Y33_N14
\data_memory|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~2_combout\ = (\control|Equal4~1_combout\ & (!\arith_logic_unity|Mux28~1_combout\ & !\arith_logic_unity|Mux29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal4~1_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Decoder0~2_combout\);

-- Location: CLKCTRL_G17
\data_memory|Decoder0~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \data_memory|Decoder0~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \data_memory|Decoder0~2clkctrl_outclk\);

-- Location: LCCOMB_X97_Y33_N10
\data_memory|possible_outputs[0][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][3]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux28~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][3]~combout\,
	datac => \register_file|mux2|Mux28~0_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][3]~combout\);

-- Location: LCCOMB_X98_Y33_N8
\data_memory|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux28~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[2][3]~combout\) # ((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (((!\arith_logic_unity|Mux29~1_combout\ & 
-- \data_memory|possible_outputs[0][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][3]~combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[0][3]~combout\,
	combout => \data_memory|Mux28~0_combout\);

-- Location: LCCOMB_X98_Y33_N22
\data_memory|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux28~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux28~0_combout\ & ((\data_memory|possible_outputs[3][3]~combout\))) # (!\data_memory|Mux28~0_combout\ & (\data_memory|possible_outputs[1][3]~combout\)))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[1][3]~combout\,
	datac => \data_memory|possible_outputs[3][3]~combout\,
	datad => \data_memory|Mux28~0_combout\,
	combout => \data_memory|Mux28~1_combout\);

-- Location: LCCOMB_X107_Y36_N24
\control|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Equal3~0_combout\ = (!\PC|Q\(4) & (\PC|Q\(2) & (!\PC|Q\(5) & !\PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(2),
	datac => \PC|Q\(5),
	datad => \PC|Q\(3),
	combout => \control|Equal3~0_combout\);

-- Location: LCCOMB_X98_Y33_N6
\register_file|registers:0:regx|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~0_combout\ = (!\rst~input_o\ & ((\control|Equal3~0_combout\ & (\data_memory|Mux28~1_combout\)) # (!\control|Equal3~0_combout\ & ((\arith_logic_unity|Mux28~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux28~1_combout\,
	datab => \rst~input_o\,
	datac => \control|Equal3~0_combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \register_file|registers:0:regx|Q~0_combout\);

-- Location: FF_X98_Y33_N1
\register_file|registers:0:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(0),
	asdata => \register_file|registers:0:regx|Q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(3));

-- Location: LCCOMB_X100_Y33_N24
\instruction_memory|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux5~0_combout\ = (\PC|Q\(5)) # ((\PC|Q\(4)) # ((!\PC|Q\(2) & \PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(5),
	datac => \PC|Q\(3),
	datad => \PC|Q\(4),
	combout => \instruction_memory|Mux5~0_combout\);

-- Location: LCCOMB_X98_Y33_N30
\register_file|mux1|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux28~0_combout\ = (\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(3))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(3),
	datac => \register_file|registers:1:regx|Q\(3),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \register_file|mux1|Mux28~0_combout\);

-- Location: LCCOMB_X98_Y33_N0
\aluOp2[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[3]~0_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(3)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(3),
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:0:regx|Q\(3),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \aluOp2[3]~0_combout\);

-- Location: FF_X97_Y33_N7
\register_file|registers:1:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(1),
	asdata => \register_file|registers:0:regx|Q~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(2));

-- Location: LCCOMB_X97_Y33_N0
\register_file|mux1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux29~0_combout\ = (\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(2))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(2),
	datad => \register_file|registers:1:regx|Q\(2),
	combout => \register_file|mux1|Mux29~0_combout\);

-- Location: FF_X102_Y33_N19
\register_file|registers:0:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(0),
	asdata => \register_file|registers:0:regx|Q~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(1));

-- Location: LCCOMB_X103_Y33_N28
\arith_logic_unity|Res~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~48_combout\ = \aluOp2[1]~2_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(1))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \register_file|registers:0:regx|Q\(1),
	datac => \aluOp2[1]~2_combout\,
	datad => \register_file|registers:1:regx|Q\(1),
	combout => \arith_logic_unity|Res~48_combout\);

-- Location: LCCOMB_X102_Y33_N18
\register_file|mux2|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux30~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(1)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(1),
	datac => \register_file|registers:0:regx|Q\(1),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux30~0_combout\);

-- Location: LCCOMB_X102_Y33_N28
\data_memory|possible_outputs[2][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][1]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux30~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux30~0_combout\,
	datac => \data_memory|possible_outputs[2][1]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][1]~combout\);

-- Location: LCCOMB_X102_Y33_N2
\data_memory|possible_outputs[0][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][1]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux30~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \data_memory|possible_outputs[0][1]~combout\,
	combout => \data_memory|possible_outputs[0][1]~combout\);

-- Location: LCCOMB_X102_Y33_N12
\data_memory|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux30~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[2][1]~combout\)) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[0][1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][1]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[0][1]~combout\,
	combout => \data_memory|Mux30~0_combout\);

-- Location: LCCOMB_X102_Y33_N14
\data_memory|possible_outputs[1][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][1]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux30~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datac => \data_memory|possible_outputs[1][1]~combout\,
	datad => \register_file|mux2|Mux30~0_combout\,
	combout => \data_memory|possible_outputs[1][1]~combout\);

-- Location: LCCOMB_X103_Y33_N22
\data_memory|possible_outputs[3][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][1]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux30~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~0_combout\,
	datac => \data_memory|possible_outputs[3][1]~combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][1]~combout\);

-- Location: LCCOMB_X102_Y33_N24
\data_memory|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux30~1_combout\ = (\data_memory|Mux30~0_combout\ & (((\data_memory|possible_outputs[3][1]~combout\) # (!\arith_logic_unity|Mux29~1_combout\)))) # (!\data_memory|Mux30~0_combout\ & (\data_memory|possible_outputs[1][1]~combout\ & 
-- (\arith_logic_unity|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux30~0_combout\,
	datab => \data_memory|possible_outputs[1][1]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[3][1]~combout\,
	combout => \data_memory|Mux30~1_combout\);

-- Location: LCCOMB_X100_Y33_N2
\register_file|registers:0:regx|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~2_combout\ = (\control|aluControl[0]~0_combout\ & ((\PC|Q\(2) & (!\PC|Q\(3))) # (!\PC|Q\(2) & ((\PC|Q\(3)) # (!\instruction_memory|Mux9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \control|aluControl[0]~0_combout\,
	datac => \PC|Q\(3),
	datad => \instruction_memory|Mux9~0_combout\,
	combout => \register_file|registers:0:regx|Q~2_combout\);

-- Location: LCCOMB_X102_Y33_N6
\register_file|registers:0:regx|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~3_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & ((\data_memory|Mux30~1_combout\))) # (!\control|Equal3~0_combout\ & (\arith_logic_unity|Res~48_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Res~48_combout\,
	datab => \data_memory|Mux30~1_combout\,
	datac => \register_file|registers:0:regx|Q~2_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~3_combout\);

-- Location: LCCOMB_X102_Y33_N0
\register_file|mux1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux30~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(1)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(1),
	datad => \register_file|registers:0:regx|Q\(1),
	combout => \register_file|mux1|Mux30~0_combout\);

-- Location: LCCOMB_X100_Y33_N28
\control|aluControl[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[2]~1_combout\ = ((!\PC|Q\(2) & (!\PC|Q\(3) & \instruction_memory|Mux9~0_combout\))) # (!\control|aluControl[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \control|aluControl[0]~0_combout\,
	datac => \PC|Q\(3),
	datad => \instruction_memory|Mux9~0_combout\,
	combout => \control|aluControl[2]~1_combout\);

-- Location: LCCOMB_X100_Y33_N22
\control|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Equal4~0_combout\ = (\PC|Q\(2) & (!\PC|Q\(5) & !\PC|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \control|Equal4~0_combout\);

-- Location: CLKCTRL_G6
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

-- Location: CLKCTRL_G5
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

-- Location: LCCOMB_X101_Y36_N20
\register_file|registers:0:regx|Q[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[31]~feeder_combout\ = \register_file|registers:0:regx|Q~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~10_combout\,
	combout => \register_file|registers:0:regx|Q[31]~feeder_combout\);

-- Location: FF_X101_Y36_N21
\register_file|registers:0:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(31));

-- Location: LCCOMB_X101_Y36_N16
\register_file|mux1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux0~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(31)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(31),
	datad => \register_file|registers:0:regx|Q\(31),
	combout => \register_file|mux1|Mux0~0_combout\);

-- Location: LCCOMB_X101_Y34_N20
\register_file|registers:0:regx|Q[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[30]~feeder_combout\ = \register_file|registers:0:regx|Q~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~13_combout\,
	combout => \register_file|registers:0:regx|Q[30]~feeder_combout\);

-- Location: FF_X101_Y34_N21
\register_file|registers:0:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(30));

-- Location: LCCOMB_X101_Y34_N30
\register_file|mux2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux1~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(30)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(30),
	datab => \register_file|registers:0:regx|Q\(30),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux1~0_combout\);

-- Location: LCCOMB_X101_Y31_N14
\data_memory|possible_outputs[1][30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][30]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux1~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][30]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][30]~combout\,
	datac => \register_file|mux2|Mux1~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][30]~combout\);

-- Location: LCCOMB_X101_Y31_N24
\data_memory|possible_outputs[0][30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][30]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux1~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][30]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux1~0_combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \data_memory|possible_outputs[0][30]~combout\,
	combout => \data_memory|possible_outputs[0][30]~combout\);

-- Location: LCCOMB_X101_Y31_N0
\data_memory|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux1~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][30]~combout\) # ((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (((!\arith_logic_unity|Mux28~1_combout\ & 
-- \data_memory|possible_outputs[0][30]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[1][30]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[0][30]~combout\,
	combout => \data_memory|Mux1~0_combout\);

-- Location: LCCOMB_X102_Y31_N30
\data_memory|possible_outputs[3][30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][30]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux1~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][30]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux1~0_combout\,
	datac => \data_memory|possible_outputs[3][30]~combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][30]~combout\);

-- Location: LCCOMB_X101_Y31_N16
\data_memory|possible_outputs[2][30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][30]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux1~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][30]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][30]~combout\,
	datac => \register_file|mux2|Mux1~0_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][30]~combout\);

-- Location: LCCOMB_X101_Y31_N26
\data_memory|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux1~1_combout\ = (\data_memory|Mux1~0_combout\ & (((\data_memory|possible_outputs[3][30]~combout\)) # (!\arith_logic_unity|Mux28~1_combout\))) # (!\data_memory|Mux1~0_combout\ & (\arith_logic_unity|Mux28~1_combout\ & 
-- ((\data_memory|possible_outputs[2][30]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux1~0_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[3][30]~combout\,
	datad => \data_memory|possible_outputs[2][30]~combout\,
	combout => \data_memory|Mux1~1_combout\);

-- Location: LCCOMB_X101_Y34_N12
\arith_logic_unity|Res~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~39_combout\ = \aluOp2[30]~5_combout\ $ (((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(30)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(30),
	datab => \aluOp2[30]~5_combout\,
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \register_file|registers:0:regx|Q\(30),
	combout => \arith_logic_unity|Res~39_combout\);

-- Location: LCCOMB_X101_Y34_N10
\register_file|registers:0:regx|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~11_combout\ = (\control|Equal3~0_combout\ & ((\data_memory|Mux1~1_combout\) # ((!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (((\arith_logic_unity|Res~39_combout\ & 
-- \register_file|registers:0:regx|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \data_memory|Mux1~1_combout\,
	datac => \arith_logic_unity|Res~39_combout\,
	datad => \register_file|registers:0:regx|Q~2_combout\,
	combout => \register_file|registers:0:regx|Q~11_combout\);

-- Location: LCCOMB_X101_Y34_N0
\register_file|mux1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux1~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(30)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(30),
	datad => \register_file|registers:0:regx|Q\(30),
	combout => \register_file|mux1|Mux1~0_combout\);

-- Location: FF_X100_Y35_N17
\register_file|registers:0:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(29));

-- Location: LCCOMB_X98_Y35_N30
\register_file|mux2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux2~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(29))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(29),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:1:regx|Q\(29),
	combout => \register_file|mux2|Mux2~0_combout\);

-- Location: LCCOMB_X98_Y35_N22
\data_memory|possible_outputs[1][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][29]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux2~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][29]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux2~0_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[1][29]~combout\,
	combout => \data_memory|possible_outputs[1][29]~combout\);

-- Location: LCCOMB_X99_Y35_N22
\data_memory|possible_outputs[0][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][29]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux2~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][29]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][29]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \register_file|mux2|Mux2~0_combout\,
	combout => \data_memory|possible_outputs[0][29]~combout\);

-- Location: LCCOMB_X99_Y35_N20
\data_memory|possible_outputs[2][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][29]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux2~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][29]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][29]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux2~0_combout\,
	combout => \data_memory|possible_outputs[2][29]~combout\);

-- Location: LCCOMB_X99_Y35_N12
\data_memory|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux2~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\) # ((\data_memory|possible_outputs[2][29]~combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (!\arith_logic_unity|Mux29~1_combout\ & 
-- (\data_memory|possible_outputs[0][29]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[0][29]~combout\,
	datad => \data_memory|possible_outputs[2][29]~combout\,
	combout => \data_memory|Mux2~0_combout\);

-- Location: LCCOMB_X99_Y35_N14
\data_memory|possible_outputs[3][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][29]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux2~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][29]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][29]~combout\,
	datab => \register_file|mux2|Mux2~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][29]~combout\);

-- Location: LCCOMB_X99_Y35_N26
\data_memory|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux2~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux2~0_combout\ & ((\data_memory|possible_outputs[3][29]~combout\))) # (!\data_memory|Mux2~0_combout\ & (\data_memory|possible_outputs[1][29]~combout\)))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[1][29]~combout\,
	datac => \data_memory|Mux2~0_combout\,
	datad => \data_memory|possible_outputs[3][29]~combout\,
	combout => \data_memory|Mux2~1_combout\);

-- Location: LCCOMB_X100_Y35_N6
\aluOp2[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[29]~6_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(29)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:1:regx|Q\(29),
	datad => \register_file|registers:0:regx|Q\(29),
	combout => \aluOp2[29]~6_combout\);

-- Location: LCCOMB_X98_Y35_N16
\arith_logic_unity|Res~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~40_combout\ = \aluOp2[29]~6_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(29))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \aluOp2[29]~6_combout\,
	datac => \register_file|registers:0:regx|Q\(29),
	datad => \register_file|registers:1:regx|Q\(29),
	combout => \arith_logic_unity|Res~40_combout\);

-- Location: LCCOMB_X99_Y35_N16
\register_file|registers:0:regx|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~14_combout\ = (\control|Equal3~0_combout\ & ((\data_memory|Mux2~1_combout\) # ((!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (((\arith_logic_unity|Res~40_combout\ & 
-- \register_file|registers:0:regx|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux2~1_combout\,
	datab => \arith_logic_unity|Res~40_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \register_file|registers:0:regx|Q~2_combout\,
	combout => \register_file|registers:0:regx|Q~14_combout\);

-- Location: FF_X100_Y31_N3
\register_file|registers:1:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(28));

-- Location: LCCOMB_X100_Y31_N22
\aluOp2[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[28]~7_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(28))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:0:regx|Q\(28),
	datad => \register_file|registers:1:regx|Q\(28),
	combout => \aluOp2[28]~7_combout\);

-- Location: FF_X102_Y32_N3
\register_file|registers:1:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(27));

-- Location: LCCOMB_X102_Y32_N22
\aluOp2[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[27]~8_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(27))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:0:regx|Q\(27),
	datad => \register_file|registers:1:regx|Q\(27),
	combout => \aluOp2[27]~8_combout\);

-- Location: FF_X98_Y34_N1
\register_file|registers:0:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(26));

-- Location: LCCOMB_X98_Y34_N20
\register_file|mux1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux5~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(26)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:1:regx|Q\(26),
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \register_file|registers:0:regx|Q\(26),
	combout => \register_file|mux1|Mux5~0_combout\);

-- Location: FF_X103_Y32_N13
\register_file|registers:0:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(25));

-- Location: LCCOMB_X103_Y32_N12
\register_file|mux2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux6~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(25)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(25),
	datac => \register_file|registers:0:regx|Q\(25),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux6~0_combout\);

-- Location: LCCOMB_X103_Y32_N22
\data_memory|possible_outputs[2][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][25]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux6~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][25]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][25]~combout\,
	datac => \register_file|mux2|Mux6~0_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][25]~combout\);

-- Location: LCCOMB_X103_Y32_N24
\data_memory|possible_outputs[0][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][25]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux6~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][25]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux6~0_combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \data_memory|possible_outputs[0][25]~combout\,
	combout => \data_memory|possible_outputs[0][25]~combout\);

-- Location: LCCOMB_X103_Y32_N20
\data_memory|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux6~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[2][25]~combout\) # ((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (((!\arith_logic_unity|Mux29~1_combout\ & 
-- \data_memory|possible_outputs[0][25]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][25]~combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[0][25]~combout\,
	combout => \data_memory|Mux6~0_combout\);

-- Location: LCCOMB_X106_Y32_N8
\data_memory|possible_outputs[1][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][25]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux6~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][25]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux6~0_combout\,
	datac => \data_memory|possible_outputs[1][25]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][25]~combout\);

-- Location: LCCOMB_X103_Y32_N10
\data_memory|possible_outputs[3][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][25]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux6~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][25]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][25]~combout\,
	datac => \register_file|mux2|Mux6~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][25]~combout\);

-- Location: LCCOMB_X103_Y32_N18
\data_memory|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux6~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux6~0_combout\ & ((\data_memory|possible_outputs[3][25]~combout\))) # (!\data_memory|Mux6~0_combout\ & (\data_memory|possible_outputs[1][25]~combout\)))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (\data_memory|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|Mux6~0_combout\,
	datac => \data_memory|possible_outputs[1][25]~combout\,
	datad => \data_memory|possible_outputs[3][25]~combout\,
	combout => \data_memory|Mux6~1_combout\);

-- Location: LCCOMB_X103_Y32_N30
\aluOp2[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[25]~10_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(25)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(25),
	datad => \register_file|registers:0:regx|Q\(25),
	combout => \aluOp2[25]~10_combout\);

-- Location: LCCOMB_X105_Y32_N28
\arith_logic_unity|Res~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~44_combout\ = \aluOp2[25]~10_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(25))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(25),
	datab => \aluOp2[25]~10_combout\,
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \register_file|registers:1:regx|Q\(25),
	combout => \arith_logic_unity|Res~44_combout\);

-- Location: LCCOMB_X103_Y32_N16
\register_file|registers:0:regx|Q~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~26_combout\ = (\control|Equal3~0_combout\ & ((\data_memory|Mux6~1_combout\) # ((!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (((\arith_logic_unity|Res~44_combout\ & 
-- \register_file|registers:0:regx|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux6~1_combout\,
	datab => \control|Equal3~0_combout\,
	datac => \arith_logic_unity|Res~44_combout\,
	datad => \register_file|registers:0:regx|Q~2_combout\,
	combout => \register_file|registers:0:regx|Q~26_combout\);

-- Location: FF_X98_Y32_N19
\register_file|registers:1:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(24));

-- Location: LCCOMB_X98_Y32_N0
\aluOp2[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[24]~11_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(24))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \register_file|registers:0:regx|Q\(24),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:1:regx|Q\(24),
	combout => \aluOp2[24]~11_combout\);

-- Location: FF_X98_Y29_N11
\register_file|registers:0:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(23));

-- Location: LCCOMB_X97_Y29_N26
\register_file|mux2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux8~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(23)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(23),
	datab => \register_file|registers:0:regx|Q\(23),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux8~0_combout\);

-- Location: LCCOMB_X98_Y29_N2
\data_memory|possible_outputs[3][23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][23]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux8~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][23]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux8~0_combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \data_memory|possible_outputs[3][23]~combout\,
	combout => \data_memory|possible_outputs[3][23]~combout\);

-- Location: LCCOMB_X98_Y29_N22
\data_memory|possible_outputs[2][23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][23]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux8~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][23]~combout\,
	datab => \register_file|mux2|Mux8~0_combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][23]~combout\);

-- Location: LCCOMB_X98_Y29_N4
\data_memory|possible_outputs[0][23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][23]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux8~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][23]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux8~0_combout\,
	datac => \data_memory|possible_outputs[0][23]~combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][23]~combout\);

-- Location: LCCOMB_X98_Y29_N26
\data_memory|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux8~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[2][23]~combout\)) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[0][23]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][23]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[0][23]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux8~0_combout\);

-- Location: LCCOMB_X97_Y29_N20
\data_memory|possible_outputs[1][23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][23]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux8~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][23]~combout\,
	datac => \register_file|mux2|Mux8~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][23]~combout\);

-- Location: LCCOMB_X98_Y29_N8
\data_memory|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux8~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux8~0_combout\ & (\data_memory|possible_outputs[3][23]~combout\)) # (!\data_memory|Mux8~0_combout\ & ((\data_memory|possible_outputs[1][23]~combout\))))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[3][23]~combout\,
	datac => \data_memory|Mux8~0_combout\,
	datad => \data_memory|possible_outputs[1][23]~combout\,
	combout => \data_memory|Mux8~1_combout\);

-- Location: LCCOMB_X98_Y29_N28
\aluOp2[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[23]~12_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(23)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \register_file|registers:1:regx|Q\(23),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:0:regx|Q\(23),
	combout => \aluOp2[23]~12_combout\);

-- Location: LCCOMB_X98_Y29_N0
\arith_logic_unity|Res~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~46_combout\ = \aluOp2[23]~12_combout\ $ (((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(23)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \aluOp2[23]~12_combout\,
	datac => \register_file|registers:1:regx|Q\(23),
	datad => \register_file|registers:0:regx|Q\(23),
	combout => \arith_logic_unity|Res~46_combout\);

-- Location: LCCOMB_X98_Y29_N14
\register_file|registers:0:regx|Q~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~32_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & (\data_memory|Mux8~1_combout\)) # (!\control|Equal3~0_combout\ & ((\arith_logic_unity|Res~46_combout\))))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~2_combout\,
	datab => \data_memory|Mux8~1_combout\,
	datac => \arith_logic_unity|Res~46_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~32_combout\);

-- Location: FF_X100_Y29_N29
\register_file|registers:0:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(22));

-- Location: LCCOMB_X100_Y29_N6
\aluOp2[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[22]~13_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(22))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(22),
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|registers:1:regx|Q\(22),
	combout => \aluOp2[22]~13_combout\);

-- Location: FF_X100_Y30_N5
\register_file|registers:1:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~40_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(21));

-- Location: LCCOMB_X100_Y30_N14
\register_file|mux2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux10~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(21)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:1:regx|Q\(21),
	datac => \register_file|registers:0:regx|Q\(21),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux10~0_combout\);

-- Location: LCCOMB_X99_Y30_N26
\data_memory|possible_outputs[3][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][21]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux10~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][21]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][21]~combout\,
	datac => \register_file|mux2|Mux10~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][21]~combout\);

-- Location: LCCOMB_X100_Y30_N22
\data_memory|possible_outputs[0][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][21]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux10~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][21]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][21]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \register_file|mux2|Mux10~0_combout\,
	combout => \data_memory|possible_outputs[0][21]~combout\);

-- Location: LCCOMB_X100_Y30_N16
\data_memory|possible_outputs[2][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][21]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux10~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][21]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][21]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux10~0_combout\,
	combout => \data_memory|possible_outputs[2][21]~combout\);

-- Location: LCCOMB_X100_Y30_N26
\data_memory|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux10~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (\arith_logic_unity|Mux28~1_combout\)) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[2][21]~combout\))) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[0][21]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[0][21]~combout\,
	datad => \data_memory|possible_outputs[2][21]~combout\,
	combout => \data_memory|Mux10~0_combout\);

-- Location: LCCOMB_X100_Y30_N6
\data_memory|possible_outputs[1][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][21]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux10~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][21]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][21]~combout\,
	datac => \register_file|mux2|Mux10~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][21]~combout\);

-- Location: LCCOMB_X100_Y30_N12
\data_memory|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux10~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux10~0_combout\ & (\data_memory|possible_outputs[3][21]~combout\)) # (!\data_memory|Mux10~0_combout\ & ((\data_memory|possible_outputs[1][21]~combout\))))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][21]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|Mux10~0_combout\,
	datad => \data_memory|possible_outputs[1][21]~combout\,
	combout => \data_memory|Mux10~1_combout\);

-- Location: LCCOMB_X101_Y30_N30
\arith_logic_unity|Res~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~49_combout\ = \aluOp2[21]~14_combout\ $ (((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(21)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[21]~14_combout\,
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(21),
	datad => \register_file|registers:0:regx|Q\(21),
	combout => \arith_logic_unity|Res~49_combout\);

-- Location: LCCOMB_X100_Y30_N2
\register_file|registers:0:regx|Q~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~38_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & (\data_memory|Mux10~1_combout\)) # (!\control|Equal3~0_combout\ & ((\arith_logic_unity|Res~49_combout\))))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux10~1_combout\,
	datab => \register_file|registers:0:regx|Q~2_combout\,
	datac => \arith_logic_unity|Res~49_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~38_combout\);

-- Location: LCCOMB_X100_Y30_N10
\register_file|mux1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux10~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(21)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:1:regx|Q\(21),
	datac => \register_file|registers:0:regx|Q\(21),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \register_file|mux1|Mux10~0_combout\);

-- Location: FF_X99_Y30_N11
\register_file|registers:1:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~43_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(20));

-- Location: LCCOMB_X100_Y30_N4
\register_file|mux2|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux11~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(20))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(20),
	datad => \register_file|registers:1:regx|Q\(20),
	combout => \register_file|mux2|Mux11~0_combout\);

-- Location: LCCOMB_X101_Y30_N28
\data_memory|possible_outputs[1][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][20]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux11~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][20]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][20]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux11~0_combout\,
	combout => \data_memory|possible_outputs[1][20]~combout\);

-- Location: LCCOMB_X101_Y30_N18
\data_memory|possible_outputs[0][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][20]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux11~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux11~0_combout\,
	datab => \data_memory|possible_outputs[0][20]~combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][20]~combout\);

-- Location: LCCOMB_X101_Y30_N16
\data_memory|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux11~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[1][20]~combout\)) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[0][20]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \data_memory|possible_outputs[1][20]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[0][20]~combout\,
	combout => \data_memory|Mux11~0_combout\);

-- Location: LCCOMB_X101_Y30_N12
\data_memory|possible_outputs[3][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][20]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux11~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][20]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][20]~combout\,
	datac => \register_file|mux2|Mux11~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][20]~combout\);

-- Location: LCCOMB_X100_Y30_N28
\data_memory|possible_outputs[2][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][20]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux11~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][20]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][20]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux11~0_combout\,
	combout => \data_memory|possible_outputs[2][20]~combout\);

-- Location: LCCOMB_X100_Y30_N24
\data_memory|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux11~1_combout\ = (\data_memory|Mux11~0_combout\ & (((\data_memory|possible_outputs[3][20]~combout\)) # (!\arith_logic_unity|Mux28~1_combout\))) # (!\data_memory|Mux11~0_combout\ & (\arith_logic_unity|Mux28~1_combout\ & 
-- ((\data_memory|possible_outputs[2][20]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux11~0_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[3][20]~combout\,
	datad => \data_memory|possible_outputs[2][20]~combout\,
	combout => \data_memory|Mux11~1_combout\);

-- Location: LCCOMB_X99_Y30_N2
\aluOp2[20]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[20]~15_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(20))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:0:regx|Q\(20),
	datad => \register_file|registers:1:regx|Q\(20),
	combout => \aluOp2[20]~15_combout\);

-- Location: LCCOMB_X100_Y30_N18
\arith_logic_unity|Res~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~50_combout\ = \aluOp2[20]~15_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(20))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[20]~15_combout\,
	datab => \register_file|registers:0:regx|Q\(20),
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \register_file|registers:1:regx|Q\(20),
	combout => \arith_logic_unity|Res~50_combout\);

-- Location: LCCOMB_X100_Y30_N20
\register_file|registers:0:regx|Q~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~41_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & (\data_memory|Mux11~1_combout\)) # (!\control|Equal3~0_combout\ & ((\arith_logic_unity|Res~50_combout\))))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux11~1_combout\,
	datab => \register_file|registers:0:regx|Q~2_combout\,
	datac => \arith_logic_unity|Res~50_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~41_combout\);

-- Location: FF_X99_Y30_N13
\register_file|registers:0:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~46_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(19));

-- Location: LCCOMB_X98_Y30_N10
\register_file|mux2|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux12~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(19))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(19),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:1:regx|Q\(19),
	combout => \register_file|mux2|Mux12~0_combout\);

-- Location: LCCOMB_X98_Y30_N30
\data_memory|possible_outputs[1][19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][19]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux12~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][19]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][19]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux12~0_combout\,
	combout => \data_memory|possible_outputs[1][19]~combout\);

-- Location: LCCOMB_X98_Y30_N8
\data_memory|possible_outputs[2][19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][19]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux12~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][19]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][19]~combout\,
	datac => \register_file|mux2|Mux12~0_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][19]~combout\);

-- Location: LCCOMB_X98_Y30_N6
\data_memory|possible_outputs[0][19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][19]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux12~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][19]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][19]~combout\,
	datac => \register_file|mux2|Mux12~0_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][19]~combout\);

-- Location: LCCOMB_X98_Y30_N24
\data_memory|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux12~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\) # ((\data_memory|possible_outputs[2][19]~combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (!\arith_logic_unity|Mux29~1_combout\ & 
-- ((\data_memory|possible_outputs[0][19]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[2][19]~combout\,
	datad => \data_memory|possible_outputs[0][19]~combout\,
	combout => \data_memory|Mux12~0_combout\);

-- Location: LCCOMB_X97_Y30_N10
\data_memory|possible_outputs[3][19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][19]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux12~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][19]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][19]~combout\,
	datac => \register_file|mux2|Mux12~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][19]~combout\);

-- Location: LCCOMB_X98_Y30_N18
\data_memory|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux12~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux12~0_combout\ & ((\data_memory|possible_outputs[3][19]~combout\))) # (!\data_memory|Mux12~0_combout\ & (\data_memory|possible_outputs[1][19]~combout\)))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][19]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|Mux12~0_combout\,
	datad => \data_memory|possible_outputs[3][19]~combout\,
	combout => \data_memory|Mux12~1_combout\);

-- Location: LCCOMB_X98_Y30_N0
\arith_logic_unity|Res~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~51_combout\ = \aluOp2[19]~16_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(19))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[19]~16_combout\,
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(19),
	datad => \register_file|registers:1:regx|Q\(19),
	combout => \arith_logic_unity|Res~51_combout\);

-- Location: LCCOMB_X98_Y30_N16
\register_file|registers:0:regx|Q~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~44_combout\ = (\control|Equal3~0_combout\ & ((\data_memory|Mux12~1_combout\) # ((!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (((\register_file|registers:0:regx|Q~2_combout\ & 
-- \arith_logic_unity|Res~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux12~1_combout\,
	datab => \control|Equal3~0_combout\,
	datac => \register_file|registers:0:regx|Q~2_combout\,
	datad => \arith_logic_unity|Res~51_combout\,
	combout => \register_file|registers:0:regx|Q~44_combout\);

-- Location: LCCOMB_X99_Y30_N24
\register_file|mux1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux12~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(19)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(19),
	datad => \register_file|registers:0:regx|Q\(19),
	combout => \register_file|mux1|Mux12~0_combout\);

-- Location: LCCOMB_X99_Y30_N28
\register_file|registers:0:regx|Q[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[18]~feeder_combout\ = \register_file|registers:0:regx|Q~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~49_combout\,
	combout => \register_file|registers:0:regx|Q[18]~feeder_combout\);

-- Location: FF_X99_Y30_N29
\register_file|registers:0:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(18));

-- Location: LCCOMB_X98_Y30_N28
\register_file|mux2|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux13~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(18))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(18),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:1:regx|Q\(18),
	combout => \register_file|mux2|Mux13~0_combout\);

-- Location: LCCOMB_X98_Y30_N22
\data_memory|possible_outputs[1][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][18]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux13~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][18]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][18]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux13~0_combout\,
	combout => \data_memory|possible_outputs[1][18]~combout\);

-- Location: LCCOMB_X98_Y30_N20
\data_memory|possible_outputs[0][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][18]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux13~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][18]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][18]~combout\,
	datac => \register_file|mux2|Mux13~0_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][18]~combout\);

-- Location: LCCOMB_X98_Y30_N12
\data_memory|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux13~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (\arith_logic_unity|Mux29~1_combout\)) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[1][18]~combout\)) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[0][18]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[1][18]~combout\,
	datad => \data_memory|possible_outputs[0][18]~combout\,
	combout => \data_memory|Mux13~0_combout\);

-- Location: LCCOMB_X98_Y30_N4
\data_memory|possible_outputs[2][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][18]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux13~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][18]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~0clkctrl_outclk\,
	datab => \data_memory|possible_outputs[2][18]~combout\,
	datad => \register_file|mux2|Mux13~0_combout\,
	combout => \data_memory|possible_outputs[2][18]~combout\);

-- Location: LCCOMB_X97_Y30_N28
\data_memory|possible_outputs[3][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][18]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux13~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][18]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux13~0_combout\,
	datab => \data_memory|possible_outputs[3][18]~combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][18]~combout\);

-- Location: LCCOMB_X98_Y30_N14
\data_memory|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux13~1_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|Mux13~0_combout\ & ((\data_memory|possible_outputs[3][18]~combout\))) # (!\data_memory|Mux13~0_combout\ & (\data_memory|possible_outputs[2][18]~combout\)))) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \data_memory|Mux13~0_combout\,
	datac => \data_memory|possible_outputs[2][18]~combout\,
	datad => \data_memory|possible_outputs[3][18]~combout\,
	combout => \data_memory|Mux13~1_combout\);

-- Location: LCCOMB_X99_Y30_N18
\aluOp2[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[18]~17_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(18)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(18),
	datad => \register_file|registers:0:regx|Q\(18),
	combout => \aluOp2[18]~17_combout\);

-- Location: LCCOMB_X98_Y30_N26
\arith_logic_unity|Res~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~52_combout\ = \aluOp2[18]~17_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(18))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[18]~17_combout\,
	datab => \register_file|registers:0:regx|Q\(18),
	datac => \register_file|registers:1:regx|Q\(18),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \arith_logic_unity|Res~52_combout\);

-- Location: LCCOMB_X98_Y30_N2
\register_file|registers:0:regx|Q~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~47_combout\ = (\control|Equal3~0_combout\ & ((\data_memory|Mux13~1_combout\) # ((!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (((\register_file|registers:0:regx|Q~2_combout\ & 
-- \arith_logic_unity|Res~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \data_memory|Mux13~1_combout\,
	datac => \register_file|registers:0:regx|Q~2_combout\,
	datad => \arith_logic_unity|Res~52_combout\,
	combout => \register_file|registers:0:regx|Q~47_combout\);

-- Location: FF_X99_Y29_N27
\register_file|registers:1:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~52_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(17));

-- Location: LCCOMB_X99_Y29_N8
\register_file|mux1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux14~0_combout\ = (\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(17))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(17),
	datad => \register_file|registers:1:regx|Q\(17),
	combout => \register_file|mux1|Mux14~0_combout\);

-- Location: FF_X99_Y29_N21
\register_file|registers:0:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(16));

-- Location: LCCOMB_X99_Y29_N14
\aluOp2[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[16]~19_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(16)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:1:regx|Q\(16),
	datad => \register_file|registers:0:regx|Q\(16),
	combout => \aluOp2[16]~19_combout\);

-- Location: FF_X100_Y32_N21
\register_file|registers:0:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~58_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(15));

-- Location: LCCOMB_X100_Y32_N2
\aluOp2[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[15]~20_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(15)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(15),
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|registers:0:regx|Q\(15),
	combout => \aluOp2[15]~20_combout\);

-- Location: FF_X100_Y32_N25
\register_file|registers:0:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~61_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(14));

-- Location: LCCOMB_X100_Y32_N12
\register_file|mux1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux17~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(14)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(14),
	datad => \register_file|registers:0:regx|Q\(14),
	combout => \register_file|mux1|Mux17~0_combout\);

-- Location: FF_X99_Y36_N21
\register_file|registers:0:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~64_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(13));

-- Location: LCCOMB_X99_Y36_N26
\aluOp2[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[13]~22_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(13)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:1:regx|Q\(13),
	datad => \register_file|registers:0:regx|Q\(13),
	combout => \aluOp2[13]~22_combout\);

-- Location: FF_X100_Y34_N1
\register_file|registers:0:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~67_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(12));

-- Location: LCCOMB_X101_Y34_N8
\register_file|mux2|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux19~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(12))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(12),
	datac => \register_file|registers:1:regx|Q\(12),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux19~0_combout\);

-- Location: LCCOMB_X100_Y32_N18
\data_memory|possible_outputs[3][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][12]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux19~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][12]~combout\,
	datac => \register_file|mux2|Mux19~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][12]~combout\);

-- Location: LCCOMB_X102_Y32_N30
\data_memory|possible_outputs[2][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][12]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux19~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux19~0_combout\,
	datac => \data_memory|possible_outputs[2][12]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][12]~combout\);

-- Location: LCCOMB_X100_Y32_N4
\data_memory|possible_outputs[1][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][12]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux19~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][12]~combout\,
	datac => \register_file|mux2|Mux19~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][12]~combout\);

-- Location: LCCOMB_X102_Y32_N12
\data_memory|possible_outputs[0][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][12]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux19~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][12]~combout\,
	datab => \register_file|mux2|Mux19~0_combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][12]~combout\);

-- Location: LCCOMB_X102_Y32_N20
\data_memory|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux19~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\) # ((\data_memory|possible_outputs[1][12]~combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (!\arith_logic_unity|Mux28~1_combout\ & 
-- ((\data_memory|possible_outputs[0][12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[1][12]~combout\,
	datad => \data_memory|possible_outputs[0][12]~combout\,
	combout => \data_memory|Mux19~0_combout\);

-- Location: LCCOMB_X102_Y32_N10
\data_memory|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux19~1_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|Mux19~0_combout\ & (\data_memory|possible_outputs[3][12]~combout\)) # (!\data_memory|Mux19~0_combout\ & ((\data_memory|possible_outputs[2][12]~combout\))))) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & (((\data_memory|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][12]~combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[2][12]~combout\,
	datad => \data_memory|Mux19~0_combout\,
	combout => \data_memory|Mux19~1_combout\);

-- Location: LCCOMB_X100_Y34_N6
\aluOp2[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[12]~23_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(12)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:1:regx|Q\(12),
	datad => \register_file|registers:0:regx|Q\(12),
	combout => \aluOp2[12]~23_combout\);

-- Location: LCCOMB_X101_Y34_N24
\arith_logic_unity|Res~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~58_combout\ = \aluOp2[12]~23_combout\ $ (((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(12)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \aluOp2[12]~23_combout\,
	datac => \register_file|registers:1:regx|Q\(12),
	datad => \register_file|registers:0:regx|Q\(12),
	combout => \arith_logic_unity|Res~58_combout\);

-- Location: LCCOMB_X101_Y34_N4
\register_file|registers:0:regx|Q~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~65_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & (\data_memory|Mux19~1_combout\)) # (!\control|Equal3~0_combout\ & ((\arith_logic_unity|Res~58_combout\))))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux19~1_combout\,
	datab => \register_file|registers:0:regx|Q~2_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \arith_logic_unity|Res~58_combout\,
	combout => \register_file|registers:0:regx|Q~65_combout\);

-- Location: FF_X102_Y34_N17
\register_file|registers:0:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~70_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(11));

-- Location: LCCOMB_X102_Y34_N16
\register_file|mux2|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux20~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(11))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:0:regx|Q\(11),
	datad => \register_file|registers:1:regx|Q\(11),
	combout => \register_file|mux2|Mux20~0_combout\);

-- Location: LCCOMB_X102_Y34_N4
\data_memory|possible_outputs[2][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][11]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux20~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][11]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux20~0_combout\,
	datac => \data_memory|possible_outputs[2][11]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][11]~combout\);

-- Location: LCCOMB_X102_Y34_N10
\data_memory|possible_outputs[0][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][11]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux20~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][11]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \register_file|mux2|Mux20~0_combout\,
	combout => \data_memory|possible_outputs[0][11]~combout\);

-- Location: LCCOMB_X102_Y34_N24
\data_memory|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux20~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[2][11]~combout\) # ((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (((!\arith_logic_unity|Mux29~1_combout\ & 
-- \data_memory|possible_outputs[0][11]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \data_memory|possible_outputs[2][11]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[0][11]~combout\,
	combout => \data_memory|Mux20~0_combout\);

-- Location: LCCOMB_X102_Y34_N30
\data_memory|possible_outputs[1][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][11]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux20~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datac => \data_memory|possible_outputs[1][11]~combout\,
	datad => \register_file|mux2|Mux20~0_combout\,
	combout => \data_memory|possible_outputs[1][11]~combout\);

-- Location: LCCOMB_X103_Y34_N4
\data_memory|possible_outputs[3][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][11]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux20~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datab => \data_memory|possible_outputs[3][11]~combout\,
	datad => \register_file|mux2|Mux20~0_combout\,
	combout => \data_memory|possible_outputs[3][11]~combout\);

-- Location: LCCOMB_X102_Y34_N14
\data_memory|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux20~1_combout\ = (\data_memory|Mux20~0_combout\ & (((\data_memory|possible_outputs[3][11]~combout\)) # (!\arith_logic_unity|Mux29~1_combout\))) # (!\data_memory|Mux20~0_combout\ & (\arith_logic_unity|Mux29~1_combout\ & 
-- (\data_memory|possible_outputs[1][11]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux20~0_combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[1][11]~combout\,
	datad => \data_memory|possible_outputs[3][11]~combout\,
	combout => \data_memory|Mux20~1_combout\);

-- Location: LCCOMB_X101_Y34_N18
\arith_logic_unity|Res~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~59_combout\ = \aluOp2[11]~24_combout\ $ (((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(11)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[11]~24_combout\,
	datab => \register_file|registers:1:regx|Q\(11),
	datac => \register_file|registers:0:regx|Q\(11),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \arith_logic_unity|Res~59_combout\);

-- Location: LCCOMB_X102_Y34_N20
\register_file|registers:0:regx|Q~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~68_combout\ = (\control|Equal3~0_combout\ & ((\data_memory|Mux20~1_combout\) # ((!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (((\arith_logic_unity|Res~59_combout\ & 
-- \register_file|registers:0:regx|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \data_memory|Mux20~1_combout\,
	datac => \arith_logic_unity|Res~59_combout\,
	datad => \register_file|registers:0:regx|Q~2_combout\,
	combout => \register_file|registers:0:regx|Q~68_combout\);

-- Location: LCCOMB_X102_Y34_N12
\register_file|mux1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux20~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(11)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(11),
	datad => \register_file|registers:0:regx|Q\(11),
	combout => \register_file|mux1|Mux20~0_combout\);

-- Location: FF_X99_Y35_N5
\register_file|registers:0:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(10));

-- Location: LCCOMB_X99_Y35_N28
\register_file|mux1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux21~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(10)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(10),
	datad => \register_file|registers:0:regx|Q\(10),
	combout => \register_file|mux1|Mux21~0_combout\);

-- Location: LCCOMB_X100_Y36_N24
\register_file|registers:0:regx|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[9]~feeder_combout\ = \register_file|registers:0:regx|Q~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~76_combout\,
	combout => \register_file|registers:0:regx|Q[9]~feeder_combout\);

-- Location: FF_X100_Y36_N25
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

-- Location: LCCOMB_X100_Y36_N14
\aluOp2[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[9]~26_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(9)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:1:regx|Q\(9),
	datad => \register_file|registers:0:regx|Q\(9),
	combout => \aluOp2[9]~26_combout\);

-- Location: LCCOMB_X100_Y34_N28
\register_file|registers:0:regx|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[8]~feeder_combout\ = \register_file|registers:0:regx|Q~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~79_combout\,
	combout => \register_file|registers:0:regx|Q[8]~feeder_combout\);

-- Location: FF_X100_Y34_N29
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

-- Location: LCCOMB_X100_Y34_N26
\arith_logic_unity|Res~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~62_combout\ = \aluOp2[8]~27_combout\ $ (((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(8)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[8]~27_combout\,
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(8),
	datad => \register_file|registers:0:regx|Q\(8),
	combout => \arith_logic_unity|Res~62_combout\);

-- Location: LCCOMB_X100_Y34_N30
\register_file|mux2|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux23~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(8)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(8),
	datab => \register_file|registers:0:regx|Q\(8),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux23~0_combout\);

-- Location: LCCOMB_X96_Y34_N16
\data_memory|possible_outputs[1][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][8]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux23~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][8]~combout\,
	datac => \register_file|mux2|Mux23~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][8]~combout\);

-- Location: LCCOMB_X96_Y34_N18
\data_memory|possible_outputs[0][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][8]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux23~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][8]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \register_file|mux2|Mux23~0_combout\,
	combout => \data_memory|possible_outputs[0][8]~combout\);

-- Location: LCCOMB_X96_Y34_N28
\data_memory|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux23~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][8]~combout\) # ((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (((!\arith_logic_unity|Mux28~1_combout\ & 
-- \data_memory|possible_outputs[0][8]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[1][8]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[0][8]~combout\,
	combout => \data_memory|Mux23~0_combout\);

-- Location: LCCOMB_X97_Y34_N30
\data_memory|possible_outputs[2][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][8]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux23~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][8]~combout\,
	datac => \register_file|mux2|Mux23~0_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][8]~combout\);

-- Location: LCCOMB_X96_Y34_N20
\data_memory|possible_outputs[3][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][8]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux23~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][8]~combout\,
	datac => \register_file|mux2|Mux23~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][8]~combout\);

-- Location: LCCOMB_X96_Y34_N6
\data_memory|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux23~1_combout\ = (\data_memory|Mux23~0_combout\ & (((\data_memory|possible_outputs[3][8]~combout\)) # (!\arith_logic_unity|Mux28~1_combout\))) # (!\data_memory|Mux23~0_combout\ & (\arith_logic_unity|Mux28~1_combout\ & 
-- (\data_memory|possible_outputs[2][8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux23~0_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[2][8]~combout\,
	datad => \data_memory|possible_outputs[3][8]~combout\,
	combout => \data_memory|Mux23~1_combout\);

-- Location: LCCOMB_X100_Y34_N22
\register_file|registers:0:regx|Q~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~77_combout\ = (\control|Equal3~0_combout\ & (((\data_memory|Mux23~1_combout\) # (!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (\arith_logic_unity|Res~62_combout\ & 
-- ((\register_file|registers:0:regx|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \arith_logic_unity|Res~62_combout\,
	datac => \data_memory|Mux23~1_combout\,
	datad => \register_file|registers:0:regx|Q~2_combout\,
	combout => \register_file|registers:0:regx|Q~77_combout\);

-- Location: LCCOMB_X100_Y34_N12
\register_file|mux1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux23~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(8)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(8),
	datad => \register_file|registers:0:regx|Q\(8),
	combout => \register_file|mux1|Mux23~0_combout\);

-- Location: FF_X98_Y34_N19
\register_file|registers:1:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~82_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(7));

-- Location: LCCOMB_X98_Y34_N4
\register_file|mux2|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux24~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(7)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:1:regx|Q\(7),
	datac => \register_file|registers:0:regx|Q\(7),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux24~0_combout\);

-- Location: LCCOMB_X98_Y34_N30
\data_memory|possible_outputs[3][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][7]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux24~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][7]~combout\,
	datac => \register_file|mux2|Mux24~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][7]~combout\);

-- Location: LCCOMB_X97_Y34_N8
\data_memory|possible_outputs[2][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][7]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux24~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux24~0_combout\,
	datac => \data_memory|possible_outputs[2][7]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][7]~combout\);

-- Location: LCCOMB_X98_Y34_N16
\data_memory|possible_outputs[0][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][7]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux24~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux24~0_combout\,
	datab => \data_memory|possible_outputs[0][7]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][7]~combout\);

-- Location: LCCOMB_X98_Y34_N24
\data_memory|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux24~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[2][7]~combout\)) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[0][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][7]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[0][7]~combout\,
	combout => \data_memory|Mux24~0_combout\);

-- Location: LCCOMB_X98_Y34_N26
\data_memory|possible_outputs[1][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][7]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux24~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][7]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux24~0_combout\,
	combout => \data_memory|possible_outputs[1][7]~combout\);

-- Location: LCCOMB_X98_Y34_N10
\data_memory|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux24~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux24~0_combout\ & (\data_memory|possible_outputs[3][7]~combout\)) # (!\data_memory|Mux24~0_combout\ & ((\data_memory|possible_outputs[1][7]~combout\))))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][7]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|Mux24~0_combout\,
	datad => \data_memory|possible_outputs[1][7]~combout\,
	combout => \data_memory|Mux24~1_combout\);

-- Location: LCCOMB_X98_Y34_N22
\aluOp2[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[7]~28_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(7))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:0:regx|Q\(7),
	datad => \register_file|registers:1:regx|Q\(7),
	combout => \aluOp2[7]~28_combout\);

-- Location: LCCOMB_X98_Y34_N18
\arith_logic_unity|Res~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~63_combout\ = \aluOp2[7]~28_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(7))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \register_file|registers:0:regx|Q\(7),
	datac => \register_file|registers:1:regx|Q\(7),
	datad => \aluOp2[7]~28_combout\,
	combout => \arith_logic_unity|Res~63_combout\);

-- Location: LCCOMB_X98_Y34_N6
\register_file|registers:0:regx|Q~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~80_combout\ = (\control|Equal3~0_combout\ & ((\data_memory|Mux24~1_combout\) # ((!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (((\arith_logic_unity|Res~63_combout\ & 
-- \register_file|registers:0:regx|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux24~1_combout\,
	datab => \control|Equal3~0_combout\,
	datac => \arith_logic_unity|Res~63_combout\,
	datad => \register_file|registers:0:regx|Q~2_combout\,
	combout => \register_file|registers:0:regx|Q~80_combout\);

-- Location: FF_X100_Y35_N11
\register_file|registers:1:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(6));

-- Location: LCCOMB_X100_Y35_N30
\aluOp2[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[6]~29_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(6))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:0:regx|Q\(6),
	datad => \register_file|registers:1:regx|Q\(6),
	combout => \aluOp2[6]~29_combout\);

-- Location: LCCOMB_X100_Y31_N28
\register_file|registers:0:regx|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[5]~feeder_combout\ = \register_file|registers:0:regx|Q~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~88_combout\,
	combout => \register_file|registers:0:regx|Q[5]~feeder_combout\);

-- Location: FF_X100_Y31_N29
\register_file|registers:0:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(5));

-- Location: LCCOMB_X101_Y31_N12
\register_file|mux2|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux26~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(5)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(5),
	datac => \register_file|registers:0:regx|Q\(5),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux26~0_combout\);

-- Location: LCCOMB_X100_Y31_N10
\data_memory|possible_outputs[3][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][5]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux26~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][5]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux26~0_combout\,
	combout => \data_memory|possible_outputs[3][5]~combout\);

-- Location: LCCOMB_X100_Y31_N12
\data_memory|possible_outputs[1][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][5]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux26~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][5]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux26~0_combout\,
	combout => \data_memory|possible_outputs[1][5]~combout\);

-- Location: LCCOMB_X100_Y31_N4
\data_memory|possible_outputs[0][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][5]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux26~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux26~0_combout\,
	datab => \data_memory|possible_outputs[0][5]~combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][5]~combout\);

-- Location: LCCOMB_X101_Y31_N8
\data_memory|possible_outputs[2][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][5]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux26~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][5]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux26~0_combout\,
	combout => \data_memory|possible_outputs[2][5]~combout\);

-- Location: LCCOMB_X100_Y31_N20
\data_memory|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux26~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (\arith_logic_unity|Mux28~1_combout\)) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[2][5]~combout\))) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[0][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[0][5]~combout\,
	datad => \data_memory|possible_outputs[2][5]~combout\,
	combout => \data_memory|Mux26~0_combout\);

-- Location: LCCOMB_X100_Y31_N6
\data_memory|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux26~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux26~0_combout\ & (\data_memory|possible_outputs[3][5]~combout\)) # (!\data_memory|Mux26~0_combout\ & ((\data_memory|possible_outputs[1][5]~combout\))))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][5]~combout\,
	datab => \data_memory|possible_outputs[1][5]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|Mux26~0_combout\,
	combout => \data_memory|Mux26~1_combout\);

-- Location: LCCOMB_X100_Y31_N18
\aluOp2[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[5]~30_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(5)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:1:regx|Q\(5),
	datad => \register_file|registers:0:regx|Q\(5),
	combout => \aluOp2[5]~30_combout\);

-- Location: LCCOMB_X101_Y31_N18
\arith_logic_unity|Res~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~65_combout\ = \aluOp2[5]~30_combout\ $ (((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(5)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(5),
	datab => \aluOp2[5]~30_combout\,
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \register_file|registers:0:regx|Q\(5),
	combout => \arith_logic_unity|Res~65_combout\);

-- Location: LCCOMB_X100_Y31_N0
\register_file|registers:0:regx|Q~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~86_combout\ = (\control|Equal3~0_combout\ & ((\data_memory|Mux26~1_combout\) # ((!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (((\arith_logic_unity|Res~65_combout\ & 
-- \register_file|registers:0:regx|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux26~1_combout\,
	datab => \arith_logic_unity|Res~65_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \register_file|registers:0:regx|Q~2_combout\,
	combout => \register_file|registers:0:regx|Q~86_combout\);

-- Location: FF_X100_Y34_N9
\register_file|registers:0:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(4));

-- Location: LCCOMB_X100_Y34_N18
\aluOp2[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[4]~31_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(4)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:1:regx|Q\(4),
	datad => \register_file|registers:0:regx|Q\(4),
	combout => \aluOp2[4]~31_combout\);

-- Location: LCCOMB_X101_Y33_N6
\arith_logic_unity|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~6_combout\ = (\register_file|mux1|Mux28~0_combout\ & ((\aluOp2[3]~0_combout\ & (\arith_logic_unity|Add0~5\ & VCC)) # (!\aluOp2[3]~0_combout\ & (!\arith_logic_unity|Add0~5\)))) # (!\register_file|mux1|Mux28~0_combout\ & 
-- ((\aluOp2[3]~0_combout\ & (!\arith_logic_unity|Add0~5\)) # (!\aluOp2[3]~0_combout\ & ((\arith_logic_unity|Add0~5\) # (GND)))))
-- \arith_logic_unity|Add0~7\ = CARRY((\register_file|mux1|Mux28~0_combout\ & (!\aluOp2[3]~0_combout\ & !\arith_logic_unity|Add0~5\)) # (!\register_file|mux1|Mux28~0_combout\ & ((!\arith_logic_unity|Add0~5\) # (!\aluOp2[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux28~0_combout\,
	datab => \aluOp2[3]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~5\,
	combout => \arith_logic_unity|Add0~6_combout\,
	cout => \arith_logic_unity|Add0~7\);

-- Location: LCCOMB_X101_Y33_N8
\arith_logic_unity|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~8_combout\ = ((\register_file|mux1|Mux27~0_combout\ $ (\aluOp2[4]~31_combout\ $ (!\arith_logic_unity|Add0~7\)))) # (GND)
-- \arith_logic_unity|Add0~9\ = CARRY((\register_file|mux1|Mux27~0_combout\ & ((\aluOp2[4]~31_combout\) # (!\arith_logic_unity|Add0~7\))) # (!\register_file|mux1|Mux27~0_combout\ & (\aluOp2[4]~31_combout\ & !\arith_logic_unity|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux27~0_combout\,
	datab => \aluOp2[4]~31_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~7\,
	combout => \arith_logic_unity|Add0~8_combout\,
	cout => \arith_logic_unity|Add0~9\);

-- Location: FF_X98_Y33_N19
\register_file|registers:1:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(1),
	asdata => \register_file|registers:0:regx|Q~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(0));

-- Location: LCCOMB_X98_Y33_N12
\register_file|mux1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux31~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(0)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(0),
	datac => \register_file|registers:0:regx|Q\(0),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \register_file|mux1|Mux31~0_combout\);

-- Location: LCCOMB_X99_Y32_N0
\arith_logic_unity|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~1_cout\ = CARRY((\register_file|mux1|Mux31~0_combout\) # (!\aluOp2[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux31~0_combout\,
	datab => \aluOp2[0]~3_combout\,
	datad => VCC,
	cout => \arith_logic_unity|Add1~1_cout\);

-- Location: LCCOMB_X99_Y32_N2
\arith_logic_unity|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~2_combout\ = (\register_file|mux1|Mux30~0_combout\ & ((\aluOp2[1]~2_combout\ & (!\arith_logic_unity|Add1~1_cout\)) # (!\aluOp2[1]~2_combout\ & (\arith_logic_unity|Add1~1_cout\ & VCC)))) # (!\register_file|mux1|Mux30~0_combout\ & 
-- ((\aluOp2[1]~2_combout\ & ((\arith_logic_unity|Add1~1_cout\) # (GND))) # (!\aluOp2[1]~2_combout\ & (!\arith_logic_unity|Add1~1_cout\))))
-- \arith_logic_unity|Add1~3\ = CARRY((\register_file|mux1|Mux30~0_combout\ & (\aluOp2[1]~2_combout\ & !\arith_logic_unity|Add1~1_cout\)) # (!\register_file|mux1|Mux30~0_combout\ & ((\aluOp2[1]~2_combout\) # (!\arith_logic_unity|Add1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux30~0_combout\,
	datab => \aluOp2[1]~2_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~1_cout\,
	combout => \arith_logic_unity|Add1~2_combout\,
	cout => \arith_logic_unity|Add1~3\);

-- Location: LCCOMB_X99_Y32_N4
\arith_logic_unity|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~5_cout\ = CARRY((\register_file|mux1|Mux29~0_combout\ & ((!\arith_logic_unity|Add1~3\) # (!\aluOp2[2]~1_combout\))) # (!\register_file|mux1|Mux29~0_combout\ & (!\aluOp2[2]~1_combout\ & !\arith_logic_unity|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux29~0_combout\,
	datab => \aluOp2[2]~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~3\,
	cout => \arith_logic_unity|Add1~5_cout\);

-- Location: LCCOMB_X99_Y32_N6
\arith_logic_unity|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~7_cout\ = CARRY((\register_file|mux1|Mux28~0_combout\ & (\aluOp2[3]~0_combout\ & !\arith_logic_unity|Add1~5_cout\)) # (!\register_file|mux1|Mux28~0_combout\ & ((\aluOp2[3]~0_combout\) # (!\arith_logic_unity|Add1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux28~0_combout\,
	datab => \aluOp2[3]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~5_cout\,
	cout => \arith_logic_unity|Add1~7_cout\);

-- Location: LCCOMB_X99_Y32_N8
\arith_logic_unity|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~8_combout\ = ((\register_file|mux1|Mux27~0_combout\ $ (\aluOp2[4]~31_combout\ $ (\arith_logic_unity|Add1~7_cout\)))) # (GND)
-- \arith_logic_unity|Add1~9\ = CARRY((\register_file|mux1|Mux27~0_combout\ & ((!\arith_logic_unity|Add1~7_cout\) # (!\aluOp2[4]~31_combout\))) # (!\register_file|mux1|Mux27~0_combout\ & (!\aluOp2[4]~31_combout\ & !\arith_logic_unity|Add1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux27~0_combout\,
	datab => \aluOp2[4]~31_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~7_cout\,
	combout => \arith_logic_unity|Add1~8_combout\,
	cout => \arith_logic_unity|Add1~9\);

-- Location: LCCOMB_X101_Y34_N16
\arith_logic_unity|Res~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~66_combout\ = \aluOp2[4]~31_combout\ $ (((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(4)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[4]~31_combout\,
	datab => \register_file|registers:1:regx|Q\(4),
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \register_file|registers:0:regx|Q\(4),
	combout => \arith_logic_unity|Res~66_combout\);

-- Location: LCCOMB_X101_Y34_N2
\register_file|mux2|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux27~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(4)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(4),
	datab => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:0:regx|Q\(4),
	combout => \register_file|mux2|Mux27~0_combout\);

-- Location: LCCOMB_X102_Y33_N4
\data_memory|possible_outputs[1][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][4]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux27~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux27~0_combout\,
	datac => \data_memory|possible_outputs[1][4]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][4]~combout\);

-- Location: LCCOMB_X102_Y33_N20
\data_memory|possible_outputs[0][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][4]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux27~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux27~0_combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \data_memory|possible_outputs[0][4]~combout\,
	combout => \data_memory|possible_outputs[0][4]~combout\);

-- Location: LCCOMB_X102_Y33_N16
\data_memory|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux27~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (\arith_logic_unity|Mux29~1_combout\)) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[1][4]~combout\)) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[0][4]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[1][4]~combout\,
	datad => \data_memory|possible_outputs[0][4]~combout\,
	combout => \data_memory|Mux27~0_combout\);

-- Location: LCCOMB_X102_Y33_N30
\data_memory|possible_outputs[2][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][4]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux27~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux27~0_combout\,
	datac => \data_memory|possible_outputs[2][4]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][4]~combout\);

-- Location: LCCOMB_X103_Y33_N4
\data_memory|possible_outputs[3][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][4]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux27~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux27~0_combout\,
	datab => \data_memory|possible_outputs[3][4]~combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][4]~combout\);

-- Location: LCCOMB_X102_Y33_N8
\data_memory|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux27~1_combout\ = (\data_memory|Mux27~0_combout\ & (((\data_memory|possible_outputs[3][4]~combout\) # (!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux27~0_combout\ & (\data_memory|possible_outputs[2][4]~combout\ & 
-- (\arith_logic_unity|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux27~0_combout\,
	datab => \data_memory|possible_outputs[2][4]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[3][4]~combout\,
	combout => \data_memory|Mux27~1_combout\);

-- Location: LCCOMB_X101_Y34_N26
\register_file|registers:0:regx|Q~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~89_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & ((\data_memory|Mux27~1_combout\))) # (!\control|Equal3~0_combout\ & (\arith_logic_unity|Res~66_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Res~66_combout\,
	datab => \register_file|registers:0:regx|Q~2_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \data_memory|Mux27~1_combout\,
	combout => \register_file|registers:0:regx|Q~89_combout\);

-- Location: LCCOMB_X100_Y34_N10
\register_file|registers:0:regx|Q~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~90_combout\ = (\control|Equal4~1_combout\ & ((\register_file|registers:0:regx|Q~89_combout\ & ((\arith_logic_unity|Add1~8_combout\))) # (!\register_file|registers:0:regx|Q~89_combout\ & 
-- (\arith_logic_unity|Add0~8_combout\)))) # (!\control|Equal4~1_combout\ & (((\register_file|registers:0:regx|Q~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal4~1_combout\,
	datab => \arith_logic_unity|Add0~8_combout\,
	datac => \arith_logic_unity|Add1~8_combout\,
	datad => \register_file|registers:0:regx|Q~89_combout\,
	combout => \register_file|registers:0:regx|Q~90_combout\);

-- Location: LCCOMB_X100_Y34_N8
\register_file|registers:0:regx|Q~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~91_combout\ = (\register_file|registers:0:regx|Q~90_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~90_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~91_combout\);

-- Location: FF_X100_Y34_N15
\register_file|registers:1:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~91_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(4));

-- Location: LCCOMB_X100_Y34_N4
\register_file|mux1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux27~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(4)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(4),
	datad => \register_file|registers:0:regx|Q\(4),
	combout => \register_file|mux1|Mux27~0_combout\);

-- Location: LCCOMB_X101_Y33_N10
\arith_logic_unity|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~10_combout\ = (\register_file|mux1|Mux26~0_combout\ & ((\aluOp2[5]~30_combout\ & (\arith_logic_unity|Add0~9\ & VCC)) # (!\aluOp2[5]~30_combout\ & (!\arith_logic_unity|Add0~9\)))) # (!\register_file|mux1|Mux26~0_combout\ & 
-- ((\aluOp2[5]~30_combout\ & (!\arith_logic_unity|Add0~9\)) # (!\aluOp2[5]~30_combout\ & ((\arith_logic_unity|Add0~9\) # (GND)))))
-- \arith_logic_unity|Add0~11\ = CARRY((\register_file|mux1|Mux26~0_combout\ & (!\aluOp2[5]~30_combout\ & !\arith_logic_unity|Add0~9\)) # (!\register_file|mux1|Mux26~0_combout\ & ((!\arith_logic_unity|Add0~9\) # (!\aluOp2[5]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux26~0_combout\,
	datab => \aluOp2[5]~30_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~9\,
	combout => \arith_logic_unity|Add0~10_combout\,
	cout => \arith_logic_unity|Add0~11\);

-- Location: LCCOMB_X99_Y32_N10
\arith_logic_unity|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~10_combout\ = (\register_file|mux1|Mux26~0_combout\ & ((\aluOp2[5]~30_combout\ & (!\arith_logic_unity|Add1~9\)) # (!\aluOp2[5]~30_combout\ & (\arith_logic_unity|Add1~9\ & VCC)))) # (!\register_file|mux1|Mux26~0_combout\ & 
-- ((\aluOp2[5]~30_combout\ & ((\arith_logic_unity|Add1~9\) # (GND))) # (!\aluOp2[5]~30_combout\ & (!\arith_logic_unity|Add1~9\))))
-- \arith_logic_unity|Add1~11\ = CARRY((\register_file|mux1|Mux26~0_combout\ & (\aluOp2[5]~30_combout\ & !\arith_logic_unity|Add1~9\)) # (!\register_file|mux1|Mux26~0_combout\ & ((\aluOp2[5]~30_combout\) # (!\arith_logic_unity|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux26~0_combout\,
	datab => \aluOp2[5]~30_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~9\,
	combout => \arith_logic_unity|Add1~10_combout\,
	cout => \arith_logic_unity|Add1~11\);

-- Location: LCCOMB_X100_Y31_N26
\register_file|registers:0:regx|Q~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~87_combout\ = (\register_file|registers:0:regx|Q~86_combout\ & (((\arith_logic_unity|Add1~10_combout\) # (!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~86_combout\ & 
-- (\arith_logic_unity|Add0~10_combout\ & (\control|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~86_combout\,
	datab => \arith_logic_unity|Add0~10_combout\,
	datac => \control|Equal4~1_combout\,
	datad => \arith_logic_unity|Add1~10_combout\,
	combout => \register_file|registers:0:regx|Q~87_combout\);

-- Location: LCCOMB_X100_Y31_N30
\register_file|registers:0:regx|Q~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~88_combout\ = (\register_file|registers:0:regx|Q~87_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~87_combout\,
	datac => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~88_combout\);

-- Location: FF_X100_Y31_N31
\register_file|registers:1:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(5));

-- Location: LCCOMB_X100_Y31_N16
\register_file|mux1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux26~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(5)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(5),
	datad => \register_file|registers:0:regx|Q\(5),
	combout => \register_file|mux1|Mux26~0_combout\);

-- Location: LCCOMB_X99_Y32_N12
\arith_logic_unity|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~12_combout\ = ((\register_file|mux1|Mux25~0_combout\ $ (\aluOp2[6]~29_combout\ $ (\arith_logic_unity|Add1~11\)))) # (GND)
-- \arith_logic_unity|Add1~13\ = CARRY((\register_file|mux1|Mux25~0_combout\ & ((!\arith_logic_unity|Add1~11\) # (!\aluOp2[6]~29_combout\))) # (!\register_file|mux1|Mux25~0_combout\ & (!\aluOp2[6]~29_combout\ & !\arith_logic_unity|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~0_combout\,
	datab => \aluOp2[6]~29_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~11\,
	combout => \arith_logic_unity|Add1~12_combout\,
	cout => \arith_logic_unity|Add1~13\);

-- Location: LCCOMB_X100_Y35_N26
\register_file|mux2|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux25~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(6)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:1:regx|Q\(6),
	datad => \register_file|registers:0:regx|Q\(6),
	combout => \register_file|mux2|Mux25~0_combout\);

-- Location: LCCOMB_X100_Y35_N22
\data_memory|possible_outputs[2][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][6]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux25~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][6]~combout\,
	datab => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux25~0_combout\,
	combout => \data_memory|possible_outputs[2][6]~combout\);

-- Location: LCCOMB_X100_Y35_N4
\data_memory|possible_outputs[1][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][6]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux25~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][6]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux25~0_combout\,
	combout => \data_memory|possible_outputs[1][6]~combout\);

-- Location: LCCOMB_X100_Y35_N14
\data_memory|possible_outputs[0][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][6]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux25~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~2clkctrl_outclk\,
	datab => \data_memory|possible_outputs[0][6]~combout\,
	datac => \register_file|mux2|Mux25~0_combout\,
	combout => \data_memory|possible_outputs[0][6]~combout\);

-- Location: LCCOMB_X100_Y35_N28
\data_memory|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux25~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][6]~combout\) # ((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|possible_outputs[0][6]~combout\ & 
-- !\arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[1][6]~combout\,
	datac => \data_memory|possible_outputs[0][6]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux25~0_combout\);

-- Location: LCCOMB_X101_Y35_N4
\data_memory|possible_outputs[3][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][6]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux25~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][6]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux25~0_combout\,
	combout => \data_memory|possible_outputs[3][6]~combout\);

-- Location: LCCOMB_X100_Y35_N2
\data_memory|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux25~1_combout\ = (\data_memory|Mux25~0_combout\ & (((\data_memory|possible_outputs[3][6]~combout\) # (!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux25~0_combout\ & (\data_memory|possible_outputs[2][6]~combout\ & 
-- (\arith_logic_unity|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][6]~combout\,
	datab => \data_memory|Mux25~0_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[3][6]~combout\,
	combout => \data_memory|Mux25~1_combout\);

-- Location: LCCOMB_X100_Y35_N8
\arith_logic_unity|Res~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~64_combout\ = \aluOp2[6]~29_combout\ $ (((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(6)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(6),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(6),
	datad => \aluOp2[6]~29_combout\,
	combout => \arith_logic_unity|Res~64_combout\);

-- Location: LCCOMB_X100_Y35_N18
\register_file|registers:0:regx|Q~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~83_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & (\data_memory|Mux25~1_combout\)) # (!\control|Equal3~0_combout\ & ((\arith_logic_unity|Res~64_combout\))))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux25~1_combout\,
	datab => \register_file|registers:0:regx|Q~2_combout\,
	datac => \arith_logic_unity|Res~64_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~83_combout\);

-- Location: LCCOMB_X101_Y33_N12
\arith_logic_unity|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~12_combout\ = ((\register_file|mux1|Mux25~0_combout\ $ (\aluOp2[6]~29_combout\ $ (!\arith_logic_unity|Add0~11\)))) # (GND)
-- \arith_logic_unity|Add0~13\ = CARRY((\register_file|mux1|Mux25~0_combout\ & ((\aluOp2[6]~29_combout\) # (!\arith_logic_unity|Add0~11\))) # (!\register_file|mux1|Mux25~0_combout\ & (\aluOp2[6]~29_combout\ & !\arith_logic_unity|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~0_combout\,
	datab => \aluOp2[6]~29_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~11\,
	combout => \arith_logic_unity|Add0~12_combout\,
	cout => \arith_logic_unity|Add0~13\);

-- Location: LCCOMB_X100_Y35_N0
\register_file|registers:0:regx|Q~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~84_combout\ = (\register_file|registers:0:regx|Q~83_combout\ & ((\arith_logic_unity|Add1~12_combout\) # ((!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~83_combout\ & 
-- (((\arith_logic_unity|Add0~12_combout\ & \control|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~12_combout\,
	datab => \register_file|registers:0:regx|Q~83_combout\,
	datac => \arith_logic_unity|Add0~12_combout\,
	datad => \control|Equal4~1_combout\,
	combout => \register_file|registers:0:regx|Q~84_combout\);

-- Location: LCCOMB_X100_Y35_N16
\register_file|registers:0:regx|Q~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~85_combout\ = (\register_file|registers:0:regx|Q~84_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~84_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~85_combout\);

-- Location: FF_X100_Y35_N9
\register_file|registers:0:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~85_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(6));

-- Location: LCCOMB_X100_Y35_N24
\register_file|mux1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux25~0_combout\ = (\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(6))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(6),
	datad => \register_file|registers:1:regx|Q\(6),
	combout => \register_file|mux1|Mux25~0_combout\);

-- Location: LCCOMB_X99_Y32_N14
\arith_logic_unity|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~14_combout\ = (\register_file|mux1|Mux24~0_combout\ & ((\aluOp2[7]~28_combout\ & (!\arith_logic_unity|Add1~13\)) # (!\aluOp2[7]~28_combout\ & (\arith_logic_unity|Add1~13\ & VCC)))) # (!\register_file|mux1|Mux24~0_combout\ & 
-- ((\aluOp2[7]~28_combout\ & ((\arith_logic_unity|Add1~13\) # (GND))) # (!\aluOp2[7]~28_combout\ & (!\arith_logic_unity|Add1~13\))))
-- \arith_logic_unity|Add1~15\ = CARRY((\register_file|mux1|Mux24~0_combout\ & (\aluOp2[7]~28_combout\ & !\arith_logic_unity|Add1~13\)) # (!\register_file|mux1|Mux24~0_combout\ & ((\aluOp2[7]~28_combout\) # (!\arith_logic_unity|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux24~0_combout\,
	datab => \aluOp2[7]~28_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~13\,
	combout => \arith_logic_unity|Add1~14_combout\,
	cout => \arith_logic_unity|Add1~15\);

-- Location: LCCOMB_X101_Y33_N14
\arith_logic_unity|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~14_combout\ = (\register_file|mux1|Mux24~0_combout\ & ((\aluOp2[7]~28_combout\ & (\arith_logic_unity|Add0~13\ & VCC)) # (!\aluOp2[7]~28_combout\ & (!\arith_logic_unity|Add0~13\)))) # (!\register_file|mux1|Mux24~0_combout\ & 
-- ((\aluOp2[7]~28_combout\ & (!\arith_logic_unity|Add0~13\)) # (!\aluOp2[7]~28_combout\ & ((\arith_logic_unity|Add0~13\) # (GND)))))
-- \arith_logic_unity|Add0~15\ = CARRY((\register_file|mux1|Mux24~0_combout\ & (!\aluOp2[7]~28_combout\ & !\arith_logic_unity|Add0~13\)) # (!\register_file|mux1|Mux24~0_combout\ & ((!\arith_logic_unity|Add0~13\) # (!\aluOp2[7]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux24~0_combout\,
	datab => \aluOp2[7]~28_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~13\,
	combout => \arith_logic_unity|Add0~14_combout\,
	cout => \arith_logic_unity|Add0~15\);

-- Location: LCCOMB_X98_Y34_N8
\register_file|registers:0:regx|Q~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~81_combout\ = (\register_file|registers:0:regx|Q~80_combout\ & (((\arith_logic_unity|Add1~14_combout\)) # (!\control|Equal4~1_combout\))) # (!\register_file|registers:0:regx|Q~80_combout\ & (\control|Equal4~1_combout\ & 
-- ((\arith_logic_unity|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~80_combout\,
	datab => \control|Equal4~1_combout\,
	datac => \arith_logic_unity|Add1~14_combout\,
	datad => \arith_logic_unity|Add0~14_combout\,
	combout => \register_file|registers:0:regx|Q~81_combout\);

-- Location: LCCOMB_X98_Y34_N0
\register_file|registers:0:regx|Q~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~82_combout\ = (\register_file|registers:0:regx|Q~81_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~81_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~82_combout\);

-- Location: FF_X98_Y34_N5
\register_file|registers:0:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~82_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(7));

-- Location: LCCOMB_X98_Y34_N12
\register_file|mux1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux24~0_combout\ = (\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(7))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(7),
	datad => \register_file|registers:1:regx|Q\(7),
	combout => \register_file|mux1|Mux24~0_combout\);

-- Location: LCCOMB_X99_Y32_N16
\arith_logic_unity|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~16_combout\ = ((\aluOp2[8]~27_combout\ $ (\register_file|mux1|Mux23~0_combout\ $ (\arith_logic_unity|Add1~15\)))) # (GND)
-- \arith_logic_unity|Add1~17\ = CARRY((\aluOp2[8]~27_combout\ & (\register_file|mux1|Mux23~0_combout\ & !\arith_logic_unity|Add1~15\)) # (!\aluOp2[8]~27_combout\ & ((\register_file|mux1|Mux23~0_combout\) # (!\arith_logic_unity|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[8]~27_combout\,
	datab => \register_file|mux1|Mux23~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~15\,
	combout => \arith_logic_unity|Add1~16_combout\,
	cout => \arith_logic_unity|Add1~17\);

-- Location: LCCOMB_X101_Y33_N16
\arith_logic_unity|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~16_combout\ = ((\register_file|mux1|Mux23~0_combout\ $ (\aluOp2[8]~27_combout\ $ (!\arith_logic_unity|Add0~15\)))) # (GND)
-- \arith_logic_unity|Add0~17\ = CARRY((\register_file|mux1|Mux23~0_combout\ & ((\aluOp2[8]~27_combout\) # (!\arith_logic_unity|Add0~15\))) # (!\register_file|mux1|Mux23~0_combout\ & (\aluOp2[8]~27_combout\ & !\arith_logic_unity|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux23~0_combout\,
	datab => \aluOp2[8]~27_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~15\,
	combout => \arith_logic_unity|Add0~16_combout\,
	cout => \arith_logic_unity|Add0~17\);

-- Location: LCCOMB_X100_Y34_N16
\register_file|registers:0:regx|Q~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~78_combout\ = (\register_file|registers:0:regx|Q~77_combout\ & (((\arith_logic_unity|Add1~16_combout\)) # (!\control|Equal4~1_combout\))) # (!\register_file|registers:0:regx|Q~77_combout\ & (\control|Equal4~1_combout\ & 
-- ((\arith_logic_unity|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~77_combout\,
	datab => \control|Equal4~1_combout\,
	datac => \arith_logic_unity|Add1~16_combout\,
	datad => \arith_logic_unity|Add0~16_combout\,
	combout => \register_file|registers:0:regx|Q~78_combout\);

-- Location: LCCOMB_X100_Y34_N0
\register_file|registers:0:regx|Q~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~79_combout\ = (\register_file|registers:0:regx|Q~78_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~78_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~79_combout\);

-- Location: FF_X100_Y34_N27
\register_file|registers:1:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~79_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(8));

-- Location: LCCOMB_X100_Y34_N2
\aluOp2[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[8]~27_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(8)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:1:regx|Q\(8),
	datad => \register_file|registers:0:regx|Q\(8),
	combout => \aluOp2[8]~27_combout\);

-- Location: LCCOMB_X99_Y32_N18
\arith_logic_unity|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~18_combout\ = (\register_file|mux1|Mux22~0_combout\ & ((\aluOp2[9]~26_combout\ & (!\arith_logic_unity|Add1~17\)) # (!\aluOp2[9]~26_combout\ & (\arith_logic_unity|Add1~17\ & VCC)))) # (!\register_file|mux1|Mux22~0_combout\ & 
-- ((\aluOp2[9]~26_combout\ & ((\arith_logic_unity|Add1~17\) # (GND))) # (!\aluOp2[9]~26_combout\ & (!\arith_logic_unity|Add1~17\))))
-- \arith_logic_unity|Add1~19\ = CARRY((\register_file|mux1|Mux22~0_combout\ & (\aluOp2[9]~26_combout\ & !\arith_logic_unity|Add1~17\)) # (!\register_file|mux1|Mux22~0_combout\ & ((\aluOp2[9]~26_combout\) # (!\arith_logic_unity|Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux22~0_combout\,
	datab => \aluOp2[9]~26_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~17\,
	combout => \arith_logic_unity|Add1~18_combout\,
	cout => \arith_logic_unity|Add1~19\);

-- Location: LCCOMB_X100_Y36_N4
\register_file|mux2|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux22~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(9))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(9),
	datab => \register_file|registers:1:regx|Q\(9),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux22~0_combout\);

-- Location: LCCOMB_X100_Y36_N30
\data_memory|possible_outputs[2][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][9]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux22~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][9]~combout\,
	datab => \register_file|mux2|Mux22~0_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][9]~combout\);

-- Location: LCCOMB_X100_Y36_N16
\data_memory|possible_outputs[0][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][9]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux22~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][9]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \register_file|mux2|Mux22~0_combout\,
	combout => \data_memory|possible_outputs[0][9]~combout\);

-- Location: LCCOMB_X100_Y36_N12
\data_memory|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux22~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\) # ((\data_memory|possible_outputs[2][9]~combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (!\arith_logic_unity|Mux29~1_combout\ & 
-- ((\data_memory|possible_outputs[0][9]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[2][9]~combout\,
	datad => \data_memory|possible_outputs[0][9]~combout\,
	combout => \data_memory|Mux22~0_combout\);

-- Location: LCCOMB_X99_Y36_N20
\data_memory|possible_outputs[1][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][9]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux22~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][9]~combout\,
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux22~0_combout\,
	combout => \data_memory|possible_outputs[1][9]~combout\);

-- Location: LCCOMB_X100_Y36_N10
\data_memory|possible_outputs[3][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][9]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux22~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][9]~combout\,
	datac => \register_file|mux2|Mux22~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][9]~combout\);

-- Location: LCCOMB_X100_Y36_N26
\data_memory|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux22~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux22~0_combout\ & ((\data_memory|possible_outputs[3][9]~combout\))) # (!\data_memory|Mux22~0_combout\ & (\data_memory|possible_outputs[1][9]~combout\)))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (\data_memory|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|Mux22~0_combout\,
	datac => \data_memory|possible_outputs[1][9]~combout\,
	datad => \data_memory|possible_outputs[3][9]~combout\,
	combout => \data_memory|Mux22~1_combout\);

-- Location: LCCOMB_X100_Y36_N0
\arith_logic_unity|Res~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~61_combout\ = \aluOp2[9]~26_combout\ $ (((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(9)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \register_file|registers:1:regx|Q\(9),
	datac => \register_file|registers:0:regx|Q\(9),
	datad => \aluOp2[9]~26_combout\,
	combout => \arith_logic_unity|Res~61_combout\);

-- Location: LCCOMB_X100_Y36_N6
\register_file|registers:0:regx|Q~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~74_combout\ = (\control|Equal3~0_combout\ & ((\data_memory|Mux22~1_combout\) # ((!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (((\arith_logic_unity|Res~61_combout\ & 
-- \register_file|registers:0:regx|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux22~1_combout\,
	datab => \control|Equal3~0_combout\,
	datac => \arith_logic_unity|Res~61_combout\,
	datad => \register_file|registers:0:regx|Q~2_combout\,
	combout => \register_file|registers:0:regx|Q~74_combout\);

-- Location: LCCOMB_X101_Y33_N18
\arith_logic_unity|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~18_combout\ = (\aluOp2[9]~26_combout\ & ((\register_file|mux1|Mux22~0_combout\ & (\arith_logic_unity|Add0~17\ & VCC)) # (!\register_file|mux1|Mux22~0_combout\ & (!\arith_logic_unity|Add0~17\)))) # (!\aluOp2[9]~26_combout\ & 
-- ((\register_file|mux1|Mux22~0_combout\ & (!\arith_logic_unity|Add0~17\)) # (!\register_file|mux1|Mux22~0_combout\ & ((\arith_logic_unity|Add0~17\) # (GND)))))
-- \arith_logic_unity|Add0~19\ = CARRY((\aluOp2[9]~26_combout\ & (!\register_file|mux1|Mux22~0_combout\ & !\arith_logic_unity|Add0~17\)) # (!\aluOp2[9]~26_combout\ & ((!\arith_logic_unity|Add0~17\) # (!\register_file|mux1|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[9]~26_combout\,
	datab => \register_file|mux1|Mux22~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~17\,
	combout => \arith_logic_unity|Add0~18_combout\,
	cout => \arith_logic_unity|Add0~19\);

-- Location: LCCOMB_X100_Y36_N8
\register_file|registers:0:regx|Q~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~75_combout\ = (\register_file|registers:0:regx|Q~74_combout\ & ((\arith_logic_unity|Add1~18_combout\) # ((!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~74_combout\ & 
-- (((\arith_logic_unity|Add0~18_combout\ & \control|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~18_combout\,
	datab => \register_file|registers:0:regx|Q~74_combout\,
	datac => \arith_logic_unity|Add0~18_combout\,
	datad => \control|Equal4~1_combout\,
	combout => \register_file|registers:0:regx|Q~75_combout\);

-- Location: LCCOMB_X100_Y36_N18
\register_file|registers:0:regx|Q~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~76_combout\ = (\register_file|registers:0:regx|Q~75_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~75_combout\,
	datac => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~76_combout\);

-- Location: LCCOMB_X100_Y36_N22
\register_file|registers:1:regx|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[9]~feeder_combout\ = \register_file|registers:0:regx|Q~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~76_combout\,
	combout => \register_file|registers:1:regx|Q[9]~feeder_combout\);

-- Location: FF_X100_Y36_N23
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

-- Location: LCCOMB_X100_Y36_N28
\register_file|mux1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux22~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(9)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(9),
	datad => \register_file|registers:0:regx|Q\(9),
	combout => \register_file|mux1|Mux22~0_combout\);

-- Location: LCCOMB_X99_Y32_N20
\arith_logic_unity|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~20_combout\ = ((\aluOp2[10]~25_combout\ $ (\register_file|mux1|Mux21~0_combout\ $ (\arith_logic_unity|Add1~19\)))) # (GND)
-- \arith_logic_unity|Add1~21\ = CARRY((\aluOp2[10]~25_combout\ & (\register_file|mux1|Mux21~0_combout\ & !\arith_logic_unity|Add1~19\)) # (!\aluOp2[10]~25_combout\ & ((\register_file|mux1|Mux21~0_combout\) # (!\arith_logic_unity|Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[10]~25_combout\,
	datab => \register_file|mux1|Mux21~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~19\,
	combout => \arith_logic_unity|Add1~20_combout\,
	cout => \arith_logic_unity|Add1~21\);

-- Location: LCCOMB_X101_Y33_N20
\arith_logic_unity|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~20_combout\ = ((\aluOp2[10]~25_combout\ $ (\register_file|mux1|Mux21~0_combout\ $ (!\arith_logic_unity|Add0~19\)))) # (GND)
-- \arith_logic_unity|Add0~21\ = CARRY((\aluOp2[10]~25_combout\ & ((\register_file|mux1|Mux21~0_combout\) # (!\arith_logic_unity|Add0~19\))) # (!\aluOp2[10]~25_combout\ & (\register_file|mux1|Mux21~0_combout\ & !\arith_logic_unity|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[10]~25_combout\,
	datab => \register_file|mux1|Mux21~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~19\,
	combout => \arith_logic_unity|Add0~20_combout\,
	cout => \arith_logic_unity|Add0~21\);

-- Location: LCCOMB_X98_Y35_N28
\register_file|mux2|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux21~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(10)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(10),
	datac => \register_file|registers:0:regx|Q\(10),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux21~0_combout\);

-- Location: LCCOMB_X99_Y35_N2
\data_memory|possible_outputs[2][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][10]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux21~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][10]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux21~0_combout\,
	combout => \data_memory|possible_outputs[2][10]~combout\);

-- Location: LCCOMB_X98_Y35_N24
\data_memory|possible_outputs[1][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][10]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux21~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][10]~combout\,
	datac => \register_file|mux2|Mux21~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][10]~combout\);

-- Location: LCCOMB_X99_Y35_N8
\data_memory|possible_outputs[0][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][10]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux21~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][10]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux21~0_combout\,
	datab => \data_memory|possible_outputs[0][10]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][10]~combout\);

-- Location: LCCOMB_X99_Y35_N24
\data_memory|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux21~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][10]~combout\) # ((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|possible_outputs[0][10]~combout\ 
-- & !\arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[1][10]~combout\,
	datac => \data_memory|possible_outputs[0][10]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux21~0_combout\);

-- Location: LCCOMB_X99_Y35_N18
\data_memory|possible_outputs[3][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][10]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux21~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][10]~combout\,
	datac => \register_file|mux2|Mux21~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][10]~combout\);

-- Location: LCCOMB_X99_Y35_N6
\data_memory|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux21~1_combout\ = (\data_memory|Mux21~0_combout\ & (((\data_memory|possible_outputs[3][10]~combout\) # (!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux21~0_combout\ & (\data_memory|possible_outputs[2][10]~combout\ & 
-- (\arith_logic_unity|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][10]~combout\,
	datab => \data_memory|Mux21~0_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[3][10]~combout\,
	combout => \data_memory|Mux21~1_combout\);

-- Location: LCCOMB_X98_Y35_N26
\arith_logic_unity|Res~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~60_combout\ = \aluOp2[10]~25_combout\ $ (((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(10)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(10),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(10),
	datad => \aluOp2[10]~25_combout\,
	combout => \arith_logic_unity|Res~60_combout\);

-- Location: LCCOMB_X99_Y35_N10
\register_file|registers:0:regx|Q~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~71_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & (\data_memory|Mux21~1_combout\)) # (!\control|Equal3~0_combout\ & ((\arith_logic_unity|Res~60_combout\))))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~2_combout\,
	datab => \data_memory|Mux21~1_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \arith_logic_unity|Res~60_combout\,
	combout => \register_file|registers:0:regx|Q~71_combout\);

-- Location: LCCOMB_X99_Y35_N0
\register_file|registers:0:regx|Q~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~72_combout\ = (\control|Equal4~1_combout\ & ((\register_file|registers:0:regx|Q~71_combout\ & (\arith_logic_unity|Add1~20_combout\)) # (!\register_file|registers:0:regx|Q~71_combout\ & 
-- ((\arith_logic_unity|Add0~20_combout\))))) # (!\control|Equal4~1_combout\ & (((\register_file|registers:0:regx|Q~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal4~1_combout\,
	datab => \arith_logic_unity|Add1~20_combout\,
	datac => \arith_logic_unity|Add0~20_combout\,
	datad => \register_file|registers:0:regx|Q~71_combout\,
	combout => \register_file|registers:0:regx|Q~72_combout\);

-- Location: LCCOMB_X99_Y35_N4
\register_file|registers:0:regx|Q~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~73_combout\ = (\register_file|registers:0:regx|Q~72_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~72_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~73_combout\);

-- Location: FF_X99_Y35_N15
\register_file|registers:1:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~73_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(10));

-- Location: LCCOMB_X99_Y35_N30
\aluOp2[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[10]~25_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(10)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:1:regx|Q\(10),
	datad => \register_file|registers:0:regx|Q\(10),
	combout => \aluOp2[10]~25_combout\);

-- Location: LCCOMB_X99_Y32_N22
\arith_logic_unity|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~22_combout\ = (\aluOp2[11]~24_combout\ & ((\register_file|mux1|Mux20~0_combout\ & (!\arith_logic_unity|Add1~21\)) # (!\register_file|mux1|Mux20~0_combout\ & ((\arith_logic_unity|Add1~21\) # (GND))))) # (!\aluOp2[11]~24_combout\ & 
-- ((\register_file|mux1|Mux20~0_combout\ & (\arith_logic_unity|Add1~21\ & VCC)) # (!\register_file|mux1|Mux20~0_combout\ & (!\arith_logic_unity|Add1~21\))))
-- \arith_logic_unity|Add1~23\ = CARRY((\aluOp2[11]~24_combout\ & ((!\arith_logic_unity|Add1~21\) # (!\register_file|mux1|Mux20~0_combout\))) # (!\aluOp2[11]~24_combout\ & (!\register_file|mux1|Mux20~0_combout\ & !\arith_logic_unity|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[11]~24_combout\,
	datab => \register_file|mux1|Mux20~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~21\,
	combout => \arith_logic_unity|Add1~22_combout\,
	cout => \arith_logic_unity|Add1~23\);

-- Location: LCCOMB_X101_Y33_N22
\arith_logic_unity|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~22_combout\ = (\aluOp2[11]~24_combout\ & ((\register_file|mux1|Mux20~0_combout\ & (\arith_logic_unity|Add0~21\ & VCC)) # (!\register_file|mux1|Mux20~0_combout\ & (!\arith_logic_unity|Add0~21\)))) # (!\aluOp2[11]~24_combout\ & 
-- ((\register_file|mux1|Mux20~0_combout\ & (!\arith_logic_unity|Add0~21\)) # (!\register_file|mux1|Mux20~0_combout\ & ((\arith_logic_unity|Add0~21\) # (GND)))))
-- \arith_logic_unity|Add0~23\ = CARRY((\aluOp2[11]~24_combout\ & (!\register_file|mux1|Mux20~0_combout\ & !\arith_logic_unity|Add0~21\)) # (!\aluOp2[11]~24_combout\ & ((!\arith_logic_unity|Add0~21\) # (!\register_file|mux1|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[11]~24_combout\,
	datab => \register_file|mux1|Mux20~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~21\,
	combout => \arith_logic_unity|Add0~22_combout\,
	cout => \arith_logic_unity|Add0~23\);

-- Location: LCCOMB_X102_Y34_N18
\register_file|registers:0:regx|Q~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~69_combout\ = (\register_file|registers:0:regx|Q~68_combout\ & ((\arith_logic_unity|Add1~22_combout\) # ((!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~68_combout\ & 
-- (((\arith_logic_unity|Add0~22_combout\ & \control|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~68_combout\,
	datab => \arith_logic_unity|Add1~22_combout\,
	datac => \arith_logic_unity|Add0~22_combout\,
	datad => \control|Equal4~1_combout\,
	combout => \register_file|registers:0:regx|Q~69_combout\);

-- Location: LCCOMB_X102_Y34_N0
\register_file|registers:0:regx|Q~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~70_combout\ = (\register_file|registers:0:regx|Q~69_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~69_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~70_combout\);

-- Location: LCCOMB_X102_Y34_N26
\register_file|registers:1:regx|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[11]~feeder_combout\ = \register_file|registers:0:regx|Q~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~70_combout\,
	combout => \register_file|registers:1:regx|Q[11]~feeder_combout\);

-- Location: FF_X102_Y34_N27
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

-- Location: LCCOMB_X102_Y34_N22
\aluOp2[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[11]~24_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(11)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(11),
	datad => \register_file|registers:0:regx|Q\(11),
	combout => \aluOp2[11]~24_combout\);

-- Location: LCCOMB_X101_Y33_N24
\arith_logic_unity|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~24_combout\ = ((\register_file|mux1|Mux19~0_combout\ $ (\aluOp2[12]~23_combout\ $ (!\arith_logic_unity|Add0~23\)))) # (GND)
-- \arith_logic_unity|Add0~25\ = CARRY((\register_file|mux1|Mux19~0_combout\ & ((\aluOp2[12]~23_combout\) # (!\arith_logic_unity|Add0~23\))) # (!\register_file|mux1|Mux19~0_combout\ & (\aluOp2[12]~23_combout\ & !\arith_logic_unity|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux19~0_combout\,
	datab => \aluOp2[12]~23_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~23\,
	combout => \arith_logic_unity|Add0~24_combout\,
	cout => \arith_logic_unity|Add0~25\);

-- Location: LCCOMB_X99_Y32_N24
\arith_logic_unity|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~24_combout\ = ((\register_file|mux1|Mux19~0_combout\ $ (\aluOp2[12]~23_combout\ $ (\arith_logic_unity|Add1~23\)))) # (GND)
-- \arith_logic_unity|Add1~25\ = CARRY((\register_file|mux1|Mux19~0_combout\ & ((!\arith_logic_unity|Add1~23\) # (!\aluOp2[12]~23_combout\))) # (!\register_file|mux1|Mux19~0_combout\ & (!\aluOp2[12]~23_combout\ & !\arith_logic_unity|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux19~0_combout\,
	datab => \aluOp2[12]~23_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~23\,
	combout => \arith_logic_unity|Add1~24_combout\,
	cout => \arith_logic_unity|Add1~25\);

-- Location: LCCOMB_X100_Y34_N20
\register_file|registers:0:regx|Q~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~66_combout\ = (\control|Equal4~1_combout\ & ((\register_file|registers:0:regx|Q~65_combout\ & ((\arith_logic_unity|Add1~24_combout\))) # (!\register_file|registers:0:regx|Q~65_combout\ & 
-- (\arith_logic_unity|Add0~24_combout\)))) # (!\control|Equal4~1_combout\ & (\register_file|registers:0:regx|Q~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal4~1_combout\,
	datab => \register_file|registers:0:regx|Q~65_combout\,
	datac => \arith_logic_unity|Add0~24_combout\,
	datad => \arith_logic_unity|Add1~24_combout\,
	combout => \register_file|registers:0:regx|Q~66_combout\);

-- Location: LCCOMB_X100_Y34_N14
\register_file|registers:0:regx|Q~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~67_combout\ = (\register_file|registers:0:regx|Q~66_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~66_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~67_combout\);

-- Location: FF_X100_Y34_N31
\register_file|registers:1:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~67_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(12));

-- Location: LCCOMB_X100_Y34_N24
\register_file|mux1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux19~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(12)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(12),
	datad => \register_file|registers:0:regx|Q\(12),
	combout => \register_file|mux1|Mux19~0_combout\);

-- Location: LCCOMB_X101_Y33_N26
\arith_logic_unity|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~26_combout\ = (\aluOp2[13]~22_combout\ & ((\register_file|mux1|Mux18~0_combout\ & (\arith_logic_unity|Add0~25\ & VCC)) # (!\register_file|mux1|Mux18~0_combout\ & (!\arith_logic_unity|Add0~25\)))) # (!\aluOp2[13]~22_combout\ & 
-- ((\register_file|mux1|Mux18~0_combout\ & (!\arith_logic_unity|Add0~25\)) # (!\register_file|mux1|Mux18~0_combout\ & ((\arith_logic_unity|Add0~25\) # (GND)))))
-- \arith_logic_unity|Add0~27\ = CARRY((\aluOp2[13]~22_combout\ & (!\register_file|mux1|Mux18~0_combout\ & !\arith_logic_unity|Add0~25\)) # (!\aluOp2[13]~22_combout\ & ((!\arith_logic_unity|Add0~25\) # (!\register_file|mux1|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[13]~22_combout\,
	datab => \register_file|mux1|Mux18~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~25\,
	combout => \arith_logic_unity|Add0~26_combout\,
	cout => \arith_logic_unity|Add0~27\);

-- Location: LCCOMB_X98_Y36_N22
\arith_logic_unity|Res~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~57_combout\ = \aluOp2[13]~22_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(13))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(13),
	datab => \register_file|registers:1:regx|Q\(13),
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \aluOp2[13]~22_combout\,
	combout => \arith_logic_unity|Res~57_combout\);

-- Location: LCCOMB_X98_Y36_N20
\register_file|mux2|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux18~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(13))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(13),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:1:regx|Q\(13),
	combout => \register_file|mux2|Mux18~0_combout\);

-- Location: LCCOMB_X98_Y36_N24
\data_memory|possible_outputs[1][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][13]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux18~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][13]~combout\,
	datac => \register_file|mux2|Mux18~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][13]~combout\);

-- Location: LCCOMB_X98_Y36_N26
\data_memory|possible_outputs[2][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][13]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux18~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][13]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux18~0_combout\,
	combout => \data_memory|possible_outputs[2][13]~combout\);

-- Location: LCCOMB_X99_Y36_N14
\data_memory|possible_outputs[0][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][13]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux18~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux18~0_combout\,
	datac => \data_memory|possible_outputs[0][13]~combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][13]~combout\);

-- Location: LCCOMB_X99_Y36_N16
\data_memory|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux18~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[2][13]~combout\)) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[0][13]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][13]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[0][13]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux18~0_combout\);

-- Location: LCCOMB_X99_Y36_N8
\data_memory|possible_outputs[3][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][13]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux18~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux18~0_combout\,
	datac => \data_memory|possible_outputs[3][13]~combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][13]~combout\);

-- Location: LCCOMB_X99_Y36_N10
\data_memory|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux18~1_combout\ = (\data_memory|Mux18~0_combout\ & (((\data_memory|possible_outputs[3][13]~combout\) # (!\arith_logic_unity|Mux29~1_combout\)))) # (!\data_memory|Mux18~0_combout\ & (\data_memory|possible_outputs[1][13]~combout\ & 
-- ((\arith_logic_unity|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][13]~combout\,
	datab => \data_memory|Mux18~0_combout\,
	datac => \data_memory|possible_outputs[3][13]~combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux18~1_combout\);

-- Location: LCCOMB_X99_Y36_N18
\register_file|registers:0:regx|Q~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~62_combout\ = (\control|Equal3~0_combout\ & (((\data_memory|Mux18~1_combout\)) # (!\register_file|registers:0:regx|Q~2_combout\))) # (!\control|Equal3~0_combout\ & (\register_file|registers:0:regx|Q~2_combout\ & 
-- (\arith_logic_unity|Res~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \register_file|registers:0:regx|Q~2_combout\,
	datac => \arith_logic_unity|Res~57_combout\,
	datad => \data_memory|Mux18~1_combout\,
	combout => \register_file|registers:0:regx|Q~62_combout\);

-- Location: LCCOMB_X99_Y32_N26
\arith_logic_unity|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~26_combout\ = (\register_file|mux1|Mux18~0_combout\ & ((\aluOp2[13]~22_combout\ & (!\arith_logic_unity|Add1~25\)) # (!\aluOp2[13]~22_combout\ & (\arith_logic_unity|Add1~25\ & VCC)))) # (!\register_file|mux1|Mux18~0_combout\ & 
-- ((\aluOp2[13]~22_combout\ & ((\arith_logic_unity|Add1~25\) # (GND))) # (!\aluOp2[13]~22_combout\ & (!\arith_logic_unity|Add1~25\))))
-- \arith_logic_unity|Add1~27\ = CARRY((\register_file|mux1|Mux18~0_combout\ & (\aluOp2[13]~22_combout\ & !\arith_logic_unity|Add1~25\)) # (!\register_file|mux1|Mux18~0_combout\ & ((\aluOp2[13]~22_combout\) # (!\arith_logic_unity|Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux18~0_combout\,
	datab => \aluOp2[13]~22_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~25\,
	combout => \arith_logic_unity|Add1~26_combout\,
	cout => \arith_logic_unity|Add1~27\);

-- Location: LCCOMB_X99_Y36_N0
\register_file|registers:0:regx|Q~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~63_combout\ = (\register_file|registers:0:regx|Q~62_combout\ & (((\arith_logic_unity|Add1~26_combout\) # (!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~62_combout\ & 
-- (\arith_logic_unity|Add0~26_combout\ & (\control|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~26_combout\,
	datab => \register_file|registers:0:regx|Q~62_combout\,
	datac => \control|Equal4~1_combout\,
	datad => \arith_logic_unity|Add1~26_combout\,
	combout => \register_file|registers:0:regx|Q~63_combout\);

-- Location: LCCOMB_X99_Y36_N22
\register_file|registers:0:regx|Q~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~64_combout\ = (\register_file|registers:0:regx|Q~63_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~63_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~64_combout\);

-- Location: FF_X99_Y36_N23
\register_file|registers:1:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(13));

-- Location: LCCOMB_X99_Y36_N24
\register_file|mux1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux18~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(13)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(13),
	datad => \register_file|registers:0:regx|Q\(13),
	combout => \register_file|mux1|Mux18~0_combout\);

-- Location: LCCOMB_X99_Y32_N28
\arith_logic_unity|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~28_combout\ = ((\register_file|mux1|Mux17~0_combout\ $ (\aluOp2[14]~21_combout\ $ (\arith_logic_unity|Add1~27\)))) # (GND)
-- \arith_logic_unity|Add1~29\ = CARRY((\register_file|mux1|Mux17~0_combout\ & ((!\arith_logic_unity|Add1~27\) # (!\aluOp2[14]~21_combout\))) # (!\register_file|mux1|Mux17~0_combout\ & (!\aluOp2[14]~21_combout\ & !\arith_logic_unity|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux17~0_combout\,
	datab => \aluOp2[14]~21_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~27\,
	combout => \arith_logic_unity|Add1~28_combout\,
	cout => \arith_logic_unity|Add1~29\);

-- Location: LCCOMB_X100_Y32_N30
\arith_logic_unity|Res~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~56_combout\ = \aluOp2[14]~21_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(14))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[14]~21_combout\,
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(14),
	datad => \register_file|registers:1:regx|Q\(14),
	combout => \arith_logic_unity|Res~56_combout\);

-- Location: LCCOMB_X100_Y32_N20
\register_file|mux2|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux17~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(14))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(14),
	datab => \register_file|registers:1:regx|Q\(14),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux17~0_combout\);

-- Location: LCCOMB_X103_Y32_N4
\data_memory|possible_outputs[0][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][14]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux17~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][14]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \register_file|mux2|Mux17~0_combout\,
	combout => \data_memory|possible_outputs[0][14]~combout\);

-- Location: LCCOMB_X105_Y32_N26
\data_memory|possible_outputs[1][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][14]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux17~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux17~0_combout\,
	datac => \data_memory|possible_outputs[1][14]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][14]~combout\);

-- Location: LCCOMB_X103_Y32_N8
\data_memory|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux17~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (\arith_logic_unity|Mux29~1_combout\)) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][14]~combout\))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[0][14]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[0][14]~combout\,
	datad => \data_memory|possible_outputs[1][14]~combout\,
	combout => \data_memory|Mux17~0_combout\);

-- Location: LCCOMB_X103_Y32_N2
\data_memory|possible_outputs[2][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][14]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux17~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|Decoder0~0clkctrl_outclk\,
	datac => \register_file|mux2|Mux17~0_combout\,
	datad => \data_memory|possible_outputs[2][14]~combout\,
	combout => \data_memory|possible_outputs[2][14]~combout\);

-- Location: LCCOMB_X105_Y32_N4
\data_memory|possible_outputs[3][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][14]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux17~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux17~0_combout\,
	datac => \data_memory|possible_outputs[3][14]~combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][14]~combout\);

-- Location: LCCOMB_X103_Y32_N14
\data_memory|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux17~1_combout\ = (\data_memory|Mux17~0_combout\ & (((\data_memory|possible_outputs[3][14]~combout\) # (!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux17~0_combout\ & (\data_memory|possible_outputs[2][14]~combout\ & 
-- (\arith_logic_unity|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux17~0_combout\,
	datab => \data_memory|possible_outputs[2][14]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[3][14]~combout\,
	combout => \data_memory|Mux17~1_combout\);

-- Location: LCCOMB_X103_Y32_N28
\register_file|registers:0:regx|Q~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~59_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & ((\data_memory|Mux17~1_combout\))) # (!\control|Equal3~0_combout\ & (\arith_logic_unity|Res~56_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~2_combout\,
	datab => \arith_logic_unity|Res~56_combout\,
	datac => \data_memory|Mux17~1_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~59_combout\);

-- Location: LCCOMB_X101_Y33_N28
\arith_logic_unity|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~28_combout\ = ((\aluOp2[14]~21_combout\ $ (\register_file|mux1|Mux17~0_combout\ $ (!\arith_logic_unity|Add0~27\)))) # (GND)
-- \arith_logic_unity|Add0~29\ = CARRY((\aluOp2[14]~21_combout\ & ((\register_file|mux1|Mux17~0_combout\) # (!\arith_logic_unity|Add0~27\))) # (!\aluOp2[14]~21_combout\ & (\register_file|mux1|Mux17~0_combout\ & !\arith_logic_unity|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[14]~21_combout\,
	datab => \register_file|mux1|Mux17~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~27\,
	combout => \arith_logic_unity|Add0~28_combout\,
	cout => \arith_logic_unity|Add0~29\);

-- Location: LCCOMB_X100_Y32_N8
\register_file|registers:0:regx|Q~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~60_combout\ = (\control|Equal4~1_combout\ & ((\register_file|registers:0:regx|Q~59_combout\ & (\arith_logic_unity|Add1~28_combout\)) # (!\register_file|registers:0:regx|Q~59_combout\ & 
-- ((\arith_logic_unity|Add0~28_combout\))))) # (!\control|Equal4~1_combout\ & (((\register_file|registers:0:regx|Q~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal4~1_combout\,
	datab => \arith_logic_unity|Add1~28_combout\,
	datac => \register_file|registers:0:regx|Q~59_combout\,
	datad => \arith_logic_unity|Add0~28_combout\,
	combout => \register_file|registers:0:regx|Q~60_combout\);

-- Location: LCCOMB_X100_Y32_N6
\register_file|registers:0:regx|Q~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~61_combout\ = (\register_file|registers:0:regx|Q~60_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~60_combout\,
	datac => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~61_combout\);

-- Location: LCCOMB_X100_Y32_N26
\register_file|registers:1:regx|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[14]~feeder_combout\ = \register_file|registers:0:regx|Q~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~61_combout\,
	combout => \register_file|registers:1:regx|Q[14]~feeder_combout\);

-- Location: FF_X100_Y32_N27
\register_file|registers:1:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(14));

-- Location: LCCOMB_X100_Y32_N22
\aluOp2[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[14]~21_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(14)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(14),
	datad => \register_file|registers:0:regx|Q\(14),
	combout => \aluOp2[14]~21_combout\);

-- Location: LCCOMB_X101_Y33_N30
\arith_logic_unity|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~30_combout\ = (\aluOp2[15]~20_combout\ & ((\register_file|mux1|Mux16~0_combout\ & (\arith_logic_unity|Add0~29\ & VCC)) # (!\register_file|mux1|Mux16~0_combout\ & (!\arith_logic_unity|Add0~29\)))) # (!\aluOp2[15]~20_combout\ & 
-- ((\register_file|mux1|Mux16~0_combout\ & (!\arith_logic_unity|Add0~29\)) # (!\register_file|mux1|Mux16~0_combout\ & ((\arith_logic_unity|Add0~29\) # (GND)))))
-- \arith_logic_unity|Add0~31\ = CARRY((\aluOp2[15]~20_combout\ & (!\register_file|mux1|Mux16~0_combout\ & !\arith_logic_unity|Add0~29\)) # (!\aluOp2[15]~20_combout\ & ((!\arith_logic_unity|Add0~29\) # (!\register_file|mux1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[15]~20_combout\,
	datab => \register_file|mux1|Mux16~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~29\,
	combout => \arith_logic_unity|Add0~30_combout\,
	cout => \arith_logic_unity|Add0~31\);

-- Location: LCCOMB_X100_Y32_N28
\arith_logic_unity|Res~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~55_combout\ = \aluOp2[15]~20_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(15))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[15]~20_combout\,
	datab => \register_file|registers:0:regx|Q\(15),
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \register_file|registers:1:regx|Q\(15),
	combout => \arith_logic_unity|Res~55_combout\);

-- Location: LCCOMB_X100_Y32_N24
\register_file|mux2|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux16~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(15)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(15),
	datab => \register_file|registers:0:regx|Q\(15),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux16~0_combout\);

-- Location: LCCOMB_X98_Y32_N4
\data_memory|possible_outputs[3][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][15]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux16~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux16~0_combout\,
	datac => \data_memory|possible_outputs[3][15]~combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][15]~combout\);

-- Location: LCCOMB_X97_Y32_N28
\data_memory|possible_outputs[2][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][15]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux16~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][15]~combout\,
	datac => \register_file|mux2|Mux16~0_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][15]~combout\);

-- Location: LCCOMB_X98_Y32_N10
\data_memory|possible_outputs[0][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][15]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux16~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux16~0_combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \data_memory|possible_outputs[0][15]~combout\,
	combout => \data_memory|possible_outputs[0][15]~combout\);

-- Location: LCCOMB_X98_Y32_N12
\data_memory|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux16~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[2][15]~combout\) # ((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (((!\arith_logic_unity|Mux29~1_combout\ & 
-- \data_memory|possible_outputs[0][15]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \data_memory|possible_outputs[2][15]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[0][15]~combout\,
	combout => \data_memory|Mux16~0_combout\);

-- Location: LCCOMB_X98_Y32_N8
\data_memory|possible_outputs[1][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][15]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux16~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux16~0_combout\,
	datac => \data_memory|possible_outputs[1][15]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][15]~combout\);

-- Location: LCCOMB_X98_Y32_N2
\data_memory|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux16~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux16~0_combout\ & (\data_memory|possible_outputs[3][15]~combout\)) # (!\data_memory|Mux16~0_combout\ & ((\data_memory|possible_outputs[1][15]~combout\))))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[3][15]~combout\,
	datac => \data_memory|Mux16~0_combout\,
	datad => \data_memory|possible_outputs[1][15]~combout\,
	combout => \data_memory|Mux16~1_combout\);

-- Location: LCCOMB_X98_Y32_N14
\register_file|registers:0:regx|Q~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~56_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & ((\data_memory|Mux16~1_combout\))) # (!\control|Equal3~0_combout\ & (\arith_logic_unity|Res~55_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Res~55_combout\,
	datab => \register_file|registers:0:regx|Q~2_combout\,
	datac => \data_memory|Mux16~1_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~56_combout\);

-- Location: LCCOMB_X99_Y32_N30
\arith_logic_unity|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~30_combout\ = (\register_file|mux1|Mux16~0_combout\ & ((\aluOp2[15]~20_combout\ & (!\arith_logic_unity|Add1~29\)) # (!\aluOp2[15]~20_combout\ & (\arith_logic_unity|Add1~29\ & VCC)))) # (!\register_file|mux1|Mux16~0_combout\ & 
-- ((\aluOp2[15]~20_combout\ & ((\arith_logic_unity|Add1~29\) # (GND))) # (!\aluOp2[15]~20_combout\ & (!\arith_logic_unity|Add1~29\))))
-- \arith_logic_unity|Add1~31\ = CARRY((\register_file|mux1|Mux16~0_combout\ & (\aluOp2[15]~20_combout\ & !\arith_logic_unity|Add1~29\)) # (!\register_file|mux1|Mux16~0_combout\ & ((\aluOp2[15]~20_combout\) # (!\arith_logic_unity|Add1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux16~0_combout\,
	datab => \aluOp2[15]~20_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~29\,
	combout => \arith_logic_unity|Add1~30_combout\,
	cout => \arith_logic_unity|Add1~31\);

-- Location: LCCOMB_X100_Y32_N16
\register_file|registers:0:regx|Q~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~57_combout\ = (\control|Equal4~1_combout\ & ((\register_file|registers:0:regx|Q~56_combout\ & ((\arith_logic_unity|Add1~30_combout\))) # (!\register_file|registers:0:regx|Q~56_combout\ & 
-- (\arith_logic_unity|Add0~30_combout\)))) # (!\control|Equal4~1_combout\ & (((\register_file|registers:0:regx|Q~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~30_combout\,
	datab => \control|Equal4~1_combout\,
	datac => \register_file|registers:0:regx|Q~56_combout\,
	datad => \arith_logic_unity|Add1~30_combout\,
	combout => \register_file|registers:0:regx|Q~57_combout\);

-- Location: LCCOMB_X100_Y32_N14
\register_file|registers:0:regx|Q~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~58_combout\ = (!\rst~input_o\ & \register_file|registers:0:regx|Q~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \register_file|registers:0:regx|Q~57_combout\,
	combout => \register_file|registers:0:regx|Q~58_combout\);

-- Location: LCCOMB_X100_Y32_N10
\register_file|registers:1:regx|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[15]~feeder_combout\ = \register_file|registers:0:regx|Q~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~58_combout\,
	combout => \register_file|registers:1:regx|Q[15]~feeder_combout\);

-- Location: FF_X100_Y32_N11
\register_file|registers:1:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(15));

-- Location: LCCOMB_X100_Y32_N0
\register_file|mux1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux16~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(15)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(15),
	datab => \instruction_memory|Mux5~0_combout\,
	datad => \register_file|registers:0:regx|Q\(15),
	combout => \register_file|mux1|Mux16~0_combout\);

-- Location: LCCOMB_X99_Y31_N0
\arith_logic_unity|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~32_combout\ = ((\register_file|mux1|Mux15~0_combout\ $ (\aluOp2[16]~19_combout\ $ (\arith_logic_unity|Add1~31\)))) # (GND)
-- \arith_logic_unity|Add1~33\ = CARRY((\register_file|mux1|Mux15~0_combout\ & ((!\arith_logic_unity|Add1~31\) # (!\aluOp2[16]~19_combout\))) # (!\register_file|mux1|Mux15~0_combout\ & (!\aluOp2[16]~19_combout\ & !\arith_logic_unity|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux15~0_combout\,
	datab => \aluOp2[16]~19_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~31\,
	combout => \arith_logic_unity|Add1~32_combout\,
	cout => \arith_logic_unity|Add1~33\);

-- Location: LCCOMB_X98_Y29_N10
\register_file|mux2|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux15~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(16)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:1:regx|Q\(16),
	datad => \register_file|registers:0:regx|Q\(16),
	combout => \register_file|mux2|Mux15~0_combout\);

-- Location: LCCOMB_X98_Y29_N6
\data_memory|possible_outputs[2][16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][16]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux15~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][16]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~0clkctrl_outclk\,
	datac => \register_file|mux2|Mux15~0_combout\,
	datad => \data_memory|possible_outputs[2][16]~combout\,
	combout => \data_memory|possible_outputs[2][16]~combout\);

-- Location: LCCOMB_X97_Y29_N12
\data_memory|possible_outputs[1][16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][16]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux15~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][16]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][16]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux15~0_combout\,
	combout => \data_memory|possible_outputs[1][16]~combout\);

-- Location: LCCOMB_X97_Y29_N18
\data_memory|possible_outputs[0][16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][16]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux15~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][16]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux15~0_combout\,
	datab => \data_memory|possible_outputs[0][16]~combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][16]~combout\);

-- Location: LCCOMB_X97_Y29_N24
\data_memory|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux15~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[1][16]~combout\)) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[0][16]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][16]~combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[0][16]~combout\,
	combout => \data_memory|Mux15~0_combout\);

-- Location: LCCOMB_X98_Y29_N24
\data_memory|possible_outputs[3][16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][16]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux15~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][16]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][16]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux15~0_combout\,
	combout => \data_memory|possible_outputs[3][16]~combout\);

-- Location: LCCOMB_X98_Y29_N20
\data_memory|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux15~1_combout\ = (\data_memory|Mux15~0_combout\ & (((\data_memory|possible_outputs[3][16]~combout\) # (!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux15~0_combout\ & (\data_memory|possible_outputs[2][16]~combout\ & 
-- (\arith_logic_unity|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][16]~combout\,
	datab => \data_memory|Mux15~0_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[3][16]~combout\,
	combout => \data_memory|Mux15~1_combout\);

-- Location: LCCOMB_X99_Y29_N20
\arith_logic_unity|Res~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~54_combout\ = \aluOp2[16]~19_combout\ $ (((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(16)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \register_file|registers:1:regx|Q\(16),
	datac => \register_file|registers:0:regx|Q\(16),
	datad => \aluOp2[16]~19_combout\,
	combout => \arith_logic_unity|Res~54_combout\);

-- Location: LCCOMB_X98_Y29_N16
\register_file|registers:0:regx|Q~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~53_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & (\data_memory|Mux15~1_combout\)) # (!\control|Equal3~0_combout\ & ((\arith_logic_unity|Res~54_combout\))))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux15~1_combout\,
	datab => \arith_logic_unity|Res~54_combout\,
	datac => \register_file|registers:0:regx|Q~2_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~53_combout\);

-- Location: LCCOMB_X101_Y32_N0
\arith_logic_unity|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~32_combout\ = ((\register_file|mux1|Mux15~0_combout\ $ (\aluOp2[16]~19_combout\ $ (!\arith_logic_unity|Add0~31\)))) # (GND)
-- \arith_logic_unity|Add0~33\ = CARRY((\register_file|mux1|Mux15~0_combout\ & ((\aluOp2[16]~19_combout\) # (!\arith_logic_unity|Add0~31\))) # (!\register_file|mux1|Mux15~0_combout\ & (\aluOp2[16]~19_combout\ & !\arith_logic_unity|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux15~0_combout\,
	datab => \aluOp2[16]~19_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~31\,
	combout => \arith_logic_unity|Add0~32_combout\,
	cout => \arith_logic_unity|Add0~33\);

-- Location: LCCOMB_X99_Y29_N30
\register_file|registers:0:regx|Q~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~54_combout\ = (\register_file|registers:0:regx|Q~53_combout\ & ((\arith_logic_unity|Add1~32_combout\) # ((!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~53_combout\ & (((\control|Equal4~1_combout\ & 
-- \arith_logic_unity|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~32_combout\,
	datab => \register_file|registers:0:regx|Q~53_combout\,
	datac => \control|Equal4~1_combout\,
	datad => \arith_logic_unity|Add0~32_combout\,
	combout => \register_file|registers:0:regx|Q~54_combout\);

-- Location: LCCOMB_X99_Y29_N16
\register_file|registers:0:regx|Q~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~55_combout\ = (\register_file|registers:0:regx|Q~54_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~54_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~55_combout\);

-- Location: LCCOMB_X99_Y29_N22
\register_file|registers:1:regx|Q[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[16]~feeder_combout\ = \register_file|registers:0:regx|Q~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~55_combout\,
	combout => \register_file|registers:1:regx|Q[16]~feeder_combout\);

-- Location: FF_X99_Y29_N23
\register_file|registers:1:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(16));

-- Location: LCCOMB_X99_Y29_N12
\register_file|mux1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux15~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(16)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(16),
	datad => \register_file|registers:0:regx|Q\(16),
	combout => \register_file|mux1|Mux15~0_combout\);

-- Location: LCCOMB_X99_Y31_N2
\arith_logic_unity|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~34_combout\ = (\aluOp2[17]~18_combout\ & ((\register_file|mux1|Mux14~0_combout\ & (!\arith_logic_unity|Add1~33\)) # (!\register_file|mux1|Mux14~0_combout\ & ((\arith_logic_unity|Add1~33\) # (GND))))) # (!\aluOp2[17]~18_combout\ & 
-- ((\register_file|mux1|Mux14~0_combout\ & (\arith_logic_unity|Add1~33\ & VCC)) # (!\register_file|mux1|Mux14~0_combout\ & (!\arith_logic_unity|Add1~33\))))
-- \arith_logic_unity|Add1~35\ = CARRY((\aluOp2[17]~18_combout\ & ((!\arith_logic_unity|Add1~33\) # (!\register_file|mux1|Mux14~0_combout\))) # (!\aluOp2[17]~18_combout\ & (!\register_file|mux1|Mux14~0_combout\ & !\arith_logic_unity|Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[17]~18_combout\,
	datab => \register_file|mux1|Mux14~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~33\,
	combout => \arith_logic_unity|Add1~34_combout\,
	cout => \arith_logic_unity|Add1~35\);

-- Location: LCCOMB_X99_Y29_N26
\register_file|mux2|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux14~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(17)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(17),
	datad => \register_file|registers:0:regx|Q\(17),
	combout => \register_file|mux2|Mux14~0_combout\);

-- Location: LCCOMB_X100_Y29_N14
\data_memory|possible_outputs[1][17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][17]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux14~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][17]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~1clkctrl_outclk\,
	datac => \register_file|mux2|Mux14~0_combout\,
	datad => \data_memory|possible_outputs[1][17]~combout\,
	combout => \data_memory|possible_outputs[1][17]~combout\);

-- Location: LCCOMB_X100_Y29_N8
\data_memory|possible_outputs[2][17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][17]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux14~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][17]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][17]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux14~0_combout\,
	combout => \data_memory|possible_outputs[2][17]~combout\);

-- Location: LCCOMB_X100_Y29_N30
\data_memory|possible_outputs[0][17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][17]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux14~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][17]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux14~0_combout\,
	datac => \data_memory|possible_outputs[0][17]~combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][17]~combout\);

-- Location: LCCOMB_X100_Y29_N12
\data_memory|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux14~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[2][17]~combout\)) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[0][17]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[2][17]~combout\,
	datac => \data_memory|possible_outputs[0][17]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux14~0_combout\);

-- Location: LCCOMB_X99_Y29_N2
\data_memory|possible_outputs[3][17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][17]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux14~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][17]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][17]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux14~0_combout\,
	combout => \data_memory|possible_outputs[3][17]~combout\);

-- Location: LCCOMB_X100_Y29_N18
\data_memory|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux14~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux14~0_combout\ & ((\data_memory|possible_outputs[3][17]~combout\))) # (!\data_memory|Mux14~0_combout\ & (\data_memory|possible_outputs[1][17]~combout\)))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[1][17]~combout\,
	datac => \data_memory|Mux14~0_combout\,
	datad => \data_memory|possible_outputs[3][17]~combout\,
	combout => \data_memory|Mux14~1_combout\);

-- Location: LCCOMB_X99_Y29_N4
\arith_logic_unity|Res~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~53_combout\ = \aluOp2[17]~18_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(17))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[17]~18_combout\,
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(17),
	datad => \register_file|registers:1:regx|Q\(17),
	combout => \arith_logic_unity|Res~53_combout\);

-- Location: LCCOMB_X100_Y29_N16
\register_file|registers:0:regx|Q~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~50_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & (\data_memory|Mux14~1_combout\)) # (!\control|Equal3~0_combout\ & ((\arith_logic_unity|Res~53_combout\))))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux14~1_combout\,
	datab => \arith_logic_unity|Res~53_combout\,
	datac => \register_file|registers:0:regx|Q~2_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~50_combout\);

-- Location: LCCOMB_X101_Y32_N2
\arith_logic_unity|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~34_combout\ = (\register_file|mux1|Mux14~0_combout\ & ((\aluOp2[17]~18_combout\ & (\arith_logic_unity|Add0~33\ & VCC)) # (!\aluOp2[17]~18_combout\ & (!\arith_logic_unity|Add0~33\)))) # (!\register_file|mux1|Mux14~0_combout\ & 
-- ((\aluOp2[17]~18_combout\ & (!\arith_logic_unity|Add0~33\)) # (!\aluOp2[17]~18_combout\ & ((\arith_logic_unity|Add0~33\) # (GND)))))
-- \arith_logic_unity|Add0~35\ = CARRY((\register_file|mux1|Mux14~0_combout\ & (!\aluOp2[17]~18_combout\ & !\arith_logic_unity|Add0~33\)) # (!\register_file|mux1|Mux14~0_combout\ & ((!\arith_logic_unity|Add0~33\) # (!\aluOp2[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux14~0_combout\,
	datab => \aluOp2[17]~18_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~33\,
	combout => \arith_logic_unity|Add0~34_combout\,
	cout => \arith_logic_unity|Add0~35\);

-- Location: LCCOMB_X99_Y29_N10
\register_file|registers:0:regx|Q~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~51_combout\ = (\control|Equal4~1_combout\ & ((\register_file|registers:0:regx|Q~50_combout\ & (\arith_logic_unity|Add1~34_combout\)) # (!\register_file|registers:0:regx|Q~50_combout\ & 
-- ((\arith_logic_unity|Add0~34_combout\))))) # (!\control|Equal4~1_combout\ & (((\register_file|registers:0:regx|Q~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal4~1_combout\,
	datab => \arith_logic_unity|Add1~34_combout\,
	datac => \register_file|registers:0:regx|Q~50_combout\,
	datad => \arith_logic_unity|Add0~34_combout\,
	combout => \register_file|registers:0:regx|Q~51_combout\);

-- Location: LCCOMB_X99_Y29_N0
\register_file|registers:0:regx|Q~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~52_combout\ = (\register_file|registers:0:regx|Q~51_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~51_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~52_combout\);

-- Location: FF_X99_Y29_N5
\register_file|registers:0:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~52_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(17));

-- Location: LCCOMB_X99_Y29_N18
\aluOp2[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[17]~18_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(17))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:0:regx|Q\(17),
	datad => \register_file|registers:1:regx|Q\(17),
	combout => \aluOp2[17]~18_combout\);

-- Location: LCCOMB_X99_Y31_N4
\arith_logic_unity|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~36_combout\ = ((\register_file|mux1|Mux13~0_combout\ $ (\aluOp2[18]~17_combout\ $ (\arith_logic_unity|Add1~35\)))) # (GND)
-- \arith_logic_unity|Add1~37\ = CARRY((\register_file|mux1|Mux13~0_combout\ & ((!\arith_logic_unity|Add1~35\) # (!\aluOp2[18]~17_combout\))) # (!\register_file|mux1|Mux13~0_combout\ & (!\aluOp2[18]~17_combout\ & !\arith_logic_unity|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux13~0_combout\,
	datab => \aluOp2[18]~17_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~35\,
	combout => \arith_logic_unity|Add1~36_combout\,
	cout => \arith_logic_unity|Add1~37\);

-- Location: LCCOMB_X101_Y32_N4
\arith_logic_unity|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~36_combout\ = ((\aluOp2[18]~17_combout\ $ (\register_file|mux1|Mux13~0_combout\ $ (!\arith_logic_unity|Add0~35\)))) # (GND)
-- \arith_logic_unity|Add0~37\ = CARRY((\aluOp2[18]~17_combout\ & ((\register_file|mux1|Mux13~0_combout\) # (!\arith_logic_unity|Add0~35\))) # (!\aluOp2[18]~17_combout\ & (\register_file|mux1|Mux13~0_combout\ & !\arith_logic_unity|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[18]~17_combout\,
	datab => \register_file|mux1|Mux13~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~35\,
	combout => \arith_logic_unity|Add0~36_combout\,
	cout => \arith_logic_unity|Add0~37\);

-- Location: LCCOMB_X99_Y30_N20
\register_file|registers:0:regx|Q~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~48_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\arith_logic_unity|Add1~36_combout\) # ((!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~47_combout\ & (((\control|Equal4~1_combout\ & 
-- \arith_logic_unity|Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~47_combout\,
	datab => \arith_logic_unity|Add1~36_combout\,
	datac => \control|Equal4~1_combout\,
	datad => \arith_logic_unity|Add0~36_combout\,
	combout => \register_file|registers:0:regx|Q~48_combout\);

-- Location: LCCOMB_X99_Y30_N30
\register_file|registers:0:regx|Q~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~49_combout\ = (\register_file|registers:0:regx|Q~48_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~48_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~49_combout\);

-- Location: FF_X99_Y30_N31
\register_file|registers:1:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(18));

-- Location: LCCOMB_X99_Y30_N0
\register_file|mux1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux13~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(18)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(18),
	datad => \register_file|registers:0:regx|Q\(18),
	combout => \register_file|mux1|Mux13~0_combout\);

-- Location: LCCOMB_X99_Y31_N6
\arith_logic_unity|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~38_combout\ = (\aluOp2[19]~16_combout\ & ((\register_file|mux1|Mux12~0_combout\ & (!\arith_logic_unity|Add1~37\)) # (!\register_file|mux1|Mux12~0_combout\ & ((\arith_logic_unity|Add1~37\) # (GND))))) # (!\aluOp2[19]~16_combout\ & 
-- ((\register_file|mux1|Mux12~0_combout\ & (\arith_logic_unity|Add1~37\ & VCC)) # (!\register_file|mux1|Mux12~0_combout\ & (!\arith_logic_unity|Add1~37\))))
-- \arith_logic_unity|Add1~39\ = CARRY((\aluOp2[19]~16_combout\ & ((!\arith_logic_unity|Add1~37\) # (!\register_file|mux1|Mux12~0_combout\))) # (!\aluOp2[19]~16_combout\ & (!\register_file|mux1|Mux12~0_combout\ & !\arith_logic_unity|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[19]~16_combout\,
	datab => \register_file|mux1|Mux12~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~37\,
	combout => \arith_logic_unity|Add1~38_combout\,
	cout => \arith_logic_unity|Add1~39\);

-- Location: LCCOMB_X101_Y32_N6
\arith_logic_unity|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~38_combout\ = (\aluOp2[19]~16_combout\ & ((\register_file|mux1|Mux12~0_combout\ & (\arith_logic_unity|Add0~37\ & VCC)) # (!\register_file|mux1|Mux12~0_combout\ & (!\arith_logic_unity|Add0~37\)))) # (!\aluOp2[19]~16_combout\ & 
-- ((\register_file|mux1|Mux12~0_combout\ & (!\arith_logic_unity|Add0~37\)) # (!\register_file|mux1|Mux12~0_combout\ & ((\arith_logic_unity|Add0~37\) # (GND)))))
-- \arith_logic_unity|Add0~39\ = CARRY((\aluOp2[19]~16_combout\ & (!\register_file|mux1|Mux12~0_combout\ & !\arith_logic_unity|Add0~37\)) # (!\aluOp2[19]~16_combout\ & ((!\arith_logic_unity|Add0~37\) # (!\register_file|mux1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[19]~16_combout\,
	datab => \register_file|mux1|Mux12~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~37\,
	combout => \arith_logic_unity|Add0~38_combout\,
	cout => \arith_logic_unity|Add0~39\);

-- Location: LCCOMB_X99_Y30_N22
\register_file|registers:0:regx|Q~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~45_combout\ = (\register_file|registers:0:regx|Q~44_combout\ & (((\arith_logic_unity|Add1~38_combout\)) # (!\control|Equal4~1_combout\))) # (!\register_file|registers:0:regx|Q~44_combout\ & (\control|Equal4~1_combout\ & 
-- ((\arith_logic_unity|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~44_combout\,
	datab => \control|Equal4~1_combout\,
	datac => \arith_logic_unity|Add1~38_combout\,
	datad => \arith_logic_unity|Add0~38_combout\,
	combout => \register_file|registers:0:regx|Q~45_combout\);

-- Location: LCCOMB_X99_Y30_N10
\register_file|registers:0:regx|Q~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~46_combout\ = (\register_file|registers:0:regx|Q~45_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~45_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~46_combout\);

-- Location: LCCOMB_X99_Y30_N14
\register_file|registers:1:regx|Q[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[19]~feeder_combout\ = \register_file|registers:0:regx|Q~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~46_combout\,
	combout => \register_file|registers:1:regx|Q[19]~feeder_combout\);

-- Location: FF_X99_Y30_N15
\register_file|registers:1:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(19));

-- Location: LCCOMB_X99_Y30_N6
\aluOp2[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[19]~16_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(19)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(19),
	datad => \register_file|registers:0:regx|Q\(19),
	combout => \aluOp2[19]~16_combout\);

-- Location: LCCOMB_X99_Y31_N8
\arith_logic_unity|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~40_combout\ = ((\register_file|mux1|Mux11~0_combout\ $ (\aluOp2[20]~15_combout\ $ (\arith_logic_unity|Add1~39\)))) # (GND)
-- \arith_logic_unity|Add1~41\ = CARRY((\register_file|mux1|Mux11~0_combout\ & ((!\arith_logic_unity|Add1~39\) # (!\aluOp2[20]~15_combout\))) # (!\register_file|mux1|Mux11~0_combout\ & (!\aluOp2[20]~15_combout\ & !\arith_logic_unity|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux11~0_combout\,
	datab => \aluOp2[20]~15_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~39\,
	combout => \arith_logic_unity|Add1~40_combout\,
	cout => \arith_logic_unity|Add1~41\);

-- Location: LCCOMB_X101_Y32_N8
\arith_logic_unity|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~40_combout\ = ((\aluOp2[20]~15_combout\ $ (\register_file|mux1|Mux11~0_combout\ $ (!\arith_logic_unity|Add0~39\)))) # (GND)
-- \arith_logic_unity|Add0~41\ = CARRY((\aluOp2[20]~15_combout\ & ((\register_file|mux1|Mux11~0_combout\) # (!\arith_logic_unity|Add0~39\))) # (!\aluOp2[20]~15_combout\ & (\register_file|mux1|Mux11~0_combout\ & !\arith_logic_unity|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[20]~15_combout\,
	datab => \register_file|mux1|Mux11~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~39\,
	combout => \arith_logic_unity|Add0~40_combout\,
	cout => \arith_logic_unity|Add0~41\);

-- Location: LCCOMB_X99_Y30_N8
\register_file|registers:0:regx|Q~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~42_combout\ = (\control|Equal4~1_combout\ & ((\register_file|registers:0:regx|Q~41_combout\ & (\arith_logic_unity|Add1~40_combout\)) # (!\register_file|registers:0:regx|Q~41_combout\ & 
-- ((\arith_logic_unity|Add0~40_combout\))))) # (!\control|Equal4~1_combout\ & (\register_file|registers:0:regx|Q~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal4~1_combout\,
	datab => \register_file|registers:0:regx|Q~41_combout\,
	datac => \arith_logic_unity|Add1~40_combout\,
	datad => \arith_logic_unity|Add0~40_combout\,
	combout => \register_file|registers:0:regx|Q~42_combout\);

-- Location: LCCOMB_X99_Y30_N12
\register_file|registers:0:regx|Q~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~43_combout\ = (\register_file|registers:0:regx|Q~42_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~42_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~43_combout\);

-- Location: LCCOMB_X99_Y30_N4
\register_file|registers:0:regx|Q[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[20]~feeder_combout\ = \register_file|registers:0:regx|Q~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~43_combout\,
	combout => \register_file|registers:0:regx|Q[20]~feeder_combout\);

-- Location: FF_X99_Y30_N5
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

-- Location: LCCOMB_X99_Y30_N16
\register_file|mux1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux11~0_combout\ = (\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(20))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(20),
	datad => \register_file|registers:1:regx|Q\(20),
	combout => \register_file|mux1|Mux11~0_combout\);

-- Location: LCCOMB_X99_Y31_N10
\arith_logic_unity|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~42_combout\ = (\aluOp2[21]~14_combout\ & ((\register_file|mux1|Mux10~0_combout\ & (!\arith_logic_unity|Add1~41\)) # (!\register_file|mux1|Mux10~0_combout\ & ((\arith_logic_unity|Add1~41\) # (GND))))) # (!\aluOp2[21]~14_combout\ & 
-- ((\register_file|mux1|Mux10~0_combout\ & (\arith_logic_unity|Add1~41\ & VCC)) # (!\register_file|mux1|Mux10~0_combout\ & (!\arith_logic_unity|Add1~41\))))
-- \arith_logic_unity|Add1~43\ = CARRY((\aluOp2[21]~14_combout\ & ((!\arith_logic_unity|Add1~41\) # (!\register_file|mux1|Mux10~0_combout\))) # (!\aluOp2[21]~14_combout\ & (!\register_file|mux1|Mux10~0_combout\ & !\arith_logic_unity|Add1~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[21]~14_combout\,
	datab => \register_file|mux1|Mux10~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~41\,
	combout => \arith_logic_unity|Add1~42_combout\,
	cout => \arith_logic_unity|Add1~43\);

-- Location: LCCOMB_X101_Y32_N10
\arith_logic_unity|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~42_combout\ = (\register_file|mux1|Mux10~0_combout\ & ((\aluOp2[21]~14_combout\ & (\arith_logic_unity|Add0~41\ & VCC)) # (!\aluOp2[21]~14_combout\ & (!\arith_logic_unity|Add0~41\)))) # (!\register_file|mux1|Mux10~0_combout\ & 
-- ((\aluOp2[21]~14_combout\ & (!\arith_logic_unity|Add0~41\)) # (!\aluOp2[21]~14_combout\ & ((\arith_logic_unity|Add0~41\) # (GND)))))
-- \arith_logic_unity|Add0~43\ = CARRY((\register_file|mux1|Mux10~0_combout\ & (!\aluOp2[21]~14_combout\ & !\arith_logic_unity|Add0~41\)) # (!\register_file|mux1|Mux10~0_combout\ & ((!\arith_logic_unity|Add0~41\) # (!\aluOp2[21]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux10~0_combout\,
	datab => \aluOp2[21]~14_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~41\,
	combout => \arith_logic_unity|Add0~42_combout\,
	cout => \arith_logic_unity|Add0~43\);

-- Location: LCCOMB_X100_Y30_N8
\register_file|registers:0:regx|Q~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~39_combout\ = (\register_file|registers:0:regx|Q~38_combout\ & ((\arith_logic_unity|Add1~42_combout\) # ((!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~38_combout\ & (((\control|Equal4~1_combout\ & 
-- \arith_logic_unity|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~38_combout\,
	datab => \arith_logic_unity|Add1~42_combout\,
	datac => \control|Equal4~1_combout\,
	datad => \arith_logic_unity|Add0~42_combout\,
	combout => \register_file|registers:0:regx|Q~39_combout\);

-- Location: LCCOMB_X100_Y30_N30
\register_file|registers:0:regx|Q~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~40_combout\ = (\register_file|registers:0:regx|Q~39_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~39_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~40_combout\);

-- Location: FF_X100_Y30_N15
\register_file|registers:0:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~40_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(21));

-- Location: LCCOMB_X100_Y30_N0
\aluOp2[21]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[21]~14_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(21))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \register_file|registers:0:regx|Q\(21),
	datac => \register_file|registers:1:regx|Q\(21),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \aluOp2[21]~14_combout\);

-- Location: LCCOMB_X99_Y31_N12
\arith_logic_unity|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~44_combout\ = ((\register_file|mux1|Mux9~0_combout\ $ (\aluOp2[22]~13_combout\ $ (\arith_logic_unity|Add1~43\)))) # (GND)
-- \arith_logic_unity|Add1~45\ = CARRY((\register_file|mux1|Mux9~0_combout\ & ((!\arith_logic_unity|Add1~43\) # (!\aluOp2[22]~13_combout\))) # (!\register_file|mux1|Mux9~0_combout\ & (!\aluOp2[22]~13_combout\ & !\arith_logic_unity|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux9~0_combout\,
	datab => \aluOp2[22]~13_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~43\,
	combout => \arith_logic_unity|Add1~44_combout\,
	cout => \arith_logic_unity|Add1~45\);

-- Location: LCCOMB_X99_Y29_N28
\arith_logic_unity|Res~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~47_combout\ = \aluOp2[22]~13_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(22))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[22]~13_combout\,
	datab => \register_file|registers:0:regx|Q\(22),
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \register_file|registers:1:regx|Q\(22),
	combout => \arith_logic_unity|Res~47_combout\);

-- Location: LCCOMB_X100_Y29_N28
\register_file|mux2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux9~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(22)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:1:regx|Q\(22),
	datac => \register_file|registers:0:regx|Q\(22),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux9~0_combout\);

-- Location: LCCOMB_X101_Y29_N30
\data_memory|possible_outputs[3][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][22]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux9~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][22]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][22]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux9~0_combout\,
	combout => \data_memory|possible_outputs[3][22]~combout\);

-- Location: LCCOMB_X100_Y29_N24
\data_memory|possible_outputs[1][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][22]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux9~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][22]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][22]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux9~0_combout\,
	combout => \data_memory|possible_outputs[1][22]~combout\);

-- Location: LCCOMB_X100_Y29_N26
\data_memory|possible_outputs[0][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][22]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux9~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][22]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux9~0_combout\,
	datac => \data_memory|possible_outputs[0][22]~combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][22]~combout\);

-- Location: LCCOMB_X100_Y29_N20
\data_memory|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux9~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][22]~combout\) # ((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|possible_outputs[0][22]~combout\ & 
-- !\arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[1][22]~combout\,
	datac => \data_memory|possible_outputs[0][22]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux9~0_combout\);

-- Location: LCCOMB_X101_Y29_N4
\data_memory|possible_outputs[2][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][22]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux9~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][22]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][22]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux9~0_combout\,
	combout => \data_memory|possible_outputs[2][22]~combout\);

-- Location: LCCOMB_X100_Y29_N22
\data_memory|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux9~1_combout\ = (\data_memory|Mux9~0_combout\ & ((\data_memory|possible_outputs[3][22]~combout\) # ((!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux9~0_combout\ & (((\arith_logic_unity|Mux28~1_combout\ & 
-- \data_memory|possible_outputs[2][22]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][22]~combout\,
	datab => \data_memory|Mux9~0_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[2][22]~combout\,
	combout => \data_memory|Mux9~1_combout\);

-- Location: LCCOMB_X100_Y29_N4
\register_file|registers:0:regx|Q~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~35_combout\ = (\control|Equal3~0_combout\ & (((\data_memory|Mux9~1_combout\) # (!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (\arith_logic_unity|Res~47_combout\ & 
-- (\register_file|registers:0:regx|Q~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Res~47_combout\,
	datab => \control|Equal3~0_combout\,
	datac => \register_file|registers:0:regx|Q~2_combout\,
	datad => \data_memory|Mux9~1_combout\,
	combout => \register_file|registers:0:regx|Q~35_combout\);

-- Location: LCCOMB_X101_Y32_N12
\arith_logic_unity|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~44_combout\ = ((\aluOp2[22]~13_combout\ $ (\register_file|mux1|Mux9~0_combout\ $ (!\arith_logic_unity|Add0~43\)))) # (GND)
-- \arith_logic_unity|Add0~45\ = CARRY((\aluOp2[22]~13_combout\ & ((\register_file|mux1|Mux9~0_combout\) # (!\arith_logic_unity|Add0~43\))) # (!\aluOp2[22]~13_combout\ & (\register_file|mux1|Mux9~0_combout\ & !\arith_logic_unity|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[22]~13_combout\,
	datab => \register_file|mux1|Mux9~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~43\,
	combout => \arith_logic_unity|Add0~44_combout\,
	cout => \arith_logic_unity|Add0~45\);

-- Location: LCCOMB_X100_Y29_N10
\register_file|registers:0:regx|Q~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~36_combout\ = (\register_file|registers:0:regx|Q~35_combout\ & ((\arith_logic_unity|Add1~44_combout\) # ((!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~35_combout\ & (((\control|Equal4~1_combout\ & 
-- \arith_logic_unity|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~44_combout\,
	datab => \register_file|registers:0:regx|Q~35_combout\,
	datac => \control|Equal4~1_combout\,
	datad => \arith_logic_unity|Add0~44_combout\,
	combout => \register_file|registers:0:regx|Q~36_combout\);

-- Location: LCCOMB_X100_Y29_N2
\register_file|registers:0:regx|Q~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~37_combout\ = (\register_file|registers:0:regx|Q~36_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~36_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~37_combout\);

-- Location: FF_X100_Y29_N3
\register_file|registers:1:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(22));

-- Location: LCCOMB_X100_Y29_N0
\register_file|mux1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux9~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(22)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:1:regx|Q\(22),
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \register_file|registers:0:regx|Q\(22),
	combout => \register_file|mux1|Mux9~0_combout\);

-- Location: LCCOMB_X99_Y31_N14
\arith_logic_unity|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~46_combout\ = (\register_file|mux1|Mux8~0_combout\ & ((\aluOp2[23]~12_combout\ & (!\arith_logic_unity|Add1~45\)) # (!\aluOp2[23]~12_combout\ & (\arith_logic_unity|Add1~45\ & VCC)))) # (!\register_file|mux1|Mux8~0_combout\ & 
-- ((\aluOp2[23]~12_combout\ & ((\arith_logic_unity|Add1~45\) # (GND))) # (!\aluOp2[23]~12_combout\ & (!\arith_logic_unity|Add1~45\))))
-- \arith_logic_unity|Add1~47\ = CARRY((\register_file|mux1|Mux8~0_combout\ & (\aluOp2[23]~12_combout\ & !\arith_logic_unity|Add1~45\)) # (!\register_file|mux1|Mux8~0_combout\ & ((\aluOp2[23]~12_combout\) # (!\arith_logic_unity|Add1~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux8~0_combout\,
	datab => \aluOp2[23]~12_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~45\,
	combout => \arith_logic_unity|Add1~46_combout\,
	cout => \arith_logic_unity|Add1~47\);

-- Location: LCCOMB_X101_Y32_N14
\arith_logic_unity|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~46_combout\ = (\register_file|mux1|Mux8~0_combout\ & ((\aluOp2[23]~12_combout\ & (\arith_logic_unity|Add0~45\ & VCC)) # (!\aluOp2[23]~12_combout\ & (!\arith_logic_unity|Add0~45\)))) # (!\register_file|mux1|Mux8~0_combout\ & 
-- ((\aluOp2[23]~12_combout\ & (!\arith_logic_unity|Add0~45\)) # (!\aluOp2[23]~12_combout\ & ((\arith_logic_unity|Add0~45\) # (GND)))))
-- \arith_logic_unity|Add0~47\ = CARRY((\register_file|mux1|Mux8~0_combout\ & (!\aluOp2[23]~12_combout\ & !\arith_logic_unity|Add0~45\)) # (!\register_file|mux1|Mux8~0_combout\ & ((!\arith_logic_unity|Add0~45\) # (!\aluOp2[23]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux8~0_combout\,
	datab => \aluOp2[23]~12_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~45\,
	combout => \arith_logic_unity|Add0~46_combout\,
	cout => \arith_logic_unity|Add0~47\);

-- Location: LCCOMB_X98_Y29_N12
\register_file|registers:0:regx|Q~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~33_combout\ = (\register_file|registers:0:regx|Q~32_combout\ & ((\arith_logic_unity|Add1~46_combout\) # ((!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~32_combout\ & (((\control|Equal4~1_combout\ & 
-- \arith_logic_unity|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~32_combout\,
	datab => \arith_logic_unity|Add1~46_combout\,
	datac => \control|Equal4~1_combout\,
	datad => \arith_logic_unity|Add0~46_combout\,
	combout => \register_file|registers:0:regx|Q~33_combout\);

-- Location: LCCOMB_X98_Y29_N30
\register_file|registers:0:regx|Q~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~34_combout\ = (!\rst~input_o\ & \register_file|registers:0:regx|Q~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \register_file|registers:0:regx|Q~33_combout\,
	combout => \register_file|registers:0:regx|Q~34_combout\);

-- Location: FF_X98_Y29_N1
\register_file|registers:1:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(23));

-- Location: LCCOMB_X98_Y29_N18
\register_file|mux1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux8~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(23)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:1:regx|Q\(23),
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \register_file|registers:0:regx|Q\(23),
	combout => \register_file|mux1|Mux8~0_combout\);

-- Location: LCCOMB_X99_Y31_N16
\arith_logic_unity|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~48_combout\ = ((\register_file|mux1|Mux7~0_combout\ $ (\aluOp2[24]~11_combout\ $ (\arith_logic_unity|Add1~47\)))) # (GND)
-- \arith_logic_unity|Add1~49\ = CARRY((\register_file|mux1|Mux7~0_combout\ & ((!\arith_logic_unity|Add1~47\) # (!\aluOp2[24]~11_combout\))) # (!\register_file|mux1|Mux7~0_combout\ & (!\aluOp2[24]~11_combout\ & !\arith_logic_unity|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux7~0_combout\,
	datab => \aluOp2[24]~11_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~47\,
	combout => \arith_logic_unity|Add1~48_combout\,
	cout => \arith_logic_unity|Add1~49\);

-- Location: LCCOMB_X97_Y32_N20
\register_file|mux2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux7~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(24))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(24),
	datab => \register_file|registers:1:regx|Q\(24),
	datac => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux7~0_combout\);

-- Location: LCCOMB_X98_Y32_N22
\data_memory|possible_outputs[3][24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][24]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux7~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][24]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux7~0_combout\,
	datac => \data_memory|possible_outputs[3][24]~combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][24]~combout\);

-- Location: LCCOMB_X98_Y32_N6
\data_memory|possible_outputs[1][24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][24]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux7~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][24]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][24]~combout\,
	datac => \register_file|mux2|Mux7~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][24]~combout\);

-- Location: LCCOMB_X98_Y32_N20
\data_memory|possible_outputs[0][24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][24]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux7~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][24]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux7~0_combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \data_memory|possible_outputs[0][24]~combout\,
	combout => \data_memory|possible_outputs[0][24]~combout\);

-- Location: LCCOMB_X98_Y32_N28
\data_memory|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux7~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][24]~combout\) # ((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (((!\arith_logic_unity|Mux28~1_combout\ & 
-- \data_memory|possible_outputs[0][24]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][24]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[0][24]~combout\,
	combout => \data_memory|Mux7~0_combout\);

-- Location: LCCOMB_X97_Y32_N30
\data_memory|possible_outputs[2][24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][24]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux7~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][24]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][24]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux7~0_combout\,
	combout => \data_memory|possible_outputs[2][24]~combout\);

-- Location: LCCOMB_X98_Y32_N30
\data_memory|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux7~1_combout\ = (\data_memory|Mux7~0_combout\ & ((\data_memory|possible_outputs[3][24]~combout\) # ((!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux7~0_combout\ & (((\arith_logic_unity|Mux28~1_combout\ & 
-- \data_memory|possible_outputs[2][24]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][24]~combout\,
	datab => \data_memory|Mux7~0_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[2][24]~combout\,
	combout => \data_memory|Mux7~1_combout\);

-- Location: LCCOMB_X97_Y32_N22
\arith_logic_unity|Res~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~45_combout\ = \aluOp2[24]~11_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(24))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[24]~11_combout\,
	datab => \register_file|registers:0:regx|Q\(24),
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \register_file|registers:1:regx|Q\(24),
	combout => \arith_logic_unity|Res~45_combout\);

-- Location: LCCOMB_X98_Y32_N26
\register_file|registers:0:regx|Q~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~29_combout\ = (\control|Equal3~0_combout\ & ((\data_memory|Mux7~1_combout\) # ((!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (((\arith_logic_unity|Res~45_combout\ & 
-- \register_file|registers:0:regx|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux7~1_combout\,
	datab => \control|Equal3~0_combout\,
	datac => \arith_logic_unity|Res~45_combout\,
	datad => \register_file|registers:0:regx|Q~2_combout\,
	combout => \register_file|registers:0:regx|Q~29_combout\);

-- Location: LCCOMB_X101_Y32_N16
\arith_logic_unity|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~48_combout\ = ((\register_file|mux1|Mux7~0_combout\ $ (\aluOp2[24]~11_combout\ $ (!\arith_logic_unity|Add0~47\)))) # (GND)
-- \arith_logic_unity|Add0~49\ = CARRY((\register_file|mux1|Mux7~0_combout\ & ((\aluOp2[24]~11_combout\) # (!\arith_logic_unity|Add0~47\))) # (!\register_file|mux1|Mux7~0_combout\ & (\aluOp2[24]~11_combout\ & !\arith_logic_unity|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux7~0_combout\,
	datab => \aluOp2[24]~11_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~47\,
	combout => \arith_logic_unity|Add0~48_combout\,
	cout => \arith_logic_unity|Add0~49\);

-- Location: LCCOMB_X98_Y32_N24
\register_file|registers:0:regx|Q~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~30_combout\ = (\control|Equal4~1_combout\ & ((\register_file|registers:0:regx|Q~29_combout\ & (\arith_logic_unity|Add1~48_combout\)) # (!\register_file|registers:0:regx|Q~29_combout\ & 
-- ((\arith_logic_unity|Add0~48_combout\))))) # (!\control|Equal4~1_combout\ & (((\register_file|registers:0:regx|Q~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~48_combout\,
	datab => \control|Equal4~1_combout\,
	datac => \register_file|registers:0:regx|Q~29_combout\,
	datad => \arith_logic_unity|Add0~48_combout\,
	combout => \register_file|registers:0:regx|Q~30_combout\);

-- Location: LCCOMB_X98_Y32_N18
\register_file|registers:0:regx|Q~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~31_combout\ = (\register_file|registers:0:regx|Q~30_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~30_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~31_combout\);

-- Location: FF_X98_Y32_N17
\register_file|registers:0:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(24));

-- Location: LCCOMB_X98_Y32_N16
\register_file|mux1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux7~0_combout\ = (\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(24))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(24),
	datad => \register_file|registers:1:regx|Q\(24),
	combout => \register_file|mux1|Mux7~0_combout\);

-- Location: LCCOMB_X101_Y32_N18
\arith_logic_unity|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~50_combout\ = (\register_file|mux1|Mux6~0_combout\ & ((\aluOp2[25]~10_combout\ & (\arith_logic_unity|Add0~49\ & VCC)) # (!\aluOp2[25]~10_combout\ & (!\arith_logic_unity|Add0~49\)))) # (!\register_file|mux1|Mux6~0_combout\ & 
-- ((\aluOp2[25]~10_combout\ & (!\arith_logic_unity|Add0~49\)) # (!\aluOp2[25]~10_combout\ & ((\arith_logic_unity|Add0~49\) # (GND)))))
-- \arith_logic_unity|Add0~51\ = CARRY((\register_file|mux1|Mux6~0_combout\ & (!\aluOp2[25]~10_combout\ & !\arith_logic_unity|Add0~49\)) # (!\register_file|mux1|Mux6~0_combout\ & ((!\arith_logic_unity|Add0~49\) # (!\aluOp2[25]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux6~0_combout\,
	datab => \aluOp2[25]~10_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~49\,
	combout => \arith_logic_unity|Add0~50_combout\,
	cout => \arith_logic_unity|Add0~51\);

-- Location: LCCOMB_X99_Y31_N18
\arith_logic_unity|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~50_combout\ = (\aluOp2[25]~10_combout\ & ((\register_file|mux1|Mux6~0_combout\ & (!\arith_logic_unity|Add1~49\)) # (!\register_file|mux1|Mux6~0_combout\ & ((\arith_logic_unity|Add1~49\) # (GND))))) # (!\aluOp2[25]~10_combout\ & 
-- ((\register_file|mux1|Mux6~0_combout\ & (\arith_logic_unity|Add1~49\ & VCC)) # (!\register_file|mux1|Mux6~0_combout\ & (!\arith_logic_unity|Add1~49\))))
-- \arith_logic_unity|Add1~51\ = CARRY((\aluOp2[25]~10_combout\ & ((!\arith_logic_unity|Add1~49\) # (!\register_file|mux1|Mux6~0_combout\))) # (!\aluOp2[25]~10_combout\ & (!\register_file|mux1|Mux6~0_combout\ & !\arith_logic_unity|Add1~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[25]~10_combout\,
	datab => \register_file|mux1|Mux6~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~49\,
	combout => \arith_logic_unity|Add1~50_combout\,
	cout => \arith_logic_unity|Add1~51\);

-- Location: LCCOMB_X103_Y32_N6
\register_file|registers:0:regx|Q~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~27_combout\ = (\register_file|registers:0:regx|Q~26_combout\ & (((\arith_logic_unity|Add1~50_combout\)) # (!\control|Equal4~1_combout\))) # (!\register_file|registers:0:regx|Q~26_combout\ & (\control|Equal4~1_combout\ & 
-- (\arith_logic_unity|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~26_combout\,
	datab => \control|Equal4~1_combout\,
	datac => \arith_logic_unity|Add0~50_combout\,
	datad => \arith_logic_unity|Add1~50_combout\,
	combout => \register_file|registers:0:regx|Q~27_combout\);

-- Location: LCCOMB_X103_Y32_N26
\register_file|registers:0:regx|Q~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~28_combout\ = (!\rst~input_o\ & \register_file|registers:0:regx|Q~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \register_file|registers:0:regx|Q~27_combout\,
	combout => \register_file|registers:0:regx|Q~28_combout\);

-- Location: FF_X103_Y32_N27
\register_file|registers:1:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(25));

-- Location: LCCOMB_X103_Y32_N0
\register_file|mux1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux6~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(25)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(25),
	datad => \register_file|registers:0:regx|Q\(25),
	combout => \register_file|mux1|Mux6~0_combout\);

-- Location: LCCOMB_X101_Y32_N20
\arith_logic_unity|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~52_combout\ = ((\aluOp2[26]~9_combout\ $ (\register_file|mux1|Mux5~0_combout\ $ (!\arith_logic_unity|Add0~51\)))) # (GND)
-- \arith_logic_unity|Add0~53\ = CARRY((\aluOp2[26]~9_combout\ & ((\register_file|mux1|Mux5~0_combout\) # (!\arith_logic_unity|Add0~51\))) # (!\aluOp2[26]~9_combout\ & (\register_file|mux1|Mux5~0_combout\ & !\arith_logic_unity|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[26]~9_combout\,
	datab => \register_file|mux1|Mux5~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~51\,
	combout => \arith_logic_unity|Add0~52_combout\,
	cout => \arith_logic_unity|Add0~53\);

-- Location: LCCOMB_X98_Y36_N28
\arith_logic_unity|Res~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~43_combout\ = \aluOp2[26]~9_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(26))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(26),
	datab => \aluOp2[26]~9_combout\,
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \register_file|registers:1:regx|Q\(26),
	combout => \arith_logic_unity|Res~43_combout\);

-- Location: LCCOMB_X98_Y36_N30
\register_file|mux2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux5~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(26)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:1:regx|Q\(26),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:0:regx|Q\(26),
	combout => \register_file|mux2|Mux5~0_combout\);

-- Location: LCCOMB_X99_Y36_N30
\data_memory|possible_outputs[1][26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][26]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux5~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][26]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][26]~combout\,
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datac => \register_file|mux2|Mux5~0_combout\,
	combout => \data_memory|possible_outputs[1][26]~combout\);

-- Location: LCCOMB_X99_Y36_N28
\data_memory|possible_outputs[0][26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][26]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux5~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][26]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux5~0_combout\,
	datab => \data_memory|possible_outputs[0][26]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][26]~combout\);

-- Location: LCCOMB_X99_Y36_N4
\data_memory|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux5~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[1][26]~combout\)) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[0][26]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][26]~combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[0][26]~combout\,
	combout => \data_memory|Mux5~0_combout\);

-- Location: LCCOMB_X99_Y36_N2
\data_memory|possible_outputs[3][26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][26]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux5~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][26]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][26]~combout\,
	datac => \register_file|mux2|Mux5~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][26]~combout\);

-- Location: LCCOMB_X98_Y36_N4
\data_memory|possible_outputs[2][26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][26]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux5~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][26]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][26]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux5~0_combout\,
	combout => \data_memory|possible_outputs[2][26]~combout\);

-- Location: LCCOMB_X99_Y36_N6
\data_memory|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux5~1_combout\ = (\data_memory|Mux5~0_combout\ & ((\data_memory|possible_outputs[3][26]~combout\) # ((!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux5~0_combout\ & (((\data_memory|possible_outputs[2][26]~combout\ & 
-- \arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux5~0_combout\,
	datab => \data_memory|possible_outputs[3][26]~combout\,
	datac => \data_memory|possible_outputs[2][26]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux5~1_combout\);

-- Location: LCCOMB_X99_Y36_N12
\register_file|registers:0:regx|Q~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~23_combout\ = (\control|Equal3~0_combout\ & (((\data_memory|Mux5~1_combout\) # (!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (\arith_logic_unity|Res~43_combout\ & 
-- ((\register_file|registers:0:regx|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Res~43_combout\,
	datab => \data_memory|Mux5~1_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \register_file|registers:0:regx|Q~2_combout\,
	combout => \register_file|registers:0:regx|Q~23_combout\);

-- Location: LCCOMB_X99_Y31_N20
\arith_logic_unity|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~52_combout\ = ((\aluOp2[26]~9_combout\ $ (\register_file|mux1|Mux5~0_combout\ $ (\arith_logic_unity|Add1~51\)))) # (GND)
-- \arith_logic_unity|Add1~53\ = CARRY((\aluOp2[26]~9_combout\ & (\register_file|mux1|Mux5~0_combout\ & !\arith_logic_unity|Add1~51\)) # (!\aluOp2[26]~9_combout\ & ((\register_file|mux1|Mux5~0_combout\) # (!\arith_logic_unity|Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[26]~9_combout\,
	datab => \register_file|mux1|Mux5~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~51\,
	combout => \arith_logic_unity|Add1~52_combout\,
	cout => \arith_logic_unity|Add1~53\);

-- Location: LCCOMB_X98_Y34_N28
\register_file|registers:0:regx|Q~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~24_combout\ = (\register_file|registers:0:regx|Q~23_combout\ & (((\arith_logic_unity|Add1~52_combout\) # (!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~23_combout\ & 
-- (\arith_logic_unity|Add0~52_combout\ & ((\control|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~52_combout\,
	datab => \register_file|registers:0:regx|Q~23_combout\,
	datac => \arith_logic_unity|Add1~52_combout\,
	datad => \control|Equal4~1_combout\,
	combout => \register_file|registers:0:regx|Q~24_combout\);

-- Location: LCCOMB_X98_Y34_N2
\register_file|registers:0:regx|Q~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~25_combout\ = (!\rst~input_o\ & \register_file|registers:0:regx|Q~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \register_file|registers:0:regx|Q~24_combout\,
	combout => \register_file|registers:0:regx|Q~25_combout\);

-- Location: FF_X98_Y34_N3
\register_file|registers:1:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(26));

-- Location: LCCOMB_X98_Y34_N14
\aluOp2[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[26]~9_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(26)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \register_file|registers:1:regx|Q\(26),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:0:regx|Q\(26),
	combout => \aluOp2[26]~9_combout\);

-- Location: LCCOMB_X99_Y31_N22
\arith_logic_unity|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~54_combout\ = (\register_file|mux1|Mux4~0_combout\ & ((\aluOp2[27]~8_combout\ & (!\arith_logic_unity|Add1~53\)) # (!\aluOp2[27]~8_combout\ & (\arith_logic_unity|Add1~53\ & VCC)))) # (!\register_file|mux1|Mux4~0_combout\ & 
-- ((\aluOp2[27]~8_combout\ & ((\arith_logic_unity|Add1~53\) # (GND))) # (!\aluOp2[27]~8_combout\ & (!\arith_logic_unity|Add1~53\))))
-- \arith_logic_unity|Add1~55\ = CARRY((\register_file|mux1|Mux4~0_combout\ & (\aluOp2[27]~8_combout\ & !\arith_logic_unity|Add1~53\)) # (!\register_file|mux1|Mux4~0_combout\ & ((\aluOp2[27]~8_combout\) # (!\arith_logic_unity|Add1~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux4~0_combout\,
	datab => \aluOp2[27]~8_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~53\,
	combout => \arith_logic_unity|Add1~54_combout\,
	cout => \arith_logic_unity|Add1~55\);

-- Location: LCCOMB_X102_Y32_N2
\register_file|mux2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux4~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(27))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(27),
	datac => \register_file|registers:1:regx|Q\(27),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux4~0_combout\);

-- Location: LCCOMB_X102_Y32_N4
\data_memory|possible_outputs[0][27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][27]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux4~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][27]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][27]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \register_file|mux2|Mux4~0_combout\,
	combout => \data_memory|possible_outputs[0][27]~combout\);

-- Location: LCCOMB_X102_Y32_N6
\data_memory|possible_outputs[2][27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][27]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux4~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][27]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][27]~combout\,
	datac => \register_file|mux2|Mux4~0_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][27]~combout\);

-- Location: LCCOMB_X102_Y32_N16
\data_memory|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux4~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (\arith_logic_unity|Mux28~1_combout\)) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[2][27]~combout\))) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[0][27]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[0][27]~combout\,
	datad => \data_memory|possible_outputs[2][27]~combout\,
	combout => \data_memory|Mux4~0_combout\);

-- Location: LCCOMB_X105_Y32_N30
\data_memory|possible_outputs[1][27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][27]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux4~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][27]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux4~0_combout\,
	datac => \data_memory|possible_outputs[1][27]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][27]~combout\);

-- Location: LCCOMB_X102_Y32_N26
\data_memory|possible_outputs[3][27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][27]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux4~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][27]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][27]~combout\,
	datac => \register_file|mux2|Mux4~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][27]~combout\);

-- Location: LCCOMB_X102_Y32_N14
\data_memory|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux4~1_combout\ = (\data_memory|Mux4~0_combout\ & (((\data_memory|possible_outputs[3][27]~combout\)) # (!\arith_logic_unity|Mux29~1_combout\))) # (!\data_memory|Mux4~0_combout\ & (\arith_logic_unity|Mux29~1_combout\ & 
-- (\data_memory|possible_outputs[1][27]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux4~0_combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[1][27]~combout\,
	datad => \data_memory|possible_outputs[3][27]~combout\,
	combout => \data_memory|Mux4~1_combout\);

-- Location: LCCOMB_X102_Y32_N8
\arith_logic_unity|Res~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~42_combout\ = \aluOp2[27]~8_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(27))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \aluOp2[27]~8_combout\,
	datac => \register_file|registers:0:regx|Q\(27),
	datad => \register_file|registers:1:regx|Q\(27),
	combout => \arith_logic_unity|Res~42_combout\);

-- Location: LCCOMB_X102_Y32_N28
\register_file|registers:0:regx|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~20_combout\ = (\control|Equal3~0_combout\ & ((\data_memory|Mux4~1_combout\) # ((!\register_file|registers:0:regx|Q~2_combout\)))) # (!\control|Equal3~0_combout\ & (((\register_file|registers:0:regx|Q~2_combout\ & 
-- \arith_logic_unity|Res~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux4~1_combout\,
	datab => \control|Equal3~0_combout\,
	datac => \register_file|registers:0:regx|Q~2_combout\,
	datad => \arith_logic_unity|Res~42_combout\,
	combout => \register_file|registers:0:regx|Q~20_combout\);

-- Location: LCCOMB_X101_Y32_N22
\arith_logic_unity|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~54_combout\ = (\aluOp2[27]~8_combout\ & ((\register_file|mux1|Mux4~0_combout\ & (\arith_logic_unity|Add0~53\ & VCC)) # (!\register_file|mux1|Mux4~0_combout\ & (!\arith_logic_unity|Add0~53\)))) # (!\aluOp2[27]~8_combout\ & 
-- ((\register_file|mux1|Mux4~0_combout\ & (!\arith_logic_unity|Add0~53\)) # (!\register_file|mux1|Mux4~0_combout\ & ((\arith_logic_unity|Add0~53\) # (GND)))))
-- \arith_logic_unity|Add0~55\ = CARRY((\aluOp2[27]~8_combout\ & (!\register_file|mux1|Mux4~0_combout\ & !\arith_logic_unity|Add0~53\)) # (!\aluOp2[27]~8_combout\ & ((!\arith_logic_unity|Add0~53\) # (!\register_file|mux1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[27]~8_combout\,
	datab => \register_file|mux1|Mux4~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~53\,
	combout => \arith_logic_unity|Add0~54_combout\,
	cout => \arith_logic_unity|Add0~55\);

-- Location: LCCOMB_X102_Y32_N18
\register_file|registers:0:regx|Q~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~21_combout\ = (\register_file|registers:0:regx|Q~20_combout\ & ((\arith_logic_unity|Add1~54_combout\) # ((!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~20_combout\ & 
-- (((\arith_logic_unity|Add0~54_combout\ & \control|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~54_combout\,
	datab => \register_file|registers:0:regx|Q~20_combout\,
	datac => \arith_logic_unity|Add0~54_combout\,
	datad => \control|Equal4~1_combout\,
	combout => \register_file|registers:0:regx|Q~21_combout\);

-- Location: LCCOMB_X102_Y32_N24
\register_file|registers:0:regx|Q~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~22_combout\ = (!\rst~input_o\ & \register_file|registers:0:regx|Q~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \register_file|registers:0:regx|Q~21_combout\,
	combout => \register_file|registers:0:regx|Q~22_combout\);

-- Location: FF_X102_Y32_N9
\register_file|registers:0:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(27));

-- Location: LCCOMB_X102_Y32_N0
\register_file|mux1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux4~0_combout\ = (\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(27))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(27),
	datad => \register_file|registers:1:regx|Q\(27),
	combout => \register_file|mux1|Mux4~0_combout\);

-- Location: LCCOMB_X99_Y31_N24
\arith_logic_unity|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~56_combout\ = ((\register_file|mux1|Mux3~0_combout\ $ (\aluOp2[28]~7_combout\ $ (\arith_logic_unity|Add1~55\)))) # (GND)
-- \arith_logic_unity|Add1~57\ = CARRY((\register_file|mux1|Mux3~0_combout\ & ((!\arith_logic_unity|Add1~55\) # (!\aluOp2[28]~7_combout\))) # (!\register_file|mux1|Mux3~0_combout\ & (!\aluOp2[28]~7_combout\ & !\arith_logic_unity|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux3~0_combout\,
	datab => \aluOp2[28]~7_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~55\,
	combout => \arith_logic_unity|Add1~56_combout\,
	cout => \arith_logic_unity|Add1~57\);

-- Location: LCCOMB_X101_Y31_N4
\arith_logic_unity|Res~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~41_combout\ = \aluOp2[28]~7_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(28))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \aluOp2[28]~7_combout\,
	datac => \register_file|registers:0:regx|Q\(28),
	datad => \register_file|registers:1:regx|Q\(28),
	combout => \arith_logic_unity|Res~41_combout\);

-- Location: LCCOMB_X101_Y31_N2
\register_file|mux2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux3~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(28)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(28),
	datac => \register_file|registers:0:regx|Q\(28),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux3~0_combout\);

-- Location: LCCOMB_X101_Y31_N20
\data_memory|possible_outputs[1][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][28]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux3~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][28]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][28]~combout\,
	datac => \register_file|mux2|Mux3~0_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][28]~combout\);

-- Location: LCCOMB_X101_Y31_N6
\data_memory|possible_outputs[0][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][28]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux3~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][28]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux3~0_combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \data_memory|possible_outputs[0][28]~combout\,
	combout => \data_memory|possible_outputs[0][28]~combout\);

-- Location: LCCOMB_X101_Y31_N28
\data_memory|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux3~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][28]~combout\) # ((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (((!\arith_logic_unity|Mux28~1_combout\ & 
-- \data_memory|possible_outputs[0][28]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[1][28]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[0][28]~combout\,
	combout => \data_memory|Mux3~0_combout\);

-- Location: LCCOMB_X101_Y31_N22
\data_memory|possible_outputs[2][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][28]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux3~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][28]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][28]~combout\,
	datac => \register_file|mux2|Mux3~0_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][28]~combout\);

-- Location: LCCOMB_X102_Y31_N24
\data_memory|possible_outputs[3][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][28]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux3~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][28]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][28]~combout\,
	datac => \register_file|mux2|Mux3~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][28]~combout\);

-- Location: LCCOMB_X101_Y31_N10
\data_memory|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux3~1_combout\ = (\data_memory|Mux3~0_combout\ & (((\data_memory|possible_outputs[3][28]~combout\)) # (!\arith_logic_unity|Mux28~1_combout\))) # (!\data_memory|Mux3~0_combout\ & (\arith_logic_unity|Mux28~1_combout\ & 
-- (\data_memory|possible_outputs[2][28]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux3~0_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[2][28]~combout\,
	datad => \data_memory|possible_outputs[3][28]~combout\,
	combout => \data_memory|Mux3~1_combout\);

-- Location: LCCOMB_X100_Y31_N24
\register_file|registers:0:regx|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~17_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & ((\data_memory|Mux3~1_combout\))) # (!\control|Equal3~0_combout\ & (\arith_logic_unity|Res~41_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Res~41_combout\,
	datab => \register_file|registers:0:regx|Q~2_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \data_memory|Mux3~1_combout\,
	combout => \register_file|registers:0:regx|Q~17_combout\);

-- Location: LCCOMB_X101_Y32_N24
\arith_logic_unity|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~56_combout\ = ((\aluOp2[28]~7_combout\ $ (\register_file|mux1|Mux3~0_combout\ $ (!\arith_logic_unity|Add0~55\)))) # (GND)
-- \arith_logic_unity|Add0~57\ = CARRY((\aluOp2[28]~7_combout\ & ((\register_file|mux1|Mux3~0_combout\) # (!\arith_logic_unity|Add0~55\))) # (!\aluOp2[28]~7_combout\ & (\register_file|mux1|Mux3~0_combout\ & !\arith_logic_unity|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[28]~7_combout\,
	datab => \register_file|mux1|Mux3~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~55\,
	combout => \arith_logic_unity|Add0~56_combout\,
	cout => \arith_logic_unity|Add0~57\);

-- Location: LCCOMB_X100_Y31_N14
\register_file|registers:0:regx|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~18_combout\ = (\register_file|registers:0:regx|Q~17_combout\ & ((\arith_logic_unity|Add1~56_combout\) # ((!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~17_combout\ & (((\control|Equal4~1_combout\ & 
-- \arith_logic_unity|Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~56_combout\,
	datab => \register_file|registers:0:regx|Q~17_combout\,
	datac => \control|Equal4~1_combout\,
	datad => \arith_logic_unity|Add0~56_combout\,
	combout => \register_file|registers:0:regx|Q~18_combout\);

-- Location: LCCOMB_X100_Y31_N2
\register_file|registers:0:regx|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~19_combout\ = (!\rst~input_o\ & \register_file|registers:0:regx|Q~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \register_file|registers:0:regx|Q~18_combout\,
	combout => \register_file|registers:0:regx|Q~19_combout\);

-- Location: FF_X100_Y31_N5
\register_file|registers:0:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(28));

-- Location: LCCOMB_X100_Y31_N8
\register_file|mux1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux3~0_combout\ = (\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(28))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(28),
	datad => \register_file|registers:1:regx|Q\(28),
	combout => \register_file|mux1|Mux3~0_combout\);

-- Location: LCCOMB_X99_Y31_N26
\arith_logic_unity|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~58_combout\ = (\aluOp2[29]~6_combout\ & ((\register_file|mux1|Mux2~0_combout\ & (!\arith_logic_unity|Add1~57\)) # (!\register_file|mux1|Mux2~0_combout\ & ((\arith_logic_unity|Add1~57\) # (GND))))) # (!\aluOp2[29]~6_combout\ & 
-- ((\register_file|mux1|Mux2~0_combout\ & (\arith_logic_unity|Add1~57\ & VCC)) # (!\register_file|mux1|Mux2~0_combout\ & (!\arith_logic_unity|Add1~57\))))
-- \arith_logic_unity|Add1~59\ = CARRY((\aluOp2[29]~6_combout\ & ((!\arith_logic_unity|Add1~57\) # (!\register_file|mux1|Mux2~0_combout\))) # (!\aluOp2[29]~6_combout\ & (!\register_file|mux1|Mux2~0_combout\ & !\arith_logic_unity|Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[29]~6_combout\,
	datab => \register_file|mux1|Mux2~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~57\,
	combout => \arith_logic_unity|Add1~58_combout\,
	cout => \arith_logic_unity|Add1~59\);

-- Location: LCCOMB_X101_Y32_N26
\arith_logic_unity|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~58_combout\ = (\register_file|mux1|Mux2~0_combout\ & ((\aluOp2[29]~6_combout\ & (\arith_logic_unity|Add0~57\ & VCC)) # (!\aluOp2[29]~6_combout\ & (!\arith_logic_unity|Add0~57\)))) # (!\register_file|mux1|Mux2~0_combout\ & 
-- ((\aluOp2[29]~6_combout\ & (!\arith_logic_unity|Add0~57\)) # (!\aluOp2[29]~6_combout\ & ((\arith_logic_unity|Add0~57\) # (GND)))))
-- \arith_logic_unity|Add0~59\ = CARRY((\register_file|mux1|Mux2~0_combout\ & (!\aluOp2[29]~6_combout\ & !\arith_logic_unity|Add0~57\)) # (!\register_file|mux1|Mux2~0_combout\ & ((!\arith_logic_unity|Add0~57\) # (!\aluOp2[29]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux2~0_combout\,
	datab => \aluOp2[29]~6_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~57\,
	combout => \arith_logic_unity|Add0~58_combout\,
	cout => \arith_logic_unity|Add0~59\);

-- Location: LCCOMB_X100_Y35_N12
\register_file|registers:0:regx|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~15_combout\ = (\register_file|registers:0:regx|Q~14_combout\ & ((\arith_logic_unity|Add1~58_combout\) # ((!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~14_combout\ & 
-- (((\arith_logic_unity|Add0~58_combout\ & \control|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~14_combout\,
	datab => \arith_logic_unity|Add1~58_combout\,
	datac => \arith_logic_unity|Add0~58_combout\,
	datad => \control|Equal4~1_combout\,
	combout => \register_file|registers:0:regx|Q~15_combout\);

-- Location: LCCOMB_X100_Y35_N10
\register_file|registers:0:regx|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~16_combout\ = (\register_file|registers:0:regx|Q~15_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~15_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~16_combout\);

-- Location: FF_X100_Y35_N27
\register_file|registers:1:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(29));

-- Location: LCCOMB_X100_Y35_N20
\register_file|mux1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux2~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:0:regx|Q\(29)))) # (!\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:1:regx|Q\(29),
	datad => \register_file|registers:0:regx|Q\(29),
	combout => \register_file|mux1|Mux2~0_combout\);

-- Location: LCCOMB_X101_Y32_N28
\arith_logic_unity|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~60_combout\ = ((\aluOp2[30]~5_combout\ $ (\register_file|mux1|Mux1~0_combout\ $ (!\arith_logic_unity|Add0~59\)))) # (GND)
-- \arith_logic_unity|Add0~61\ = CARRY((\aluOp2[30]~5_combout\ & ((\register_file|mux1|Mux1~0_combout\) # (!\arith_logic_unity|Add0~59\))) # (!\aluOp2[30]~5_combout\ & (\register_file|mux1|Mux1~0_combout\ & !\arith_logic_unity|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[30]~5_combout\,
	datab => \register_file|mux1|Mux1~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~59\,
	combout => \arith_logic_unity|Add0~60_combout\,
	cout => \arith_logic_unity|Add0~61\);

-- Location: LCCOMB_X99_Y31_N28
\arith_logic_unity|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~60_combout\ = ((\aluOp2[30]~5_combout\ $ (\register_file|mux1|Mux1~0_combout\ $ (\arith_logic_unity|Add1~59\)))) # (GND)
-- \arith_logic_unity|Add1~61\ = CARRY((\aluOp2[30]~5_combout\ & (\register_file|mux1|Mux1~0_combout\ & !\arith_logic_unity|Add1~59\)) # (!\aluOp2[30]~5_combout\ & ((\register_file|mux1|Mux1~0_combout\) # (!\arith_logic_unity|Add1~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[30]~5_combout\,
	datab => \register_file|mux1|Mux1~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~59\,
	combout => \arith_logic_unity|Add1~60_combout\,
	cout => \arith_logic_unity|Add1~61\);

-- Location: LCCOMB_X101_Y34_N28
\register_file|registers:0:regx|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~12_combout\ = (\control|Equal4~1_combout\ & ((\register_file|registers:0:regx|Q~11_combout\ & ((\arith_logic_unity|Add1~60_combout\))) # (!\register_file|registers:0:regx|Q~11_combout\ & 
-- (\arith_logic_unity|Add0~60_combout\)))) # (!\control|Equal4~1_combout\ & (\register_file|registers:0:regx|Q~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal4~1_combout\,
	datab => \register_file|registers:0:regx|Q~11_combout\,
	datac => \arith_logic_unity|Add0~60_combout\,
	datad => \arith_logic_unity|Add1~60_combout\,
	combout => \register_file|registers:0:regx|Q~12_combout\);

-- Location: LCCOMB_X101_Y34_N6
\register_file|registers:0:regx|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~13_combout\ = (\register_file|registers:0:regx|Q~12_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~12_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~13_combout\);

-- Location: FF_X101_Y34_N3
\register_file|registers:1:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(30));

-- Location: LCCOMB_X101_Y34_N22
\aluOp2[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[30]~5_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(30)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:1:regx|Q\(30),
	datad => \register_file|registers:0:regx|Q\(30),
	combout => \aluOp2[30]~5_combout\);

-- Location: LCCOMB_X99_Y31_N30
\arith_logic_unity|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~62_combout\ = \register_file|mux1|Mux0~0_combout\ $ (\aluOp2[31]~4_combout\ $ (!\arith_logic_unity|Add1~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux0~0_combout\,
	datab => \aluOp2[31]~4_combout\,
	cin => \arith_logic_unity|Add1~61\,
	combout => \arith_logic_unity|Add1~62_combout\);

-- Location: LCCOMB_X101_Y32_N30
\arith_logic_unity|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~62_combout\ = \aluOp2[31]~4_combout\ $ (\arith_logic_unity|Add0~61\ $ (\register_file|mux1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aluOp2[31]~4_combout\,
	datad => \register_file|mux1|Mux0~0_combout\,
	cin => \arith_logic_unity|Add0~61\,
	combout => \arith_logic_unity|Add0~62_combout\);

-- Location: LCCOMB_X101_Y36_N8
\register_file|mux2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux0~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(31))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(31),
	datab => \register_file|registers:1:regx|Q\(31),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux0~0_combout\);

-- Location: LCCOMB_X101_Y36_N10
\data_memory|possible_outputs[2][31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][31]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux0~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][31]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][31]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux0~0_combout\,
	combout => \data_memory|possible_outputs[2][31]~combout\);

-- Location: LCCOMB_X101_Y36_N24
\data_memory|possible_outputs[0][31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][31]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux0~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][31]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux0~0_combout\,
	datab => \data_memory|possible_outputs[0][31]~combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][31]~combout\);

-- Location: LCCOMB_X101_Y36_N12
\data_memory|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux0~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[2][31]~combout\) # ((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (((!\arith_logic_unity|Mux29~1_combout\ & 
-- \data_memory|possible_outputs[0][31]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][31]~combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[0][31]~combout\,
	combout => \data_memory|Mux0~0_combout\);

-- Location: LCCOMB_X102_Y36_N4
\data_memory|possible_outputs[1][31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][31]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux0~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][31]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][31]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux0~0_combout\,
	combout => \data_memory|possible_outputs[1][31]~combout\);

-- Location: LCCOMB_X101_Y36_N22
\data_memory|possible_outputs[3][31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][31]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux0~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][31]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datac => \data_memory|possible_outputs[3][31]~combout\,
	datad => \register_file|mux2|Mux0~0_combout\,
	combout => \data_memory|possible_outputs[3][31]~combout\);

-- Location: LCCOMB_X101_Y36_N14
\data_memory|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux0~1_combout\ = (\data_memory|Mux0~0_combout\ & (((\data_memory|possible_outputs[3][31]~combout\) # (!\arith_logic_unity|Mux29~1_combout\)))) # (!\data_memory|Mux0~0_combout\ & (\data_memory|possible_outputs[1][31]~combout\ & 
-- ((\arith_logic_unity|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux0~0_combout\,
	datab => \data_memory|possible_outputs[1][31]~combout\,
	datac => \data_memory|possible_outputs[3][31]~combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux0~1_combout\);

-- Location: LCCOMB_X101_Y36_N2
\arith_logic_unity|Res~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~38_combout\ = \aluOp2[31]~4_combout\ $ (((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:0:regx|Q\(31))) # (!\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(31),
	datab => \aluOp2[31]~4_combout\,
	datac => \register_file|registers:1:regx|Q\(31),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \arith_logic_unity|Res~38_combout\);

-- Location: LCCOMB_X101_Y36_N4
\register_file|registers:0:regx|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~8_combout\ = (\register_file|registers:0:regx|Q~2_combout\ & ((\control|Equal3~0_combout\ & (\data_memory|Mux0~1_combout\)) # (!\control|Equal3~0_combout\ & ((\arith_logic_unity|Res~38_combout\))))) # 
-- (!\register_file|registers:0:regx|Q~2_combout\ & (((\control|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux0~1_combout\,
	datab => \arith_logic_unity|Res~38_combout\,
	datac => \register_file|registers:0:regx|Q~2_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~8_combout\);

-- Location: LCCOMB_X101_Y36_N18
\register_file|registers:0:regx|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~9_combout\ = (\control|Equal4~1_combout\ & ((\register_file|registers:0:regx|Q~8_combout\ & (\arith_logic_unity|Add1~62_combout\)) # (!\register_file|registers:0:regx|Q~8_combout\ & 
-- ((\arith_logic_unity|Add0~62_combout\))))) # (!\control|Equal4~1_combout\ & (((\register_file|registers:0:regx|Q~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal4~1_combout\,
	datab => \arith_logic_unity|Add1~62_combout\,
	datac => \arith_logic_unity|Add0~62_combout\,
	datad => \register_file|registers:0:regx|Q~8_combout\,
	combout => \register_file|registers:0:regx|Q~9_combout\);

-- Location: LCCOMB_X101_Y36_N28
\register_file|registers:0:regx|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~10_combout\ = (\register_file|registers:0:regx|Q~9_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~9_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~10_combout\);

-- Location: FF_X101_Y36_N27
\register_file|registers:1:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(31));

-- Location: LCCOMB_X101_Y36_N30
\aluOp2[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[31]~4_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(31)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|registers:1:regx|Q\(31),
	datad => \register_file|registers:0:regx|Q\(31),
	combout => \aluOp2[31]~4_combout\);

-- Location: LCCOMB_X99_Y34_N0
\arith_logic_unity|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~1_cout\ = CARRY((\aluOp2[0]~3_combout\ & !\register_file|mux1|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[0]~3_combout\,
	datab => \register_file|mux1|Mux31~0_combout\,
	datad => VCC,
	cout => \arith_logic_unity|LessThan0~1_cout\);

-- Location: LCCOMB_X99_Y34_N2
\arith_logic_unity|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~3_cout\ = CARRY((\aluOp2[1]~2_combout\ & (\register_file|mux1|Mux30~0_combout\ & !\arith_logic_unity|LessThan0~1_cout\)) # (!\aluOp2[1]~2_combout\ & ((\register_file|mux1|Mux30~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[1]~2_combout\,
	datab => \register_file|mux1|Mux30~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~1_cout\,
	cout => \arith_logic_unity|LessThan0~3_cout\);

-- Location: LCCOMB_X99_Y34_N4
\arith_logic_unity|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~5_cout\ = CARRY((\aluOp2[2]~1_combout\ & ((!\arith_logic_unity|LessThan0~3_cout\) # (!\register_file|mux1|Mux29~0_combout\))) # (!\aluOp2[2]~1_combout\ & (!\register_file|mux1|Mux29~0_combout\ & 
-- !\arith_logic_unity|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[2]~1_combout\,
	datab => \register_file|mux1|Mux29~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~3_cout\,
	cout => \arith_logic_unity|LessThan0~5_cout\);

-- Location: LCCOMB_X99_Y34_N6
\arith_logic_unity|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~7_cout\ = CARRY((\register_file|mux1|Mux28~0_combout\ & ((!\arith_logic_unity|LessThan0~5_cout\) # (!\aluOp2[3]~0_combout\))) # (!\register_file|mux1|Mux28~0_combout\ & (!\aluOp2[3]~0_combout\ & 
-- !\arith_logic_unity|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux28~0_combout\,
	datab => \aluOp2[3]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~5_cout\,
	cout => \arith_logic_unity|LessThan0~7_cout\);

-- Location: LCCOMB_X99_Y34_N8
\arith_logic_unity|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~9_cout\ = CARRY((\register_file|mux1|Mux27~0_combout\ & (\aluOp2[4]~31_combout\ & !\arith_logic_unity|LessThan0~7_cout\)) # (!\register_file|mux1|Mux27~0_combout\ & ((\aluOp2[4]~31_combout\) # 
-- (!\arith_logic_unity|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux27~0_combout\,
	datab => \aluOp2[4]~31_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~7_cout\,
	cout => \arith_logic_unity|LessThan0~9_cout\);

-- Location: LCCOMB_X99_Y34_N10
\arith_logic_unity|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~11_cout\ = CARRY((\aluOp2[5]~30_combout\ & (\register_file|mux1|Mux26~0_combout\ & !\arith_logic_unity|LessThan0~9_cout\)) # (!\aluOp2[5]~30_combout\ & ((\register_file|mux1|Mux26~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[5]~30_combout\,
	datab => \register_file|mux1|Mux26~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~9_cout\,
	cout => \arith_logic_unity|LessThan0~11_cout\);

-- Location: LCCOMB_X99_Y34_N12
\arith_logic_unity|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~13_cout\ = CARRY((\register_file|mux1|Mux25~0_combout\ & (\aluOp2[6]~29_combout\ & !\arith_logic_unity|LessThan0~11_cout\)) # (!\register_file|mux1|Mux25~0_combout\ & ((\aluOp2[6]~29_combout\) # 
-- (!\arith_logic_unity|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~0_combout\,
	datab => \aluOp2[6]~29_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~11_cout\,
	cout => \arith_logic_unity|LessThan0~13_cout\);

-- Location: LCCOMB_X99_Y34_N14
\arith_logic_unity|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~15_cout\ = CARRY((\register_file|mux1|Mux24~0_combout\ & ((!\arith_logic_unity|LessThan0~13_cout\) # (!\aluOp2[7]~28_combout\))) # (!\register_file|mux1|Mux24~0_combout\ & (!\aluOp2[7]~28_combout\ & 
-- !\arith_logic_unity|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux24~0_combout\,
	datab => \aluOp2[7]~28_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~13_cout\,
	cout => \arith_logic_unity|LessThan0~15_cout\);

-- Location: LCCOMB_X99_Y34_N16
\arith_logic_unity|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~17_cout\ = CARRY((\aluOp2[8]~27_combout\ & ((!\arith_logic_unity|LessThan0~15_cout\) # (!\register_file|mux1|Mux23~0_combout\))) # (!\aluOp2[8]~27_combout\ & (!\register_file|mux1|Mux23~0_combout\ & 
-- !\arith_logic_unity|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[8]~27_combout\,
	datab => \register_file|mux1|Mux23~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~15_cout\,
	cout => \arith_logic_unity|LessThan0~17_cout\);

-- Location: LCCOMB_X99_Y34_N18
\arith_logic_unity|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~19_cout\ = CARRY((\aluOp2[9]~26_combout\ & (\register_file|mux1|Mux22~0_combout\ & !\arith_logic_unity|LessThan0~17_cout\)) # (!\aluOp2[9]~26_combout\ & ((\register_file|mux1|Mux22~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[9]~26_combout\,
	datab => \register_file|mux1|Mux22~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~17_cout\,
	cout => \arith_logic_unity|LessThan0~19_cout\);

-- Location: LCCOMB_X99_Y34_N20
\arith_logic_unity|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~21_cout\ = CARRY((\aluOp2[10]~25_combout\ & ((!\arith_logic_unity|LessThan0~19_cout\) # (!\register_file|mux1|Mux21~0_combout\))) # (!\aluOp2[10]~25_combout\ & (!\register_file|mux1|Mux21~0_combout\ & 
-- !\arith_logic_unity|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[10]~25_combout\,
	datab => \register_file|mux1|Mux21~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~19_cout\,
	cout => \arith_logic_unity|LessThan0~21_cout\);

-- Location: LCCOMB_X99_Y34_N22
\arith_logic_unity|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~23_cout\ = CARRY((\aluOp2[11]~24_combout\ & (\register_file|mux1|Mux20~0_combout\ & !\arith_logic_unity|LessThan0~21_cout\)) # (!\aluOp2[11]~24_combout\ & ((\register_file|mux1|Mux20~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[11]~24_combout\,
	datab => \register_file|mux1|Mux20~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~21_cout\,
	cout => \arith_logic_unity|LessThan0~23_cout\);

-- Location: LCCOMB_X99_Y34_N24
\arith_logic_unity|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~25_cout\ = CARRY((\aluOp2[12]~23_combout\ & ((!\arith_logic_unity|LessThan0~23_cout\) # (!\register_file|mux1|Mux19~0_combout\))) # (!\aluOp2[12]~23_combout\ & (!\register_file|mux1|Mux19~0_combout\ & 
-- !\arith_logic_unity|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[12]~23_combout\,
	datab => \register_file|mux1|Mux19~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~23_cout\,
	cout => \arith_logic_unity|LessThan0~25_cout\);

-- Location: LCCOMB_X99_Y34_N26
\arith_logic_unity|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~27_cout\ = CARRY((\register_file|mux1|Mux18~0_combout\ & ((!\arith_logic_unity|LessThan0~25_cout\) # (!\aluOp2[13]~22_combout\))) # (!\register_file|mux1|Mux18~0_combout\ & (!\aluOp2[13]~22_combout\ & 
-- !\arith_logic_unity|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux18~0_combout\,
	datab => \aluOp2[13]~22_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~25_cout\,
	cout => \arith_logic_unity|LessThan0~27_cout\);

-- Location: LCCOMB_X99_Y34_N28
\arith_logic_unity|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~29_cout\ = CARRY((\register_file|mux1|Mux17~0_combout\ & (\aluOp2[14]~21_combout\ & !\arith_logic_unity|LessThan0~27_cout\)) # (!\register_file|mux1|Mux17~0_combout\ & ((\aluOp2[14]~21_combout\) # 
-- (!\arith_logic_unity|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux17~0_combout\,
	datab => \aluOp2[14]~21_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~27_cout\,
	cout => \arith_logic_unity|LessThan0~29_cout\);

-- Location: LCCOMB_X99_Y34_N30
\arith_logic_unity|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~31_cout\ = CARRY((\register_file|mux1|Mux16~0_combout\ & ((!\arith_logic_unity|LessThan0~29_cout\) # (!\aluOp2[15]~20_combout\))) # (!\register_file|mux1|Mux16~0_combout\ & (!\aluOp2[15]~20_combout\ & 
-- !\arith_logic_unity|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux16~0_combout\,
	datab => \aluOp2[15]~20_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~29_cout\,
	cout => \arith_logic_unity|LessThan0~31_cout\);

-- Location: LCCOMB_X99_Y33_N0
\arith_logic_unity|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~33_cout\ = CARRY((\register_file|mux1|Mux15~0_combout\ & (\aluOp2[16]~19_combout\ & !\arith_logic_unity|LessThan0~31_cout\)) # (!\register_file|mux1|Mux15~0_combout\ & ((\aluOp2[16]~19_combout\) # 
-- (!\arith_logic_unity|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux15~0_combout\,
	datab => \aluOp2[16]~19_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~31_cout\,
	cout => \arith_logic_unity|LessThan0~33_cout\);

-- Location: LCCOMB_X99_Y33_N2
\arith_logic_unity|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~35_cout\ = CARRY((\register_file|mux1|Mux14~0_combout\ & ((!\arith_logic_unity|LessThan0~33_cout\) # (!\aluOp2[17]~18_combout\))) # (!\register_file|mux1|Mux14~0_combout\ & (!\aluOp2[17]~18_combout\ & 
-- !\arith_logic_unity|LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux14~0_combout\,
	datab => \aluOp2[17]~18_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~33_cout\,
	cout => \arith_logic_unity|LessThan0~35_cout\);

-- Location: LCCOMB_X99_Y33_N4
\arith_logic_unity|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~37_cout\ = CARRY((\register_file|mux1|Mux13~0_combout\ & (\aluOp2[18]~17_combout\ & !\arith_logic_unity|LessThan0~35_cout\)) # (!\register_file|mux1|Mux13~0_combout\ & ((\aluOp2[18]~17_combout\) # 
-- (!\arith_logic_unity|LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux13~0_combout\,
	datab => \aluOp2[18]~17_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~35_cout\,
	cout => \arith_logic_unity|LessThan0~37_cout\);

-- Location: LCCOMB_X99_Y33_N6
\arith_logic_unity|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~39_cout\ = CARRY((\register_file|mux1|Mux12~0_combout\ & ((!\arith_logic_unity|LessThan0~37_cout\) # (!\aluOp2[19]~16_combout\))) # (!\register_file|mux1|Mux12~0_combout\ & (!\aluOp2[19]~16_combout\ & 
-- !\arith_logic_unity|LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux12~0_combout\,
	datab => \aluOp2[19]~16_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~37_cout\,
	cout => \arith_logic_unity|LessThan0~39_cout\);

-- Location: LCCOMB_X99_Y33_N8
\arith_logic_unity|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~41_cout\ = CARRY((\aluOp2[20]~15_combout\ & ((!\arith_logic_unity|LessThan0~39_cout\) # (!\register_file|mux1|Mux11~0_combout\))) # (!\aluOp2[20]~15_combout\ & (!\register_file|mux1|Mux11~0_combout\ & 
-- !\arith_logic_unity|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[20]~15_combout\,
	datab => \register_file|mux1|Mux11~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~39_cout\,
	cout => \arith_logic_unity|LessThan0~41_cout\);

-- Location: LCCOMB_X99_Y33_N10
\arith_logic_unity|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~43_cout\ = CARRY((\aluOp2[21]~14_combout\ & (\register_file|mux1|Mux10~0_combout\ & !\arith_logic_unity|LessThan0~41_cout\)) # (!\aluOp2[21]~14_combout\ & ((\register_file|mux1|Mux10~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[21]~14_combout\,
	datab => \register_file|mux1|Mux10~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~41_cout\,
	cout => \arith_logic_unity|LessThan0~43_cout\);

-- Location: LCCOMB_X99_Y33_N12
\arith_logic_unity|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~45_cout\ = CARRY((\aluOp2[22]~13_combout\ & ((!\arith_logic_unity|LessThan0~43_cout\) # (!\register_file|mux1|Mux9~0_combout\))) # (!\aluOp2[22]~13_combout\ & (!\register_file|mux1|Mux9~0_combout\ & 
-- !\arith_logic_unity|LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[22]~13_combout\,
	datab => \register_file|mux1|Mux9~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~43_cout\,
	cout => \arith_logic_unity|LessThan0~45_cout\);

-- Location: LCCOMB_X99_Y33_N14
\arith_logic_unity|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~47_cout\ = CARRY((\aluOp2[23]~12_combout\ & (\register_file|mux1|Mux8~0_combout\ & !\arith_logic_unity|LessThan0~45_cout\)) # (!\aluOp2[23]~12_combout\ & ((\register_file|mux1|Mux8~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[23]~12_combout\,
	datab => \register_file|mux1|Mux8~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~45_cout\,
	cout => \arith_logic_unity|LessThan0~47_cout\);

-- Location: LCCOMB_X99_Y33_N16
\arith_logic_unity|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~49_cout\ = CARRY((\register_file|mux1|Mux7~0_combout\ & (\aluOp2[24]~11_combout\ & !\arith_logic_unity|LessThan0~47_cout\)) # (!\register_file|mux1|Mux7~0_combout\ & ((\aluOp2[24]~11_combout\) # 
-- (!\arith_logic_unity|LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux7~0_combout\,
	datab => \aluOp2[24]~11_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~47_cout\,
	cout => \arith_logic_unity|LessThan0~49_cout\);

-- Location: LCCOMB_X99_Y33_N18
\arith_logic_unity|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~51_cout\ = CARRY((\register_file|mux1|Mux6~0_combout\ & ((!\arith_logic_unity|LessThan0~49_cout\) # (!\aluOp2[25]~10_combout\))) # (!\register_file|mux1|Mux6~0_combout\ & (!\aluOp2[25]~10_combout\ & 
-- !\arith_logic_unity|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux6~0_combout\,
	datab => \aluOp2[25]~10_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~49_cout\,
	cout => \arith_logic_unity|LessThan0~51_cout\);

-- Location: LCCOMB_X99_Y33_N20
\arith_logic_unity|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~53_cout\ = CARRY((\aluOp2[26]~9_combout\ & ((!\arith_logic_unity|LessThan0~51_cout\) # (!\register_file|mux1|Mux5~0_combout\))) # (!\aluOp2[26]~9_combout\ & (!\register_file|mux1|Mux5~0_combout\ & 
-- !\arith_logic_unity|LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[26]~9_combout\,
	datab => \register_file|mux1|Mux5~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~51_cout\,
	cout => \arith_logic_unity|LessThan0~53_cout\);

-- Location: LCCOMB_X99_Y33_N22
\arith_logic_unity|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~55_cout\ = CARRY((\aluOp2[27]~8_combout\ & (\register_file|mux1|Mux4~0_combout\ & !\arith_logic_unity|LessThan0~53_cout\)) # (!\aluOp2[27]~8_combout\ & ((\register_file|mux1|Mux4~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[27]~8_combout\,
	datab => \register_file|mux1|Mux4~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~53_cout\,
	cout => \arith_logic_unity|LessThan0~55_cout\);

-- Location: LCCOMB_X99_Y33_N24
\arith_logic_unity|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~57_cout\ = CARRY((\register_file|mux1|Mux3~0_combout\ & (\aluOp2[28]~7_combout\ & !\arith_logic_unity|LessThan0~55_cout\)) # (!\register_file|mux1|Mux3~0_combout\ & ((\aluOp2[28]~7_combout\) # 
-- (!\arith_logic_unity|LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux3~0_combout\,
	datab => \aluOp2[28]~7_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~55_cout\,
	cout => \arith_logic_unity|LessThan0~57_cout\);

-- Location: LCCOMB_X99_Y33_N26
\arith_logic_unity|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~59_cout\ = CARRY((\register_file|mux1|Mux2~0_combout\ & ((!\arith_logic_unity|LessThan0~57_cout\) # (!\aluOp2[29]~6_combout\))) # (!\register_file|mux1|Mux2~0_combout\ & (!\aluOp2[29]~6_combout\ & 
-- !\arith_logic_unity|LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux2~0_combout\,
	datab => \aluOp2[29]~6_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~57_cout\,
	cout => \arith_logic_unity|LessThan0~59_cout\);

-- Location: LCCOMB_X99_Y33_N28
\arith_logic_unity|LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~61_cout\ = CARRY((\register_file|mux1|Mux1~0_combout\ & (\aluOp2[30]~5_combout\ & !\arith_logic_unity|LessThan0~59_cout\)) # (!\register_file|mux1|Mux1~0_combout\ & ((\aluOp2[30]~5_combout\) # 
-- (!\arith_logic_unity|LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux1~0_combout\,
	datab => \aluOp2[30]~5_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~59_cout\,
	cout => \arith_logic_unity|LessThan0~61_cout\);

-- Location: LCCOMB_X99_Y33_N30
\arith_logic_unity|LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~62_combout\ = (\aluOp2[31]~4_combout\ & ((\arith_logic_unity|LessThan0~61_cout\) # (!\register_file|mux1|Mux0~0_combout\))) # (!\aluOp2[31]~4_combout\ & (\arith_logic_unity|LessThan0~61_cout\ & 
-- !\register_file|mux1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[31]~4_combout\,
	datad => \register_file|mux1|Mux0~0_combout\,
	cin => \arith_logic_unity|LessThan0~61_cout\,
	combout => \arith_logic_unity|LessThan0~62_combout\);

-- Location: LCCOMB_X101_Y33_N0
\arith_logic_unity|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~0_combout\ = (\aluOp2[0]~3_combout\ & (\register_file|mux1|Mux31~0_combout\ $ (VCC))) # (!\aluOp2[0]~3_combout\ & (\register_file|mux1|Mux31~0_combout\ & VCC))
-- \arith_logic_unity|Add0~1\ = CARRY((\aluOp2[0]~3_combout\ & \register_file|mux1|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[0]~3_combout\,
	datab => \register_file|mux1|Mux31~0_combout\,
	datad => VCC,
	combout => \arith_logic_unity|Add0~0_combout\,
	cout => \arith_logic_unity|Add0~1\);

-- Location: LCCOMB_X98_Y33_N28
\register_file|registers:0:regx|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~6_combout\ = (\control|aluControl[2]~1_combout\ & (!\control|Equal4~0_combout\ & (\arith_logic_unity|LessThan0~62_combout\))) # (!\control|aluControl[2]~1_combout\ & (((\arith_logic_unity|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~1_combout\,
	datab => \control|Equal4~0_combout\,
	datac => \arith_logic_unity|LessThan0~62_combout\,
	datad => \arith_logic_unity|Add0~0_combout\,
	combout => \register_file|registers:0:regx|Q~6_combout\);

-- Location: LCCOMB_X98_Y33_N4
\register_file|registers:0:regx|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~7_combout\ = (!\rst~input_o\ & ((\control|Equal3~0_combout\ & (\data_memory|Mux31~1_combout\)) # (!\control|Equal3~0_combout\ & ((\register_file|registers:0:regx|Q~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux31~1_combout\,
	datab => \rst~input_o\,
	datac => \control|Equal3~0_combout\,
	datad => \register_file|registers:0:regx|Q~6_combout\,
	combout => \register_file|registers:0:regx|Q~7_combout\);

-- Location: FF_X98_Y33_N13
\register_file|registers:0:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(0),
	asdata => \register_file|registers:0:regx|Q~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(0));

-- Location: LCCOMB_X98_Y33_N18
\register_file|mux2|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux31~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(0))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(0),
	datac => \register_file|registers:1:regx|Q\(0),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux31~0_combout\);

-- Location: LCCOMB_X98_Y33_N24
\aluOp2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[0]~3_combout\ = (\control|aluSrc~0_combout\ & (!\PC|Q\(2))) # (!\control|aluSrc~0_combout\ & ((\register_file|mux2|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluSrc~0_combout\,
	datac => \PC|Q\(2),
	datad => \register_file|mux2|Mux31~0_combout\,
	combout => \aluOp2[0]~3_combout\);

-- Location: LCCOMB_X101_Y33_N2
\arith_logic_unity|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~2_combout\ = (\aluOp2[1]~2_combout\ & ((\register_file|mux1|Mux30~0_combout\ & (\arith_logic_unity|Add0~1\ & VCC)) # (!\register_file|mux1|Mux30~0_combout\ & (!\arith_logic_unity|Add0~1\)))) # (!\aluOp2[1]~2_combout\ & 
-- ((\register_file|mux1|Mux30~0_combout\ & (!\arith_logic_unity|Add0~1\)) # (!\register_file|mux1|Mux30~0_combout\ & ((\arith_logic_unity|Add0~1\) # (GND)))))
-- \arith_logic_unity|Add0~3\ = CARRY((\aluOp2[1]~2_combout\ & (!\register_file|mux1|Mux30~0_combout\ & !\arith_logic_unity|Add0~1\)) # (!\aluOp2[1]~2_combout\ & ((!\arith_logic_unity|Add0~1\) # (!\register_file|mux1|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[1]~2_combout\,
	datab => \register_file|mux1|Mux30~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~1\,
	combout => \arith_logic_unity|Add0~2_combout\,
	cout => \arith_logic_unity|Add0~3\);

-- Location: LCCOMB_X102_Y33_N26
\register_file|registers:0:regx|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~4_combout\ = (\register_file|registers:0:regx|Q~3_combout\ & (((\arith_logic_unity|Add1~2_combout\) # (!\control|Equal4~1_combout\)))) # (!\register_file|registers:0:regx|Q~3_combout\ & (\arith_logic_unity|Add0~2_combout\ 
-- & (\control|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~3_combout\,
	datab => \arith_logic_unity|Add0~2_combout\,
	datac => \control|Equal4~1_combout\,
	datad => \arith_logic_unity|Add1~2_combout\,
	combout => \register_file|registers:0:regx|Q~4_combout\);

-- Location: LCCOMB_X102_Y33_N22
\register_file|registers:0:regx|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~5_combout\ = (\register_file|registers:0:regx|Q~4_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~4_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~5_combout\);

-- Location: FF_X102_Y33_N23
\register_file|registers:1:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(1),
	d => \register_file|registers:0:regx|Q~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(1));

-- Location: LCCOMB_X102_Y33_N10
\aluOp2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[1]~2_combout\ = (!\control|aluSrc~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(1)))) # (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(1),
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|registers:0:regx|Q\(1),
	combout => \aluOp2[1]~2_combout\);

-- Location: LCCOMB_X101_Y33_N4
\arith_logic_unity|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~4_combout\ = ((\aluOp2[2]~1_combout\ $ (\register_file|mux1|Mux29~0_combout\ $ (!\arith_logic_unity|Add0~3\)))) # (GND)
-- \arith_logic_unity|Add0~5\ = CARRY((\aluOp2[2]~1_combout\ & ((\register_file|mux1|Mux29~0_combout\) # (!\arith_logic_unity|Add0~3\))) # (!\aluOp2[2]~1_combout\ & (\register_file|mux1|Mux29~0_combout\ & !\arith_logic_unity|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[2]~1_combout\,
	datab => \register_file|mux1|Mux29~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~3\,
	combout => \arith_logic_unity|Add0~4_combout\,
	cout => \arith_logic_unity|Add0~5\);

-- Location: LCCOMB_X100_Y33_N26
\arith_logic_unity|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux28~0_combout\ = (!\control|Equal4~0_combout\ & (!\control|aluControl[2]~1_combout\ & (\register_file|mux1|Mux28~0_combout\ $ (\aluOp2[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux28~0_combout\,
	datab => \aluOp2[3]~0_combout\,
	datac => \control|Equal4~0_combout\,
	datad => \control|aluControl[2]~1_combout\,
	combout => \arith_logic_unity|Mux28~0_combout\);

-- Location: LCCOMB_X100_Y33_N6
\arith_logic_unity|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux28~1_combout\ = (\arith_logic_unity|Mux28~0_combout\) # ((\arith_logic_unity|Add0~6_combout\ & (\control|Equal4~0_combout\ & !\control|aluControl[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~6_combout\,
	datab => \control|Equal4~0_combout\,
	datac => \arith_logic_unity|Mux28~0_combout\,
	datad => \control|aluControl[2]~1_combout\,
	combout => \arith_logic_unity|Mux28~1_combout\);

-- Location: LCCOMB_X96_Y33_N0
\data_memory|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~3_combout\ = (\control|Equal4~1_combout\ & (\arith_logic_unity|Mux28~1_combout\ & \arith_logic_unity|Mux29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal4~1_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Decoder0~3_combout\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X97_Y33_N22
\data_memory|possible_outputs[3][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][2]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux29~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][2]~combout\,
	datac => \register_file|mux2|Mux29~0_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][2]~combout\);

-- Location: LCCOMB_X96_Y33_N26
\data_memory|possible_outputs[2][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][2]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux29~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][2]~combout\,
	datac => \register_file|mux2|Mux29~0_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][2]~combout\);

-- Location: LCCOMB_X97_Y33_N28
\data_memory|possible_outputs[1][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][2]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux29~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][2]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux29~0_combout\,
	combout => \data_memory|possible_outputs[1][2]~combout\);

-- Location: LCCOMB_X97_Y33_N20
\data_memory|possible_outputs[0][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][2]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux29~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][2]~combout\,
	datac => \register_file|mux2|Mux29~0_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][2]~combout\);

-- Location: LCCOMB_X97_Y33_N8
\data_memory|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux29~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[1][2]~combout\)) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[0][2]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \data_memory|possible_outputs[1][2]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[0][2]~combout\,
	combout => \data_memory|Mux29~0_combout\);

-- Location: LCCOMB_X97_Y33_N16
\data_memory|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux29~1_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|Mux29~0_combout\ & (\data_memory|possible_outputs[3][2]~combout\)) # (!\data_memory|Mux29~0_combout\ & ((\data_memory|possible_outputs[2][2]~combout\))))) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & (((\data_memory|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][2]~combout\,
	datab => \data_memory|possible_outputs[2][2]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|Mux29~0_combout\,
	combout => \data_memory|Mux29~1_combout\);

-- Location: LCCOMB_X97_Y33_N12
\register_file|registers:0:regx|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~1_combout\ = (!\rst~input_o\ & ((\control|Equal3~0_combout\ & ((\data_memory|Mux29~1_combout\))) # (!\control|Equal3~0_combout\ & (\arith_logic_unity|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|Mux29~1_combout\,
	datac => \rst~input_o\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~1_combout\);

-- Location: FF_X97_Y33_N1
\register_file|registers:0:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(0),
	asdata => \register_file|registers:0:regx|Q~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(2));

-- Location: LCCOMB_X97_Y33_N6
\register_file|mux2|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux29~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(2))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(2),
	datac => \register_file|registers:1:regx|Q\(2),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux2|Mux29~0_combout\);

-- Location: LCCOMB_X100_Y33_N0
\aluOp2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[2]~1_combout\ = (\control|aluSrc~0_combout\ & (!\instruction_memory|Mux9~0_combout\)) # (!\control|aluSrc~0_combout\ & ((\register_file|mux2|Mux29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datac => \instruction_memory|Mux9~0_combout\,
	datad => \register_file|mux2|Mux29~0_combout\,
	combout => \aluOp2[2]~1_combout\);

-- Location: LCCOMB_X100_Y33_N20
\arith_logic_unity|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux29~0_combout\ = (!\control|Equal4~0_combout\ & (!\control|aluControl[2]~1_combout\ & (\aluOp2[2]~1_combout\ $ (\register_file|mux1|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal4~0_combout\,
	datab => \aluOp2[2]~1_combout\,
	datac => \register_file|mux1|Mux29~0_combout\,
	datad => \control|aluControl[2]~1_combout\,
	combout => \arith_logic_unity|Mux29~0_combout\);

-- Location: LCCOMB_X100_Y33_N16
\arith_logic_unity|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux29~1_combout\ = (\arith_logic_unity|Mux29~0_combout\) # ((\arith_logic_unity|Add0~4_combout\ & (!\control|aluControl[2]~1_combout\ & \control|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~4_combout\,
	datab => \control|aluControl[2]~1_combout\,
	datac => \control|Equal4~0_combout\,
	datad => \arith_logic_unity|Mux29~0_combout\,
	combout => \arith_logic_unity|Mux29~1_combout\);

-- Location: LCCOMB_X98_Y33_N26
\data_memory|possible_outputs[1][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][0]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux31~0_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][0]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux31~0_combout\,
	combout => \data_memory|possible_outputs[1][0]~combout\);

-- Location: LCCOMB_X98_Y33_N16
\data_memory|possible_outputs[0][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][0]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux31~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux31~0_combout\,
	datab => \data_memory|possible_outputs[0][0]~combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][0]~combout\);

-- Location: LCCOMB_X98_Y33_N10
\data_memory|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux31~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\) # ((\data_memory|possible_outputs[1][0]~combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (!\arith_logic_unity|Mux28~1_combout\ & 
-- ((\data_memory|possible_outputs[0][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[1][0]~combout\,
	datad => \data_memory|possible_outputs[0][0]~combout\,
	combout => \data_memory|Mux31~0_combout\);

-- Location: LCCOMB_X98_Y33_N14
\data_memory|possible_outputs[2][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][0]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux31~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux31~0_combout\,
	datac => \data_memory|possible_outputs[2][0]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][0]~combout\);

-- Location: LCCOMB_X97_Y33_N30
\data_memory|possible_outputs[3][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][0]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux31~0_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux31~0_combout\,
	datac => \data_memory|possible_outputs[3][0]~combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][0]~combout\);

-- Location: LCCOMB_X98_Y33_N20
\data_memory|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux31~1_combout\ = (\data_memory|Mux31~0_combout\ & (((\data_memory|possible_outputs[3][0]~combout\) # (!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux31~0_combout\ & (\data_memory|possible_outputs[2][0]~combout\ & 
-- (\arith_logic_unity|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux31~0_combout\,
	datab => \data_memory|possible_outputs[2][0]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[3][0]~combout\,
	combout => \data_memory|Mux31~1_combout\);

-- Location: LCCOMB_X106_Y37_N10
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

-- Location: LCCOMB_X107_Y37_N4
\PC|Q~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~61_combout\ = (\pc_incremented[6]~8_combout\ & (!\rst~input_o\ & (!\PC|Q\(5) & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[6]~8_combout\,
	datab => \rst~input_o\,
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \PC|Q~61_combout\);

-- Location: FF_X107_Y37_N5
\PC|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(6));

-- Location: LCCOMB_X106_Y37_N12
\pc_incremented[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[7]~10_combout\ = (\PC|Q\(7) & (!\pc_incremented[6]~9\)) # (!\PC|Q\(7) & ((\pc_incremented[6]~9\) # (GND)))
-- \pc_incremented[7]~11\ = CARRY((!\pc_incremented[6]~9\) # (!\PC|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(7),
	datad => VCC,
	cin => \pc_incremented[6]~9\,
	combout => \pc_incremented[7]~10_combout\,
	cout => \pc_incremented[7]~11\);

-- Location: LCCOMB_X107_Y37_N28
\PC|Q~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~62_combout\ = (\pc_incremented[7]~10_combout\ & (!\PC|Q\(5) & !\PC|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[7]~10_combout\,
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \PC|Q~62_combout\);

-- Location: FF_X107_Y37_N29
\PC|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~62_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(7));

-- Location: LCCOMB_X106_Y37_N14
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

-- Location: LCCOMB_X107_Y37_N6
\PC|Q~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~63_combout\ = (!\PC|Q\(4) & (\pc_incremented[8]~12_combout\ & (!\PC|Q\(5) & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \pc_incremented[8]~12_combout\,
	datac => \PC|Q\(5),
	datad => \rst~input_o\,
	combout => \PC|Q~63_combout\);

-- Location: FF_X107_Y37_N7
\PC|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(8));

-- Location: LCCOMB_X106_Y37_N16
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

-- Location: LCCOMB_X107_Y37_N24
\PC|Q~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~64_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & (\pc_incremented[9]~14_combout\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \pc_incremented[9]~14_combout\,
	datad => \rst~input_o\,
	combout => \PC|Q~64_combout\);

-- Location: FF_X107_Y37_N25
\PC|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(9));

-- Location: LCCOMB_X106_Y37_N18
\pc_incremented[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[10]~16_combout\ = (\PC|Q\(10) & (\pc_incremented[9]~15\ $ (GND))) # (!\PC|Q\(10) & (!\pc_incremented[9]~15\ & VCC))
-- \pc_incremented[10]~17\ = CARRY((\PC|Q\(10) & !\pc_incremented[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(10),
	datad => VCC,
	cin => \pc_incremented[9]~15\,
	combout => \pc_incremented[10]~16_combout\,
	cout => \pc_incremented[10]~17\);

-- Location: LCCOMB_X107_Y37_N2
\PC|Q~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~65_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & (\pc_incremented[10]~16_combout\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \pc_incremented[10]~16_combout\,
	datad => \rst~input_o\,
	combout => \PC|Q~65_combout\);

-- Location: FF_X107_Y37_N3
\PC|Q[10]\ : dffeas
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
	q => \PC|Q\(10));

-- Location: LCCOMB_X106_Y37_N20
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

-- Location: LCCOMB_X107_Y37_N12
\PC|Q~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~66_combout\ = (\pc_incremented[11]~18_combout\ & (!\rst~input_o\ & (!\PC|Q\(5) & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[11]~18_combout\,
	datab => \rst~input_o\,
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \PC|Q~66_combout\);

-- Location: FF_X107_Y37_N13
\PC|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(11));

-- Location: LCCOMB_X106_Y37_N22
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

-- Location: LCCOMB_X107_Y37_N10
\PC|Q~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~67_combout\ = (\pc_incremented[12]~20_combout\ & (!\rst~input_o\ & (!\PC|Q\(5) & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[12]~20_combout\,
	datab => \rst~input_o\,
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \PC|Q~67_combout\);

-- Location: FF_X107_Y37_N11
\PC|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(12));

-- Location: LCCOMB_X106_Y37_N24
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

-- Location: LCCOMB_X107_Y37_N18
\PC|Q~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~68_combout\ = (\pc_incremented[13]~22_combout\ & (!\PC|Q\(5) & !\PC|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[13]~22_combout\,
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \PC|Q~68_combout\);

-- Location: FF_X107_Y37_N19
\PC|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~68_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(13));

-- Location: LCCOMB_X106_Y37_N26
\pc_incremented[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[14]~24_combout\ = (\PC|Q\(14) & (\pc_incremented[13]~23\ $ (GND))) # (!\PC|Q\(14) & (!\pc_incremented[13]~23\ & VCC))
-- \pc_incremented[14]~25\ = CARRY((\PC|Q\(14) & !\pc_incremented[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(14),
	datad => VCC,
	cin => \pc_incremented[13]~23\,
	combout => \pc_incremented[14]~24_combout\,
	cout => \pc_incremented[14]~25\);

-- Location: LCCOMB_X107_Y37_N20
\PC|Q~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~69_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & (\pc_incremented[14]~24_combout\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \pc_incremented[14]~24_combout\,
	datad => \rst~input_o\,
	combout => \PC|Q~69_combout\);

-- Location: FF_X107_Y37_N21
\PC|Q[14]\ : dffeas
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
	q => \PC|Q\(14));

-- Location: LCCOMB_X106_Y37_N28
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

-- Location: LCCOMB_X107_Y37_N22
\PC|Q~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~70_combout\ = (!\PC|Q\(5) & (!\rst~input_o\ & (!\PC|Q\(4) & \pc_incremented[15]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \rst~input_o\,
	datac => \PC|Q\(4),
	datad => \pc_incremented[15]~26_combout\,
	combout => \PC|Q~70_combout\);

-- Location: FF_X107_Y37_N23
\PC|Q[15]\ : dffeas
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
	q => \PC|Q\(15));

-- Location: LCCOMB_X106_Y37_N30
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

-- Location: LCCOMB_X106_Y37_N0
\PC|Q~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~71_combout\ = (\pc_incremented[16]~28_combout\ & (!\PC|Q\(5) & (!\rst~input_o\ & !\PC|Q\(4))))

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
	combout => \PC|Q~71_combout\);

-- Location: FF_X106_Y37_N1
\PC|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(16));

-- Location: LCCOMB_X106_Y36_N0
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

-- Location: LCCOMB_X107_Y36_N20
\PC|Q~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~72_combout\ = (!\PC|Q\(4) & (!\rst~input_o\ & (!\PC|Q\(5) & \pc_incremented[17]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \rst~input_o\,
	datac => \PC|Q\(5),
	datad => \pc_incremented[17]~30_combout\,
	combout => \PC|Q~72_combout\);

-- Location: FF_X107_Y36_N21
\PC|Q[17]\ : dffeas
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
	q => \PC|Q\(17));

-- Location: LCCOMB_X106_Y36_N2
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

-- Location: LCCOMB_X107_Y36_N4
\PC|Q~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~73_combout\ = (\pc_incremented[18]~32_combout\ & (!\PC|Q\(5) & !\PC|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[18]~32_combout\,
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \PC|Q~73_combout\);

-- Location: FF_X107_Y36_N5
\PC|Q[18]\ : dffeas
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
	q => \PC|Q\(18));

-- Location: LCCOMB_X106_Y36_N4
\pc_incremented[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[19]~34_combout\ = (\PC|Q\(19) & (!\pc_incremented[18]~33\)) # (!\PC|Q\(19) & ((\pc_incremented[18]~33\) # (GND)))
-- \pc_incremented[19]~35\ = CARRY((!\pc_incremented[18]~33\) # (!\PC|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(19),
	datad => VCC,
	cin => \pc_incremented[18]~33\,
	combout => \pc_incremented[19]~34_combout\,
	cout => \pc_incremented[19]~35\);

-- Location: LCCOMB_X107_Y36_N14
\PC|Q~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~74_combout\ = (\pc_incremented[19]~34_combout\ & (!\rst~input_o\ & (!\PC|Q\(5) & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[19]~34_combout\,
	datab => \rst~input_o\,
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \PC|Q~74_combout\);

-- Location: FF_X107_Y36_N15
\PC|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(19));

-- Location: LCCOMB_X106_Y36_N6
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

-- Location: LCCOMB_X107_Y36_N16
\PC|Q~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~75_combout\ = (\pc_incremented[20]~36_combout\ & (!\rst~input_o\ & (!\PC|Q\(5) & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[20]~36_combout\,
	datab => \rst~input_o\,
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \PC|Q~75_combout\);

-- Location: FF_X107_Y36_N17
\PC|Q[20]\ : dffeas
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
	q => \PC|Q\(20));

-- Location: LCCOMB_X106_Y36_N8
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

-- Location: LCCOMB_X107_Y36_N30
\PC|Q~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~76_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & (\pc_incremented[21]~38_combout\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \pc_incremented[21]~38_combout\,
	datad => \rst~input_o\,
	combout => \PC|Q~76_combout\);

-- Location: FF_X107_Y36_N31
\PC|Q[21]\ : dffeas
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
	q => \PC|Q\(21));

-- Location: LCCOMB_X106_Y36_N10
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

-- Location: LCCOMB_X107_Y36_N28
\PC|Q~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~77_combout\ = (!\PC|Q\(4) & (\pc_incremented[22]~40_combout\ & (!\PC|Q\(5) & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \pc_incremented[22]~40_combout\,
	datac => \PC|Q\(5),
	datad => \rst~input_o\,
	combout => \PC|Q~77_combout\);

-- Location: FF_X107_Y36_N29
\PC|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(22));

-- Location: LCCOMB_X106_Y36_N12
\pc_incremented[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[23]~42_combout\ = (\PC|Q\(23) & (!\pc_incremented[22]~41\)) # (!\PC|Q\(23) & ((\pc_incremented[22]~41\) # (GND)))
-- \pc_incremented[23]~43\ = CARRY((!\pc_incremented[22]~41\) # (!\PC|Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(23),
	datad => VCC,
	cin => \pc_incremented[22]~41\,
	combout => \pc_incremented[23]~42_combout\,
	cout => \pc_incremented[23]~43\);

-- Location: LCCOMB_X107_Y36_N6
\PC|Q~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~78_combout\ = (\PC|Q\(4) & (!\instruction_memory|Mux5~0_combout\)) # (!\PC|Q\(4) & ((\PC|Q\(5) & (!\instruction_memory|Mux5~0_combout\)) # (!\PC|Q\(5) & ((\pc_incremented[23]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \PC|Q\(5),
	datad => \pc_incremented[23]~42_combout\,
	combout => \PC|Q~78_combout\);

-- Location: FF_X107_Y36_N7
\PC|Q[23]\ : dffeas
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
	q => \PC|Q\(23));

-- Location: LCCOMB_X106_Y36_N14
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

-- Location: LCCOMB_X107_Y36_N10
\PC|Q~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~79_combout\ = (\pc_incremented[24]~44_combout\ & (!\rst~input_o\ & (!\PC|Q\(5) & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[24]~44_combout\,
	datab => \rst~input_o\,
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \PC|Q~79_combout\);

-- Location: FF_X107_Y36_N11
\PC|Q[24]\ : dffeas
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
	q => \PC|Q\(24));

-- Location: LCCOMB_X106_Y36_N16
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

-- Location: LCCOMB_X107_Y36_N0
\PC|Q~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~80_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & (\pc_incremented[25]~46_combout\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \pc_incremented[25]~46_combout\,
	datad => \rst~input_o\,
	combout => \PC|Q~80_combout\);

-- Location: FF_X107_Y36_N1
\PC|Q[25]\ : dffeas
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
	q => \PC|Q\(25));

-- Location: LCCOMB_X106_Y36_N18
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

-- Location: LCCOMB_X107_Y36_N2
\PC|Q~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~81_combout\ = (!\PC|Q\(4) & (!\rst~input_o\ & (!\PC|Q\(5) & \pc_incremented[26]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \rst~input_o\,
	datac => \PC|Q\(5),
	datad => \pc_incremented[26]~48_combout\,
	combout => \PC|Q~81_combout\);

-- Location: FF_X107_Y36_N3
\PC|Q[26]\ : dffeas
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
	q => \PC|Q\(26));

-- Location: LCCOMB_X106_Y36_N20
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

-- Location: LCCOMB_X106_Y36_N30
\PC|Q~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~82_combout\ = (!\PC|Q\(4) & (!\rst~input_o\ & (\pc_incremented[27]~50_combout\ & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \rst~input_o\,
	datac => \pc_incremented[27]~50_combout\,
	datad => \PC|Q\(5),
	combout => \PC|Q~82_combout\);

-- Location: FF_X106_Y36_N31
\PC|Q[27]\ : dffeas
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
	q => \PC|Q\(27));

-- Location: LCCOMB_X106_Y36_N22
\pc_incremented[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[28]~52_combout\ = (\PC|Q\(28) & (\pc_incremented[27]~51\ $ (GND))) # (!\PC|Q\(28) & (!\pc_incremented[27]~51\ & VCC))
-- \pc_incremented[28]~53\ = CARRY((\PC|Q\(28) & !\pc_incremented[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(28),
	datad => VCC,
	cin => \pc_incremented[27]~51\,
	combout => \pc_incremented[28]~52_combout\,
	cout => \pc_incremented[28]~53\);

-- Location: LCCOMB_X107_Y36_N8
\PC|Q~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~52_combout\ = (\pc_incremented[28]~52_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_incremented[28]~52_combout\,
	datad => \rst~input_o\,
	combout => \PC|Q~52_combout\);

-- Location: LCCOMB_X107_Y36_N22
\PC|Q[29]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q[29]~53_combout\ = (\rst~input_o\) # ((!\PC|Q\(4) & !\PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datac => \PC|Q\(5),
	datad => \rst~input_o\,
	combout => \PC|Q[29]~53_combout\);

-- Location: FF_X107_Y36_N9
\PC|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~52_combout\,
	ena => \PC|Q[29]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(28));

-- Location: LCCOMB_X106_Y36_N24
\pc_incremented[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[29]~54_combout\ = (\PC|Q\(29) & (!\pc_incremented[28]~53\)) # (!\PC|Q\(29) & ((\pc_incremented[28]~53\) # (GND)))
-- \pc_incremented[29]~55\ = CARRY((!\pc_incremented[28]~53\) # (!\PC|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(29),
	datad => VCC,
	cin => \pc_incremented[28]~53\,
	combout => \pc_incremented[29]~54_combout\,
	cout => \pc_incremented[29]~55\);

-- Location: LCCOMB_X107_Y36_N18
\PC|Q~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~54_combout\ = (\pc_incremented[29]~54_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[29]~54_combout\,
	datad => \rst~input_o\,
	combout => \PC|Q~54_combout\);

-- Location: FF_X107_Y36_N19
\PC|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~54_combout\,
	ena => \PC|Q[29]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(29));

-- Location: LCCOMB_X106_Y36_N26
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

-- Location: LCCOMB_X107_Y36_N12
\PC|Q~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~55_combout\ = (\pc_incremented[30]~56_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[30]~56_combout\,
	datad => \rst~input_o\,
	combout => \PC|Q~55_combout\);

-- Location: FF_X107_Y36_N13
\PC|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~55_combout\,
	ena => \PC|Q[29]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(30));

-- Location: LCCOMB_X106_Y36_N28
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

-- Location: LCCOMB_X107_Y36_N26
\PC|Q~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~56_combout\ = (\pc_incremented[31]~58_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_incremented[31]~58_combout\,
	datad => \rst~input_o\,
	combout => \PC|Q~56_combout\);

-- Location: FF_X107_Y36_N27
\PC|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~56_combout\,
	ena => \PC|Q[29]~53_combout\,
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


