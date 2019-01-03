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

-- DATE "12/29/2018 11:53:56"

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
-- data_memory_output[4]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[5]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[6]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[7]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[8]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[9]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[10]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[11]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[12]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[13]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[14]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[15]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[16]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[17]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[18]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[19]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[20]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[21]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[22]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[23]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[24]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[25]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[26]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[27]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[28]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[29]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[30]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[31]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[4]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[8]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[9]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[10]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[11]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[12]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[13]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[14]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[15]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[16]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[17]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[18]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[19]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[20]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[21]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[22]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[23]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[24]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[25]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[26]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[27]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[28]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[29]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[30]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[31]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_data_memory_output : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instruction_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL \data_memory|Decoder0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_memory|Decoder0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_memory|Decoder0~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_memory|Decoder0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_file|registers_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_file|registers_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_file|registers_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_file|registers_clk[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \PC|Q~4_combout\ : std_logic;
SIGNAL \pc_incremented[2]~1\ : std_logic;
SIGNAL \pc_incremented[3]~2_combout\ : std_logic;
SIGNAL \instruction_memory|Mux12~0_combout\ : std_logic;
SIGNAL \PC|Q~5_combout\ : std_logic;
SIGNAL \instruction_memory|Mux11~0_combout\ : std_logic;
SIGNAL \pc_incremented[3]~3\ : std_logic;
SIGNAL \pc_incremented[4]~4_combout\ : std_logic;
SIGNAL \PC|Q~6_combout\ : std_logic;
SIGNAL \instruction_memory|Mux9~1_combout\ : std_logic;
SIGNAL \instruction_memory|Mux1~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux3~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux3~1_combout\ : std_logic;
SIGNAL \instruction_memory|Mux3~2_combout\ : std_logic;
SIGNAL \control|Equal1~0_combout\ : std_logic;
SIGNAL \pc_incremented[4]~5\ : std_logic;
SIGNAL \pc_incremented[5]~6_combout\ : std_logic;
SIGNAL \instruction_memory|Mux10~0_combout\ : std_logic;
SIGNAL \PC|Q~7_combout\ : std_logic;
SIGNAL \instruction_memory|Mux6~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux6~1_combout\ : std_logic;
SIGNAL \instruction_memory|Mux6~2_combout\ : std_logic;
SIGNAL \control|Equal0~0_combout\ : std_logic;
SIGNAL \control|regWrite~1_combout\ : std_logic;
SIGNAL \instruction_memory|Mux3~3_combout\ : std_logic;
SIGNAL \control|regWrite~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux5~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux5~1_combout\ : std_logic;
SIGNAL \control|Equal3~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~47_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~46_combout\ : std_logic;
SIGNAL \instruction_memory|Mux9~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux31~0_combout\ : std_logic;
SIGNAL \control|aluControl[2]~3_combout\ : std_logic;
SIGNAL \control|aluControl[2]~4_combout\ : std_logic;
SIGNAL \control|aluControl[2]~1_combout\ : std_logic;
SIGNAL \control|aluControl[2]~2_combout\ : std_logic;
SIGNAL \control|aluSrc~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~59_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~60_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~62_cout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~63_combout\ : std_logic;
SIGNAL \control|aluControl[0]~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~114_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~52_combout\ : std_logic;
SIGNAL \register_file|registers_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \register_file|registers_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \register_file|registers_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \register_file|mux2|Mux0~0_combout\ : std_logic;
SIGNAL \register_file|registers_clk[3]~clkctrl_outclk\ : std_logic;
SIGNAL \register_file|mux2|Mux0~1_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][3]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][3]~combout\ : std_logic;
SIGNAL \data_memory|Decoder0~2_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~2clkctrl_outclk\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][3]~combout\ : std_logic;
SIGNAL \data_memory|Decoder0~0_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~0clkctrl_outclk\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][3]~combout\ : std_logic;
SIGNAL \data_memory|Mux28~0_combout\ : std_logic;
SIGNAL \data_memory|Mux28~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~48_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux28~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux28~1_combout\ : std_logic;
SIGNAL \aluOp2[3]~56_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux28~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux28~0_combout\ : std_logic;
SIGNAL \control|aluControl[2]~5_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~56_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux29~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~57_combout\ : std_logic;
SIGNAL \aluOp2[1]~58_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux30~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~50_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~64\ : std_logic;
SIGNAL \arith_logic_unity|Add0~65_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~51_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][1]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][1]~combout\ : std_logic;
SIGNAL \data_memory|Mux30~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][1]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][1]~combout\ : std_logic;
SIGNAL \data_memory|Mux30~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~113_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux30~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux30~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~58_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~66\ : std_logic;
SIGNAL \arith_logic_unity|Add0~68\ : std_logic;
SIGNAL \arith_logic_unity|Add0~69_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux28~1_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~3_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~3clkctrl_outclk\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][2]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][2]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][2]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][2]~combout\ : std_logic;
SIGNAL \data_memory|Mux29~0_combout\ : std_logic;
SIGNAL \data_memory|Mux29~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~49_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[2]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux29~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux29~1_combout\ : std_logic;
SIGNAL \aluOp2[2]~57_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux29~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~67_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux29~1_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~1_combout\ : std_logic;
SIGNAL \data_memory|Decoder0~1clkctrl_outclk\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][31]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][31]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][31]~combout\ : std_logic;
SIGNAL \data_memory|Mux0~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][31]~combout\ : std_logic;
SIGNAL \data_memory|Mux0~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~115_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~56_combout\ : std_logic;
SIGNAL \aluOp2[31]~60_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~55_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~127_combout\ : std_logic;
SIGNAL \aluOp2[30]~61_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[30]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux1~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux2~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux2~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~129_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~58_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[28]~feeder_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[28]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux3~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][28]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][28]~combout\ : std_logic;
SIGNAL \data_memory|Mux3~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][28]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][28]~combout\ : std_logic;
SIGNAL \data_memory|Mux3~1_combout\ : std_logic;
SIGNAL \aluOp2[27]~64_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux4~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux5~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux5~1_combout\ : std_logic;
SIGNAL \aluOp2[26]~65_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~132_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[25]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux6~0_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[25]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux6~1_combout\ : std_logic;
SIGNAL \aluOp2[25]~66_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][25]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][25]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][25]~combout\ : std_logic;
SIGNAL \data_memory|Mux6~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][25]~combout\ : std_logic;
SIGNAL \data_memory|Mux6~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~133_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[24]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux7~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux7~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~134_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux8~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~73_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[22]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux9~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux9~1_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][22]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][22]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][22]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][22]~combout\ : std_logic;
SIGNAL \data_memory|Mux9~0_combout\ : std_logic;
SIGNAL \data_memory|Mux9~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~136_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[21]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux10~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~77_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[20]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux11~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux11~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~79_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~138_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][19]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][19]~combout\ : std_logic;
SIGNAL \data_memory|Mux12~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][19]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][19]~combout\ : std_logic;
SIGNAL \data_memory|Mux12~1_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux12~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~81_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[18]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux13~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~83_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux14~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux15~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux15~1_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][16]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][16]~combout\ : std_logic;
SIGNAL \data_memory|Mux15~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][16]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][16]~combout\ : std_logic;
SIGNAL \data_memory|Mux15~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~87_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~142_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[15]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux16~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux16~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~143_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][14]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][14]~combout\ : std_logic;
SIGNAL \data_memory|Mux17~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][14]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][14]~combout\ : std_logic;
SIGNAL \data_memory|Mux17~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[14]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux17~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~91_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux18~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux18~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~93_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~145_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][12]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][12]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][12]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][12]~combout\ : std_logic;
SIGNAL \data_memory|Mux19~0_combout\ : std_logic;
SIGNAL \data_memory|Mux19~1_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux19~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~95_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux20~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux21~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux21~1_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][10]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][10]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][10]~combout\ : std_logic;
SIGNAL \data_memory|Mux21~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][10]~combout\ : std_logic;
SIGNAL \data_memory|Mux21~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~99_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~148_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux22~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~101_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][8]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][8]~combout\ : std_logic;
SIGNAL \data_memory|Mux23~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][8]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][8]~combout\ : std_logic;
SIGNAL \data_memory|Mux23~1_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux23~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~103_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][7]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][7]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][7]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][7]~combout\ : std_logic;
SIGNAL \data_memory|Mux24~0_combout\ : std_logic;
SIGNAL \data_memory|Mux24~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[7]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux24~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux25~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux25~1_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][6]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][6]~combout\ : std_logic;
SIGNAL \data_memory|Mux25~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][6]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][6]~combout\ : std_logic;
SIGNAL \data_memory|Mux25~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~107_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~152_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][5]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][5]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][5]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][5]~combout\ : std_logic;
SIGNAL \data_memory|Mux26~0_combout\ : std_logic;
SIGNAL \data_memory|Mux26~1_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[5]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux26~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[4]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux27~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux27~1_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][4]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][4]~combout\ : std_logic;
SIGNAL \data_memory|Mux27~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][4]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][4]~combout\ : std_logic;
SIGNAL \data_memory|Mux27~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~111_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~154_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~70\ : std_logic;
SIGNAL \arith_logic_unity|Add0~71_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~112_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~135_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux27~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~72\ : std_logic;
SIGNAL \arith_logic_unity|Add0~73_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~109_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~110_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~134_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux26~0_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[5]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux26~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~153_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~74\ : std_logic;
SIGNAL \arith_logic_unity|Add0~75_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~108_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~133_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[6]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux25~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~76\ : std_logic;
SIGNAL \arith_logic_unity|Add0~77_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~105_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~106_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~132_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux24~0_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[7]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux24~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~151_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~78\ : std_logic;
SIGNAL \arith_logic_unity|Add0~79_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~104_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~131_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[8]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux23~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux23~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~150_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~80\ : std_logic;
SIGNAL \arith_logic_unity|Add0~81_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~102_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][9]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][9]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][9]~combout\ : std_logic;
SIGNAL \data_memory|Mux22~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][9]~combout\ : std_logic;
SIGNAL \data_memory|Mux22~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~130_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux22~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux22~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~149_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~82\ : std_logic;
SIGNAL \arith_logic_unity|Add0~83_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~100_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~129_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux21~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~84\ : std_logic;
SIGNAL \arith_logic_unity|Add0~85_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~97_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~98_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][11]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][11]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][11]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][11]~combout\ : std_logic;
SIGNAL \data_memory|Mux20~0_combout\ : std_logic;
SIGNAL \data_memory|Mux20~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~128_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux20~0_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[11]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux20~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~147_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~86\ : std_logic;
SIGNAL \arith_logic_unity|Add0~87_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~96_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~127_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux19~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux19~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~146_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~88\ : std_logic;
SIGNAL \arith_logic_unity|Add0~89_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~94_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][13]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][13]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][13]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][13]~combout\ : std_logic;
SIGNAL \data_memory|Mux18~0_combout\ : std_logic;
SIGNAL \data_memory|Mux18~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~126_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux18~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~90\ : std_logic;
SIGNAL \arith_logic_unity|Add0~91_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~92_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~125_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux17~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux17~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~144_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~92\ : std_logic;
SIGNAL \arith_logic_unity|Add0~93_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~89_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~90_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][15]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][15]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][15]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][15]~combout\ : std_logic;
SIGNAL \data_memory|Mux16~0_combout\ : std_logic;
SIGNAL \data_memory|Mux16~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~124_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux16~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~94\ : std_logic;
SIGNAL \arith_logic_unity|Add0~95_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~88_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~123_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[16]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux15~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~96\ : std_logic;
SIGNAL \arith_logic_unity|Add0~97_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~85_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~86_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][17]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][17]~combout\ : std_logic;
SIGNAL \data_memory|Mux14~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][17]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][17]~combout\ : std_logic;
SIGNAL \data_memory|Mux14~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~122_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[17]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux14~0_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[17]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux14~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~141_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~98\ : std_logic;
SIGNAL \arith_logic_unity|Add0~99_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~84_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][18]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][18]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][18]~combout\ : std_logic;
SIGNAL \data_memory|Mux13~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][18]~combout\ : std_logic;
SIGNAL \data_memory|Mux13~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~121_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[18]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux13~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux13~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~140_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~100\ : std_logic;
SIGNAL \arith_logic_unity|Add0~101_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~82_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~120_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[19]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux12~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux12~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~139_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~102\ : std_logic;
SIGNAL \arith_logic_unity|Add0~103_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~80_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][20]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][20]~combout\ : std_logic;
SIGNAL \data_memory|Mux11~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][20]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][20]~combout\ : std_logic;
SIGNAL \data_memory|Mux11~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~119_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux11~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~104\ : std_logic;
SIGNAL \arith_logic_unity|Add0~105_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~78_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][21]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][21]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][21]~combout\ : std_logic;
SIGNAL \data_memory|Mux10~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][21]~combout\ : std_logic;
SIGNAL \data_memory|Mux10~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~118_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux10~0_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[21]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux10~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~137_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~106\ : std_logic;
SIGNAL \arith_logic_unity|Add0~107_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~75_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~76_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~117_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux9~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~108\ : std_logic;
SIGNAL \arith_logic_unity|Add0~109_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~74_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][23]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][23]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][23]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][23]~combout\ : std_logic;
SIGNAL \data_memory|Mux8~0_combout\ : std_logic;
SIGNAL \data_memory|Mux8~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~116_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux8~0_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[23]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux8~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~135_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~110\ : std_logic;
SIGNAL \arith_logic_unity|Add0~111_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][24]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][24]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][24]~combout\ : std_logic;
SIGNAL \data_memory|Mux7~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][24]~combout\ : std_logic;
SIGNAL \data_memory|Mux7~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~71_combout\ : std_logic;
SIGNAL \aluOp2[24]~67_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~72_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux7~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~112\ : std_logic;
SIGNAL \arith_logic_unity|Add0~113_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~69_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~70_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[25]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux6~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~114\ : std_logic;
SIGNAL \arith_logic_unity|Add0~115_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][26]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][26]~combout\ : std_logic;
SIGNAL \data_memory|Mux5~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][26]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][26]~combout\ : std_logic;
SIGNAL \data_memory|Mux5~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~67_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~68_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[26]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux5~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~116\ : std_logic;
SIGNAL \arith_logic_unity|Add0~117_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][27]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][27]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][27]~combout\ : std_logic;
SIGNAL \data_memory|Mux4~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][27]~combout\ : std_logic;
SIGNAL \data_memory|Mux4~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~65_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~66_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux4~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux4~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~131_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~118\ : std_logic;
SIGNAL \arith_logic_unity|Add0~119_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~63_combout\ : std_logic;
SIGNAL \aluOp2[28]~63_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~64_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux3~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux3~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~130_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~120\ : std_logic;
SIGNAL \arith_logic_unity|Add0~121_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][29]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][29]~combout\ : std_logic;
SIGNAL \data_memory|Mux2~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][29]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][29]~combout\ : std_logic;
SIGNAL \data_memory|Mux2~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~61_combout\ : std_logic;
SIGNAL \aluOp2[29]~62_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~62_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux2~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~122\ : std_logic;
SIGNAL \arith_logic_unity|Add0~123_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][30]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][30]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][30]~combout\ : std_logic;
SIGNAL \data_memory|Mux1~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][30]~combout\ : std_logic;
SIGNAL \data_memory|Mux1~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~59_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~60_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux1~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux1~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~128_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~124\ : std_logic;
SIGNAL \arith_logic_unity|Add0~125_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~57_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[31]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux0~0_combout\ : std_logic;
SIGNAL \aluOp2[23]~68_combout\ : std_logic;
SIGNAL \aluOp2[22]~69_combout\ : std_logic;
SIGNAL \aluOp2[21]~70_combout\ : std_logic;
SIGNAL \aluOp2[20]~71_combout\ : std_logic;
SIGNAL \aluOp2[19]~72_combout\ : std_logic;
SIGNAL \aluOp2[18]~73_combout\ : std_logic;
SIGNAL \aluOp2[17]~74_combout\ : std_logic;
SIGNAL \aluOp2[16]~75_combout\ : std_logic;
SIGNAL \aluOp2[15]~76_combout\ : std_logic;
SIGNAL \aluOp2[14]~77_combout\ : std_logic;
SIGNAL \aluOp2[13]~78_combout\ : std_logic;
SIGNAL \aluOp2[12]~79_combout\ : std_logic;
SIGNAL \aluOp2[11]~80_combout\ : std_logic;
SIGNAL \aluOp2[10]~81_combout\ : std_logic;
SIGNAL \aluOp2[9]~82_combout\ : std_logic;
SIGNAL \aluOp2[8]~83_combout\ : std_logic;
SIGNAL \aluOp2[7]~84_combout\ : std_logic;
SIGNAL \aluOp2[6]~85_combout\ : std_logic;
SIGNAL \aluOp2[5]~86_combout\ : std_logic;
SIGNAL \aluOp2[4]~59_combout\ : std_logic;
SIGNAL \aluOp2[0]~87_combout\ : std_logic;
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
SIGNAL \register_file|registers:0:regx|Q~53_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~54_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux31~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux31~1_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[1][0]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[0][0]~combout\ : std_logic;
SIGNAL \data_memory|Mux31~0_combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[2][0]~combout\ : std_logic;
SIGNAL \data_memory|possible_outputs[3][0]~combout\ : std_logic;
SIGNAL \data_memory|Mux31~1_combout\ : std_logic;
SIGNAL \pc_incremented[5]~7\ : std_logic;
SIGNAL \pc_incremented[6]~8_combout\ : std_logic;
SIGNAL \PC|Q~8_combout\ : std_logic;
SIGNAL \pc_incremented[6]~9\ : std_logic;
SIGNAL \pc_incremented[7]~10_combout\ : std_logic;
SIGNAL \PC|Q~9_combout\ : std_logic;
SIGNAL \pc_incremented[7]~11\ : std_logic;
SIGNAL \pc_incremented[8]~12_combout\ : std_logic;
SIGNAL \PC|Q~10_combout\ : std_logic;
SIGNAL \pc_incremented[8]~13\ : std_logic;
SIGNAL \pc_incremented[9]~14_combout\ : std_logic;
SIGNAL \PC|Q~11_combout\ : std_logic;
SIGNAL \pc_incremented[9]~15\ : std_logic;
SIGNAL \pc_incremented[10]~16_combout\ : std_logic;
SIGNAL \PC|Q~12_combout\ : std_logic;
SIGNAL \pc_incremented[10]~17\ : std_logic;
SIGNAL \pc_incremented[11]~18_combout\ : std_logic;
SIGNAL \PC|Q~13_combout\ : std_logic;
SIGNAL \pc_incremented[11]~19\ : std_logic;
SIGNAL \pc_incremented[12]~20_combout\ : std_logic;
SIGNAL \PC|Q~14_combout\ : std_logic;
SIGNAL \pc_incremented[12]~21\ : std_logic;
SIGNAL \pc_incremented[13]~22_combout\ : std_logic;
SIGNAL \PC|Q~15_combout\ : std_logic;
SIGNAL \pc_incremented[13]~23\ : std_logic;
SIGNAL \pc_incremented[14]~24_combout\ : std_logic;
SIGNAL \PC|Q~16_combout\ : std_logic;
SIGNAL \pc_incremented[14]~25\ : std_logic;
SIGNAL \pc_incremented[15]~26_combout\ : std_logic;
SIGNAL \PC|Q~17_combout\ : std_logic;
SIGNAL \pc_incremented[15]~27\ : std_logic;
SIGNAL \pc_incremented[16]~28_combout\ : std_logic;
SIGNAL \PC|Q~18_combout\ : std_logic;
SIGNAL \pc_incremented[16]~29\ : std_logic;
SIGNAL \pc_incremented[17]~30_combout\ : std_logic;
SIGNAL \PC|Q~19_combout\ : std_logic;
SIGNAL \pc_incremented[17]~31\ : std_logic;
SIGNAL \pc_incremented[18]~32_combout\ : std_logic;
SIGNAL \PC|Q~33_combout\ : std_logic;
SIGNAL \pc_incremented[18]~33\ : std_logic;
SIGNAL \pc_incremented[19]~34_combout\ : std_logic;
SIGNAL \PC|Q~34_combout\ : std_logic;
SIGNAL \pc_incremented[19]~35\ : std_logic;
SIGNAL \pc_incremented[20]~36_combout\ : std_logic;
SIGNAL \PC|Q~20_combout\ : std_logic;
SIGNAL \pc_incremented[20]~37\ : std_logic;
SIGNAL \pc_incremented[21]~38_combout\ : std_logic;
SIGNAL \PC|Q~21_combout\ : std_logic;
SIGNAL \pc_incremented[21]~39\ : std_logic;
SIGNAL \pc_incremented[22]~40_combout\ : std_logic;
SIGNAL \PC|Q~22_combout\ : std_logic;
SIGNAL \pc_incremented[22]~41\ : std_logic;
SIGNAL \pc_incremented[23]~42_combout\ : std_logic;
SIGNAL \PC|Q~23_combout\ : std_logic;
SIGNAL \pc_incremented[23]~43\ : std_logic;
SIGNAL \pc_incremented[24]~44_combout\ : std_logic;
SIGNAL \PC|Q~24_combout\ : std_logic;
SIGNAL \pc_incremented[24]~45\ : std_logic;
SIGNAL \pc_incremented[25]~46_combout\ : std_logic;
SIGNAL \PC|Q~25_combout\ : std_logic;
SIGNAL \pc_incremented[25]~47\ : std_logic;
SIGNAL \pc_incremented[26]~48_combout\ : std_logic;
SIGNAL \PC|Q~26_combout\ : std_logic;
SIGNAL \pc_incremented[26]~49\ : std_logic;
SIGNAL \pc_incremented[27]~50_combout\ : std_logic;
SIGNAL \PC|Q~27_combout\ : std_logic;
SIGNAL \pc_incremented[27]~51\ : std_logic;
SIGNAL \pc_incremented[28]~52_combout\ : std_logic;
SIGNAL \PC|Q~28_combout\ : std_logic;
SIGNAL \PC|Q[28]~29_combout\ : std_logic;
SIGNAL \pc_incremented[28]~53\ : std_logic;
SIGNAL \pc_incremented[29]~54_combout\ : std_logic;
SIGNAL \PC|Q~30_combout\ : std_logic;
SIGNAL \pc_incremented[29]~55\ : std_logic;
SIGNAL \pc_incremented[30]~56_combout\ : std_logic;
SIGNAL \PC|Q~31_combout\ : std_logic;
SIGNAL \pc_incremented[30]~57\ : std_logic;
SIGNAL \pc_incremented[31]~58_combout\ : std_logic;
SIGNAL \PC|Q~32_combout\ : std_logic;
SIGNAL \PC|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers:1:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers_clk\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers:2:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers:0:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers:3:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL writeLoc : std_logic_vector(4 DOWNTO 0);

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

\register_file|registers_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \register_file|registers_clk\(2));

\register_file|registers_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \register_file|registers_clk\(1));

\register_file|registers_clk[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \register_file|registers_clk\(3));
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

-- Location: IOOBUF_X115_Y41_N2
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

-- Location: IOOBUF_X115_Y33_N2
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

-- Location: IOOBUF_X115_Y44_N9
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

-- Location: IOOBUF_X87_Y73_N23
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

-- Location: IOOBUF_X89_Y73_N23
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

-- Location: IOOBUF_X115_Y44_N2
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

-- Location: IOOBUF_X115_Y36_N2
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

-- Location: IOOBUF_X89_Y73_N9
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

-- Location: IOOBUF_X115_Y59_N23
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

-- Location: IOOBUF_X115_Y47_N23
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

-- Location: IOOBUF_X115_Y41_N9
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

-- Location: IOOBUF_X87_Y73_N2
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

-- Location: IOOBUF_X115_Y36_N16
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

-- Location: IOOBUF_X115_Y45_N16
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

-- Location: IOOBUF_X115_Y35_N23
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

-- Location: IOOBUF_X115_Y45_N23
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

-- Location: IOOBUF_X115_Y42_N16
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

-- Location: IOOBUF_X115_Y46_N9
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

-- Location: IOOBUF_X115_Y35_N16
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

-- Location: IOOBUF_X89_Y73_N16
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

-- Location: IOOBUF_X115_Y34_N23
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

-- Location: IOOBUF_X115_Y47_N16
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

-- Location: IOOBUF_X115_Y36_N9
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

-- Location: IOOBUF_X115_Y33_N9
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

-- Location: IOOBUF_X87_Y73_N16
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

-- Location: IOOBUF_X115_Y40_N2
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

-- Location: IOOBUF_X115_Y46_N2
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

-- Location: IOOBUF_X87_Y73_N9
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

-- Location: IOOBUF_X16_Y73_N9
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

-- Location: IOOBUF_X0_Y68_N9
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

-- Location: IOOBUF_X115_Y57_N23
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

-- Location: IOOBUF_X115_Y49_N2
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

-- Location: IOOBUF_X115_Y53_N16
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

-- Location: IOOBUF_X115_Y49_N9
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

-- Location: IOOBUF_X96_Y73_N16
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

-- Location: IOOBUF_X115_Y57_N16
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

-- Location: IOOBUF_X115_Y50_N9
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

-- Location: IOOBUF_X115_Y56_N23
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

-- Location: IOOBUF_X115_Y51_N9
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

-- Location: IOOBUF_X115_Y55_N16
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

-- Location: IOOBUF_X115_Y55_N23
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

-- Location: IOOBUF_X115_Y48_N9
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

-- Location: IOOBUF_X115_Y48_N2
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

-- Location: IOOBUF_X115_Y52_N2
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

-- Location: IOOBUF_X115_Y51_N2
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

-- Location: IOOBUF_X115_Y58_N16
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

-- Location: IOOBUF_X115_Y59_N16
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

-- Location: IOOBUF_X115_Y54_N16
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

-- Location: IOOBUF_X115_Y60_N16
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

-- Location: IOOBUF_X115_Y58_N23
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

-- Location: IOOBUF_X115_Y61_N16
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

-- Location: IOOBUF_X96_Y73_N23
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

-- Location: LCCOMB_X96_Y49_N2
\pc_incremented[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[2]~0_combout\ = \PC|Q\(2) $ (VCC)
-- \pc_incremented[2]~1\ = CARRY(\PC|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datad => VCC,
	combout => \pc_incremented[2]~0_combout\,
	cout => \pc_incremented[2]~1\);

-- Location: IOIBUF_X115_Y50_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X96_Y49_N0
\PC|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~4_combout\ = (\pc_incremented[2]~0_combout\ & (!\control|Equal1~0_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[2]~0_combout\,
	datac => \control|Equal1~0_combout\,
	datad => \rst~input_o\,
	combout => \PC|Q~4_combout\);

-- Location: FF_X96_Y49_N1
\PC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(2));

-- Location: LCCOMB_X96_Y49_N4
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

-- Location: LCCOMB_X92_Y49_N8
\instruction_memory|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux12~0_combout\ = (\PC|Q\(5)) # ((\PC|Q\(3) & \PC|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \instruction_memory|Mux12~0_combout\);

-- Location: LCCOMB_X92_Y49_N6
\PC|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~5_combout\ = (\control|Equal1~0_combout\ & ((\instruction_memory|Mux12~0_combout\))) # (!\control|Equal1~0_combout\ & (\pc_incremented[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datac => \pc_incremented[3]~2_combout\,
	datad => \instruction_memory|Mux12~0_combout\,
	combout => \PC|Q~5_combout\);

-- Location: FF_X92_Y49_N7
\PC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~5_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(3));

-- Location: LCCOMB_X92_Y49_N20
\instruction_memory|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux11~0_combout\ = (\PC|Q\(5)) # ((\PC|Q\(4) & ((\PC|Q\(3)))) # (!\PC|Q\(4) & (\PC|Q\(2) & !\PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(2),
	datac => \PC|Q\(4),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux11~0_combout\);

-- Location: LCCOMB_X96_Y49_N6
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

-- Location: LCCOMB_X92_Y49_N14
\PC|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~6_combout\ = (\control|Equal1~0_combout\ & (\instruction_memory|Mux11~0_combout\)) # (!\control|Equal1~0_combout\ & ((\pc_incremented[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datac => \instruction_memory|Mux11~0_combout\,
	datad => \pc_incremented[4]~4_combout\,
	combout => \PC|Q~6_combout\);

-- Location: FF_X92_Y49_N15
\PC|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~6_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(4));

-- Location: LCCOMB_X92_Y49_N18
\instruction_memory|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux9~1_combout\ = (!\PC|Q\(5) & (!\PC|Q\(2) & (!\PC|Q\(4) & \PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(2),
	datac => \PC|Q\(4),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux9~1_combout\);

-- Location: LCCOMB_X92_Y49_N10
\instruction_memory|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux1~0_combout\ = (!\PC|Q\(5) & (\PC|Q\(2) & (!\PC|Q\(4) & \PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(2),
	datac => \PC|Q\(4),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux1~0_combout\);

-- Location: LCCOMB_X91_Y49_N4
\instruction_memory|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux3~0_combout\ = (!\PC|Q\(2) & \PC|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux3~0_combout\);

-- Location: LCCOMB_X91_Y49_N2
\instruction_memory|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux3~1_combout\ = (\PC|Q\(2)) # (\PC|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux3~1_combout\);

-- Location: LCCOMB_X91_Y49_N20
\instruction_memory|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux3~2_combout\ = (\PC|Q\(4) & ((!\instruction_memory|Mux3~1_combout\))) # (!\PC|Q\(4) & (!\instruction_memory|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(4),
	datac => \instruction_memory|Mux3~0_combout\,
	datad => \instruction_memory|Mux3~1_combout\,
	combout => \instruction_memory|Mux3~2_combout\);

-- Location: LCCOMB_X92_Y49_N22
\control|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Equal1~0_combout\ = (!\instruction_memory|Mux9~1_combout\ & (!\instruction_memory|Mux1~0_combout\ & ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~1_combout\,
	datab => \instruction_memory|Mux1~0_combout\,
	datac => \PC|Q\(5),
	datad => \instruction_memory|Mux3~2_combout\,
	combout => \control|Equal1~0_combout\);

-- Location: LCCOMB_X96_Y49_N8
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

-- Location: LCCOMB_X92_Y46_N20
\instruction_memory|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux10~0_combout\ = (!\PC|Q\(5) & ((\PC|Q\(3) & (\PC|Q\(2) & !\PC|Q\(4))) # (!\PC|Q\(3) & (!\PC|Q\(2) & \PC|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \instruction_memory|Mux10~0_combout\);

-- Location: LCCOMB_X92_Y49_N26
\PC|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~7_combout\ = (\control|Equal1~0_combout\ & ((\instruction_memory|Mux10~0_combout\))) # (!\control|Equal1~0_combout\ & (\pc_incremented[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datac => \pc_incremented[5]~6_combout\,
	datad => \instruction_memory|Mux10~0_combout\,
	combout => \PC|Q~7_combout\);

-- Location: FF_X92_Y49_N27
\PC|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~7_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(5));

-- Location: LCCOMB_X91_Y49_N22
\instruction_memory|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux6~0_combout\ = (\PC|Q\(3)) # (!\PC|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux6~0_combout\);

-- Location: LCCOMB_X91_Y49_N0
\instruction_memory|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux6~1_combout\ = (\PC|Q\(4) & ((!\instruction_memory|Mux3~1_combout\))) # (!\PC|Q\(4) & (\instruction_memory|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(4),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \instruction_memory|Mux3~1_combout\,
	combout => \instruction_memory|Mux6~1_combout\);

-- Location: LCCOMB_X91_Y49_N26
\instruction_memory|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux6~2_combout\ = (!\PC|Q\(5) & \instruction_memory|Mux6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(5),
	datad => \instruction_memory|Mux6~1_combout\,
	combout => \instruction_memory|Mux6~2_combout\);

-- Location: LCCOMB_X92_Y49_N12
\control|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Equal0~0_combout\ = (\instruction_memory|Mux9~1_combout\ & ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux9~1_combout\,
	datac => \PC|Q\(5),
	datad => \instruction_memory|Mux3~2_combout\,
	combout => \control|Equal0~0_combout\);

-- Location: LCCOMB_X91_Y49_N30
\writeLoc[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- writeLoc(0) = (\control|Equal0~0_combout\ & ((\instruction_memory|Mux9~1_combout\))) # (!\control|Equal0~0_combout\ & (\instruction_memory|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~2_combout\,
	datac => \control|Equal0~0_combout\,
	datad => \instruction_memory|Mux9~1_combout\,
	combout => writeLoc(0));

-- Location: LCCOMB_X91_Y47_N12
\control|regWrite~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|regWrite~1_combout\ = (\instruction_memory|Mux3~2_combout\ & (!\PC|Q\(5) & !\instruction_memory|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux3~2_combout\,
	datab => \PC|Q\(5),
	datad => \instruction_memory|Mux1~0_combout\,
	combout => \control|regWrite~1_combout\);

-- Location: LCCOMB_X92_Y47_N10
\instruction_memory|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux3~3_combout\ = (!\PC|Q\(5) & \instruction_memory|Mux3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|Q\(5),
	datad => \instruction_memory|Mux3~2_combout\,
	combout => \instruction_memory|Mux3~3_combout\);

-- Location: LCCOMB_X91_Y47_N30
\control|regWrite~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|regWrite~0_combout\ = (\instruction_memory|Mux9~1_combout\ & ((!\instruction_memory|Mux3~3_combout\))) # (!\instruction_memory|Mux9~1_combout\ & (\control|regWrite~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|regWrite~1_combout\,
	datab => \instruction_memory|Mux3~3_combout\,
	datad => \instruction_memory|Mux9~1_combout\,
	combout => \control|regWrite~0_combout\);

-- Location: LCCOMB_X91_Y49_N6
\instruction_memory|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux5~0_combout\ = (\PC|Q\(4) & ((!\instruction_memory|Mux3~1_combout\))) # (!\PC|Q\(4) & (\PC|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(2),
	datac => \PC|Q\(4),
	datad => \instruction_memory|Mux3~1_combout\,
	combout => \instruction_memory|Mux5~0_combout\);

-- Location: LCCOMB_X91_Y49_N12
\instruction_memory|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux5~1_combout\ = (!\PC|Q\(5) & \instruction_memory|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(5),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \instruction_memory|Mux5~1_combout\);

-- Location: LCCOMB_X92_Y49_N16
\writeLoc[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- writeLoc(1) = (\control|Equal0~0_combout\ & (\instruction_memory|Mux9~1_combout\)) # (!\control|Equal0~0_combout\ & ((\instruction_memory|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal0~0_combout\,
	datab => \instruction_memory|Mux9~1_combout\,
	datad => \instruction_memory|Mux5~1_combout\,
	combout => writeLoc(1));

-- Location: LCCOMB_X92_Y48_N28
\register_file|registers_clk[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(0) = LCELL((!writeLoc(0) & (\control|regWrite~0_combout\ & (!\CLK~input_o\ & !writeLoc(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writeLoc(0),
	datab => \control|regWrite~0_combout\,
	datac => \CLK~input_o\,
	datad => writeLoc(1),
	combout => \register_file|registers_clk\(0));

-- Location: LCCOMB_X90_Y49_N20
\control|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Equal3~0_combout\ = (!\instruction_memory|Mux9~1_combout\ & (\instruction_memory|Mux3~2_combout\ & (!\PC|Q\(5) & !\instruction_memory|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~1_combout\,
	datab => \instruction_memory|Mux3~2_combout\,
	datac => \PC|Q\(5),
	datad => \instruction_memory|Mux1~0_combout\,
	combout => \control|Equal3~0_combout\);

-- Location: LCCOMB_X91_Y47_N4
\register_file|registers:0:regx|Q~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~47_combout\ = (!\control|Equal3~0_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal3~0_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~47_combout\);

-- Location: LCCOMB_X90_Y49_N30
\register_file|registers:0:regx|Q~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~46_combout\ = (!\rst~input_o\ & \control|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~46_combout\);

-- Location: LCCOMB_X92_Y48_N24
\register_file|registers_clk[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(2) = LCELL((!writeLoc(0) & (\control|regWrite~0_combout\ & (!\CLK~input_o\ & writeLoc(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writeLoc(0),
	datab => \control|regWrite~0_combout\,
	datac => \CLK~input_o\,
	datad => writeLoc(1),
	combout => \register_file|registers_clk\(2));

-- Location: FF_X91_Y45_N7
\register_file|registers:2:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(2),
	asdata => \register_file|registers:0:regx|Q~54_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(0));

-- Location: LCCOMB_X92_Y49_N30
\instruction_memory|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux9~0_combout\ = (!\PC|Q\(2) & (!\PC|Q\(4) & \PC|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(2),
	datac => \PC|Q\(4),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux9~0_combout\);

-- Location: LCCOMB_X91_Y45_N6
\register_file|mux1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux31~0_combout\ = (\PC|Q\(5) & (\register_file|registers:0:regx|Q\(0))) # (!\PC|Q\(5) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:2:regx|Q\(0)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(0),
	datab => \PC|Q\(5),
	datac => \register_file|registers:2:regx|Q\(0),
	datad => \instruction_memory|Mux9~0_combout\,
	combout => \register_file|mux1|Mux31~0_combout\);

-- Location: LCCOMB_X92_Y46_N22
\control|aluControl[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[2]~3_combout\ = ((\PC|Q\(2)) # ((\PC|Q\(5)) # (\PC|Q\(4)))) # (!\PC|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \control|aluControl[2]~3_combout\);

-- Location: LCCOMB_X92_Y46_N4
\control|aluControl[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[2]~4_combout\ = ((\instruction_memory|Mux10~0_combout\) # ((\control|aluControl[2]~3_combout\) # (\instruction_memory|Mux3~2_combout\))) # (!\instruction_memory|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux11~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \control|aluControl[2]~3_combout\,
	datad => \instruction_memory|Mux3~2_combout\,
	combout => \control|aluControl[2]~4_combout\);

-- Location: LCCOMB_X92_Y46_N26
\control|aluControl[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[2]~1_combout\ = (\PC|Q\(3) & (!\PC|Q\(2) & !\PC|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datac => \PC|Q\(2),
	datad => \PC|Q\(4),
	combout => \control|aluControl[2]~1_combout\);

-- Location: LCCOMB_X92_Y46_N28
\control|aluControl[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[2]~2_combout\ = (\PC|Q\(5)) # ((\instruction_memory|Mux3~2_combout\ & ((\control|aluControl[2]~1_combout\))) # (!\instruction_memory|Mux3~2_combout\ & (!\instruction_memory|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \control|aluControl[2]~1_combout\,
	datad => \instruction_memory|Mux3~2_combout\,
	combout => \control|aluControl[2]~2_combout\);

-- Location: LCCOMB_X92_Y49_N0
\control|aluSrc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluSrc~0_combout\ = (!\instruction_memory|Mux9~0_combout\ & (!\PC|Q\(5) & \instruction_memory|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datac => \PC|Q\(5),
	datad => \instruction_memory|Mux3~2_combout\,
	combout => \control|aluSrc~0_combout\);

-- Location: LCCOMB_X90_Y49_N26
\register_file|registers_clk[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(1) = LCELL((\control|regWrite~0_combout\ & (!writeLoc(1) & (writeLoc(0) & !\CLK~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|regWrite~0_combout\,
	datab => writeLoc(1),
	datac => writeLoc(0),
	datad => \CLK~input_o\,
	combout => \register_file|registers_clk\(1));

-- Location: FF_X92_Y45_N1
\register_file|registers:1:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(1),
	asdata => \register_file|registers:0:regx|Q~54_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(0));

-- Location: LCCOMB_X90_Y49_N18
\register_file|registers_clk[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(3) = LCELL((\control|regWrite~0_combout\ & (writeLoc(1) & (writeLoc(0) & !\CLK~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|regWrite~0_combout\,
	datab => writeLoc(1),
	datac => writeLoc(0),
	datad => \CLK~input_o\,
	combout => \register_file|registers_clk\(3));

-- Location: FF_X92_Y45_N17
\register_file|registers:3:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(3),
	asdata => \register_file|registers:0:regx|Q~54_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(0));

-- Location: LCCOMB_X92_Y45_N16
\arith_logic_unity|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~59_combout\ = (\instruction_memory|Mux6~2_combout\ & ((\register_file|mux2|Mux31~0_combout\ & ((\register_file|registers:3:regx|Q\(0)))) # (!\register_file|mux2|Mux31~0_combout\ & (\register_file|registers:1:regx|Q\(0))))) # 
-- (!\instruction_memory|Mux6~2_combout\ & (((\register_file|mux2|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~2_combout\,
	datab => \register_file|registers:1:regx|Q\(0),
	datac => \register_file|registers:3:regx|Q\(0),
	datad => \register_file|mux2|Mux31~0_combout\,
	combout => \arith_logic_unity|Add0~59_combout\);

-- Location: LCCOMB_X91_Y45_N2
\arith_logic_unity|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~60_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\arith_logic_unity|Add0~59_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- (((\control|aluSrc~0_combout\) # (!\arith_logic_unity|Add0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluControl[2]~2_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Add0~59_combout\,
	combout => \arith_logic_unity|Add0~60_combout\);

-- Location: LCCOMB_X91_Y45_N16
\arith_logic_unity|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~62_cout\ = CARRY((\control|aluControl[2]~4_combout\ & \control|aluControl[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluControl[2]~2_combout\,
	datad => VCC,
	cout => \arith_logic_unity|Add0~62_cout\);

-- Location: LCCOMB_X91_Y45_N18
\arith_logic_unity|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~63_combout\ = (\register_file|mux1|Mux31~0_combout\ & ((\arith_logic_unity|Add0~60_combout\ & (!\arith_logic_unity|Add0~62_cout\)) # (!\arith_logic_unity|Add0~60_combout\ & (\arith_logic_unity|Add0~62_cout\ & VCC)))) # 
-- (!\register_file|mux1|Mux31~0_combout\ & ((\arith_logic_unity|Add0~60_combout\ & ((\arith_logic_unity|Add0~62_cout\) # (GND))) # (!\arith_logic_unity|Add0~60_combout\ & (!\arith_logic_unity|Add0~62_cout\))))
-- \arith_logic_unity|Add0~64\ = CARRY((\register_file|mux1|Mux31~0_combout\ & (\arith_logic_unity|Add0~60_combout\ & !\arith_logic_unity|Add0~62_cout\)) # (!\register_file|mux1|Mux31~0_combout\ & ((\arith_logic_unity|Add0~60_combout\) # 
-- (!\arith_logic_unity|Add0~62_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux31~0_combout\,
	datab => \arith_logic_unity|Add0~60_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~62_cout\,
	combout => \arith_logic_unity|Add0~63_combout\,
	cout => \arith_logic_unity|Add0~64\);

-- Location: LCCOMB_X91_Y49_N8
\control|aluControl[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[0]~0_combout\ = (\PC|Q\(5)) # (\instruction_memory|Mux3~2_combout\ $ (!\instruction_memory|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux3~2_combout\,
	datac => \instruction_memory|Mux9~0_combout\,
	datad => \PC|Q\(5),
	combout => \control|aluControl[0]~0_combout\);

-- Location: LCCOMB_X92_Y45_N4
\register_file|registers:0:regx|Q~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~114_combout\ = (\control|aluControl[0]~0_combout\ & (((!\control|aluControl[2]~4_combout\) # (!\control|aluControl[2]~2_combout\)))) # (!\control|aluControl[0]~0_combout\ & (\arith_logic_unity|Add0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~63_combout\,
	datab => \control|aluControl[0]~0_combout\,
	datac => \control|aluControl[2]~2_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \register_file|registers:0:regx|Q~114_combout\);

-- Location: LCCOMB_X92_Y46_N10
\arith_logic_unity|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~0_combout\ = (\control|aluControl[0]~0_combout\ & ((!\control|aluControl[2]~4_combout\) # (!\control|aluControl[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~2_combout\,
	datac => \control|aluControl[0]~0_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Mux31~0_combout\);

-- Location: LCCOMB_X92_Y45_N14
\register_file|registers:0:regx|Q~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~52_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux31~0_combout\ $ (((\register_file|mux2|Mux31~1_combout\ & !\control|aluSrc~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux31~1_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|mux1|Mux31~0_combout\,
	datad => \arith_logic_unity|Mux31~0_combout\,
	combout => \register_file|registers:0:regx|Q~52_combout\);

-- Location: CLKCTRL_G6
\register_file|registers_clk[2]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \register_file|registers_clk[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \register_file|registers_clk[2]~clkctrl_outclk\);

-- Location: CLKCTRL_G10
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

-- Location: FF_X90_Y47_N31
\register_file|registers:1:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~57_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(31));

-- Location: CLKCTRL_G11
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

-- Location: FF_X90_Y47_N1
\register_file|registers:0:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~57_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(31));

-- Location: LCCOMB_X90_Y47_N24
\register_file|mux2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux0~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:2:regx|Q\(31)) # ((\instruction_memory|Mux6~2_combout\)))) # (!\instruction_memory|Mux5~1_combout\ & (((!\instruction_memory|Mux6~2_combout\ & 
-- \register_file|registers:0:regx|Q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(31),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \instruction_memory|Mux6~2_combout\,
	datad => \register_file|registers:0:regx|Q\(31),
	combout => \register_file|mux2|Mux0~0_combout\);

-- Location: CLKCTRL_G12
\register_file|registers_clk[3]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \register_file|registers_clk[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \register_file|registers_clk[3]~clkctrl_outclk\);

-- Location: FF_X89_Y48_N21
\register_file|registers:3:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~57_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(31));

-- Location: LCCOMB_X89_Y48_N20
\register_file|mux2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux0~1_combout\ = (\register_file|mux2|Mux0~0_combout\ & (((\register_file|registers:3:regx|Q\(31)) # (!\instruction_memory|Mux6~2_combout\)))) # (!\register_file|mux2|Mux0~0_combout\ & (\register_file|registers:1:regx|Q\(31) & 
-- ((\instruction_memory|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(31),
	datab => \register_file|mux2|Mux0~0_combout\,
	datac => \register_file|registers:3:regx|Q\(31),
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux0~1_combout\);

-- Location: LCCOMB_X92_Y48_N18
\data_memory|possible_outputs[3][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][3]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux28~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux28~1_combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \data_memory|possible_outputs[3][3]~combout\,
	combout => \data_memory|possible_outputs[3][3]~combout\);

-- Location: LCCOMB_X92_Y48_N0
\data_memory|possible_outputs[1][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][3]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux28~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux28~1_combout\,
	datab => \data_memory|possible_outputs[1][3]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][3]~combout\);

-- Location: LCCOMB_X92_Y45_N6
\data_memory|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~2_combout\ = (\instruction_memory|Mux3~3_combout\ & (\instruction_memory|Mux1~0_combout\ & (!\arith_logic_unity|Mux28~1_combout\ & !\arith_logic_unity|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux3~3_combout\,
	datab => \instruction_memory|Mux1~0_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Decoder0~2_combout\);

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X92_Y48_N2
\data_memory|possible_outputs[0][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][3]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux28~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][3]~combout\,
	datab => \register_file|mux2|Mux28~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][3]~combout\);

-- Location: LCCOMB_X92_Y47_N6
\data_memory|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~0_combout\ = (!\arith_logic_unity|Mux29~1_combout\ & (\arith_logic_unity|Mux28~1_combout\ & (\instruction_memory|Mux1~0_combout\ & \instruction_memory|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \instruction_memory|Mux1~0_combout\,
	datad => \instruction_memory|Mux3~3_combout\,
	combout => \data_memory|Decoder0~0_combout\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X92_Y45_N8
\data_memory|possible_outputs[2][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][3]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux28~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~0clkctrl_outclk\,
	datab => \data_memory|possible_outputs[2][3]~combout\,
	datad => \register_file|mux2|Mux28~1_combout\,
	combout => \data_memory|possible_outputs[2][3]~combout\);

-- Location: LCCOMB_X92_Y48_N12
\data_memory|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux28~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[2][3]~combout\))) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[0][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][3]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[2][3]~combout\,
	combout => \data_memory|Mux28~0_combout\);

-- Location: LCCOMB_X92_Y48_N20
\data_memory|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux28~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux28~0_combout\ & (\data_memory|possible_outputs[3][3]~combout\)) # (!\data_memory|Mux28~0_combout\ & ((\data_memory|possible_outputs[1][3]~combout\))))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][3]~combout\,
	datab => \data_memory|possible_outputs[1][3]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|Mux28~0_combout\,
	combout => \data_memory|Mux28~1_combout\);

-- Location: LCCOMB_X92_Y48_N6
\register_file|registers:0:regx|Q~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~48_combout\ = (\register_file|registers:0:regx|Q~46_combout\ & ((\data_memory|Mux28~1_combout\) # ((\register_file|registers:0:regx|Q~47_combout\ & \arith_logic_unity|Mux28~1_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~46_combout\ & (((\register_file|registers:0:regx|Q~47_combout\ & \arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~46_combout\,
	datab => \data_memory|Mux28~1_combout\,
	datac => \register_file|registers:0:regx|Q~47_combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \register_file|registers:0:regx|Q~48_combout\);

-- Location: FF_X92_Y45_N23
\register_file|registers:1:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(1),
	asdata => \register_file|registers:0:regx|Q~48_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(3));

-- Location: FF_X92_Y45_N29
\register_file|registers:3:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(3),
	asdata => \register_file|registers:0:regx|Q~48_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(3));

-- Location: FF_X92_Y48_N7
\register_file|registers:2:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(2),
	d => \register_file|registers:0:regx|Q~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(3));

-- Location: FF_X92_Y48_N23
\register_file|registers:0:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(0),
	asdata => \register_file|registers:0:regx|Q~48_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(3));

-- Location: LCCOMB_X92_Y45_N12
\register_file|mux2|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux28~0_combout\ = (\instruction_memory|Mux6~2_combout\ & (((\instruction_memory|Mux5~1_combout\)))) # (!\instruction_memory|Mux6~2_combout\ & ((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:2:regx|Q\(3))) # 
-- (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(3),
	datab => \register_file|registers:0:regx|Q\(3),
	datac => \instruction_memory|Mux6~2_combout\,
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux2|Mux28~0_combout\);

-- Location: LCCOMB_X92_Y45_N28
\register_file|mux2|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux28~1_combout\ = (\instruction_memory|Mux6~2_combout\ & ((\register_file|mux2|Mux28~0_combout\ & ((\register_file|registers:3:regx|Q\(3)))) # (!\register_file|mux2|Mux28~0_combout\ & (\register_file|registers:1:regx|Q\(3))))) # 
-- (!\instruction_memory|Mux6~2_combout\ & (((\register_file|mux2|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~2_combout\,
	datab => \register_file|registers:1:regx|Q\(3),
	datac => \register_file|registers:3:regx|Q\(3),
	datad => \register_file|mux2|Mux28~0_combout\,
	combout => \register_file|mux2|Mux28~1_combout\);

-- Location: LCCOMB_X92_Y45_N22
\aluOp2[3]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[3]~56_combout\ = (\control|aluSrc~0_combout\ & (\instruction_memory|Mux10~0_combout\)) # (!\control|aluSrc~0_combout\ & ((\register_file|mux2|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datad => \register_file|mux2|Mux28~1_combout\,
	combout => \aluOp2[3]~56_combout\);

-- Location: LCCOMB_X92_Y48_N22
\register_file|mux1|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux28~0_combout\ = (\PC|Q\(5) & (((\register_file|registers:0:regx|Q\(3))))) # (!\PC|Q\(5) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:2:regx|Q\(3)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:0:regx|Q\(3),
	datad => \register_file|registers:2:regx|Q\(3),
	combout => \register_file|mux1|Mux28~0_combout\);

-- Location: LCCOMB_X92_Y45_N30
\arith_logic_unity|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux28~0_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\aluOp2[3]~56_combout\ $ (\register_file|mux1|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~0_combout\,
	datac => \aluOp2[3]~56_combout\,
	datad => \register_file|mux1|Mux28~0_combout\,
	combout => \arith_logic_unity|Mux28~0_combout\);

-- Location: LCCOMB_X92_Y46_N16
\control|aluControl[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[2]~5_combout\ = (!\control|aluControl[2]~2_combout\) # (!\control|aluControl[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~4_combout\,
	datad => \control|aluControl[2]~2_combout\,
	combout => \control|aluControl[2]~5_combout\);

-- Location: LCCOMB_X92_Y45_N10
\arith_logic_unity|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~56_combout\ = \control|aluControl[2]~5_combout\ $ (((\control|aluSrc~0_combout\ & (\instruction_memory|Mux10~0_combout\)) # (!\control|aluSrc~0_combout\ & ((\register_file|mux2|Mux28~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \register_file|mux2|Mux28~1_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \control|aluControl[2]~5_combout\,
	combout => \arith_logic_unity|Add0~56_combout\);

-- Location: FF_X92_Y48_N11
\register_file|registers:0:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(0),
	asdata => \register_file|registers:0:regx|Q~49_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(2));

-- Location: LCCOMB_X92_Y48_N10
\register_file|mux1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux29~0_combout\ = (\PC|Q\(5) & (((\register_file|registers:0:regx|Q\(2))))) # (!\PC|Q\(5) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:2:regx|Q\(2)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:0:regx|Q\(2),
	datad => \register_file|registers:2:regx|Q\(2),
	combout => \register_file|mux1|Mux29~0_combout\);

-- Location: LCCOMB_X92_Y46_N30
\arith_logic_unity|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~57_combout\ = \control|aluControl[2]~5_combout\ $ (((\control|aluSrc~0_combout\ & (\instruction_memory|Mux11~0_combout\)) # (!\control|aluSrc~0_combout\ & ((\register_file|mux2|Mux29~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux11~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|mux2|Mux29~1_combout\,
	datad => \control|aluControl[2]~5_combout\,
	combout => \arith_logic_unity|Add0~57_combout\);

-- Location: LCCOMB_X90_Y49_N28
\aluOp2[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[1]~58_combout\ = (\control|aluSrc~0_combout\ & (\instruction_memory|Mux12~0_combout\)) # (!\control|aluSrc~0_combout\ & ((\register_file|mux2|Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux12~0_combout\,
	datac => \register_file|mux2|Mux30~1_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \aluOp2[1]~58_combout\);

-- Location: FF_X92_Y48_N15
\register_file|registers:0:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(0),
	asdata => \register_file|registers:0:regx|Q~113_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(1));

-- Location: LCCOMB_X92_Y48_N14
\register_file|mux1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux30~0_combout\ = (\PC|Q\(5) & (((\register_file|registers:0:regx|Q\(1))))) # (!\PC|Q\(5) & ((\instruction_memory|Mux9~0_combout\ & ((\register_file|registers:2:regx|Q\(1)))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|registers:0:regx|Q\(1),
	datad => \register_file|registers:2:regx|Q\(1),
	combout => \register_file|mux1|Mux30~0_combout\);

-- Location: LCCOMB_X90_Y49_N4
\register_file|registers:0:regx|Q~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~50_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\aluOp2[1]~58_combout\ $ (\register_file|mux1|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~0_combout\,
	datab => \aluOp2[1]~58_combout\,
	datad => \register_file|mux1|Mux30~0_combout\,
	combout => \register_file|registers:0:regx|Q~50_combout\);

-- Location: LCCOMB_X91_Y45_N20
\arith_logic_unity|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~65_combout\ = ((\arith_logic_unity|Add0~58_combout\ $ (\register_file|mux1|Mux30~0_combout\ $ (\arith_logic_unity|Add0~64\)))) # (GND)
-- \arith_logic_unity|Add0~66\ = CARRY((\arith_logic_unity|Add0~58_combout\ & (\register_file|mux1|Mux30~0_combout\ & !\arith_logic_unity|Add0~64\)) # (!\arith_logic_unity|Add0~58_combout\ & ((\register_file|mux1|Mux30~0_combout\) # 
-- (!\arith_logic_unity|Add0~64\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~58_combout\,
	datab => \register_file|mux1|Mux30~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~64\,
	combout => \arith_logic_unity|Add0~65_combout\,
	cout => \arith_logic_unity|Add0~66\);

-- Location: LCCOMB_X90_Y49_N6
\register_file|registers:0:regx|Q~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~51_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~50_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datab => \register_file|registers:0:regx|Q~50_combout\,
	datac => \register_file|registers:0:regx|Q~47_combout\,
	datad => \arith_logic_unity|Add0~65_combout\,
	combout => \register_file|registers:0:regx|Q~51_combout\);

-- Location: LCCOMB_X90_Y48_N20
\data_memory|possible_outputs[2][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][1]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux30~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux30~1_combout\,
	datab => \data_memory|possible_outputs[2][1]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][1]~combout\);

-- Location: LCCOMB_X90_Y49_N14
\data_memory|possible_outputs[0][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][1]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux30~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][1]~combout\,
	datac => \register_file|mux2|Mux30~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][1]~combout\);

-- Location: LCCOMB_X90_Y49_N22
\data_memory|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux30~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[2][1]~combout\)) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[0][1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][1]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[0][1]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux30~0_combout\);

-- Location: LCCOMB_X90_Y49_N24
\data_memory|possible_outputs[1][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][1]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux30~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux30~1_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[1][1]~combout\,
	combout => \data_memory|possible_outputs[1][1]~combout\);

-- Location: LCCOMB_X90_Y49_N2
\data_memory|possible_outputs[3][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][1]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux30~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux30~1_combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \data_memory|possible_outputs[3][1]~combout\,
	combout => \data_memory|possible_outputs[3][1]~combout\);

-- Location: LCCOMB_X90_Y49_N0
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

-- Location: LCCOMB_X90_Y49_N10
\register_file|registers:0:regx|Q~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~113_combout\ = (\register_file|registers:0:regx|Q~51_combout\) # ((!\rst~input_o\ & (\data_memory|Mux30~1_combout\ & \control|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~51_combout\,
	datab => \rst~input_o\,
	datac => \data_memory|Mux30~1_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~113_combout\);

-- Location: FF_X92_Y48_N1
\register_file|registers:2:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(2),
	asdata => \register_file|registers:0:regx|Q~113_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(1));

-- Location: FF_X90_Y49_N9
\register_file|registers:3:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(3),
	asdata => \register_file|registers:0:regx|Q~113_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(1));

-- Location: FF_X90_Y49_N17
\register_file|registers:1:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(1),
	asdata => \register_file|registers:0:regx|Q~113_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(1));

-- Location: LCCOMB_X90_Y49_N16
\register_file|mux2|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux30~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (((\instruction_memory|Mux6~2_combout\)))) # (!\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\ & ((\register_file|registers:1:regx|Q\(1)))) # 
-- (!\instruction_memory|Mux6~2_combout\ & (\register_file|registers:0:regx|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(1),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(1),
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux30~0_combout\);

-- Location: LCCOMB_X90_Y49_N8
\register_file|mux2|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux30~1_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|mux2|Mux30~0_combout\ & ((\register_file|registers:3:regx|Q\(1)))) # (!\register_file|mux2|Mux30~0_combout\ & (\register_file|registers:2:regx|Q\(1))))) # 
-- (!\instruction_memory|Mux5~1_combout\ & (((\register_file|mux2|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(1),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:3:regx|Q\(1),
	datad => \register_file|mux2|Mux30~0_combout\,
	combout => \register_file|mux2|Mux30~1_combout\);

-- Location: LCCOMB_X91_Y45_N12
\arith_logic_unity|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~58_combout\ = \control|aluControl[2]~5_combout\ $ (((\control|aluSrc~0_combout\ & (\instruction_memory|Mux12~0_combout\)) # (!\control|aluSrc~0_combout\ & ((\register_file|mux2|Mux30~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux12~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|mux2|Mux30~1_combout\,
	datad => \control|aluControl[2]~5_combout\,
	combout => \arith_logic_unity|Add0~58_combout\);

-- Location: LCCOMB_X91_Y45_N22
\arith_logic_unity|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~67_combout\ = (\register_file|mux1|Mux29~0_combout\ & ((\arith_logic_unity|Add0~57_combout\ & (!\arith_logic_unity|Add0~66\)) # (!\arith_logic_unity|Add0~57_combout\ & (\arith_logic_unity|Add0~66\ & VCC)))) # 
-- (!\register_file|mux1|Mux29~0_combout\ & ((\arith_logic_unity|Add0~57_combout\ & ((\arith_logic_unity|Add0~66\) # (GND))) # (!\arith_logic_unity|Add0~57_combout\ & (!\arith_logic_unity|Add0~66\))))
-- \arith_logic_unity|Add0~68\ = CARRY((\register_file|mux1|Mux29~0_combout\ & (\arith_logic_unity|Add0~57_combout\ & !\arith_logic_unity|Add0~66\)) # (!\register_file|mux1|Mux29~0_combout\ & ((\arith_logic_unity|Add0~57_combout\) # 
-- (!\arith_logic_unity|Add0~66\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux29~0_combout\,
	datab => \arith_logic_unity|Add0~57_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~66\,
	combout => \arith_logic_unity|Add0~67_combout\,
	cout => \arith_logic_unity|Add0~68\);

-- Location: LCCOMB_X91_Y45_N24
\arith_logic_unity|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~69_combout\ = ((\register_file|mux1|Mux28~0_combout\ $ (\arith_logic_unity|Add0~56_combout\ $ (\arith_logic_unity|Add0~68\)))) # (GND)
-- \arith_logic_unity|Add0~70\ = CARRY((\register_file|mux1|Mux28~0_combout\ & ((!\arith_logic_unity|Add0~68\) # (!\arith_logic_unity|Add0~56_combout\))) # (!\register_file|mux1|Mux28~0_combout\ & (!\arith_logic_unity|Add0~56_combout\ & 
-- !\arith_logic_unity|Add0~68\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux28~0_combout\,
	datab => \arith_logic_unity|Add0~56_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~68\,
	combout => \arith_logic_unity|Add0~69_combout\,
	cout => \arith_logic_unity|Add0~70\);

-- Location: LCCOMB_X91_Y45_N4
\arith_logic_unity|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux28~1_combout\ = (\arith_logic_unity|Mux28~0_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datac => \arith_logic_unity|Mux28~0_combout\,
	datad => \arith_logic_unity|Add0~69_combout\,
	combout => \arith_logic_unity|Mux28~1_combout\);

-- Location: LCCOMB_X92_Y45_N26
\data_memory|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~3_combout\ = (\instruction_memory|Mux3~3_combout\ & (\instruction_memory|Mux1~0_combout\ & (\arith_logic_unity|Mux28~1_combout\ & \arith_logic_unity|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux3~3_combout\,
	datab => \instruction_memory|Mux1~0_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
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

-- Location: LCCOMB_X95_Y48_N4
\data_memory|possible_outputs[3][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][2]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux29~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux29~1_combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \data_memory|possible_outputs[3][2]~combout\,
	combout => \data_memory|possible_outputs[3][2]~combout\);

-- Location: LCCOMB_X94_Y48_N26
\data_memory|possible_outputs[2][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][2]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux29~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[2][2]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][2]~combout\);

-- Location: LCCOMB_X94_Y48_N30
\data_memory|possible_outputs[0][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][2]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux29~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][2]~combout\,
	datac => \register_file|mux2|Mux29~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][2]~combout\);

-- Location: LCCOMB_X94_Y48_N22
\data_memory|possible_outputs[1][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][2]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux29~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux29~1_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[1][2]~combout\,
	combout => \data_memory|possible_outputs[1][2]~combout\);

-- Location: LCCOMB_X94_Y48_N28
\data_memory|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux29~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\) # ((\data_memory|possible_outputs[1][2]~combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (!\arith_logic_unity|Mux28~1_combout\ & 
-- (\data_memory|possible_outputs[0][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[0][2]~combout\,
	datad => \data_memory|possible_outputs[1][2]~combout\,
	combout => \data_memory|Mux29~0_combout\);

-- Location: LCCOMB_X94_Y48_N16
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

-- Location: LCCOMB_X94_Y48_N20
\register_file|registers:0:regx|Q~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~49_combout\ = (\register_file|registers:0:regx|Q~46_combout\ & ((\data_memory|Mux29~1_combout\) # ((\register_file|registers:0:regx|Q~47_combout\ & \arith_logic_unity|Mux29~1_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~46_combout\ & (\register_file|registers:0:regx|Q~47_combout\ & ((\arith_logic_unity|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~46_combout\,
	datab => \register_file|registers:0:regx|Q~47_combout\,
	datac => \data_memory|Mux29~1_combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \register_file|registers:0:regx|Q~49_combout\);

-- Location: FF_X92_Y48_N3
\register_file|registers:2:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(2),
	asdata => \register_file|registers:0:regx|Q~49_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(2));

-- Location: FF_X92_Y46_N15
\register_file|registers:3:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(3),
	asdata => \register_file|registers:0:regx|Q~49_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(2));

-- Location: LCCOMB_X94_Y48_N12
\register_file|registers:1:regx|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[2]~feeder_combout\ = \register_file|registers:0:regx|Q~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~49_combout\,
	combout => \register_file|registers:1:regx|Q[2]~feeder_combout\);

-- Location: FF_X94_Y48_N13
\register_file|registers:1:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(1),
	d => \register_file|registers:1:regx|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(2));

-- Location: LCCOMB_X92_Y46_N6
\register_file|mux2|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux29~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (((\instruction_memory|Mux6~2_combout\)))) # (!\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\ & ((\register_file|registers:1:regx|Q\(2)))) # 
-- (!\instruction_memory|Mux6~2_combout\ & (\register_file|registers:0:regx|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(2),
	datab => \register_file|registers:1:regx|Q\(2),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux29~0_combout\);

-- Location: LCCOMB_X92_Y46_N14
\register_file|mux2|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux29~1_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|mux2|Mux29~0_combout\ & ((\register_file|registers:3:regx|Q\(2)))) # (!\register_file|mux2|Mux29~0_combout\ & (\register_file|registers:2:regx|Q\(2))))) # 
-- (!\instruction_memory|Mux5~1_combout\ & (((\register_file|mux2|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(2),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:3:regx|Q\(2),
	datad => \register_file|mux2|Mux29~0_combout\,
	combout => \register_file|mux2|Mux29~1_combout\);

-- Location: LCCOMB_X92_Y46_N8
\aluOp2[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[2]~57_combout\ = (\control|aluSrc~0_combout\ & (\instruction_memory|Mux11~0_combout\)) # (!\control|aluSrc~0_combout\ & ((\register_file|mux2|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux11~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|mux2|Mux29~1_combout\,
	combout => \aluOp2[2]~57_combout\);

-- Location: LCCOMB_X92_Y46_N12
\arith_logic_unity|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux29~0_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\aluOp2[2]~57_combout\ $ (\register_file|mux1|Mux29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~0_combout\,
	datac => \aluOp2[2]~57_combout\,
	datad => \register_file|mux1|Mux29~0_combout\,
	combout => \arith_logic_unity|Mux29~0_combout\);

-- Location: LCCOMB_X91_Y45_N10
\arith_logic_unity|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux29~1_combout\ = (\arith_logic_unity|Mux29~0_combout\) # ((\arith_logic_unity|Add0~67_combout\ & !\control|aluControl[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~0_combout\,
	datac => \arith_logic_unity|Add0~67_combout\,
	datad => \control|aluControl[0]~0_combout\,
	combout => \arith_logic_unity|Mux29~1_combout\);

-- Location: LCCOMB_X92_Y47_N26
\data_memory|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Decoder0~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (!\arith_logic_unity|Mux28~1_combout\ & (\instruction_memory|Mux1~0_combout\ & \instruction_memory|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \instruction_memory|Mux1~0_combout\,
	datad => \instruction_memory|Mux3~3_combout\,
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

-- Location: LCCOMB_X89_Y48_N30
\data_memory|possible_outputs[1][31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][31]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux0~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][31]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux0~1_combout\,
	datac => \data_memory|possible_outputs[1][31]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][31]~combout\);

-- Location: LCCOMB_X88_Y48_N24
\data_memory|possible_outputs[0][31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][31]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux0~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][31]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][31]~combout\,
	datac => \register_file|mux2|Mux0~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][31]~combout\);

-- Location: LCCOMB_X89_Y48_N4
\data_memory|possible_outputs[2][31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][31]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux0~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][31]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux0~1_combout\,
	datab => \data_memory|possible_outputs[2][31]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][31]~combout\);

-- Location: LCCOMB_X89_Y48_N8
\data_memory|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux0~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\data_memory|possible_outputs[2][31]~combout\) # (\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[0][31]~combout\ & 
-- ((!\arith_logic_unity|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \data_memory|possible_outputs[0][31]~combout\,
	datac => \data_memory|possible_outputs[2][31]~combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux0~0_combout\);

-- Location: LCCOMB_X89_Y48_N18
\data_memory|possible_outputs[3][31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][31]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux0~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][31]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][31]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux0~1_combout\,
	combout => \data_memory|possible_outputs[3][31]~combout\);

-- Location: LCCOMB_X89_Y48_N22
\data_memory|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux0~1_combout\ = (\data_memory|Mux0~0_combout\ & (((\data_memory|possible_outputs[3][31]~combout\) # (!\arith_logic_unity|Mux29~1_combout\)))) # (!\data_memory|Mux0~0_combout\ & (\data_memory|possible_outputs[1][31]~combout\ & 
-- (\arith_logic_unity|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][31]~combout\,
	datab => \data_memory|Mux0~0_combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[3][31]~combout\,
	combout => \data_memory|Mux0~1_combout\);

-- Location: LCCOMB_X90_Y47_N12
\register_file|registers:0:regx|Q~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~115_combout\ = (\data_memory|Mux0~1_combout\ & (!\rst~input_o\ & \control|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux0~1_combout\,
	datab => \rst~input_o\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~115_combout\);

-- Location: LCCOMB_X90_Y43_N12
\register_file|registers:0:regx|Q~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~56_combout\ = (!\rst~input_o\ & (!\control|aluControl[0]~0_combout\ & !\control|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \control|aluControl[0]~0_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~56_combout\);

-- Location: LCCOMB_X89_Y48_N14
\aluOp2[31]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[31]~60_combout\ = (\register_file|mux2|Mux0~1_combout\ & ((\instruction_memory|Mux9~0_combout\) # ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \instruction_memory|Mux3~2_combout\,
	datac => \PC|Q\(5),
	datad => \register_file|mux2|Mux0~1_combout\,
	combout => \aluOp2[31]~60_combout\);

-- Location: LCCOMB_X90_Y47_N8
\register_file|registers:0:regx|Q~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~55_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & (\arith_logic_unity|Mux31~0_combout\ & (\aluOp2[31]~60_combout\ $ (\register_file|mux1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~47_combout\,
	datab => \aluOp2[31]~60_combout\,
	datac => \register_file|mux1|Mux0~0_combout\,
	datad => \arith_logic_unity|Mux31~0_combout\,
	combout => \register_file|registers:0:regx|Q~55_combout\);

-- Location: LCCOMB_X89_Y48_N28
\arith_logic_unity|Add0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~127_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux0~1_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluControl[2]~2_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux2|Mux0~1_combout\,
	combout => \arith_logic_unity|Add0~127_combout\);

-- Location: LCCOMB_X89_Y45_N8
\aluOp2[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[30]~61_combout\ = (\register_file|mux2|Mux1~1_combout\ & ((\PC|Q\(5)) # ((\instruction_memory|Mux9~0_combout\) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \instruction_memory|Mux3~2_combout\,
	datad => \register_file|mux2|Mux1~1_combout\,
	combout => \aluOp2[30]~61_combout\);

-- Location: LCCOMB_X90_Y47_N2
\register_file|registers:0:regx|Q[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[30]~feeder_combout\ = \register_file|registers:0:regx|Q~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~60_combout\,
	combout => \register_file|registers:0:regx|Q[30]~feeder_combout\);

-- Location: FF_X90_Y47_N3
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

-- Location: LCCOMB_X90_Y47_N28
\register_file|mux1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux1~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(30))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(30),
	datac => \instruction_memory|Mux9~1_combout\,
	datad => \register_file|registers:0:regx|Q\(30),
	combout => \register_file|mux1|Mux1~0_combout\);

-- Location: FF_X90_Y48_N21
\register_file|registers:1:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~62_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(29));

-- Location: FF_X90_Y48_N31
\register_file|registers:3:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~62_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(29));

-- Location: FF_X90_Y47_N13
\register_file|registers:0:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~62_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(29));

-- Location: LCCOMB_X90_Y47_N20
\register_file|mux2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux2~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:2:regx|Q\(29)) # ((\instruction_memory|Mux6~2_combout\)))) # (!\instruction_memory|Mux5~1_combout\ & (((!\instruction_memory|Mux6~2_combout\ & 
-- \register_file|registers:0:regx|Q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(29),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \instruction_memory|Mux6~2_combout\,
	datad => \register_file|registers:0:regx|Q\(29),
	combout => \register_file|mux2|Mux2~0_combout\);

-- Location: LCCOMB_X90_Y48_N30
\register_file|mux2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux2~1_combout\ = (\instruction_memory|Mux6~2_combout\ & ((\register_file|mux2|Mux2~0_combout\ & ((\register_file|registers:3:regx|Q\(29)))) # (!\register_file|mux2|Mux2~0_combout\ & (\register_file|registers:1:regx|Q\(29))))) # 
-- (!\instruction_memory|Mux6~2_combout\ & (((\register_file|mux2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~2_combout\,
	datab => \register_file|registers:1:regx|Q\(29),
	datac => \register_file|registers:3:regx|Q\(29),
	datad => \register_file|mux2|Mux2~0_combout\,
	combout => \register_file|mux2|Mux2~1_combout\);

-- Location: LCCOMB_X92_Y44_N28
\arith_logic_unity|Add0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~129_combout\ = (\control|aluSrc~0_combout\ & (((!\control|aluControl[2]~2_combout\)) # (!\control|aluControl[2]~4_combout\))) # (!\control|aluSrc~0_combout\ & (\register_file|mux2|Mux2~1_combout\ $ 
-- (((!\control|aluControl[2]~2_combout\) # (!\control|aluControl[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \control|aluControl[2]~4_combout\,
	datac => \control|aluControl[2]~2_combout\,
	datad => \register_file|mux2|Mux2~1_combout\,
	combout => \arith_logic_unity|Add0~129_combout\);

-- Location: LCCOMB_X92_Y46_N0
\register_file|registers:0:regx|Q~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~58_combout\ = (\control|aluControl[0]~0_combout\ & (\register_file|registers:0:regx|Q~47_combout\ & ((!\control|aluControl[2]~2_combout\) # (!\control|aluControl[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datab => \control|aluControl[2]~4_combout\,
	datac => \register_file|registers:0:regx|Q~47_combout\,
	datad => \control|aluControl[2]~2_combout\,
	combout => \register_file|registers:0:regx|Q~58_combout\);

-- Location: LCCOMB_X89_Y49_N16
\register_file|registers:2:regx|Q[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[28]~feeder_combout\ = \register_file|registers:0:regx|Q~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~64_combout\,
	combout => \register_file|registers:2:regx|Q[28]~feeder_combout\);

-- Location: FF_X89_Y49_N17
\register_file|registers:2:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(28));

-- Location: LCCOMB_X90_Y47_N18
\register_file|registers:0:regx|Q[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[28]~feeder_combout\ = \register_file|registers:0:regx|Q~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~64_combout\,
	combout => \register_file|registers:0:regx|Q[28]~feeder_combout\);

-- Location: FF_X90_Y47_N19
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

-- Location: LCCOMB_X90_Y47_N4
\register_file|mux1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux3~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(28))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~1_combout\,
	datac => \register_file|registers:2:regx|Q\(28),
	datad => \register_file|registers:0:regx|Q\(28),
	combout => \register_file|mux1|Mux3~0_combout\);

-- Location: LCCOMB_X88_Y45_N8
\data_memory|possible_outputs[0][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][28]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux3~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][28]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][28]~combout\,
	datac => \register_file|mux2|Mux3~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][28]~combout\);

-- Location: LCCOMB_X88_Y45_N18
\data_memory|possible_outputs[1][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][28]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux3~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][28]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux3~1_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[1][28]~combout\,
	combout => \data_memory|possible_outputs[1][28]~combout\);

-- Location: LCCOMB_X88_Y45_N20
\data_memory|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux3~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (\arith_logic_unity|Mux29~1_combout\)) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][28]~combout\))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[0][28]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[0][28]~combout\,
	datad => \data_memory|possible_outputs[1][28]~combout\,
	combout => \data_memory|Mux3~0_combout\);

-- Location: LCCOMB_X87_Y45_N26
\data_memory|possible_outputs[3][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][28]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux3~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][28]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][28]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux3~1_combout\,
	combout => \data_memory|possible_outputs[3][28]~combout\);

-- Location: LCCOMB_X88_Y45_N24
\data_memory|possible_outputs[2][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][28]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux3~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][28]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~0clkctrl_outclk\,
	datab => \data_memory|possible_outputs[2][28]~combout\,
	datad => \register_file|mux2|Mux3~1_combout\,
	combout => \data_memory|possible_outputs[2][28]~combout\);

-- Location: LCCOMB_X88_Y45_N22
\data_memory|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux3~1_combout\ = (\data_memory|Mux3~0_combout\ & ((\data_memory|possible_outputs[3][28]~combout\) # ((!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux3~0_combout\ & (((\arith_logic_unity|Mux28~1_combout\ & 
-- \data_memory|possible_outputs[2][28]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux3~0_combout\,
	datab => \data_memory|possible_outputs[3][28]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[2][28]~combout\,
	combout => \data_memory|Mux3~1_combout\);

-- Location: LCCOMB_X90_Y43_N24
\aluOp2[27]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[27]~64_combout\ = (\register_file|mux2|Mux4~1_combout\ & ((\PC|Q\(5)) # ((\instruction_memory|Mux9~0_combout\) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \register_file|mux2|Mux4~1_combout\,
	datac => \instruction_memory|Mux9~0_combout\,
	datad => \instruction_memory|Mux3~2_combout\,
	combout => \aluOp2[27]~64_combout\);

-- Location: FF_X91_Y47_N9
\register_file|registers:0:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~66_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(27));

-- Location: LCCOMB_X91_Y47_N2
\register_file|mux1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux4~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(27))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(27),
	datab => \instruction_memory|Mux9~1_combout\,
	datad => \register_file|registers:0:regx|Q\(27),
	combout => \register_file|mux1|Mux4~0_combout\);

-- Location: FF_X91_Y41_N29
\register_file|registers:2:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~68_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(26));

-- Location: FF_X91_Y42_N25
\register_file|registers:1:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~68_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(26));

-- Location: LCCOMB_X91_Y42_N24
\register_file|mux2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux5~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\instruction_memory|Mux6~2_combout\)) # (!\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\ & (\register_file|registers:1:regx|Q\(26))) # 
-- (!\instruction_memory|Mux6~2_combout\ & ((\register_file|registers:0:regx|Q\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:1:regx|Q\(26),
	datad => \register_file|registers:0:regx|Q\(26),
	combout => \register_file|mux2|Mux5~0_combout\);

-- Location: FF_X91_Y42_N15
\register_file|registers:3:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~68_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(26));

-- Location: LCCOMB_X91_Y42_N14
\register_file|mux2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux5~1_combout\ = (\register_file|mux2|Mux5~0_combout\ & (((\register_file|registers:3:regx|Q\(26)) # (!\instruction_memory|Mux5~1_combout\)))) # (!\register_file|mux2|Mux5~0_combout\ & (\register_file|registers:2:regx|Q\(26) & 
-- ((\instruction_memory|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(26),
	datab => \register_file|mux2|Mux5~0_combout\,
	datac => \register_file|registers:3:regx|Q\(26),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux2|Mux5~1_combout\);

-- Location: LCCOMB_X91_Y42_N20
\aluOp2[26]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[26]~65_combout\ = (\register_file|mux2|Mux5~1_combout\ & ((\instruction_memory|Mux9~0_combout\) # ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \instruction_memory|Mux3~2_combout\,
	datac => \register_file|mux2|Mux5~1_combout\,
	datad => \PC|Q\(5),
	combout => \aluOp2[26]~65_combout\);

-- Location: LCCOMB_X92_Y43_N20
\arith_logic_unity|Add0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~132_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux5~1_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluControl[2]~2_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux2|Mux5~1_combout\,
	combout => \arith_logic_unity|Add0~132_combout\);

-- Location: LCCOMB_X92_Y47_N2
\register_file|registers:0:regx|Q[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[25]~feeder_combout\ = \register_file|registers:0:regx|Q~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~70_combout\,
	combout => \register_file|registers:0:regx|Q[25]~feeder_combout\);

-- Location: FF_X92_Y47_N3
\register_file|registers:0:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(25));

-- Location: LCCOMB_X92_Y47_N16
\register_file|mux2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux6~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:2:regx|Q\(25)) # ((\instruction_memory|Mux6~2_combout\)))) # (!\instruction_memory|Mux5~1_combout\ & (((!\instruction_memory|Mux6~2_combout\ & 
-- \register_file|registers:0:regx|Q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:2:regx|Q\(25),
	datac => \instruction_memory|Mux6~2_combout\,
	datad => \register_file|registers:0:regx|Q\(25),
	combout => \register_file|mux2|Mux6~0_combout\);

-- Location: FF_X92_Y43_N27
\register_file|registers:3:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~70_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(25));

-- Location: LCCOMB_X92_Y43_N24
\register_file|registers:1:regx|Q[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[25]~feeder_combout\ = \register_file|registers:0:regx|Q~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~70_combout\,
	combout => \register_file|registers:1:regx|Q[25]~feeder_combout\);

-- Location: FF_X92_Y43_N25
\register_file|registers:1:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(25));

-- Location: LCCOMB_X92_Y43_N26
\register_file|mux2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux6~1_combout\ = (\instruction_memory|Mux6~2_combout\ & ((\register_file|mux2|Mux6~0_combout\ & (\register_file|registers:3:regx|Q\(25))) # (!\register_file|mux2|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(25)))))) # 
-- (!\instruction_memory|Mux6~2_combout\ & (\register_file|mux2|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~2_combout\,
	datab => \register_file|mux2|Mux6~0_combout\,
	datac => \register_file|registers:3:regx|Q\(25),
	datad => \register_file|registers:1:regx|Q\(25),
	combout => \register_file|mux2|Mux6~1_combout\);

-- Location: LCCOMB_X92_Y43_N0
\aluOp2[25]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[25]~66_combout\ = (\register_file|mux2|Mux6~1_combout\ & ((\instruction_memory|Mux9~0_combout\) # ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \instruction_memory|Mux3~2_combout\,
	datac => \register_file|mux2|Mux6~1_combout\,
	datad => \PC|Q\(5),
	combout => \aluOp2[25]~66_combout\);

-- Location: LCCOMB_X92_Y43_N30
\data_memory|possible_outputs[3][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][25]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux6~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][25]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][25]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux6~1_combout\,
	combout => \data_memory|possible_outputs[3][25]~combout\);

-- Location: LCCOMB_X92_Y47_N14
\data_memory|possible_outputs[2][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][25]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux6~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][25]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][25]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux6~1_combout\,
	combout => \data_memory|possible_outputs[2][25]~combout\);

-- Location: LCCOMB_X92_Y47_N12
\data_memory|possible_outputs[0][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][25]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux6~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][25]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][25]~combout\,
	datab => \data_memory|Decoder0~2clkctrl_outclk\,
	datac => \register_file|mux2|Mux6~1_combout\,
	combout => \data_memory|possible_outputs[0][25]~combout\);

-- Location: LCCOMB_X92_Y47_N20
\data_memory|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux6~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\) # ((\data_memory|possible_outputs[2][25]~combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (!\arith_logic_unity|Mux29~1_combout\ & 
-- ((\data_memory|possible_outputs[0][25]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[2][25]~combout\,
	datad => \data_memory|possible_outputs[0][25]~combout\,
	combout => \data_memory|Mux6~0_combout\);

-- Location: LCCOMB_X92_Y47_N8
\data_memory|possible_outputs[1][25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][25]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux6~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][25]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux6~1_combout\,
	datab => \data_memory|possible_outputs[1][25]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][25]~combout\);

-- Location: LCCOMB_X92_Y47_N28
\data_memory|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux6~1_combout\ = (\data_memory|Mux6~0_combout\ & ((\data_memory|possible_outputs[3][25]~combout\) # ((!\arith_logic_unity|Mux29~1_combout\)))) # (!\data_memory|Mux6~0_combout\ & (((\data_memory|possible_outputs[1][25]~combout\ & 
-- \arith_logic_unity|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][25]~combout\,
	datab => \data_memory|Mux6~0_combout\,
	datac => \data_memory|possible_outputs[1][25]~combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux6~1_combout\);

-- Location: LCCOMB_X92_Y43_N22
\arith_logic_unity|Add0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~133_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux6~1_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- ((\control|aluSrc~0_combout\) # ((!\register_file|mux2|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|mux2|Mux6~1_combout\,
	datad => \control|aluControl[2]~2_combout\,
	combout => \arith_logic_unity|Add0~133_combout\);

-- Location: LCCOMB_X91_Y41_N8
\register_file|registers:0:regx|Q[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[24]~feeder_combout\ = \register_file|registers:0:regx|Q~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~72_combout\,
	combout => \register_file|registers:0:regx|Q[24]~feeder_combout\);

-- Location: FF_X91_Y41_N9
\register_file|registers:0:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(24));

-- Location: FF_X90_Y42_N31
\register_file|registers:1:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~72_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(24));

-- Location: LCCOMB_X90_Y42_N30
\register_file|mux2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux7~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (((\instruction_memory|Mux6~2_combout\)))) # (!\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\ & ((\register_file|registers:1:regx|Q\(24)))) # 
-- (!\instruction_memory|Mux6~2_combout\ & (\register_file|registers:0:regx|Q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(24),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(24),
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux7~0_combout\);

-- Location: FF_X90_Y42_N29
\register_file|registers:3:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~72_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(24));

-- Location: LCCOMB_X90_Y42_N28
\register_file|mux2|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux7~1_combout\ = (\register_file|mux2|Mux7~0_combout\ & (((\register_file|registers:3:regx|Q\(24)) # (!\instruction_memory|Mux5~1_combout\)))) # (!\register_file|mux2|Mux7~0_combout\ & (\register_file|registers:2:regx|Q\(24) & 
-- ((\instruction_memory|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux7~0_combout\,
	datab => \register_file|registers:2:regx|Q\(24),
	datac => \register_file|registers:3:regx|Q\(24),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux2|Mux7~1_combout\);

-- Location: LCCOMB_X91_Y43_N18
\arith_logic_unity|Add0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~134_combout\ = (\control|aluControl[2]~2_combout\ & (\control|aluControl[2]~4_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux7~1_combout\))))) # (!\control|aluControl[2]~2_combout\ & 
-- (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~2_combout\,
	datab => \control|aluControl[2]~4_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux2|Mux7~1_combout\,
	combout => \arith_logic_unity|Add0~134_combout\);

-- Location: FF_X91_Y50_N17
\register_file|registers:0:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~116_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(23));

-- Location: LCCOMB_X91_Y47_N16
\register_file|mux1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux8~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(23))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~1_combout\,
	datab => \register_file|registers:2:regx|Q\(23),
	datad => \register_file|registers:0:regx|Q\(23),
	combout => \register_file|mux1|Mux8~0_combout\);

-- Location: LCCOMB_X90_Y50_N8
\register_file|registers:0:regx|Q~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~73_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux8~0_combout\ $ (((!\control|aluSrc~0_combout\ & \register_file|mux2|Mux8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \arith_logic_unity|Mux31~0_combout\,
	datac => \register_file|mux2|Mux8~1_combout\,
	datad => \register_file|mux1|Mux8~0_combout\,
	combout => \register_file|registers:0:regx|Q~73_combout\);

-- Location: LCCOMB_X91_Y41_N12
\register_file|registers:2:regx|Q[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[22]~feeder_combout\ = \register_file|registers:0:regx|Q~117_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~117_combout\,
	combout => \register_file|registers:2:regx|Q[22]~feeder_combout\);

-- Location: FF_X91_Y41_N13
\register_file|registers:2:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(22));

-- Location: FF_X92_Y42_N31
\register_file|registers:1:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~117_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(22));

-- Location: LCCOMB_X92_Y42_N30
\register_file|mux2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux9~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\instruction_memory|Mux6~2_combout\)) # (!\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\ & (\register_file|registers:1:regx|Q\(22))) # 
-- (!\instruction_memory|Mux6~2_combout\ & ((\register_file|registers:0:regx|Q\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:1:regx|Q\(22),
	datad => \register_file|registers:0:regx|Q\(22),
	combout => \register_file|mux2|Mux9~0_combout\);

-- Location: FF_X92_Y42_N5
\register_file|registers:3:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~117_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(22));

-- Location: LCCOMB_X92_Y42_N4
\register_file|mux2|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux9~1_combout\ = (\register_file|mux2|Mux9~0_combout\ & (((\register_file|registers:3:regx|Q\(22)) # (!\instruction_memory|Mux5~1_combout\)))) # (!\register_file|mux2|Mux9~0_combout\ & (\register_file|registers:2:regx|Q\(22) & 
-- ((\instruction_memory|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(22),
	datab => \register_file|mux2|Mux9~0_combout\,
	datac => \register_file|registers:3:regx|Q\(22),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux2|Mux9~1_combout\);

-- Location: LCCOMB_X92_Y42_N6
\data_memory|possible_outputs[3][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][22]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux9~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][22]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][22]~combout\,
	datac => \register_file|mux2|Mux9~1_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][22]~combout\);

-- Location: LCCOMB_X88_Y42_N28
\data_memory|possible_outputs[2][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][22]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux9~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][22]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux9~1_combout\,
	datab => \data_memory|possible_outputs[2][22]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][22]~combout\);

-- Location: LCCOMB_X89_Y42_N22
\data_memory|possible_outputs[0][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][22]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux9~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][22]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][22]~combout\,
	datac => \register_file|mux2|Mux9~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][22]~combout\);

-- Location: LCCOMB_X89_Y42_N20
\data_memory|possible_outputs[1][22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][22]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux9~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][22]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][22]~combout\,
	datac => \register_file|mux2|Mux9~1_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][22]~combout\);

-- Location: LCCOMB_X89_Y42_N26
\data_memory|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux9~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][22]~combout\))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[0][22]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][22]~combout\,
	datab => \data_memory|possible_outputs[1][22]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux9~0_combout\);

-- Location: LCCOMB_X92_Y42_N8
\data_memory|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux9~1_combout\ = (\data_memory|Mux9~0_combout\ & ((\data_memory|possible_outputs[3][22]~combout\) # ((!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux9~0_combout\ & (((\data_memory|possible_outputs[2][22]~combout\ & 
-- \arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][22]~combout\,
	datab => \data_memory|possible_outputs[2][22]~combout\,
	datac => \data_memory|Mux9~0_combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux9~1_combout\);

-- Location: LCCOMB_X92_Y44_N22
\arith_logic_unity|Add0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~136_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux9~1_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- ((\control|aluSrc~0_combout\) # ((!\register_file|mux2|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \control|aluControl[2]~2_combout\,
	datad => \register_file|mux2|Mux9~1_combout\,
	combout => \arith_logic_unity|Add0~136_combout\);

-- Location: LCCOMB_X94_Y46_N4
\register_file|registers:2:regx|Q[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[21]~feeder_combout\ = \register_file|registers:0:regx|Q~118_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~118_combout\,
	combout => \register_file|registers:2:regx|Q[21]~feeder_combout\);

-- Location: FF_X94_Y46_N5
\register_file|registers:2:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(21));

-- Location: LCCOMB_X94_Y46_N18
\register_file|mux1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux10~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(21))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~1_combout\,
	datac => \register_file|registers:2:regx|Q\(21),
	datad => \register_file|registers:0:regx|Q\(21),
	combout => \register_file|mux1|Mux10~0_combout\);

-- Location: LCCOMB_X94_Y46_N6
\register_file|registers:0:regx|Q~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~77_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux10~0_combout\ $ (((\register_file|mux2|Mux10~1_combout\ & !\control|aluSrc~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux10~0_combout\,
	datab => \register_file|mux2|Mux10~1_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Mux31~0_combout\,
	combout => \register_file|registers:0:regx|Q~77_combout\);

-- Location: LCCOMB_X91_Y41_N4
\register_file|registers:2:regx|Q[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[20]~feeder_combout\ = \register_file|registers:0:regx|Q~119_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~119_combout\,
	combout => \register_file|registers:2:regx|Q[20]~feeder_combout\);

-- Location: FF_X91_Y41_N5
\register_file|registers:2:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(20));

-- Location: FF_X92_Y42_N15
\register_file|registers:1:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~119_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(20));

-- Location: LCCOMB_X92_Y42_N14
\register_file|mux2|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux11~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\instruction_memory|Mux6~2_combout\)) # (!\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\ & (\register_file|registers:1:regx|Q\(20))) # 
-- (!\instruction_memory|Mux6~2_combout\ & ((\register_file|registers:0:regx|Q\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:1:regx|Q\(20),
	datad => \register_file|registers:0:regx|Q\(20),
	combout => \register_file|mux2|Mux11~0_combout\);

-- Location: FF_X92_Y42_N29
\register_file|registers:3:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~119_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(20));

-- Location: LCCOMB_X92_Y42_N28
\register_file|mux2|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux11~1_combout\ = (\register_file|mux2|Mux11~0_combout\ & (((\register_file|registers:3:regx|Q\(20)) # (!\instruction_memory|Mux5~1_combout\)))) # (!\register_file|mux2|Mux11~0_combout\ & (\register_file|registers:2:regx|Q\(20) & 
-- ((\instruction_memory|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(20),
	datab => \register_file|mux2|Mux11~0_combout\,
	datac => \register_file|registers:3:regx|Q\(20),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux2|Mux11~1_combout\);

-- Location: LCCOMB_X92_Y42_N12
\register_file|registers:0:regx|Q~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~79_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux11~0_combout\ $ (((!\control|aluSrc~0_combout\ & \register_file|mux2|Mux11~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|mux1|Mux11~0_combout\,
	datad => \register_file|mux2|Mux11~1_combout\,
	combout => \register_file|registers:0:regx|Q~79_combout\);

-- Location: LCCOMB_X92_Y44_N8
\arith_logic_unity|Add0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~138_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux11~1_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluControl[2]~2_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux2|Mux11~1_combout\,
	combout => \arith_logic_unity|Add0~138_combout\);

-- Location: LCCOMB_X95_Y45_N6
\data_memory|possible_outputs[0][19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][19]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux12~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][19]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][19]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \register_file|mux2|Mux12~1_combout\,
	combout => \data_memory|possible_outputs[0][19]~combout\);

-- Location: LCCOMB_X95_Y45_N8
\data_memory|possible_outputs[2][19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][19]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux12~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][19]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux12~1_combout\,
	datab => \data_memory|possible_outputs[2][19]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][19]~combout\);

-- Location: LCCOMB_X95_Y45_N28
\data_memory|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux12~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[2][19]~combout\))) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[0][19]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][19]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[2][19]~combout\,
	combout => \data_memory|Mux12~0_combout\);

-- Location: LCCOMB_X95_Y45_N14
\data_memory|possible_outputs[1][19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][19]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux12~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][19]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux12~1_combout\,
	datab => \data_memory|possible_outputs[1][19]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][19]~combout\);

-- Location: LCCOMB_X94_Y45_N6
\data_memory|possible_outputs[3][19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][19]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux12~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][19]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][19]~combout\,
	datab => \register_file|mux2|Mux12~1_combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][19]~combout\);

-- Location: LCCOMB_X95_Y45_N26
\data_memory|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux12~1_combout\ = (\data_memory|Mux12~0_combout\ & (((\data_memory|possible_outputs[3][19]~combout\) # (!\arith_logic_unity|Mux29~1_combout\)))) # (!\data_memory|Mux12~0_combout\ & (\data_memory|possible_outputs[1][19]~combout\ & 
-- ((\arith_logic_unity|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux12~0_combout\,
	datab => \data_memory|possible_outputs[1][19]~combout\,
	datac => \data_memory|possible_outputs[3][19]~combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux12~1_combout\);

-- Location: FF_X94_Y46_N27
\register_file|registers:2:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~120_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(19));

-- Location: FF_X94_Y45_N1
\register_file|registers:0:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~120_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(19));

-- Location: LCCOMB_X94_Y46_N26
\register_file|mux1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux12~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(19))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~1_combout\,
	datac => \register_file|registers:2:regx|Q\(19),
	datad => \register_file|registers:0:regx|Q\(19),
	combout => \register_file|mux1|Mux12~0_combout\);

-- Location: LCCOMB_X94_Y45_N12
\register_file|registers:0:regx|Q~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~81_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux12~0_combout\ $ (((!\control|aluSrc~0_combout\ & \register_file|mux2|Mux12~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \register_file|mux2|Mux12~1_combout\,
	datac => \arith_logic_unity|Mux31~0_combout\,
	datad => \register_file|mux1|Mux12~0_combout\,
	combout => \register_file|registers:0:regx|Q~81_combout\);

-- Location: LCCOMB_X91_Y41_N18
\register_file|registers:0:regx|Q[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[18]~feeder_combout\ = \register_file|registers:0:regx|Q~121_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~121_combout\,
	combout => \register_file|registers:0:regx|Q[18]~feeder_combout\);

-- Location: FF_X91_Y41_N19
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

-- Location: LCCOMB_X91_Y41_N20
\register_file|mux1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux13~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(18))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:2:regx|Q\(18),
	datac => \instruction_memory|Mux9~1_combout\,
	datad => \register_file|registers:0:regx|Q\(18),
	combout => \register_file|mux1|Mux13~0_combout\);

-- Location: LCCOMB_X89_Y42_N6
\register_file|registers:0:regx|Q~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~83_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux13~0_combout\ $ (((!\control|aluSrc~0_combout\ & \register_file|mux2|Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \register_file|mux2|Mux13~1_combout\,
	datac => \arith_logic_unity|Mux31~0_combout\,
	datad => \register_file|mux1|Mux13~0_combout\,
	combout => \register_file|registers:0:regx|Q~83_combout\);

-- Location: FF_X94_Y45_N29
\register_file|registers:0:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~122_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(17));

-- Location: LCCOMB_X94_Y46_N24
\register_file|mux1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux14~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(17))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~1_combout\,
	datac => \register_file|registers:2:regx|Q\(17),
	datad => \register_file|registers:0:regx|Q\(17),
	combout => \register_file|mux1|Mux14~0_combout\);

-- Location: FF_X91_Y42_N13
\register_file|registers:1:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~123_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(16));

-- Location: FF_X91_Y41_N1
\register_file|registers:0:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~123_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(16));

-- Location: LCCOMB_X91_Y42_N12
\register_file|mux2|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux15~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\instruction_memory|Mux6~2_combout\)) # (!\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\ & (\register_file|registers:1:regx|Q\(16))) # 
-- (!\instruction_memory|Mux6~2_combout\ & ((\register_file|registers:0:regx|Q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:1:regx|Q\(16),
	datad => \register_file|registers:0:regx|Q\(16),
	combout => \register_file|mux2|Mux15~0_combout\);

-- Location: FF_X91_Y42_N23
\register_file|registers:3:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~123_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(16));

-- Location: LCCOMB_X91_Y42_N22
\register_file|mux2|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux15~1_combout\ = (\register_file|mux2|Mux15~0_combout\ & (((\register_file|registers:3:regx|Q\(16)) # (!\instruction_memory|Mux5~1_combout\)))) # (!\register_file|mux2|Mux15~0_combout\ & (\register_file|registers:2:regx|Q\(16) & 
-- ((\instruction_memory|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux15~0_combout\,
	datab => \register_file|registers:2:regx|Q\(16),
	datac => \register_file|registers:3:regx|Q\(16),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux2|Mux15~1_combout\);

-- Location: LCCOMB_X92_Y44_N26
\data_memory|possible_outputs[1][16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][16]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux15~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][16]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][16]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux15~1_combout\,
	combout => \data_memory|possible_outputs[1][16]~combout\);

-- Location: LCCOMB_X91_Y42_N18
\data_memory|possible_outputs[0][16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][16]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux15~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][16]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][16]~combout\,
	datac => \register_file|mux2|Mux15~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][16]~combout\);

-- Location: LCCOMB_X91_Y42_N0
\data_memory|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux15~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][16]~combout\) # ((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|possible_outputs[0][16]~combout\ 
-- & !\arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][16]~combout\,
	datab => \data_memory|possible_outputs[0][16]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux15~0_combout\);

-- Location: LCCOMB_X91_Y42_N16
\data_memory|possible_outputs[3][16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][16]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux15~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][16]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][16]~combout\,
	datac => \register_file|mux2|Mux15~1_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][16]~combout\);

-- Location: LCCOMB_X91_Y42_N4
\data_memory|possible_outputs[2][16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][16]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux15~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][16]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux15~1_combout\,
	datab => \data_memory|possible_outputs[2][16]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][16]~combout\);

-- Location: LCCOMB_X91_Y42_N26
\data_memory|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux15~1_combout\ = (\data_memory|Mux15~0_combout\ & ((\data_memory|possible_outputs[3][16]~combout\) # ((!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux15~0_combout\ & (((\data_memory|possible_outputs[2][16]~combout\ & 
-- \arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux15~0_combout\,
	datab => \data_memory|possible_outputs[3][16]~combout\,
	datac => \data_memory|possible_outputs[2][16]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux15~1_combout\);

-- Location: LCCOMB_X91_Y42_N28
\register_file|registers:0:regx|Q~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~87_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux15~0_combout\ $ (((!\control|aluSrc~0_combout\ & \register_file|mux2|Mux15~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \arith_logic_unity|Mux31~0_combout\,
	datac => \register_file|mux1|Mux15~0_combout\,
	datad => \register_file|mux2|Mux15~1_combout\,
	combout => \register_file|registers:0:regx|Q~87_combout\);

-- Location: LCCOMB_X92_Y44_N12
\arith_logic_unity|Add0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~142_combout\ = (\control|aluControl[2]~2_combout\ & (\control|aluControl[2]~4_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux15~1_combout\))))) # (!\control|aluControl[2]~2_combout\ & 
-- ((\control|aluSrc~0_combout\) # ((!\register_file|mux2|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~2_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|mux2|Mux15~1_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~142_combout\);

-- Location: LCCOMB_X92_Y50_N18
\register_file|registers:0:regx|Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[15]~feeder_combout\ = \register_file|registers:0:regx|Q~124_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~124_combout\,
	combout => \register_file|registers:0:regx|Q[15]~feeder_combout\);

-- Location: FF_X92_Y50_N19
\register_file|registers:0:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(15));

-- Location: LCCOMB_X92_Y50_N0
\register_file|mux2|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux16~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\) # ((\register_file|registers:2:regx|Q\(15))))) # (!\instruction_memory|Mux5~1_combout\ & (!\instruction_memory|Mux6~2_combout\ & 
-- ((\register_file|registers:0:regx|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:2:regx|Q\(15),
	datad => \register_file|registers:0:regx|Q\(15),
	combout => \register_file|mux2|Mux16~0_combout\);

-- Location: FF_X92_Y50_N15
\register_file|registers:3:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~124_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(15));

-- Location: FF_X94_Y50_N29
\register_file|registers:1:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~124_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(15));

-- Location: LCCOMB_X92_Y50_N14
\register_file|mux2|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux16~1_combout\ = (\instruction_memory|Mux6~2_combout\ & ((\register_file|mux2|Mux16~0_combout\ & (\register_file|registers:3:regx|Q\(15))) # (!\register_file|mux2|Mux16~0_combout\ & ((\register_file|registers:1:regx|Q\(15)))))) # 
-- (!\instruction_memory|Mux6~2_combout\ & (\register_file|mux2|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~2_combout\,
	datab => \register_file|mux2|Mux16~0_combout\,
	datac => \register_file|registers:3:regx|Q\(15),
	datad => \register_file|registers:1:regx|Q\(15),
	combout => \register_file|mux2|Mux16~1_combout\);

-- Location: LCCOMB_X91_Y46_N4
\arith_logic_unity|Add0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~143_combout\ = (\register_file|mux2|Mux16~1_combout\ & (\control|aluSrc~0_combout\ $ (((\control|aluControl[2]~4_combout\ & \control|aluControl[2]~2_combout\))))) # (!\register_file|mux2|Mux16~1_combout\ & 
-- (((!\control|aluControl[2]~2_combout\) # (!\control|aluControl[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux16~1_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \control|aluControl[2]~4_combout\,
	datad => \control|aluControl[2]~2_combout\,
	combout => \arith_logic_unity|Add0~143_combout\);

-- Location: LCCOMB_X95_Y45_N24
\data_memory|possible_outputs[0][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][14]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux17~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux17~1_combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \data_memory|possible_outputs[0][14]~combout\,
	combout => \data_memory|possible_outputs[0][14]~combout\);

-- Location: LCCOMB_X95_Y45_N10
\data_memory|possible_outputs[1][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][14]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux17~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux17~1_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[1][14]~combout\,
	combout => \data_memory|possible_outputs[1][14]~combout\);

-- Location: LCCOMB_X95_Y45_N4
\data_memory|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux17~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (((\arith_logic_unity|Mux28~1_combout\) # (\data_memory|possible_outputs[1][14]~combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[0][14]~combout\ & 
-- (!\arith_logic_unity|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[0][14]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[1][14]~combout\,
	combout => \data_memory|Mux17~0_combout\);

-- Location: LCCOMB_X96_Y45_N30
\data_memory|possible_outputs[3][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][14]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux17~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][14]~combout\,
	datab => \data_memory|Decoder0~3clkctrl_outclk\,
	datac => \register_file|mux2|Mux17~1_combout\,
	combout => \data_memory|possible_outputs[3][14]~combout\);

-- Location: LCCOMB_X94_Y45_N28
\data_memory|possible_outputs[2][14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][14]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux17~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][14]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][14]~combout\,
	datab => \register_file|mux2|Mux17~1_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][14]~combout\);

-- Location: LCCOMB_X95_Y45_N18
\data_memory|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux17~1_combout\ = (\data_memory|Mux17~0_combout\ & ((\data_memory|possible_outputs[3][14]~combout\) # ((!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux17~0_combout\ & (((\arith_logic_unity|Mux28~1_combout\ & 
-- \data_memory|possible_outputs[2][14]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux17~0_combout\,
	datab => \data_memory|possible_outputs[3][14]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[2][14]~combout\,
	combout => \data_memory|Mux17~1_combout\);

-- Location: LCCOMB_X90_Y47_N16
\register_file|registers:0:regx|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[14]~feeder_combout\ = \register_file|registers:0:regx|Q~125_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~125_combout\,
	combout => \register_file|registers:0:regx|Q[14]~feeder_combout\);

-- Location: FF_X90_Y47_N17
\register_file|registers:0:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(14));

-- Location: LCCOMB_X90_Y47_N30
\register_file|mux1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux17~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(14))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~1_combout\,
	datab => \register_file|registers:2:regx|Q\(14),
	datad => \register_file|registers:0:regx|Q\(14),
	combout => \register_file|mux1|Mux17~0_combout\);

-- Location: LCCOMB_X92_Y44_N18
\register_file|registers:0:regx|Q~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~91_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux17~0_combout\ $ (((!\control|aluSrc~0_combout\ & \register_file|mux2|Mux17~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|mux1|Mux17~0_combout\,
	datad => \register_file|mux2|Mux17~1_combout\,
	combout => \register_file|registers:0:regx|Q~91_combout\);

-- Location: FF_X91_Y47_N3
\register_file|registers:0:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~126_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(13));

-- Location: LCCOMB_X91_Y47_N28
\register_file|mux2|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux18~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\) # ((\register_file|registers:2:regx|Q\(13))))) # (!\instruction_memory|Mux5~1_combout\ & (!\instruction_memory|Mux6~2_combout\ & 
-- ((\register_file|registers:0:regx|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:2:regx|Q\(13),
	datad => \register_file|registers:0:regx|Q\(13),
	combout => \register_file|mux2|Mux18~0_combout\);

-- Location: FF_X91_Y48_N21
\register_file|registers:1:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~126_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(13));

-- Location: FF_X91_Y48_N11
\register_file|registers:3:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~126_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(13));

-- Location: LCCOMB_X91_Y48_N10
\register_file|mux2|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux18~1_combout\ = (\register_file|mux2|Mux18~0_combout\ & (((\register_file|registers:3:regx|Q\(13)) # (!\instruction_memory|Mux6~2_combout\)))) # (!\register_file|mux2|Mux18~0_combout\ & (\register_file|registers:1:regx|Q\(13) & 
-- ((\instruction_memory|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux18~0_combout\,
	datab => \register_file|registers:1:regx|Q\(13),
	datac => \register_file|registers:3:regx|Q\(13),
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux18~1_combout\);

-- Location: LCCOMB_X91_Y48_N0
\register_file|registers:0:regx|Q~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~93_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux18~0_combout\ $ (((\register_file|mux2|Mux18~1_combout\ & !\control|aluSrc~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux18~1_combout\,
	datab => \register_file|mux1|Mux18~0_combout\,
	datac => \arith_logic_unity|Mux31~0_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \register_file|registers:0:regx|Q~93_combout\);

-- Location: LCCOMB_X92_Y44_N14
\arith_logic_unity|Add0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~145_combout\ = (\control|aluControl[2]~2_combout\ & (\control|aluControl[2]~4_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux18~1_combout\))))) # (!\control|aluControl[2]~2_combout\ & 
-- (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~2_combout\,
	datab => \control|aluControl[2]~4_combout\,
	datac => \register_file|mux2|Mux18~1_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \arith_logic_unity|Add0~145_combout\);

-- Location: LCCOMB_X90_Y48_N2
\data_memory|possible_outputs[2][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][12]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux19~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][12]~combout\,
	datac => \register_file|mux2|Mux19~1_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][12]~combout\);

-- Location: LCCOMB_X90_Y49_N12
\data_memory|possible_outputs[3][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][12]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux19~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][12]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux19~1_combout\,
	combout => \data_memory|possible_outputs[3][12]~combout\);

-- Location: LCCOMB_X91_Y48_N22
\data_memory|possible_outputs[0][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][12]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux19~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][12]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \register_file|mux2|Mux19~1_combout\,
	combout => \data_memory|possible_outputs[0][12]~combout\);

-- Location: LCCOMB_X91_Y48_N12
\data_memory|possible_outputs[1][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][12]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux19~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][12]~combout\,
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datac => \register_file|mux2|Mux19~1_combout\,
	combout => \data_memory|possible_outputs[1][12]~combout\);

-- Location: LCCOMB_X91_Y48_N8
\data_memory|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux19~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (((\arith_logic_unity|Mux28~1_combout\) # (\data_memory|possible_outputs[1][12]~combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[0][12]~combout\ & 
-- (!\arith_logic_unity|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][12]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[1][12]~combout\,
	combout => \data_memory|Mux19~0_combout\);

-- Location: LCCOMB_X91_Y48_N6
\data_memory|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux19~1_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|Mux19~0_combout\ & ((\data_memory|possible_outputs[3][12]~combout\))) # (!\data_memory|Mux19~0_combout\ & (\data_memory|possible_outputs[2][12]~combout\)))) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & (((\data_memory|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][12]~combout\,
	datab => \data_memory|possible_outputs[3][12]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|Mux19~0_combout\,
	combout => \data_memory|Mux19~1_combout\);

-- Location: FF_X91_Y47_N1
\register_file|registers:0:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~127_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(12));

-- Location: LCCOMB_X91_Y47_N0
\register_file|mux1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux19~0_combout\ = (\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:2:regx|Q\(12)))) # (!\instruction_memory|Mux9~1_combout\ & (\register_file|registers:0:regx|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux9~1_combout\,
	datac => \register_file|registers:0:regx|Q\(12),
	datad => \register_file|registers:2:regx|Q\(12),
	combout => \register_file|mux1|Mux19~0_combout\);

-- Location: LCCOMB_X90_Y48_N4
\register_file|registers:0:regx|Q~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~95_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux19~0_combout\ $ (((!\control|aluSrc~0_combout\ & \register_file|mux2|Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux19~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|mux2|Mux19~1_combout\,
	datad => \arith_logic_unity|Mux31~0_combout\,
	combout => \register_file|registers:0:regx|Q~95_combout\);

-- Location: FF_X90_Y50_N27
\register_file|registers:0:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~128_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(11));

-- Location: LCCOMB_X91_Y46_N8
\register_file|mux1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux20~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(11))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux9~1_combout\,
	datac => \register_file|registers:2:regx|Q\(11),
	datad => \register_file|registers:0:regx|Q\(11),
	combout => \register_file|mux1|Mux20~0_combout\);

-- Location: FF_X90_Y43_N21
\register_file|registers:1:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~129_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(10));

-- Location: LCCOMB_X90_Y43_N20
\register_file|mux2|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux21~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\instruction_memory|Mux6~2_combout\)) # (!\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\ & (\register_file|registers:1:regx|Q\(10))) # 
-- (!\instruction_memory|Mux6~2_combout\ & ((\register_file|registers:0:regx|Q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:1:regx|Q\(10),
	datad => \register_file|registers:0:regx|Q\(10),
	combout => \register_file|mux2|Mux21~0_combout\);

-- Location: FF_X90_Y43_N23
\register_file|registers:3:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~129_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(10));

-- Location: FF_X91_Y47_N21
\register_file|registers:2:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~129_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(10));

-- Location: LCCOMB_X90_Y43_N22
\register_file|mux2|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux21~1_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|mux2|Mux21~0_combout\ & (\register_file|registers:3:regx|Q\(10))) # (!\register_file|mux2|Mux21~0_combout\ & ((\register_file|registers:2:regx|Q\(10)))))) # 
-- (!\instruction_memory|Mux5~1_combout\ & (\register_file|mux2|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|mux2|Mux21~0_combout\,
	datac => \register_file|registers:3:regx|Q\(10),
	datad => \register_file|registers:2:regx|Q\(10),
	combout => \register_file|mux2|Mux21~1_combout\);

-- Location: LCCOMB_X90_Y43_N10
\data_memory|possible_outputs[2][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][10]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux21~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][10]~combout\,
	datac => \register_file|mux2|Mux21~1_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][10]~combout\);

-- Location: LCCOMB_X90_Y44_N18
\data_memory|possible_outputs[1][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][10]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux21~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][10]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux21~1_combout\,
	datab => \data_memory|possible_outputs[1][10]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][10]~combout\);

-- Location: LCCOMB_X90_Y43_N16
\data_memory|possible_outputs[0][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][10]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux21~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][10]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux21~1_combout\,
	datab => \data_memory|possible_outputs[0][10]~combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][10]~combout\);

-- Location: LCCOMB_X90_Y43_N8
\data_memory|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux21~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\) # ((\data_memory|possible_outputs[1][10]~combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (!\arith_logic_unity|Mux28~1_combout\ & 
-- ((\data_memory|possible_outputs[0][10]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[1][10]~combout\,
	datad => \data_memory|possible_outputs[0][10]~combout\,
	combout => \data_memory|Mux21~0_combout\);

-- Location: LCCOMB_X90_Y43_N26
\data_memory|possible_outputs[3][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][10]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux21~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][10]~combout\,
	datab => \data_memory|Decoder0~3clkctrl_outclk\,
	datac => \register_file|mux2|Mux21~1_combout\,
	combout => \data_memory|possible_outputs[3][10]~combout\);

-- Location: LCCOMB_X90_Y43_N6
\data_memory|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux21~1_combout\ = (\data_memory|Mux21~0_combout\ & (((\data_memory|possible_outputs[3][10]~combout\) # (!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux21~0_combout\ & (\data_memory|possible_outputs[2][10]~combout\ & 
-- ((\arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][10]~combout\,
	datab => \data_memory|Mux21~0_combout\,
	datac => \data_memory|possible_outputs[3][10]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux21~1_combout\);

-- Location: LCCOMB_X90_Y43_N4
\register_file|registers:0:regx|Q~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~99_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux21~0_combout\ $ (((\register_file|mux2|Mux21~1_combout\ & !\control|aluSrc~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux21~1_combout\,
	datab => \arith_logic_unity|Mux31~0_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux1|Mux21~0_combout\,
	combout => \register_file|registers:0:regx|Q~99_combout\);

-- Location: LCCOMB_X90_Y44_N4
\arith_logic_unity|Add0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~148_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux21~1_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluControl[2]~2_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux2|Mux21~1_combout\,
	combout => \arith_logic_unity|Add0~148_combout\);

-- Location: FF_X91_Y46_N3
\register_file|registers:2:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~130_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(9));

-- Location: LCCOMB_X91_Y46_N2
\register_file|mux1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux22~0_combout\ = (\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:2:regx|Q\(9)))) # (!\instruction_memory|Mux9~1_combout\ & (\register_file|registers:0:regx|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(9),
	datac => \register_file|registers:2:regx|Q\(9),
	datad => \instruction_memory|Mux9~1_combout\,
	combout => \register_file|mux1|Mux22~0_combout\);

-- Location: LCCOMB_X90_Y44_N30
\register_file|registers:0:regx|Q~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~101_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux22~0_combout\ $ (((\register_file|mux2|Mux22~1_combout\ & !\control|aluSrc~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux22~1_combout\,
	datab => \register_file|mux1|Mux22~0_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \arith_logic_unity|Mux31~0_combout\,
	combout => \register_file|registers:0:regx|Q~101_combout\);

-- Location: LCCOMB_X90_Y48_N10
\data_memory|possible_outputs[1][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][8]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux23~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][8]~combout\,
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datac => \register_file|mux2|Mux23~1_combout\,
	combout => \data_memory|possible_outputs[1][8]~combout\);

-- Location: LCCOMB_X90_Y48_N0
\data_memory|possible_outputs[0][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][8]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux23~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux23~1_combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \data_memory|possible_outputs[0][8]~combout\,
	combout => \data_memory|possible_outputs[0][8]~combout\);

-- Location: LCCOMB_X90_Y48_N16
\data_memory|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux23~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][8]~combout\) # ((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|possible_outputs[0][8]~combout\ & 
-- !\arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][8]~combout\,
	datab => \data_memory|possible_outputs[0][8]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux23~0_combout\);

-- Location: LCCOMB_X89_Y48_N12
\data_memory|possible_outputs[3][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][8]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux23~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][8]~combout\,
	datab => \register_file|mux2|Mux23~1_combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][8]~combout\);

-- Location: LCCOMB_X89_Y48_N26
\data_memory|possible_outputs[2][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][8]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux23~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][8]~combout\,
	datab => \register_file|mux2|Mux23~1_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][8]~combout\);

-- Location: LCCOMB_X90_Y48_N26
\data_memory|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux23~1_combout\ = (\data_memory|Mux23~0_combout\ & ((\data_memory|possible_outputs[3][8]~combout\) # ((!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux23~0_combout\ & (((\data_memory|possible_outputs[2][8]~combout\ & 
-- \arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux23~0_combout\,
	datab => \data_memory|possible_outputs[3][8]~combout\,
	datac => \data_memory|possible_outputs[2][8]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux23~1_combout\);

-- Location: FF_X91_Y47_N5
\register_file|registers:0:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~131_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(8));

-- Location: LCCOMB_X91_Y47_N26
\register_file|mux1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux23~0_combout\ = (\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:2:regx|Q\(8)))) # (!\instruction_memory|Mux9~1_combout\ & (\register_file|registers:0:regx|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~1_combout\,
	datab => \register_file|registers:0:regx|Q\(8),
	datad => \register_file|registers:2:regx|Q\(8),
	combout => \register_file|mux1|Mux23~0_combout\);

-- Location: LCCOMB_X90_Y48_N6
\register_file|registers:0:regx|Q~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~103_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux23~0_combout\ $ (((\register_file|mux2|Mux23~1_combout\ & !\control|aluSrc~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux23~1_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|mux1|Mux23~0_combout\,
	datad => \arith_logic_unity|Mux31~0_combout\,
	combout => \register_file|registers:0:regx|Q~103_combout\);

-- Location: LCCOMB_X91_Y50_N22
\data_memory|possible_outputs[1][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][7]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux24~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][7]~combout\,
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux24~1_combout\,
	combout => \data_memory|possible_outputs[1][7]~combout\);

-- Location: LCCOMB_X91_Y50_N16
\data_memory|possible_outputs[3][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][7]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux24~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datab => \data_memory|possible_outputs[3][7]~combout\,
	datad => \register_file|mux2|Mux24~1_combout\,
	combout => \data_memory|possible_outputs[3][7]~combout\);

-- Location: LCCOMB_X92_Y46_N24
\data_memory|possible_outputs[2][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][7]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux24~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux24~1_combout\,
	datab => \data_memory|possible_outputs[2][7]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][7]~combout\);

-- Location: LCCOMB_X91_Y50_N4
\data_memory|possible_outputs[0][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][7]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux24~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~2clkctrl_outclk\,
	datac => \data_memory|possible_outputs[0][7]~combout\,
	datad => \register_file|mux2|Mux24~1_combout\,
	combout => \data_memory|possible_outputs[0][7]~combout\);

-- Location: LCCOMB_X91_Y50_N12
\data_memory|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux24~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[2][7]~combout\) # ((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (((\data_memory|possible_outputs[0][7]~combout\ & 
-- !\arith_logic_unity|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][7]~combout\,
	datab => \data_memory|possible_outputs[0][7]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux24~0_combout\);

-- Location: LCCOMB_X91_Y50_N2
\data_memory|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux24~1_combout\ = (\data_memory|Mux24~0_combout\ & (((\data_memory|possible_outputs[3][7]~combout\) # (!\arith_logic_unity|Mux29~1_combout\)))) # (!\data_memory|Mux24~0_combout\ & (\data_memory|possible_outputs[1][7]~combout\ & 
-- ((\arith_logic_unity|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][7]~combout\,
	datab => \data_memory|possible_outputs[3][7]~combout\,
	datac => \data_memory|Mux24~0_combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux24~1_combout\);

-- Location: LCCOMB_X91_Y50_N14
\register_file|registers:0:regx|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[7]~feeder_combout\ = \register_file|registers:0:regx|Q~132_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~132_combout\,
	combout => \register_file|registers:0:regx|Q[7]~feeder_combout\);

-- Location: FF_X91_Y50_N15
\register_file|registers:0:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(7));

-- Location: LCCOMB_X91_Y46_N16
\register_file|mux1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux24~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(7))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux9~1_combout\,
	datac => \register_file|registers:2:regx|Q\(7),
	datad => \register_file|registers:0:regx|Q\(7),
	combout => \register_file|mux1|Mux24~0_combout\);

-- Location: FF_X91_Y49_N11
\register_file|registers:1:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~133_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(6));

-- Location: FF_X91_Y47_N17
\register_file|registers:0:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~133_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(6));

-- Location: LCCOMB_X91_Y49_N10
\register_file|mux2|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux25~0_combout\ = (\instruction_memory|Mux6~2_combout\ & ((\instruction_memory|Mux5~1_combout\) # ((\register_file|registers:1:regx|Q\(6))))) # (!\instruction_memory|Mux6~2_combout\ & (!\instruction_memory|Mux5~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~2_combout\,
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(6),
	datad => \register_file|registers:0:regx|Q\(6),
	combout => \register_file|mux2|Mux25~0_combout\);

-- Location: FF_X91_Y49_N29
\register_file|registers:3:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~133_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(6));

-- Location: LCCOMB_X91_Y49_N28
\register_file|mux2|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux25~1_combout\ = (\register_file|mux2|Mux25~0_combout\ & (((\register_file|registers:3:regx|Q\(6)) # (!\instruction_memory|Mux5~1_combout\)))) # (!\register_file|mux2|Mux25~0_combout\ & (\register_file|registers:2:regx|Q\(6) & 
-- ((\instruction_memory|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(6),
	datab => \register_file|mux2|Mux25~0_combout\,
	datac => \register_file|registers:3:regx|Q\(6),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux2|Mux25~1_combout\);

-- Location: LCCOMB_X95_Y44_N18
\data_memory|possible_outputs[0][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][6]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux25~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux25~1_combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \data_memory|possible_outputs[0][6]~combout\,
	combout => \data_memory|possible_outputs[0][6]~combout\);

-- Location: LCCOMB_X95_Y44_N16
\data_memory|possible_outputs[1][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][6]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux25~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux25~1_combout\,
	datab => \data_memory|possible_outputs[1][6]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][6]~combout\);

-- Location: LCCOMB_X95_Y44_N4
\data_memory|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux25~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][6]~combout\))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[0][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \data_memory|possible_outputs[0][6]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[1][6]~combout\,
	combout => \data_memory|Mux25~0_combout\);

-- Location: LCCOMB_X94_Y44_N8
\data_memory|possible_outputs[2][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][6]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux25~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux25~1_combout\,
	datab => \data_memory|possible_outputs[2][6]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][6]~combout\);

-- Location: LCCOMB_X95_Y44_N12
\data_memory|possible_outputs[3][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][6]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux25~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][6]~combout\,
	datac => \register_file|mux2|Mux25~1_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][6]~combout\);

-- Location: LCCOMB_X95_Y44_N22
\data_memory|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux25~1_combout\ = (\data_memory|Mux25~0_combout\ & (((\data_memory|possible_outputs[3][6]~combout\) # (!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux25~0_combout\ & (\data_memory|possible_outputs[2][6]~combout\ & 
-- (\arith_logic_unity|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux25~0_combout\,
	datab => \data_memory|possible_outputs[2][6]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[3][6]~combout\,
	combout => \data_memory|Mux25~1_combout\);

-- Location: LCCOMB_X92_Y47_N24
\register_file|registers:0:regx|Q~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~107_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux25~0_combout\ $ (((\register_file|mux2|Mux25~1_combout\ & !\control|aluSrc~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~0_combout\,
	datab => \register_file|mux2|Mux25~1_combout\,
	datac => \register_file|mux1|Mux25~0_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \register_file|registers:0:regx|Q~107_combout\);

-- Location: LCCOMB_X92_Y45_N18
\arith_logic_unity|Add0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~152_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux25~1_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- ((\control|aluSrc~0_combout\) # ((!\register_file|mux2|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \control|aluControl[2]~2_combout\,
	datad => \register_file|mux2|Mux25~1_combout\,
	combout => \arith_logic_unity|Add0~152_combout\);

-- Location: LCCOMB_X89_Y45_N10
\data_memory|possible_outputs[3][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][5]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux26~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datac => \register_file|mux2|Mux26~1_combout\,
	datad => \data_memory|possible_outputs[3][5]~combout\,
	combout => \data_memory|possible_outputs[3][5]~combout\);

-- Location: LCCOMB_X88_Y45_N0
\data_memory|possible_outputs[1][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][5]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux26~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux26~1_combout\,
	datab => \data_memory|possible_outputs[1][5]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][5]~combout\);

-- Location: LCCOMB_X88_Y45_N14
\data_memory|possible_outputs[0][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][5]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux26~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][5]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \register_file|mux2|Mux26~1_combout\,
	combout => \data_memory|possible_outputs[0][5]~combout\);

-- Location: LCCOMB_X89_Y45_N26
\data_memory|possible_outputs[2][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][5]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux26~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][5]~combout\,
	datab => \register_file|mux2|Mux26~1_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][5]~combout\);

-- Location: LCCOMB_X89_Y45_N20
\data_memory|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux26~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\data_memory|possible_outputs[2][5]~combout\) # (\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[0][5]~combout\ & 
-- ((!\arith_logic_unity|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][5]~combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[2][5]~combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux26~0_combout\);

-- Location: LCCOMB_X89_Y45_N30
\data_memory|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux26~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux26~0_combout\ & (\data_memory|possible_outputs[3][5]~combout\)) # (!\data_memory|Mux26~0_combout\ & ((\data_memory|possible_outputs[1][5]~combout\))))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][5]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[1][5]~combout\,
	datad => \data_memory|Mux26~0_combout\,
	combout => \data_memory|Mux26~1_combout\);

-- Location: LCCOMB_X89_Y46_N8
\register_file|registers:2:regx|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[5]~feeder_combout\ = \register_file|registers:0:regx|Q~134_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~134_combout\,
	combout => \register_file|registers:2:regx|Q[5]~feeder_combout\);

-- Location: FF_X89_Y46_N9
\register_file|registers:2:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(5));

-- Location: LCCOMB_X89_Y46_N30
\register_file|mux1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux26~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(5) & ((\register_file|registers:0:regx|Q\(5)))) # (!\PC|Q\(5) & (\register_file|registers:2:regx|Q\(5))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(5),
	datac => \register_file|registers:2:regx|Q\(5),
	datad => \register_file|registers:0:regx|Q\(5),
	combout => \register_file|mux1|Mux26~0_combout\);

-- Location: FF_X91_Y49_N25
\register_file|registers:1:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~135_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(4));

-- Location: LCCOMB_X91_Y41_N16
\register_file|registers:0:regx|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[4]~feeder_combout\ = \register_file|registers:0:regx|Q~135_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~135_combout\,
	combout => \register_file|registers:0:regx|Q[4]~feeder_combout\);

-- Location: FF_X91_Y41_N17
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

-- Location: LCCOMB_X91_Y49_N24
\register_file|mux2|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux27~0_combout\ = (\instruction_memory|Mux6~2_combout\ & ((\instruction_memory|Mux5~1_combout\) # ((\register_file|registers:1:regx|Q\(4))))) # (!\instruction_memory|Mux6~2_combout\ & (!\instruction_memory|Mux5~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~2_combout\,
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(4),
	datad => \register_file|registers:0:regx|Q\(4),
	combout => \register_file|mux2|Mux27~0_combout\);

-- Location: FF_X91_Y49_N17
\register_file|registers:3:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~135_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(4));

-- Location: LCCOMB_X91_Y49_N16
\register_file|mux2|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux27~1_combout\ = (\register_file|mux2|Mux27~0_combout\ & (((\register_file|registers:3:regx|Q\(4)) # (!\instruction_memory|Mux5~1_combout\)))) # (!\register_file|mux2|Mux27~0_combout\ & (\register_file|registers:2:regx|Q\(4) & 
-- ((\instruction_memory|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux27~0_combout\,
	datab => \register_file|registers:2:regx|Q\(4),
	datac => \register_file|registers:3:regx|Q\(4),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux2|Mux27~1_combout\);

-- Location: LCCOMB_X92_Y41_N30
\data_memory|possible_outputs[0][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][4]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux27~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][4]~combout\,
	datac => \register_file|mux2|Mux27~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][4]~combout\);

-- Location: LCCOMB_X92_Y41_N24
\data_memory|possible_outputs[1][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][4]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux27~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux27~1_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[1][4]~combout\,
	combout => \data_memory|possible_outputs[1][4]~combout\);

-- Location: LCCOMB_X92_Y41_N20
\data_memory|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux27~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\) # ((\data_memory|possible_outputs[1][4]~combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (!\arith_logic_unity|Mux28~1_combout\ & 
-- (\data_memory|possible_outputs[0][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[0][4]~combout\,
	datad => \data_memory|possible_outputs[1][4]~combout\,
	combout => \data_memory|Mux27~0_combout\);

-- Location: LCCOMB_X92_Y41_N22
\data_memory|possible_outputs[2][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][4]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux27~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux27~1_combout\,
	datac => \data_memory|possible_outputs[2][4]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][4]~combout\);

-- Location: LCCOMB_X91_Y41_N28
\data_memory|possible_outputs[3][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][4]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux27~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux27~1_combout\,
	datab => \data_memory|possible_outputs[3][4]~combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][4]~combout\);

-- Location: LCCOMB_X92_Y41_N10
\data_memory|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux27~1_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|Mux27~0_combout\ & ((\data_memory|possible_outputs[3][4]~combout\))) # (!\data_memory|Mux27~0_combout\ & (\data_memory|possible_outputs[2][4]~combout\)))) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \data_memory|Mux27~0_combout\,
	datac => \data_memory|possible_outputs[2][4]~combout\,
	datad => \data_memory|possible_outputs[3][4]~combout\,
	combout => \data_memory|Mux27~1_combout\);

-- Location: LCCOMB_X92_Y41_N0
\register_file|registers:0:regx|Q~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~111_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux27~0_combout\ $ (((\register_file|mux2|Mux27~1_combout\ & !\control|aluSrc~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~0_combout\,
	datab => \register_file|mux2|Mux27~1_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux1|Mux27~0_combout\,
	combout => \register_file|registers:0:regx|Q~111_combout\);

-- Location: LCCOMB_X92_Y45_N2
\arith_logic_unity|Add0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~154_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux27~1_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- ((\control|aluSrc~0_combout\) # ((!\register_file|mux2|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \control|aluControl[2]~2_combout\,
	datad => \register_file|mux2|Mux27~1_combout\,
	combout => \arith_logic_unity|Add0~154_combout\);

-- Location: LCCOMB_X91_Y45_N26
\arith_logic_unity|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~71_combout\ = (\register_file|mux1|Mux27~0_combout\ & ((\arith_logic_unity|Add0~154_combout\ & (!\arith_logic_unity|Add0~70\)) # (!\arith_logic_unity|Add0~154_combout\ & (\arith_logic_unity|Add0~70\ & VCC)))) # 
-- (!\register_file|mux1|Mux27~0_combout\ & ((\arith_logic_unity|Add0~154_combout\ & ((\arith_logic_unity|Add0~70\) # (GND))) # (!\arith_logic_unity|Add0~154_combout\ & (!\arith_logic_unity|Add0~70\))))
-- \arith_logic_unity|Add0~72\ = CARRY((\register_file|mux1|Mux27~0_combout\ & (\arith_logic_unity|Add0~154_combout\ & !\arith_logic_unity|Add0~70\)) # (!\register_file|mux1|Mux27~0_combout\ & ((\arith_logic_unity|Add0~154_combout\) # 
-- (!\arith_logic_unity|Add0~70\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux27~0_combout\,
	datab => \arith_logic_unity|Add0~154_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~70\,
	combout => \arith_logic_unity|Add0~71_combout\,
	cout => \arith_logic_unity|Add0~72\);

-- Location: LCCOMB_X92_Y41_N26
\register_file|registers:0:regx|Q~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~112_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~111_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~111_combout\,
	datab => \control|aluControl[0]~0_combout\,
	datac => \register_file|registers:0:regx|Q~47_combout\,
	datad => \arith_logic_unity|Add0~71_combout\,
	combout => \register_file|registers:0:regx|Q~112_combout\);

-- Location: LCCOMB_X92_Y41_N28
\register_file|registers:0:regx|Q~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~135_combout\ = (\register_file|registers:0:regx|Q~112_combout\) # ((\data_memory|Mux27~1_combout\ & (\control|Equal3~0_combout\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux27~1_combout\,
	datab => \control|Equal3~0_combout\,
	datac => \rst~input_o\,
	datad => \register_file|registers:0:regx|Q~112_combout\,
	combout => \register_file|registers:0:regx|Q~135_combout\);

-- Location: FF_X91_Y41_N23
\register_file|registers:2:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~135_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(4));

-- Location: LCCOMB_X91_Y41_N30
\register_file|mux1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux27~0_combout\ = (\instruction_memory|Mux9~0_combout\ & ((\PC|Q\(5) & ((\register_file|registers:0:regx|Q\(4)))) # (!\PC|Q\(5) & (\register_file|registers:2:regx|Q\(4))))) # (!\instruction_memory|Mux9~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(5),
	datac => \register_file|registers:2:regx|Q\(4),
	datad => \register_file|registers:0:regx|Q\(4),
	combout => \register_file|mux1|Mux27~0_combout\);

-- Location: LCCOMB_X91_Y45_N28
\arith_logic_unity|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~73_combout\ = ((\arith_logic_unity|Add0~153_combout\ $ (\register_file|mux1|Mux26~0_combout\ $ (\arith_logic_unity|Add0~72\)))) # (GND)
-- \arith_logic_unity|Add0~74\ = CARRY((\arith_logic_unity|Add0~153_combout\ & (\register_file|mux1|Mux26~0_combout\ & !\arith_logic_unity|Add0~72\)) # (!\arith_logic_unity|Add0~153_combout\ & ((\register_file|mux1|Mux26~0_combout\) # 
-- (!\arith_logic_unity|Add0~72\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~153_combout\,
	datab => \register_file|mux1|Mux26~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~72\,
	combout => \arith_logic_unity|Add0~73_combout\,
	cout => \arith_logic_unity|Add0~74\);

-- Location: LCCOMB_X89_Y45_N12
\register_file|registers:0:regx|Q~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~109_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux26~0_combout\ $ (((\register_file|mux2|Mux26~1_combout\ & !\control|aluSrc~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~0_combout\,
	datab => \register_file|mux2|Mux26~1_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux1|Mux26~0_combout\,
	combout => \register_file|registers:0:regx|Q~109_combout\);

-- Location: LCCOMB_X89_Y45_N6
\register_file|registers:0:regx|Q~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~110_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~109_combout\) # ((\arith_logic_unity|Add0~73_combout\ & !\control|aluControl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~73_combout\,
	datab => \register_file|registers:0:regx|Q~47_combout\,
	datac => \register_file|registers:0:regx|Q~109_combout\,
	datad => \control|aluControl[0]~0_combout\,
	combout => \register_file|registers:0:regx|Q~110_combout\);

-- Location: LCCOMB_X89_Y45_N24
\register_file|registers:0:regx|Q~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~134_combout\ = (\register_file|registers:0:regx|Q~110_combout\) # ((!\rst~input_o\ & (\data_memory|Mux26~1_combout\ & \control|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \data_memory|Mux26~1_combout\,
	datac => \register_file|registers:0:regx|Q~110_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~134_combout\);

-- Location: FF_X89_Y45_N27
\register_file|registers:0:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~134_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(5));

-- Location: LCCOMB_X89_Y45_N16
\register_file|mux2|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux26~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (((\register_file|registers:2:regx|Q\(5)) # (\instruction_memory|Mux6~2_combout\)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(5) & 
-- ((!\instruction_memory|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(5),
	datab => \register_file|registers:2:regx|Q\(5),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux26~0_combout\);

-- Location: FF_X89_Y45_N3
\register_file|registers:3:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~134_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(5));

-- Location: LCCOMB_X89_Y46_N20
\register_file|registers:1:regx|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[5]~feeder_combout\ = \register_file|registers:0:regx|Q~134_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~134_combout\,
	combout => \register_file|registers:1:regx|Q[5]~feeder_combout\);

-- Location: FF_X89_Y46_N21
\register_file|registers:1:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(5));

-- Location: LCCOMB_X89_Y45_N2
\register_file|mux2|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux26~1_combout\ = (\register_file|mux2|Mux26~0_combout\ & (((\register_file|registers:3:regx|Q\(5))) # (!\instruction_memory|Mux6~2_combout\))) # (!\register_file|mux2|Mux26~0_combout\ & (\instruction_memory|Mux6~2_combout\ & 
-- ((\register_file|registers:1:regx|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux26~0_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:3:regx|Q\(5),
	datad => \register_file|registers:1:regx|Q\(5),
	combout => \register_file|mux2|Mux26~1_combout\);

-- Location: LCCOMB_X89_Y45_N14
\arith_logic_unity|Add0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~153_combout\ = (\control|aluControl[2]~2_combout\ & (\control|aluControl[2]~4_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux26~1_combout\))))) # (!\control|aluControl[2]~2_combout\ & 
-- ((\control|aluSrc~0_combout\) # ((!\register_file|mux2|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~2_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \control|aluControl[2]~4_combout\,
	datad => \register_file|mux2|Mux26~1_combout\,
	combout => \arith_logic_unity|Add0~153_combout\);

-- Location: LCCOMB_X91_Y45_N30
\arith_logic_unity|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~75_combout\ = (\register_file|mux1|Mux25~0_combout\ & ((\arith_logic_unity|Add0~152_combout\ & (!\arith_logic_unity|Add0~74\)) # (!\arith_logic_unity|Add0~152_combout\ & (\arith_logic_unity|Add0~74\ & VCC)))) # 
-- (!\register_file|mux1|Mux25~0_combout\ & ((\arith_logic_unity|Add0~152_combout\ & ((\arith_logic_unity|Add0~74\) # (GND))) # (!\arith_logic_unity|Add0~152_combout\ & (!\arith_logic_unity|Add0~74\))))
-- \arith_logic_unity|Add0~76\ = CARRY((\register_file|mux1|Mux25~0_combout\ & (\arith_logic_unity|Add0~152_combout\ & !\arith_logic_unity|Add0~74\)) # (!\register_file|mux1|Mux25~0_combout\ & ((\arith_logic_unity|Add0~152_combout\) # 
-- (!\arith_logic_unity|Add0~74\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~0_combout\,
	datab => \arith_logic_unity|Add0~152_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~74\,
	combout => \arith_logic_unity|Add0~75_combout\,
	cout => \arith_logic_unity|Add0~76\);

-- Location: LCCOMB_X91_Y47_N22
\register_file|registers:0:regx|Q~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~108_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~107_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~47_combout\,
	datab => \control|aluControl[0]~0_combout\,
	datac => \register_file|registers:0:regx|Q~107_combout\,
	datad => \arith_logic_unity|Add0~75_combout\,
	combout => \register_file|registers:0:regx|Q~108_combout\);

-- Location: LCCOMB_X91_Y47_N10
\register_file|registers:0:regx|Q~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~133_combout\ = (\register_file|registers:0:regx|Q~108_combout\) # ((\control|Equal3~0_combout\ & (!\rst~input_o\ & \data_memory|Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \rst~input_o\,
	datac => \data_memory|Mux25~1_combout\,
	datad => \register_file|registers:0:regx|Q~108_combout\,
	combout => \register_file|registers:0:regx|Q~133_combout\);

-- Location: LCCOMB_X91_Y47_N6
\register_file|registers:2:regx|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[6]~feeder_combout\ = \register_file|registers:0:regx|Q~133_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~133_combout\,
	combout => \register_file|registers:2:regx|Q[6]~feeder_combout\);

-- Location: FF_X91_Y47_N7
\register_file|registers:2:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(6));

-- Location: LCCOMB_X91_Y47_N14
\register_file|mux1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux25~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(6))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(6),
	datab => \instruction_memory|Mux9~1_combout\,
	datad => \register_file|registers:0:regx|Q\(6),
	combout => \register_file|mux1|Mux25~0_combout\);

-- Location: LCCOMB_X91_Y44_N0
\arith_logic_unity|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~77_combout\ = ((\arith_logic_unity|Add0~151_combout\ $ (\register_file|mux1|Mux24~0_combout\ $ (\arith_logic_unity|Add0~76\)))) # (GND)
-- \arith_logic_unity|Add0~78\ = CARRY((\arith_logic_unity|Add0~151_combout\ & (\register_file|mux1|Mux24~0_combout\ & !\arith_logic_unity|Add0~76\)) # (!\arith_logic_unity|Add0~151_combout\ & ((\register_file|mux1|Mux24~0_combout\) # 
-- (!\arith_logic_unity|Add0~76\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~151_combout\,
	datab => \register_file|mux1|Mux24~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~76\,
	combout => \arith_logic_unity|Add0~77_combout\,
	cout => \arith_logic_unity|Add0~78\);

-- Location: LCCOMB_X91_Y50_N20
\register_file|registers:0:regx|Q~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~105_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux24~0_combout\ $ (((!\control|aluSrc~0_combout\ & \register_file|mux2|Mux24~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \register_file|mux2|Mux24~1_combout\,
	datac => \register_file|mux1|Mux24~0_combout\,
	datad => \arith_logic_unity|Mux31~0_combout\,
	combout => \register_file|registers:0:regx|Q~105_combout\);

-- Location: LCCOMB_X91_Y50_N6
\register_file|registers:0:regx|Q~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~106_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~105_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datab => \arith_logic_unity|Add0~77_combout\,
	datac => \register_file|registers:0:regx|Q~105_combout\,
	datad => \register_file|registers:0:regx|Q~47_combout\,
	combout => \register_file|registers:0:regx|Q~106_combout\);

-- Location: LCCOMB_X91_Y50_N0
\register_file|registers:0:regx|Q~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~132_combout\ = (\register_file|registers:0:regx|Q~106_combout\) # ((\data_memory|Mux24~1_combout\ & (!\rst~input_o\ & \control|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux24~1_combout\,
	datab => \register_file|registers:0:regx|Q~106_combout\,
	datac => \rst~input_o\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~132_combout\);

-- Location: FF_X91_Y46_N17
\register_file|registers:2:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~132_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(7));

-- Location: LCCOMB_X91_Y50_N28
\register_file|mux2|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux24~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:2:regx|Q\(7)) # ((\instruction_memory|Mux6~2_combout\)))) # (!\instruction_memory|Mux5~1_combout\ & (((\register_file|registers:0:regx|Q\(7) & 
-- !\instruction_memory|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:2:regx|Q\(7),
	datac => \register_file|registers:0:regx|Q\(7),
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux24~0_combout\);

-- Location: FF_X91_Y50_N19
\register_file|registers:3:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~132_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(7));

-- Location: LCCOMB_X89_Y50_N16
\register_file|registers:1:regx|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[7]~feeder_combout\ = \register_file|registers:0:regx|Q~132_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~132_combout\,
	combout => \register_file|registers:1:regx|Q[7]~feeder_combout\);

-- Location: FF_X89_Y50_N17
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

-- Location: LCCOMB_X91_Y50_N18
\register_file|mux2|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux24~1_combout\ = (\register_file|mux2|Mux24~0_combout\ & (((\register_file|registers:3:regx|Q\(7))) # (!\instruction_memory|Mux6~2_combout\))) # (!\register_file|mux2|Mux24~0_combout\ & (\instruction_memory|Mux6~2_combout\ & 
-- ((\register_file|registers:1:regx|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux24~0_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:3:regx|Q\(7),
	datad => \register_file|registers:1:regx|Q\(7),
	combout => \register_file|mux2|Mux24~1_combout\);

-- Location: LCCOMB_X92_Y46_N2
\arith_logic_unity|Add0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~151_combout\ = (\control|aluSrc~0_combout\ & (((!\control|aluControl[2]~2_combout\)) # (!\control|aluControl[2]~4_combout\))) # (!\control|aluSrc~0_combout\ & (\register_file|mux2|Mux24~1_combout\ $ 
-- (((!\control|aluControl[2]~2_combout\) # (!\control|aluControl[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \control|aluControl[2]~4_combout\,
	datac => \register_file|mux2|Mux24~1_combout\,
	datad => \control|aluControl[2]~2_combout\,
	combout => \arith_logic_unity|Add0~151_combout\);

-- Location: LCCOMB_X91_Y44_N2
\arith_logic_unity|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~79_combout\ = (\arith_logic_unity|Add0~150_combout\ & ((\register_file|mux1|Mux23~0_combout\ & (!\arith_logic_unity|Add0~78\)) # (!\register_file|mux1|Mux23~0_combout\ & ((\arith_logic_unity|Add0~78\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~150_combout\ & ((\register_file|mux1|Mux23~0_combout\ & (\arith_logic_unity|Add0~78\ & VCC)) # (!\register_file|mux1|Mux23~0_combout\ & (!\arith_logic_unity|Add0~78\))))
-- \arith_logic_unity|Add0~80\ = CARRY((\arith_logic_unity|Add0~150_combout\ & ((!\arith_logic_unity|Add0~78\) # (!\register_file|mux1|Mux23~0_combout\))) # (!\arith_logic_unity|Add0~150_combout\ & (!\register_file|mux1|Mux23~0_combout\ & 
-- !\arith_logic_unity|Add0~78\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~150_combout\,
	datab => \register_file|mux1|Mux23~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~78\,
	combout => \arith_logic_unity|Add0~79_combout\,
	cout => \arith_logic_unity|Add0~80\);

-- Location: LCCOMB_X90_Y48_N28
\register_file|registers:0:regx|Q~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~104_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~103_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datab => \register_file|registers:0:regx|Q~47_combout\,
	datac => \register_file|registers:0:regx|Q~103_combout\,
	datad => \arith_logic_unity|Add0~79_combout\,
	combout => \register_file|registers:0:regx|Q~104_combout\);

-- Location: LCCOMB_X90_Y48_N12
\register_file|registers:0:regx|Q~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~131_combout\ = (\register_file|registers:0:regx|Q~104_combout\) # ((!\rst~input_o\ & (\data_memory|Mux23~1_combout\ & \control|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \data_memory|Mux23~1_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \register_file|registers:0:regx|Q~104_combout\,
	combout => \register_file|registers:0:regx|Q~131_combout\);

-- Location: LCCOMB_X91_Y47_N24
\register_file|registers:2:regx|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[8]~feeder_combout\ = \register_file|registers:0:regx|Q~131_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~131_combout\,
	combout => \register_file|registers:2:regx|Q[8]~feeder_combout\);

-- Location: FF_X91_Y47_N25
\register_file|registers:2:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(8));

-- Location: FF_X90_Y48_N23
\register_file|registers:3:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~131_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(8));

-- Location: FF_X90_Y48_N25
\register_file|registers:1:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~131_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(8));

-- Location: LCCOMB_X90_Y48_N24
\register_file|mux2|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux23~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\instruction_memory|Mux6~2_combout\)) # (!\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\ & (\register_file|registers:1:regx|Q\(8))) # 
-- (!\instruction_memory|Mux6~2_combout\ & ((\register_file|registers:0:regx|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:1:regx|Q\(8),
	datad => \register_file|registers:0:regx|Q\(8),
	combout => \register_file|mux2|Mux23~0_combout\);

-- Location: LCCOMB_X90_Y48_N22
\register_file|mux2|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux23~1_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|mux2|Mux23~0_combout\ & ((\register_file|registers:3:regx|Q\(8)))) # (!\register_file|mux2|Mux23~0_combout\ & (\register_file|registers:2:regx|Q\(8))))) # 
-- (!\instruction_memory|Mux5~1_combout\ & (((\register_file|mux2|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:2:regx|Q\(8),
	datac => \register_file|registers:3:regx|Q\(8),
	datad => \register_file|mux2|Mux23~0_combout\,
	combout => \register_file|mux2|Mux23~1_combout\);

-- Location: LCCOMB_X90_Y48_N14
\arith_logic_unity|Add0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~150_combout\ = (\control|aluSrc~0_combout\ & (((!\control|aluControl[2]~2_combout\)) # (!\control|aluControl[2]~4_combout\))) # (!\control|aluSrc~0_combout\ & (\register_file|mux2|Mux23~1_combout\ $ 
-- (((!\control|aluControl[2]~2_combout\) # (!\control|aluControl[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \control|aluControl[2]~4_combout\,
	datac => \register_file|mux2|Mux23~1_combout\,
	datad => \control|aluControl[2]~2_combout\,
	combout => \arith_logic_unity|Add0~150_combout\);

-- Location: LCCOMB_X91_Y44_N4
\arith_logic_unity|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~81_combout\ = ((\arith_logic_unity|Add0~149_combout\ $ (\register_file|mux1|Mux22~0_combout\ $ (\arith_logic_unity|Add0~80\)))) # (GND)
-- \arith_logic_unity|Add0~82\ = CARRY((\arith_logic_unity|Add0~149_combout\ & (\register_file|mux1|Mux22~0_combout\ & !\arith_logic_unity|Add0~80\)) # (!\arith_logic_unity|Add0~149_combout\ & ((\register_file|mux1|Mux22~0_combout\) # 
-- (!\arith_logic_unity|Add0~80\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~149_combout\,
	datab => \register_file|mux1|Mux22~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~80\,
	combout => \arith_logic_unity|Add0~81_combout\,
	cout => \arith_logic_unity|Add0~82\);

-- Location: LCCOMB_X90_Y44_N24
\register_file|registers:0:regx|Q~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~102_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~101_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datab => \register_file|registers:0:regx|Q~101_combout\,
	datac => \arith_logic_unity|Add0~81_combout\,
	datad => \register_file|registers:0:regx|Q~47_combout\,
	combout => \register_file|registers:0:regx|Q~102_combout\);

-- Location: LCCOMB_X89_Y44_N16
\data_memory|possible_outputs[1][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][9]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux22~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][9]~combout\,
	datac => \register_file|mux2|Mux22~1_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][9]~combout\);

-- Location: LCCOMB_X89_Y44_N26
\data_memory|possible_outputs[2][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][9]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux22~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][9]~combout\,
	datac => \register_file|mux2|Mux22~1_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][9]~combout\);

-- Location: LCCOMB_X92_Y44_N20
\data_memory|possible_outputs[0][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][9]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux22~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][9]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux22~1_combout\,
	datab => \data_memory|possible_outputs[0][9]~combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][9]~combout\);

-- Location: LCCOMB_X90_Y44_N8
\data_memory|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux22~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[2][9]~combout\)) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[0][9]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][9]~combout\,
	datab => \data_memory|possible_outputs[0][9]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux22~0_combout\);

-- Location: LCCOMB_X89_Y44_N28
\data_memory|possible_outputs[3][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][9]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux22~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][9]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux22~1_combout\,
	combout => \data_memory|possible_outputs[3][9]~combout\);

-- Location: LCCOMB_X90_Y44_N14
\data_memory|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux22~1_combout\ = (\data_memory|Mux22~0_combout\ & (((\data_memory|possible_outputs[3][9]~combout\) # (!\arith_logic_unity|Mux29~1_combout\)))) # (!\data_memory|Mux22~0_combout\ & (\data_memory|possible_outputs[1][9]~combout\ & 
-- (\arith_logic_unity|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][9]~combout\,
	datab => \data_memory|Mux22~0_combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[3][9]~combout\,
	combout => \data_memory|Mux22~1_combout\);

-- Location: LCCOMB_X90_Y44_N6
\register_file|registers:0:regx|Q~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~130_combout\ = (\register_file|registers:0:regx|Q~102_combout\) # ((\control|Equal3~0_combout\ & (\data_memory|Mux22~1_combout\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \register_file|registers:0:regx|Q~102_combout\,
	datac => \data_memory|Mux22~1_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~130_combout\);

-- Location: FF_X90_Y44_N19
\register_file|registers:0:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~130_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(9));

-- Location: LCCOMB_X90_Y44_N12
\register_file|mux2|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux22~0_combout\ = (\instruction_memory|Mux6~2_combout\ & (((\instruction_memory|Mux5~1_combout\)))) # (!\instruction_memory|Mux6~2_combout\ & ((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:2:regx|Q\(9)))) # 
-- (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(9),
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:2:regx|Q\(9),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux2|Mux22~0_combout\);

-- Location: FF_X90_Y44_N27
\register_file|registers:3:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~130_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(9));

-- Location: FF_X90_Y46_N15
\register_file|registers:1:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~130_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(9));

-- Location: LCCOMB_X90_Y44_N26
\register_file|mux2|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux22~1_combout\ = (\register_file|mux2|Mux22~0_combout\ & (((\register_file|registers:3:regx|Q\(9))) # (!\instruction_memory|Mux6~2_combout\))) # (!\register_file|mux2|Mux22~0_combout\ & (\instruction_memory|Mux6~2_combout\ & 
-- ((\register_file|registers:1:regx|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux22~0_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:3:regx|Q\(9),
	datad => \register_file|registers:1:regx|Q\(9),
	combout => \register_file|mux2|Mux22~1_combout\);

-- Location: LCCOMB_X90_Y44_N2
\arith_logic_unity|Add0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~149_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux22~1_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- ((\control|aluSrc~0_combout\) # ((!\register_file|mux2|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|mux2|Mux22~1_combout\,
	datad => \control|aluControl[2]~2_combout\,
	combout => \arith_logic_unity|Add0~149_combout\);

-- Location: LCCOMB_X91_Y44_N6
\arith_logic_unity|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~83_combout\ = (\register_file|mux1|Mux21~0_combout\ & ((\arith_logic_unity|Add0~148_combout\ & (!\arith_logic_unity|Add0~82\)) # (!\arith_logic_unity|Add0~148_combout\ & (\arith_logic_unity|Add0~82\ & VCC)))) # 
-- (!\register_file|mux1|Mux21~0_combout\ & ((\arith_logic_unity|Add0~148_combout\ & ((\arith_logic_unity|Add0~82\) # (GND))) # (!\arith_logic_unity|Add0~148_combout\ & (!\arith_logic_unity|Add0~82\))))
-- \arith_logic_unity|Add0~84\ = CARRY((\register_file|mux1|Mux21~0_combout\ & (\arith_logic_unity|Add0~148_combout\ & !\arith_logic_unity|Add0~82\)) # (!\register_file|mux1|Mux21~0_combout\ & ((\arith_logic_unity|Add0~148_combout\) # 
-- (!\arith_logic_unity|Add0~82\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux21~0_combout\,
	datab => \arith_logic_unity|Add0~148_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~82\,
	combout => \arith_logic_unity|Add0~83_combout\,
	cout => \arith_logic_unity|Add0~84\);

-- Location: LCCOMB_X90_Y43_N30
\register_file|registers:0:regx|Q~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~100_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~99_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~47_combout\,
	datab => \control|aluControl[0]~0_combout\,
	datac => \register_file|registers:0:regx|Q~99_combout\,
	datad => \arith_logic_unity|Add0~83_combout\,
	combout => \register_file|registers:0:regx|Q~100_combout\);

-- Location: LCCOMB_X90_Y43_N28
\register_file|registers:0:regx|Q~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~129_combout\ = (\register_file|registers:0:regx|Q~100_combout\) # ((!\rst~input_o\ & (\data_memory|Mux21~1_combout\ & \control|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \data_memory|Mux21~1_combout\,
	datac => \register_file|registers:0:regx|Q~100_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~129_combout\);

-- Location: FF_X91_Y47_N19
\register_file|registers:0:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~129_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(10));

-- Location: LCCOMB_X91_Y47_N18
\register_file|mux1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux21~0_combout\ = (\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:2:regx|Q\(10)))) # (!\instruction_memory|Mux9~1_combout\ & (\register_file|registers:0:regx|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux9~1_combout\,
	datac => \register_file|registers:0:regx|Q\(10),
	datad => \register_file|registers:2:regx|Q\(10),
	combout => \register_file|mux1|Mux21~0_combout\);

-- Location: LCCOMB_X91_Y44_N8
\arith_logic_unity|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~85_combout\ = ((\arith_logic_unity|Add0~147_combout\ $ (\register_file|mux1|Mux20~0_combout\ $ (\arith_logic_unity|Add0~84\)))) # (GND)
-- \arith_logic_unity|Add0~86\ = CARRY((\arith_logic_unity|Add0~147_combout\ & (\register_file|mux1|Mux20~0_combout\ & !\arith_logic_unity|Add0~84\)) # (!\arith_logic_unity|Add0~147_combout\ & ((\register_file|mux1|Mux20~0_combout\) # 
-- (!\arith_logic_unity|Add0~84\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~147_combout\,
	datab => \register_file|mux1|Mux20~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~84\,
	combout => \arith_logic_unity|Add0~85_combout\,
	cout => \arith_logic_unity|Add0~86\);

-- Location: LCCOMB_X90_Y50_N16
\register_file|registers:0:regx|Q~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~97_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux20~0_combout\ $ (((!\control|aluSrc~0_combout\ & \register_file|mux2|Mux20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \register_file|mux2|Mux20~1_combout\,
	datac => \register_file|mux1|Mux20~0_combout\,
	datad => \arith_logic_unity|Mux31~0_combout\,
	combout => \register_file|registers:0:regx|Q~97_combout\);

-- Location: LCCOMB_X90_Y50_N2
\register_file|registers:0:regx|Q~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~98_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~97_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datab => \arith_logic_unity|Add0~85_combout\,
	datac => \register_file|registers:0:regx|Q~47_combout\,
	datad => \register_file|registers:0:regx|Q~97_combout\,
	combout => \register_file|registers:0:regx|Q~98_combout\);

-- Location: LCCOMB_X90_Y50_N6
\data_memory|possible_outputs[1][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][11]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux20~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][11]~combout\,
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux20~1_combout\,
	combout => \data_memory|possible_outputs[1][11]~combout\);

-- Location: LCCOMB_X90_Y50_N14
\data_memory|possible_outputs[3][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][11]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux20~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datac => \data_memory|possible_outputs[3][11]~combout\,
	datad => \register_file|mux2|Mux20~1_combout\,
	combout => \data_memory|possible_outputs[3][11]~combout\);

-- Location: LCCOMB_X91_Y46_N12
\data_memory|possible_outputs[2][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][11]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux20~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][11]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux20~1_combout\,
	combout => \data_memory|possible_outputs[2][11]~combout\);

-- Location: LCCOMB_X90_Y50_N0
\data_memory|possible_outputs[0][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][11]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux20~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~2clkctrl_outclk\,
	datab => \data_memory|possible_outputs[0][11]~combout\,
	datad => \register_file|mux2|Mux20~1_combout\,
	combout => \data_memory|possible_outputs[0][11]~combout\);

-- Location: LCCOMB_X90_Y50_N28
\data_memory|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux20~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\) # ((\data_memory|possible_outputs[2][11]~combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (!\arith_logic_unity|Mux29~1_combout\ & 
-- ((\data_memory|possible_outputs[0][11]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[2][11]~combout\,
	datad => \data_memory|possible_outputs[0][11]~combout\,
	combout => \data_memory|Mux20~0_combout\);

-- Location: LCCOMB_X90_Y50_N22
\data_memory|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux20~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux20~0_combout\ & ((\data_memory|possible_outputs[3][11]~combout\))) # (!\data_memory|Mux20~0_combout\ & (\data_memory|possible_outputs[1][11]~combout\)))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][11]~combout\,
	datab => \data_memory|possible_outputs[3][11]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|Mux20~0_combout\,
	combout => \data_memory|Mux20~1_combout\);

-- Location: LCCOMB_X90_Y50_N4
\register_file|registers:0:regx|Q~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~128_combout\ = (\register_file|registers:0:regx|Q~98_combout\) # ((\data_memory|Mux20~1_combout\ & (\control|Equal3~0_combout\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~98_combout\,
	datab => \data_memory|Mux20~1_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~128_combout\);

-- Location: FF_X91_Y46_N9
\register_file|registers:2:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~128_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(11));

-- Location: LCCOMB_X90_Y50_N20
\register_file|mux2|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux20~0_combout\ = (\instruction_memory|Mux6~2_combout\ & (((\instruction_memory|Mux5~1_combout\)))) # (!\instruction_memory|Mux6~2_combout\ & ((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:2:regx|Q\(11))) # 
-- (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~2_combout\,
	datab => \register_file|registers:2:regx|Q\(11),
	datac => \register_file|registers:0:regx|Q\(11),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux2|Mux20~0_combout\);

-- Location: LCCOMB_X89_Y50_N30
\register_file|registers:1:regx|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[11]~feeder_combout\ = \register_file|registers:0:regx|Q~128_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~128_combout\,
	combout => \register_file|registers:1:regx|Q[11]~feeder_combout\);

-- Location: FF_X89_Y50_N31
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

-- Location: FF_X90_Y50_N19
\register_file|registers:3:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~128_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(11));

-- Location: LCCOMB_X90_Y50_N18
\register_file|mux2|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux20~1_combout\ = (\register_file|mux2|Mux20~0_combout\ & (((\register_file|registers:3:regx|Q\(11)) # (!\instruction_memory|Mux6~2_combout\)))) # (!\register_file|mux2|Mux20~0_combout\ & (\register_file|registers:1:regx|Q\(11) & 
-- ((\instruction_memory|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux20~0_combout\,
	datab => \register_file|registers:1:regx|Q\(11),
	datac => \register_file|registers:3:regx|Q\(11),
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux20~1_combout\);

-- Location: LCCOMB_X91_Y46_N6
\arith_logic_unity|Add0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~147_combout\ = (\control|aluSrc~0_combout\ & (((!\control|aluControl[2]~4_combout\)) # (!\control|aluControl[2]~2_combout\))) # (!\control|aluSrc~0_combout\ & (\register_file|mux2|Mux20~1_combout\ $ 
-- (((!\control|aluControl[2]~4_combout\) # (!\control|aluControl[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \control|aluControl[2]~2_combout\,
	datac => \control|aluControl[2]~4_combout\,
	datad => \register_file|mux2|Mux20~1_combout\,
	combout => \arith_logic_unity|Add0~147_combout\);

-- Location: LCCOMB_X91_Y44_N10
\arith_logic_unity|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~87_combout\ = (\arith_logic_unity|Add0~146_combout\ & ((\register_file|mux1|Mux19~0_combout\ & (!\arith_logic_unity|Add0~86\)) # (!\register_file|mux1|Mux19~0_combout\ & ((\arith_logic_unity|Add0~86\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~146_combout\ & ((\register_file|mux1|Mux19~0_combout\ & (\arith_logic_unity|Add0~86\ & VCC)) # (!\register_file|mux1|Mux19~0_combout\ & (!\arith_logic_unity|Add0~86\))))
-- \arith_logic_unity|Add0~88\ = CARRY((\arith_logic_unity|Add0~146_combout\ & ((!\arith_logic_unity|Add0~86\) # (!\register_file|mux1|Mux19~0_combout\))) # (!\arith_logic_unity|Add0~146_combout\ & (!\register_file|mux1|Mux19~0_combout\ & 
-- !\arith_logic_unity|Add0~86\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~146_combout\,
	datab => \register_file|mux1|Mux19~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~86\,
	combout => \arith_logic_unity|Add0~87_combout\,
	cout => \arith_logic_unity|Add0~88\);

-- Location: LCCOMB_X91_Y48_N4
\register_file|registers:0:regx|Q~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~96_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~95_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datab => \register_file|registers:0:regx|Q~95_combout\,
	datac => \register_file|registers:0:regx|Q~47_combout\,
	datad => \arith_logic_unity|Add0~87_combout\,
	combout => \register_file|registers:0:regx|Q~96_combout\);

-- Location: LCCOMB_X91_Y48_N18
\register_file|registers:0:regx|Q~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~127_combout\ = (\register_file|registers:0:regx|Q~96_combout\) # ((\data_memory|Mux19~1_combout\ & (\control|Equal3~0_combout\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux19~1_combout\,
	datab => \control|Equal3~0_combout\,
	datac => \rst~input_o\,
	datad => \register_file|registers:0:regx|Q~96_combout\,
	combout => \register_file|registers:0:regx|Q~127_combout\);

-- Location: FF_X91_Y47_N13
\register_file|registers:2:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~127_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(12));

-- Location: FF_X91_Y48_N31
\register_file|registers:3:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~127_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(12));

-- Location: FF_X91_Y48_N17
\register_file|registers:1:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~127_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(12));

-- Location: LCCOMB_X91_Y48_N16
\register_file|mux2|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux19~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (((\instruction_memory|Mux6~2_combout\)))) # (!\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\ & ((\register_file|registers:1:regx|Q\(12)))) # 
-- (!\instruction_memory|Mux6~2_combout\ & (\register_file|registers:0:regx|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:0:regx|Q\(12),
	datac => \register_file|registers:1:regx|Q\(12),
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux19~0_combout\);

-- Location: LCCOMB_X91_Y48_N30
\register_file|mux2|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux19~1_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|mux2|Mux19~0_combout\ & ((\register_file|registers:3:regx|Q\(12)))) # (!\register_file|mux2|Mux19~0_combout\ & (\register_file|registers:2:regx|Q\(12))))) # 
-- (!\instruction_memory|Mux5~1_combout\ & (((\register_file|mux2|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:2:regx|Q\(12),
	datac => \register_file|registers:3:regx|Q\(12),
	datad => \register_file|mux2|Mux19~0_combout\,
	combout => \register_file|mux2|Mux19~1_combout\);

-- Location: LCCOMB_X91_Y48_N2
\arith_logic_unity|Add0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~146_combout\ = (\control|aluControl[2]~2_combout\ & (\control|aluControl[2]~4_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux19~1_combout\))))) # (!\control|aluControl[2]~2_combout\ & 
-- (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~2_combout\,
	datab => \control|aluControl[2]~4_combout\,
	datac => \register_file|mux2|Mux19~1_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \arith_logic_unity|Add0~146_combout\);

-- Location: LCCOMB_X91_Y44_N12
\arith_logic_unity|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~89_combout\ = ((\register_file|mux1|Mux18~0_combout\ $ (\arith_logic_unity|Add0~145_combout\ $ (\arith_logic_unity|Add0~88\)))) # (GND)
-- \arith_logic_unity|Add0~90\ = CARRY((\register_file|mux1|Mux18~0_combout\ & ((!\arith_logic_unity|Add0~88\) # (!\arith_logic_unity|Add0~145_combout\))) # (!\register_file|mux1|Mux18~0_combout\ & (!\arith_logic_unity|Add0~145_combout\ & 
-- !\arith_logic_unity|Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux18~0_combout\,
	datab => \arith_logic_unity|Add0~145_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~88\,
	combout => \arith_logic_unity|Add0~89_combout\,
	cout => \arith_logic_unity|Add0~90\);

-- Location: LCCOMB_X91_Y48_N26
\register_file|registers:0:regx|Q~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~94_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~93_combout\) # ((\arith_logic_unity|Add0~89_combout\ & !\control|aluControl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~47_combout\,
	datab => \register_file|registers:0:regx|Q~93_combout\,
	datac => \arith_logic_unity|Add0~89_combout\,
	datad => \control|aluControl[0]~0_combout\,
	combout => \register_file|registers:0:regx|Q~94_combout\);

-- Location: LCCOMB_X96_Y45_N24
\data_memory|possible_outputs[3][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][13]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux18~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux18~1_combout\,
	datab => \data_memory|possible_outputs[3][13]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][13]~combout\);

-- Location: LCCOMB_X95_Y45_N16
\data_memory|possible_outputs[1][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][13]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux18~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux18~1_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[1][13]~combout\,
	combout => \data_memory|possible_outputs[1][13]~combout\);

-- Location: LCCOMB_X95_Y45_N22
\data_memory|possible_outputs[2][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][13]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux18~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][13]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux18~1_combout\,
	datac => \data_memory|possible_outputs[2][13]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][13]~combout\);

-- Location: LCCOMB_X95_Y45_N12
\data_memory|possible_outputs[0][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][13]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux18~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][13]~combout\,
	datac => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \register_file|mux2|Mux18~1_combout\,
	combout => \data_memory|possible_outputs[0][13]~combout\);

-- Location: LCCOMB_X95_Y45_N20
\data_memory|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux18~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (\arith_logic_unity|Mux28~1_combout\)) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[2][13]~combout\)) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[0][13]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[2][13]~combout\,
	datad => \data_memory|possible_outputs[0][13]~combout\,
	combout => \data_memory|Mux18~0_combout\);

-- Location: LCCOMB_X95_Y45_N30
\data_memory|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux18~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux18~0_combout\ & (\data_memory|possible_outputs[3][13]~combout\)) # (!\data_memory|Mux18~0_combout\ & ((\data_memory|possible_outputs[1][13]~combout\))))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[3][13]~combout\,
	datac => \data_memory|possible_outputs[1][13]~combout\,
	datad => \data_memory|Mux18~0_combout\,
	combout => \data_memory|Mux18~1_combout\);

-- Location: LCCOMB_X91_Y48_N24
\register_file|registers:0:regx|Q~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~126_combout\ = (\register_file|registers:0:regx|Q~94_combout\) # ((\control|Equal3~0_combout\ & (!\rst~input_o\ & \data_memory|Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~94_combout\,
	datab => \control|Equal3~0_combout\,
	datac => \rst~input_o\,
	datad => \data_memory|Mux18~1_combout\,
	combout => \register_file|registers:0:regx|Q~126_combout\);

-- Location: FF_X91_Y47_N27
\register_file|registers:2:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~126_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(13));

-- Location: LCCOMB_X91_Y47_N20
\register_file|mux1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux18~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(13))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(13),
	datab => \instruction_memory|Mux9~1_combout\,
	datad => \register_file|registers:0:regx|Q\(13),
	combout => \register_file|mux1|Mux18~0_combout\);

-- Location: LCCOMB_X91_Y44_N14
\arith_logic_unity|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~91_combout\ = (\arith_logic_unity|Add0~144_combout\ & ((\register_file|mux1|Mux17~0_combout\ & (!\arith_logic_unity|Add0~90\)) # (!\register_file|mux1|Mux17~0_combout\ & ((\arith_logic_unity|Add0~90\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~144_combout\ & ((\register_file|mux1|Mux17~0_combout\ & (\arith_logic_unity|Add0~90\ & VCC)) # (!\register_file|mux1|Mux17~0_combout\ & (!\arith_logic_unity|Add0~90\))))
-- \arith_logic_unity|Add0~92\ = CARRY((\arith_logic_unity|Add0~144_combout\ & ((!\arith_logic_unity|Add0~90\) # (!\register_file|mux1|Mux17~0_combout\))) # (!\arith_logic_unity|Add0~144_combout\ & (!\register_file|mux1|Mux17~0_combout\ & 
-- !\arith_logic_unity|Add0~90\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~144_combout\,
	datab => \register_file|mux1|Mux17~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~90\,
	combout => \arith_logic_unity|Add0~91_combout\,
	cout => \arith_logic_unity|Add0~92\);

-- Location: LCCOMB_X90_Y44_N16
\register_file|registers:0:regx|Q~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~92_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~91_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datab => \register_file|registers:0:regx|Q~91_combout\,
	datac => \arith_logic_unity|Add0~91_combout\,
	datad => \register_file|registers:0:regx|Q~47_combout\,
	combout => \register_file|registers:0:regx|Q~92_combout\);

-- Location: LCCOMB_X90_Y44_N28
\register_file|registers:0:regx|Q~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~125_combout\ = (\register_file|registers:0:regx|Q~92_combout\) # ((\data_memory|Mux17~1_combout\ & (\control|Equal3~0_combout\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux17~1_combout\,
	datab => \register_file|registers:0:regx|Q~92_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~125_combout\);

-- Location: FF_X89_Y47_N7
\register_file|registers:2:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~125_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(14));

-- Location: FF_X90_Y47_N15
\register_file|registers:1:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~125_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(14));

-- Location: LCCOMB_X90_Y47_N14
\register_file|mux2|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux17~0_combout\ = (\instruction_memory|Mux6~2_combout\ & ((\instruction_memory|Mux5~1_combout\) # ((\register_file|registers:1:regx|Q\(14))))) # (!\instruction_memory|Mux6~2_combout\ & (!\instruction_memory|Mux5~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~2_combout\,
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(14),
	datad => \register_file|registers:0:regx|Q\(14),
	combout => \register_file|mux2|Mux17~0_combout\);

-- Location: FF_X90_Y44_N21
\register_file|registers:3:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~125_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(14));

-- Location: LCCOMB_X90_Y44_N20
\register_file|mux2|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux17~1_combout\ = (\register_file|mux2|Mux17~0_combout\ & (((\register_file|registers:3:regx|Q\(14)) # (!\instruction_memory|Mux5~1_combout\)))) # (!\register_file|mux2|Mux17~0_combout\ & (\register_file|registers:2:regx|Q\(14) & 
-- ((\instruction_memory|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(14),
	datab => \register_file|mux2|Mux17~0_combout\,
	datac => \register_file|registers:3:regx|Q\(14),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux2|Mux17~1_combout\);

-- Location: LCCOMB_X90_Y44_N10
\arith_logic_unity|Add0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~144_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux17~1_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluControl[2]~2_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux2|Mux17~1_combout\,
	combout => \arith_logic_unity|Add0~144_combout\);

-- Location: LCCOMB_X91_Y44_N16
\arith_logic_unity|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~93_combout\ = ((\register_file|mux1|Mux16~0_combout\ $ (\arith_logic_unity|Add0~143_combout\ $ (\arith_logic_unity|Add0~92\)))) # (GND)
-- \arith_logic_unity|Add0~94\ = CARRY((\register_file|mux1|Mux16~0_combout\ & ((!\arith_logic_unity|Add0~92\) # (!\arith_logic_unity|Add0~143_combout\))) # (!\register_file|mux1|Mux16~0_combout\ & (!\arith_logic_unity|Add0~143_combout\ & 
-- !\arith_logic_unity|Add0~92\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux16~0_combout\,
	datab => \arith_logic_unity|Add0~143_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~92\,
	combout => \arith_logic_unity|Add0~93_combout\,
	cout => \arith_logic_unity|Add0~94\);

-- Location: LCCOMB_X92_Y50_N28
\register_file|registers:0:regx|Q~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~89_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux16~0_combout\ $ (((\register_file|mux2|Mux16~1_combout\ & !\control|aluSrc~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~0_combout\,
	datab => \register_file|mux2|Mux16~1_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux1|Mux16~0_combout\,
	combout => \register_file|registers:0:regx|Q~89_combout\);

-- Location: LCCOMB_X92_Y50_N30
\register_file|registers:0:regx|Q~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~90_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~89_combout\) # ((\arith_logic_unity|Add0~93_combout\ & !\control|aluControl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~47_combout\,
	datab => \arith_logic_unity|Add0~93_combout\,
	datac => \register_file|registers:0:regx|Q~89_combout\,
	datad => \control|aluControl[0]~0_combout\,
	combout => \register_file|registers:0:regx|Q~90_combout\);

-- Location: LCCOMB_X92_Y50_N6
\data_memory|possible_outputs[1][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][15]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux16~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][15]~combout\,
	datab => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux16~1_combout\,
	combout => \data_memory|possible_outputs[1][15]~combout\);

-- Location: LCCOMB_X92_Y50_N22
\data_memory|possible_outputs[3][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][15]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux16~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datab => \data_memory|possible_outputs[3][15]~combout\,
	datac => \register_file|mux2|Mux16~1_combout\,
	combout => \data_memory|possible_outputs[3][15]~combout\);

-- Location: LCCOMB_X92_Y50_N12
\data_memory|possible_outputs[0][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][15]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux16~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~2clkctrl_outclk\,
	datac => \data_memory|possible_outputs[0][15]~combout\,
	datad => \register_file|mux2|Mux16~1_combout\,
	combout => \data_memory|possible_outputs[0][15]~combout\);

-- Location: LCCOMB_X92_Y51_N4
\data_memory|possible_outputs[2][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][15]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux16~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][15]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux16~1_combout\,
	datac => \data_memory|possible_outputs[2][15]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][15]~combout\);

-- Location: LCCOMB_X92_Y50_N24
\data_memory|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux16~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\arith_logic_unity|Mux29~1_combout\) # (\data_memory|possible_outputs[2][15]~combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[0][15]~combout\ & 
-- (!\arith_logic_unity|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][15]~combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[2][15]~combout\,
	combout => \data_memory|Mux16~0_combout\);

-- Location: LCCOMB_X92_Y50_N26
\data_memory|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux16~1_combout\ = (\data_memory|Mux16~0_combout\ & (((\data_memory|possible_outputs[3][15]~combout\) # (!\arith_logic_unity|Mux29~1_combout\)))) # (!\data_memory|Mux16~0_combout\ & (\data_memory|possible_outputs[1][15]~combout\ & 
-- ((\arith_logic_unity|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][15]~combout\,
	datab => \data_memory|possible_outputs[3][15]~combout\,
	datac => \data_memory|Mux16~0_combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux16~1_combout\);

-- Location: LCCOMB_X92_Y50_N4
\register_file|registers:0:regx|Q~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~124_combout\ = (\register_file|registers:0:regx|Q~90_combout\) # ((!\rst~input_o\ & (\control|Equal3~0_combout\ & \data_memory|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \register_file|registers:0:regx|Q~90_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \data_memory|Mux16~1_combout\,
	combout => \register_file|registers:0:regx|Q~124_combout\);

-- Location: FF_X91_Y46_N23
\register_file|registers:2:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~124_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(15));

-- Location: LCCOMB_X91_Y46_N22
\register_file|mux1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux16~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(15))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux9~1_combout\,
	datac => \register_file|registers:2:regx|Q\(15),
	datad => \register_file|registers:0:regx|Q\(15),
	combout => \register_file|mux1|Mux16~0_combout\);

-- Location: LCCOMB_X91_Y44_N18
\arith_logic_unity|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~95_combout\ = (\register_file|mux1|Mux15~0_combout\ & ((\arith_logic_unity|Add0~142_combout\ & (!\arith_logic_unity|Add0~94\)) # (!\arith_logic_unity|Add0~142_combout\ & (\arith_logic_unity|Add0~94\ & VCC)))) # 
-- (!\register_file|mux1|Mux15~0_combout\ & ((\arith_logic_unity|Add0~142_combout\ & ((\arith_logic_unity|Add0~94\) # (GND))) # (!\arith_logic_unity|Add0~142_combout\ & (!\arith_logic_unity|Add0~94\))))
-- \arith_logic_unity|Add0~96\ = CARRY((\register_file|mux1|Mux15~0_combout\ & (\arith_logic_unity|Add0~142_combout\ & !\arith_logic_unity|Add0~94\)) # (!\register_file|mux1|Mux15~0_combout\ & ((\arith_logic_unity|Add0~142_combout\) # 
-- (!\arith_logic_unity|Add0~94\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux15~0_combout\,
	datab => \arith_logic_unity|Add0~142_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~94\,
	combout => \arith_logic_unity|Add0~95_combout\,
	cout => \arith_logic_unity|Add0~96\);

-- Location: LCCOMB_X91_Y42_N6
\register_file|registers:0:regx|Q~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~88_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~87_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datab => \register_file|registers:0:regx|Q~87_combout\,
	datac => \arith_logic_unity|Add0~95_combout\,
	datad => \register_file|registers:0:regx|Q~47_combout\,
	combout => \register_file|registers:0:regx|Q~88_combout\);

-- Location: LCCOMB_X91_Y42_N30
\register_file|registers:0:regx|Q~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~123_combout\ = (\register_file|registers:0:regx|Q~88_combout\) # ((\data_memory|Mux15~1_combout\ & (\control|Equal3~0_combout\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux15~1_combout\,
	datab => \control|Equal3~0_combout\,
	datac => \rst~input_o\,
	datad => \register_file|registers:0:regx|Q~88_combout\,
	combout => \register_file|registers:0:regx|Q~123_combout\);

-- Location: LCCOMB_X91_Y41_N6
\register_file|registers:2:regx|Q[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[16]~feeder_combout\ = \register_file|registers:0:regx|Q~123_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~123_combout\,
	combout => \register_file|registers:2:regx|Q[16]~feeder_combout\);

-- Location: FF_X91_Y41_N7
\register_file|registers:2:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(16));

-- Location: LCCOMB_X91_Y41_N26
\register_file|mux1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux15~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(16))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(16),
	datab => \instruction_memory|Mux9~1_combout\,
	datad => \register_file|registers:0:regx|Q\(16),
	combout => \register_file|mux1|Mux15~0_combout\);

-- Location: LCCOMB_X91_Y44_N20
\arith_logic_unity|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~97_combout\ = ((\arith_logic_unity|Add0~141_combout\ $ (\register_file|mux1|Mux14~0_combout\ $ (\arith_logic_unity|Add0~96\)))) # (GND)
-- \arith_logic_unity|Add0~98\ = CARRY((\arith_logic_unity|Add0~141_combout\ & (\register_file|mux1|Mux14~0_combout\ & !\arith_logic_unity|Add0~96\)) # (!\arith_logic_unity|Add0~141_combout\ & ((\register_file|mux1|Mux14~0_combout\) # 
-- (!\arith_logic_unity|Add0~96\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~141_combout\,
	datab => \register_file|mux1|Mux14~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~96\,
	combout => \arith_logic_unity|Add0~97_combout\,
	cout => \arith_logic_unity|Add0~98\);

-- Location: LCCOMB_X94_Y46_N2
\register_file|registers:0:regx|Q~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~85_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux14~0_combout\ $ (((\register_file|mux2|Mux14~1_combout\ & !\control|aluSrc~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~0_combout\,
	datab => \register_file|mux1|Mux14~0_combout\,
	datac => \register_file|mux2|Mux14~1_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \register_file|registers:0:regx|Q~85_combout\);

-- Location: LCCOMB_X94_Y45_N8
\register_file|registers:0:regx|Q~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~86_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~85_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datab => \register_file|registers:0:regx|Q~47_combout\,
	datac => \arith_logic_unity|Add0~97_combout\,
	datad => \register_file|registers:0:regx|Q~85_combout\,
	combout => \register_file|registers:0:regx|Q~86_combout\);

-- Location: LCCOMB_X94_Y45_N22
\data_memory|possible_outputs[0][17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][17]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux14~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][17]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][17]~combout\,
	datab => \register_file|mux2|Mux14~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][17]~combout\);

-- Location: LCCOMB_X94_Y45_N4
\data_memory|possible_outputs[2][17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][17]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux14~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][17]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux14~1_combout\,
	datac => \data_memory|possible_outputs[2][17]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][17]~combout\);

-- Location: LCCOMB_X94_Y45_N16
\data_memory|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux14~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[2][17]~combout\))) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[0][17]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][17]~combout\,
	datab => \data_memory|possible_outputs[2][17]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux14~0_combout\);

-- Location: LCCOMB_X91_Y46_N10
\data_memory|possible_outputs[1][17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][17]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux14~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][17]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][17]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux14~1_combout\,
	combout => \data_memory|possible_outputs[1][17]~combout\);

-- Location: LCCOMB_X94_Y45_N24
\data_memory|possible_outputs[3][17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][17]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux14~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][17]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux14~1_combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \data_memory|possible_outputs[3][17]~combout\,
	combout => \data_memory|possible_outputs[3][17]~combout\);

-- Location: LCCOMB_X94_Y45_N2
\data_memory|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux14~1_combout\ = (\data_memory|Mux14~0_combout\ & (((\data_memory|possible_outputs[3][17]~combout\) # (!\arith_logic_unity|Mux29~1_combout\)))) # (!\data_memory|Mux14~0_combout\ & (\data_memory|possible_outputs[1][17]~combout\ & 
-- (\arith_logic_unity|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux14~0_combout\,
	datab => \data_memory|possible_outputs[1][17]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[3][17]~combout\,
	combout => \data_memory|Mux14~1_combout\);

-- Location: LCCOMB_X94_Y45_N14
\register_file|registers:0:regx|Q~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~122_combout\ = (\register_file|registers:0:regx|Q~86_combout\) # ((\control|Equal3~0_combout\ & (!\rst~input_o\ & \data_memory|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \register_file|registers:0:regx|Q~86_combout\,
	datac => \rst~input_o\,
	datad => \data_memory|Mux14~1_combout\,
	combout => \register_file|registers:0:regx|Q~122_combout\);

-- Location: LCCOMB_X94_Y46_N30
\register_file|registers:2:regx|Q[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[17]~feeder_combout\ = \register_file|registers:0:regx|Q~122_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~122_combout\,
	combout => \register_file|registers:2:regx|Q[17]~feeder_combout\);

-- Location: FF_X94_Y46_N31
\register_file|registers:2:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(17));

-- Location: LCCOMB_X94_Y45_N10
\register_file|mux2|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux14~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:2:regx|Q\(17)) # ((\instruction_memory|Mux6~2_combout\)))) # (!\instruction_memory|Mux5~1_combout\ & (((\register_file|registers:0:regx|Q\(17) & 
-- !\instruction_memory|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(17),
	datab => \register_file|registers:0:regx|Q\(17),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux14~0_combout\);

-- Location: FF_X91_Y46_N29
\register_file|registers:3:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~122_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(17));

-- Location: LCCOMB_X92_Y46_N18
\register_file|registers:1:regx|Q[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[17]~feeder_combout\ = \register_file|registers:0:regx|Q~122_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~122_combout\,
	combout => \register_file|registers:1:regx|Q[17]~feeder_combout\);

-- Location: FF_X92_Y46_N19
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

-- Location: LCCOMB_X91_Y46_N28
\register_file|mux2|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux14~1_combout\ = (\register_file|mux2|Mux14~0_combout\ & (((\register_file|registers:3:regx|Q\(17))) # (!\instruction_memory|Mux6~2_combout\))) # (!\register_file|mux2|Mux14~0_combout\ & (\instruction_memory|Mux6~2_combout\ & 
-- ((\register_file|registers:1:regx|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux14~0_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:3:regx|Q\(17),
	datad => \register_file|registers:1:regx|Q\(17),
	combout => \register_file|mux2|Mux14~1_combout\);

-- Location: LCCOMB_X91_Y46_N14
\arith_logic_unity|Add0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~141_combout\ = (\control|aluSrc~0_combout\ & (((!\control|aluControl[2]~4_combout\)) # (!\control|aluControl[2]~2_combout\))) # (!\control|aluSrc~0_combout\ & (\register_file|mux2|Mux14~1_combout\ $ 
-- (((!\control|aluControl[2]~4_combout\) # (!\control|aluControl[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \control|aluControl[2]~2_combout\,
	datac => \control|aluControl[2]~4_combout\,
	datad => \register_file|mux2|Mux14~1_combout\,
	combout => \arith_logic_unity|Add0~141_combout\);

-- Location: LCCOMB_X91_Y44_N22
\arith_logic_unity|Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~99_combout\ = (\arith_logic_unity|Add0~140_combout\ & ((\register_file|mux1|Mux13~0_combout\ & (!\arith_logic_unity|Add0~98\)) # (!\register_file|mux1|Mux13~0_combout\ & ((\arith_logic_unity|Add0~98\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~140_combout\ & ((\register_file|mux1|Mux13~0_combout\ & (\arith_logic_unity|Add0~98\ & VCC)) # (!\register_file|mux1|Mux13~0_combout\ & (!\arith_logic_unity|Add0~98\))))
-- \arith_logic_unity|Add0~100\ = CARRY((\arith_logic_unity|Add0~140_combout\ & ((!\arith_logic_unity|Add0~98\) # (!\register_file|mux1|Mux13~0_combout\))) # (!\arith_logic_unity|Add0~140_combout\ & (!\register_file|mux1|Mux13~0_combout\ & 
-- !\arith_logic_unity|Add0~98\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~140_combout\,
	datab => \register_file|mux1|Mux13~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~98\,
	combout => \arith_logic_unity|Add0~99_combout\,
	cout => \arith_logic_unity|Add0~100\);

-- Location: LCCOMB_X90_Y42_N2
\register_file|registers:0:regx|Q~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~84_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~83_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~83_combout\,
	datab => \register_file|registers:0:regx|Q~47_combout\,
	datac => \control|aluControl[0]~0_combout\,
	datad => \arith_logic_unity|Add0~99_combout\,
	combout => \register_file|registers:0:regx|Q~84_combout\);

-- Location: LCCOMB_X94_Y42_N14
\data_memory|possible_outputs[3][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][18]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux13~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][18]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux13~1_combout\,
	datab => \data_memory|possible_outputs[3][18]~combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][18]~combout\);

-- Location: LCCOMB_X89_Y42_N10
\data_memory|possible_outputs[0][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][18]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux13~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][18]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][18]~combout\,
	datac => \register_file|mux2|Mux13~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][18]~combout\);

-- Location: LCCOMB_X89_Y42_N4
\data_memory|possible_outputs[1][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][18]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux13~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][18]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux13~1_combout\,
	datac => \data_memory|possible_outputs[1][18]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][18]~combout\);

-- Location: LCCOMB_X89_Y42_N28
\data_memory|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux13~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][18]~combout\))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[0][18]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][18]~combout\,
	datab => \data_memory|possible_outputs[1][18]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux13~0_combout\);

-- Location: LCCOMB_X94_Y42_N4
\data_memory|possible_outputs[2][18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][18]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux13~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][18]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux13~1_combout\,
	datac => \data_memory|possible_outputs[2][18]~combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][18]~combout\);

-- Location: LCCOMB_X90_Y42_N16
\data_memory|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux13~1_combout\ = (\data_memory|Mux13~0_combout\ & ((\data_memory|possible_outputs[3][18]~combout\) # ((!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux13~0_combout\ & (((\data_memory|possible_outputs[2][18]~combout\ & 
-- \arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][18]~combout\,
	datab => \data_memory|Mux13~0_combout\,
	datac => \data_memory|possible_outputs[2][18]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux13~1_combout\);

-- Location: LCCOMB_X90_Y42_N4
\register_file|registers:0:regx|Q~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~121_combout\ = (\register_file|registers:0:regx|Q~84_combout\) # ((!\rst~input_o\ & (\control|Equal3~0_combout\ & \data_memory|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \register_file|registers:0:regx|Q~84_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \data_memory|Mux13~1_combout\,
	combout => \register_file|registers:0:regx|Q~121_combout\);

-- Location: LCCOMB_X91_Y41_N24
\register_file|registers:2:regx|Q[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[18]~feeder_combout\ = \register_file|registers:0:regx|Q~121_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~121_combout\,
	combout => \register_file|registers:2:regx|Q[18]~feeder_combout\);

-- Location: FF_X91_Y41_N25
\register_file|registers:2:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(18));

-- Location: FF_X90_Y42_N15
\register_file|registers:1:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~121_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(18));

-- Location: LCCOMB_X90_Y42_N14
\register_file|mux2|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux13~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (((\instruction_memory|Mux6~2_combout\)))) # (!\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\ & ((\register_file|registers:1:regx|Q\(18)))) # 
-- (!\instruction_memory|Mux6~2_combout\ & (\register_file|registers:0:regx|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(18),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(18),
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux13~0_combout\);

-- Location: FF_X90_Y42_N9
\register_file|registers:3:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~121_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(18));

-- Location: LCCOMB_X90_Y42_N8
\register_file|mux2|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux13~1_combout\ = (\register_file|mux2|Mux13~0_combout\ & (((\register_file|registers:3:regx|Q\(18)) # (!\instruction_memory|Mux5~1_combout\)))) # (!\register_file|mux2|Mux13~0_combout\ & (\register_file|registers:2:regx|Q\(18) & 
-- ((\instruction_memory|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(18),
	datab => \register_file|mux2|Mux13~0_combout\,
	datac => \register_file|registers:3:regx|Q\(18),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux2|Mux13~1_combout\);

-- Location: LCCOMB_X91_Y42_N8
\arith_logic_unity|Add0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~140_combout\ = (\register_file|mux2|Mux13~1_combout\ & (\control|aluSrc~0_combout\ $ (((\control|aluControl[2]~2_combout\ & \control|aluControl[2]~4_combout\))))) # (!\register_file|mux2|Mux13~1_combout\ & 
-- (((!\control|aluControl[2]~4_combout\)) # (!\control|aluControl[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux13~1_combout\,
	datab => \control|aluControl[2]~2_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~140_combout\);

-- Location: LCCOMB_X91_Y44_N24
\arith_logic_unity|Add0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~101_combout\ = ((\arith_logic_unity|Add0~139_combout\ $ (\register_file|mux1|Mux12~0_combout\ $ (\arith_logic_unity|Add0~100\)))) # (GND)
-- \arith_logic_unity|Add0~102\ = CARRY((\arith_logic_unity|Add0~139_combout\ & (\register_file|mux1|Mux12~0_combout\ & !\arith_logic_unity|Add0~100\)) # (!\arith_logic_unity|Add0~139_combout\ & ((\register_file|mux1|Mux12~0_combout\) # 
-- (!\arith_logic_unity|Add0~100\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~139_combout\,
	datab => \register_file|mux1|Mux12~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~100\,
	combout => \arith_logic_unity|Add0~101_combout\,
	cout => \arith_logic_unity|Add0~102\);

-- Location: LCCOMB_X94_Y45_N26
\register_file|registers:0:regx|Q~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~82_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~81_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~81_combout\,
	datab => \register_file|registers:0:regx|Q~47_combout\,
	datac => \control|aluControl[0]~0_combout\,
	datad => \arith_logic_unity|Add0~101_combout\,
	combout => \register_file|registers:0:regx|Q~82_combout\);

-- Location: LCCOMB_X94_Y45_N20
\register_file|registers:0:regx|Q~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~120_combout\ = (\register_file|registers:0:regx|Q~82_combout\) # ((\data_memory|Mux12~1_combout\ & (!\rst~input_o\ & \control|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux12~1_combout\,
	datab => \rst~input_o\,
	datac => \control|Equal3~0_combout\,
	datad => \register_file|registers:0:regx|Q~82_combout\,
	combout => \register_file|registers:0:regx|Q~120_combout\);

-- Location: LCCOMB_X94_Y46_N16
\register_file|registers:1:regx|Q[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[19]~feeder_combout\ = \register_file|registers:0:regx|Q~120_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~120_combout\,
	combout => \register_file|registers:1:regx|Q[19]~feeder_combout\);

-- Location: FF_X94_Y46_N17
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

-- Location: FF_X94_Y45_N19
\register_file|registers:3:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~120_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(19));

-- Location: LCCOMB_X94_Y45_N0
\register_file|mux2|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux12~0_combout\ = (\instruction_memory|Mux6~2_combout\ & (\instruction_memory|Mux5~1_combout\)) # (!\instruction_memory|Mux6~2_combout\ & ((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:2:regx|Q\(19)))) # 
-- (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~2_combout\,
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(19),
	datad => \register_file|registers:2:regx|Q\(19),
	combout => \register_file|mux2|Mux12~0_combout\);

-- Location: LCCOMB_X94_Y45_N18
\register_file|mux2|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux12~1_combout\ = (\instruction_memory|Mux6~2_combout\ & ((\register_file|mux2|Mux12~0_combout\ & ((\register_file|registers:3:regx|Q\(19)))) # (!\register_file|mux2|Mux12~0_combout\ & (\register_file|registers:1:regx|Q\(19))))) # 
-- (!\instruction_memory|Mux6~2_combout\ & (((\register_file|mux2|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(19),
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:3:regx|Q\(19),
	datad => \register_file|mux2|Mux12~0_combout\,
	combout => \register_file|mux2|Mux12~1_combout\);

-- Location: LCCOMB_X92_Y44_N6
\arith_logic_unity|Add0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~139_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux12~1_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- ((\control|aluSrc~0_combout\) # ((!\register_file|mux2|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \control|aluControl[2]~2_combout\,
	datad => \register_file|mux2|Mux12~1_combout\,
	combout => \arith_logic_unity|Add0~139_combout\);

-- Location: LCCOMB_X91_Y44_N26
\arith_logic_unity|Add0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~103_combout\ = (\register_file|mux1|Mux11~0_combout\ & ((\arith_logic_unity|Add0~138_combout\ & (!\arith_logic_unity|Add0~102\)) # (!\arith_logic_unity|Add0~138_combout\ & (\arith_logic_unity|Add0~102\ & VCC)))) # 
-- (!\register_file|mux1|Mux11~0_combout\ & ((\arith_logic_unity|Add0~138_combout\ & ((\arith_logic_unity|Add0~102\) # (GND))) # (!\arith_logic_unity|Add0~138_combout\ & (!\arith_logic_unity|Add0~102\))))
-- \arith_logic_unity|Add0~104\ = CARRY((\register_file|mux1|Mux11~0_combout\ & (\arith_logic_unity|Add0~138_combout\ & !\arith_logic_unity|Add0~102\)) # (!\register_file|mux1|Mux11~0_combout\ & ((\arith_logic_unity|Add0~138_combout\) # 
-- (!\arith_logic_unity|Add0~102\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux11~0_combout\,
	datab => \arith_logic_unity|Add0~138_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~102\,
	combout => \arith_logic_unity|Add0~103_combout\,
	cout => \arith_logic_unity|Add0~104\);

-- Location: LCCOMB_X92_Y42_N2
\register_file|registers:0:regx|Q~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~80_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~79_combout\) # ((\arith_logic_unity|Add0~103_combout\ & !\control|aluControl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~47_combout\,
	datab => \register_file|registers:0:regx|Q~79_combout\,
	datac => \arith_logic_unity|Add0~103_combout\,
	datad => \control|aluControl[0]~0_combout\,
	combout => \register_file|registers:0:regx|Q~80_combout\);

-- Location: LCCOMB_X92_Y42_N10
\data_memory|possible_outputs[0][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][20]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux11~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][20]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][20]~combout\,
	datab => \data_memory|Decoder0~2clkctrl_outclk\,
	datad => \register_file|mux2|Mux11~1_combout\,
	combout => \data_memory|possible_outputs[0][20]~combout\);

-- Location: LCCOMB_X92_Y44_N16
\data_memory|possible_outputs[1][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][20]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux11~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux11~1_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[1][20]~combout\,
	combout => \data_memory|possible_outputs[1][20]~combout\);

-- Location: LCCOMB_X92_Y42_N20
\data_memory|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux11~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][20]~combout\))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[0][20]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][20]~combout\,
	datab => \data_memory|possible_outputs[1][20]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux11~0_combout\);

-- Location: LCCOMB_X92_Y42_N24
\data_memory|possible_outputs[2][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][20]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux11~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][20]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][20]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux11~1_combout\,
	combout => \data_memory|possible_outputs[2][20]~combout\);

-- Location: LCCOMB_X92_Y42_N0
\data_memory|possible_outputs[3][20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][20]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux11~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][20]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~3clkctrl_outclk\,
	datac => \data_memory|possible_outputs[3][20]~combout\,
	datad => \register_file|mux2|Mux11~1_combout\,
	combout => \data_memory|possible_outputs[3][20]~combout\);

-- Location: LCCOMB_X92_Y42_N18
\data_memory|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux11~1_combout\ = (\data_memory|Mux11~0_combout\ & (((\data_memory|possible_outputs[3][20]~combout\) # (!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux11~0_combout\ & (\data_memory|possible_outputs[2][20]~combout\ & 
-- (\arith_logic_unity|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux11~0_combout\,
	datab => \data_memory|possible_outputs[2][20]~combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[3][20]~combout\,
	combout => \data_memory|Mux11~1_combout\);

-- Location: LCCOMB_X92_Y42_N26
\register_file|registers:0:regx|Q~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~119_combout\ = (\register_file|registers:0:regx|Q~80_combout\) # ((!\rst~input_o\ & (\control|Equal3~0_combout\ & \data_memory|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \register_file|registers:0:regx|Q~80_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \data_memory|Mux11~1_combout\,
	combout => \register_file|registers:0:regx|Q~119_combout\);

-- Location: FF_X91_Y41_N11
\register_file|registers:0:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~119_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(20));

-- Location: LCCOMB_X91_Y41_N22
\register_file|mux1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux11~0_combout\ = (\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:2:regx|Q\(20)))) # (!\instruction_memory|Mux9~1_combout\ & (\register_file|registers:0:regx|Q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(20),
	datab => \instruction_memory|Mux9~1_combout\,
	datad => \register_file|registers:2:regx|Q\(20),
	combout => \register_file|mux1|Mux11~0_combout\);

-- Location: LCCOMB_X91_Y44_N28
\arith_logic_unity|Add0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~105_combout\ = ((\arith_logic_unity|Add0~137_combout\ $ (\register_file|mux1|Mux10~0_combout\ $ (\arith_logic_unity|Add0~104\)))) # (GND)
-- \arith_logic_unity|Add0~106\ = CARRY((\arith_logic_unity|Add0~137_combout\ & (\register_file|mux1|Mux10~0_combout\ & !\arith_logic_unity|Add0~104\)) # (!\arith_logic_unity|Add0~137_combout\ & ((\register_file|mux1|Mux10~0_combout\) # 
-- (!\arith_logic_unity|Add0~104\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~137_combout\,
	datab => \register_file|mux1|Mux10~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~104\,
	combout => \arith_logic_unity|Add0~105_combout\,
	cout => \arith_logic_unity|Add0~106\);

-- Location: LCCOMB_X94_Y46_N0
\register_file|registers:0:regx|Q~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~78_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~77_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~77_combout\,
	datab => \control|aluControl[0]~0_combout\,
	datac => \register_file|registers:0:regx|Q~47_combout\,
	datad => \arith_logic_unity|Add0~105_combout\,
	combout => \register_file|registers:0:regx|Q~78_combout\);

-- Location: LCCOMB_X94_Y46_N22
\data_memory|possible_outputs[3][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][21]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux10~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][21]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][21]~combout\,
	datac => \register_file|mux2|Mux10~1_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][21]~combout\);

-- Location: LCCOMB_X94_Y48_N24
\data_memory|possible_outputs[0][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][21]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux10~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][21]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][21]~combout\,
	datac => \register_file|mux2|Mux10~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][21]~combout\);

-- Location: LCCOMB_X94_Y46_N28
\data_memory|possible_outputs[2][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][21]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux10~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][21]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux10~1_combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \data_memory|possible_outputs[2][21]~combout\,
	combout => \data_memory|possible_outputs[2][21]~combout\);

-- Location: LCCOMB_X94_Y46_N8
\data_memory|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux10~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\) # ((\data_memory|possible_outputs[2][21]~combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (!\arith_logic_unity|Mux29~1_combout\ & 
-- (\data_memory|possible_outputs[0][21]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~1_combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[0][21]~combout\,
	datad => \data_memory|possible_outputs[2][21]~combout\,
	combout => \data_memory|Mux10~0_combout\);

-- Location: LCCOMB_X94_Y46_N14
\data_memory|possible_outputs[1][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][21]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux10~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][21]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux10~1_combout\,
	datac => \data_memory|possible_outputs[1][21]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][21]~combout\);

-- Location: LCCOMB_X94_Y46_N10
\data_memory|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux10~1_combout\ = (\data_memory|Mux10~0_combout\ & ((\data_memory|possible_outputs[3][21]~combout\) # ((!\arith_logic_unity|Mux29~1_combout\)))) # (!\data_memory|Mux10~0_combout\ & (((\data_memory|possible_outputs[1][21]~combout\ & 
-- \arith_logic_unity|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][21]~combout\,
	datab => \data_memory|Mux10~0_combout\,
	datac => \data_memory|possible_outputs[1][21]~combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux10~1_combout\);

-- Location: LCCOMB_X94_Y46_N12
\register_file|registers:0:regx|Q~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~118_combout\ = (\register_file|registers:0:regx|Q~78_combout\) # ((\data_memory|Mux10~1_combout\ & (!\rst~input_o\ & \control|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~78_combout\,
	datab => \data_memory|Mux10~1_combout\,
	datac => \rst~input_o\,
	datad => \control|Equal3~0_combout\,
	combout => \register_file|registers:0:regx|Q~118_combout\);

-- Location: FF_X92_Y50_N21
\register_file|registers:0:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~118_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(21));

-- Location: LCCOMB_X92_Y50_N10
\register_file|mux2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux10~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (((\instruction_memory|Mux6~2_combout\) # (\register_file|registers:2:regx|Q\(21))))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(21) & 
-- (!\instruction_memory|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:0:regx|Q\(21),
	datac => \instruction_memory|Mux6~2_combout\,
	datad => \register_file|registers:2:regx|Q\(21),
	combout => \register_file|mux2|Mux10~0_combout\);

-- Location: FF_X92_Y50_N9
\register_file|registers:3:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~118_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(21));

-- Location: LCCOMB_X94_Y46_N20
\register_file|registers:1:regx|Q[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[21]~feeder_combout\ = \register_file|registers:0:regx|Q~118_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~118_combout\,
	combout => \register_file|registers:1:regx|Q[21]~feeder_combout\);

-- Location: FF_X94_Y46_N21
\register_file|registers:1:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(21));

-- Location: LCCOMB_X92_Y50_N8
\register_file|mux2|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux10~1_combout\ = (\register_file|mux2|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(21))) # (!\instruction_memory|Mux6~2_combout\))) # (!\register_file|mux2|Mux10~0_combout\ & (\instruction_memory|Mux6~2_combout\ & 
-- ((\register_file|registers:1:regx|Q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:3:regx|Q\(21),
	datad => \register_file|registers:1:regx|Q\(21),
	combout => \register_file|mux2|Mux10~1_combout\);

-- Location: LCCOMB_X91_Y46_N24
\arith_logic_unity|Add0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~137_combout\ = (\control|aluSrc~0_combout\ & (((!\control|aluControl[2]~4_combout\)) # (!\control|aluControl[2]~2_combout\))) # (!\control|aluSrc~0_combout\ & (\register_file|mux2|Mux10~1_combout\ $ 
-- (((!\control|aluControl[2]~4_combout\) # (!\control|aluControl[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \control|aluControl[2]~2_combout\,
	datac => \register_file|mux2|Mux10~1_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~137_combout\);

-- Location: LCCOMB_X91_Y44_N30
\arith_logic_unity|Add0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~107_combout\ = (\register_file|mux1|Mux9~0_combout\ & ((\arith_logic_unity|Add0~136_combout\ & (!\arith_logic_unity|Add0~106\)) # (!\arith_logic_unity|Add0~136_combout\ & (\arith_logic_unity|Add0~106\ & VCC)))) # 
-- (!\register_file|mux1|Mux9~0_combout\ & ((\arith_logic_unity|Add0~136_combout\ & ((\arith_logic_unity|Add0~106\) # (GND))) # (!\arith_logic_unity|Add0~136_combout\ & (!\arith_logic_unity|Add0~106\))))
-- \arith_logic_unity|Add0~108\ = CARRY((\register_file|mux1|Mux9~0_combout\ & (\arith_logic_unity|Add0~136_combout\ & !\arith_logic_unity|Add0~106\)) # (!\register_file|mux1|Mux9~0_combout\ & ((\arith_logic_unity|Add0~136_combout\) # 
-- (!\arith_logic_unity|Add0~106\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux9~0_combout\,
	datab => \arith_logic_unity|Add0~136_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~106\,
	combout => \arith_logic_unity|Add0~107_combout\,
	cout => \arith_logic_unity|Add0~108\);

-- Location: LCCOMB_X92_Y44_N0
\register_file|registers:0:regx|Q~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~75_combout\ = (\arith_logic_unity|Mux31~0_combout\ & (\register_file|mux1|Mux9~0_combout\ $ (((!\control|aluSrc~0_combout\ & \register_file|mux2|Mux9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~0_combout\,
	datab => \register_file|mux1|Mux9~0_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \register_file|mux2|Mux9~1_combout\,
	combout => \register_file|registers:0:regx|Q~75_combout\);

-- Location: LCCOMB_X92_Y42_N22
\register_file|registers:0:regx|Q~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~76_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~75_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~47_combout\,
	datab => \control|aluControl[0]~0_combout\,
	datac => \arith_logic_unity|Add0~107_combout\,
	datad => \register_file|registers:0:regx|Q~75_combout\,
	combout => \register_file|registers:0:regx|Q~76_combout\);

-- Location: LCCOMB_X92_Y42_N16
\register_file|registers:0:regx|Q~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~117_combout\ = (\register_file|registers:0:regx|Q~76_combout\) # ((!\rst~input_o\ & (\data_memory|Mux9~1_combout\ & \control|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \data_memory|Mux9~1_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \register_file|registers:0:regx|Q~76_combout\,
	combout => \register_file|registers:0:regx|Q~117_combout\);

-- Location: FF_X91_Y41_N15
\register_file|registers:0:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~117_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(22));

-- Location: LCCOMB_X91_Y41_N14
\register_file|mux1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux9~0_combout\ = (\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:2:regx|Q\(22)))) # (!\instruction_memory|Mux9~1_combout\ & (\register_file|registers:0:regx|Q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~1_combout\,
	datac => \register_file|registers:0:regx|Q\(22),
	datad => \register_file|registers:2:regx|Q\(22),
	combout => \register_file|mux1|Mux9~0_combout\);

-- Location: LCCOMB_X91_Y43_N0
\arith_logic_unity|Add0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~109_combout\ = ((\arith_logic_unity|Add0~135_combout\ $ (\register_file|mux1|Mux8~0_combout\ $ (\arith_logic_unity|Add0~108\)))) # (GND)
-- \arith_logic_unity|Add0~110\ = CARRY((\arith_logic_unity|Add0~135_combout\ & (\register_file|mux1|Mux8~0_combout\ & !\arith_logic_unity|Add0~108\)) # (!\arith_logic_unity|Add0~135_combout\ & ((\register_file|mux1|Mux8~0_combout\) # 
-- (!\arith_logic_unity|Add0~108\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~135_combout\,
	datab => \register_file|mux1|Mux8~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~108\,
	combout => \arith_logic_unity|Add0~109_combout\,
	cout => \arith_logic_unity|Add0~110\);

-- Location: LCCOMB_X90_Y50_N30
\register_file|registers:0:regx|Q~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~74_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~73_combout\) # ((!\control|aluControl[0]~0_combout\ & \arith_logic_unity|Add0~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~0_combout\,
	datab => \register_file|registers:0:regx|Q~47_combout\,
	datac => \register_file|registers:0:regx|Q~73_combout\,
	datad => \arith_logic_unity|Add0~109_combout\,
	combout => \register_file|registers:0:regx|Q~74_combout\);

-- Location: LCCOMB_X91_Y50_N30
\data_memory|possible_outputs[3][23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][23]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux8~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][23]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux8~1_combout\,
	combout => \data_memory|possible_outputs[3][23]~combout\);

-- Location: LCCOMB_X90_Y50_N26
\data_memory|possible_outputs[1][23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][23]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux8~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][23]~combout\,
	datab => \register_file|mux2|Mux8~1_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][23]~combout\);

-- Location: LCCOMB_X89_Y42_N30
\data_memory|possible_outputs[0][23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][23]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux8~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][23]~combout\,
	datab => \register_file|mux2|Mux8~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][23]~combout\);

-- Location: LCCOMB_X89_Y42_N0
\data_memory|possible_outputs[2][23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][23]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\register_file|mux2|Mux8~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\data_memory|possible_outputs[2][23]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux8~1_combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \data_memory|possible_outputs[2][23]~combout\,
	combout => \data_memory|possible_outputs[2][23]~combout\);

-- Location: LCCOMB_X89_Y42_N12
\data_memory|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux8~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\arith_logic_unity|Mux29~1_combout\) # (\data_memory|possible_outputs[2][23]~combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[0][23]~combout\ & 
-- (!\arith_logic_unity|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][23]~combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[2][23]~combout\,
	combout => \data_memory|Mux8~0_combout\);

-- Location: LCCOMB_X90_Y50_N24
\data_memory|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux8~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux8~0_combout\ & (\data_memory|possible_outputs[3][23]~combout\)) # (!\data_memory|Mux8~0_combout\ & ((\data_memory|possible_outputs[1][23]~combout\))))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][23]~combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[1][23]~combout\,
	datad => \data_memory|Mux8~0_combout\,
	combout => \data_memory|Mux8~1_combout\);

-- Location: LCCOMB_X90_Y50_N10
\register_file|registers:0:regx|Q~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~116_combout\ = (\register_file|registers:0:regx|Q~74_combout\) # ((\data_memory|Mux8~1_combout\ & (\control|Equal3~0_combout\ & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~74_combout\,
	datab => \data_memory|Mux8~1_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~116_combout\);

-- Location: FF_X91_Y47_N15
\register_file|registers:2:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~116_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(23));

-- Location: LCCOMB_X91_Y50_N26
\register_file|mux2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux8~0_combout\ = (\instruction_memory|Mux6~2_combout\ & (((\instruction_memory|Mux5~1_combout\)))) # (!\instruction_memory|Mux6~2_combout\ & ((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:2:regx|Q\(23))) # 
-- (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~2_combout\,
	datab => \register_file|registers:2:regx|Q\(23),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:0:regx|Q\(23),
	combout => \register_file|mux2|Mux8~0_combout\);

-- Location: LCCOMB_X89_Y50_N28
\register_file|registers:1:regx|Q[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[23]~feeder_combout\ = \register_file|registers:0:regx|Q~116_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~116_combout\,
	combout => \register_file|registers:1:regx|Q[23]~feeder_combout\);

-- Location: FF_X89_Y50_N29
\register_file|registers:1:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(23));

-- Location: FF_X91_Y50_N25
\register_file|registers:3:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~116_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(23));

-- Location: LCCOMB_X91_Y50_N24
\register_file|mux2|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux8~1_combout\ = (\register_file|mux2|Mux8~0_combout\ & (((\register_file|registers:3:regx|Q\(23)) # (!\instruction_memory|Mux6~2_combout\)))) # (!\register_file|mux2|Mux8~0_combout\ & (\register_file|registers:1:regx|Q\(23) & 
-- ((\instruction_memory|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux8~0_combout\,
	datab => \register_file|registers:1:regx|Q\(23),
	datac => \register_file|registers:3:regx|Q\(23),
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux8~1_combout\);

-- Location: LCCOMB_X92_Y43_N16
\arith_logic_unity|Add0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~135_combout\ = (\control|aluSrc~0_combout\ & (((!\control|aluControl[2]~4_combout\)) # (!\control|aluControl[2]~2_combout\))) # (!\control|aluSrc~0_combout\ & (\register_file|mux2|Mux8~1_combout\ $ 
-- (((!\control|aluControl[2]~4_combout\) # (!\control|aluControl[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \control|aluControl[2]~2_combout\,
	datac => \control|aluControl[2]~4_combout\,
	datad => \register_file|mux2|Mux8~1_combout\,
	combout => \arith_logic_unity|Add0~135_combout\);

-- Location: LCCOMB_X91_Y43_N2
\arith_logic_unity|Add0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~111_combout\ = (\register_file|mux1|Mux7~0_combout\ & ((\arith_logic_unity|Add0~134_combout\ & (!\arith_logic_unity|Add0~110\)) # (!\arith_logic_unity|Add0~134_combout\ & (\arith_logic_unity|Add0~110\ & VCC)))) # 
-- (!\register_file|mux1|Mux7~0_combout\ & ((\arith_logic_unity|Add0~134_combout\ & ((\arith_logic_unity|Add0~110\) # (GND))) # (!\arith_logic_unity|Add0~134_combout\ & (!\arith_logic_unity|Add0~110\))))
-- \arith_logic_unity|Add0~112\ = CARRY((\register_file|mux1|Mux7~0_combout\ & (\arith_logic_unity|Add0~134_combout\ & !\arith_logic_unity|Add0~110\)) # (!\register_file|mux1|Mux7~0_combout\ & ((\arith_logic_unity|Add0~134_combout\) # 
-- (!\arith_logic_unity|Add0~110\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux7~0_combout\,
	datab => \arith_logic_unity|Add0~134_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~110\,
	combout => \arith_logic_unity|Add0~111_combout\,
	cout => \arith_logic_unity|Add0~112\);

-- Location: LCCOMB_X89_Y42_N16
\data_memory|possible_outputs[2][24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][24]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux7~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][24]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][24]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux7~1_combout\,
	combout => \data_memory|possible_outputs[2][24]~combout\);

-- Location: LCCOMB_X89_Y42_N14
\data_memory|possible_outputs[1][24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][24]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux7~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][24]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux7~1_combout\,
	datac => \data_memory|possible_outputs[1][24]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][24]~combout\);

-- Location: LCCOMB_X89_Y42_N24
\data_memory|possible_outputs[0][24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][24]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux7~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][24]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][24]~combout\,
	datac => \register_file|mux2|Mux7~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][24]~combout\);

-- Location: LCCOMB_X90_Y42_N18
\data_memory|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux7~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][24]~combout\) # ((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|possible_outputs[0][24]~combout\ & 
-- !\arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][24]~combout\,
	datab => \data_memory|possible_outputs[0][24]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux7~0_combout\);

-- Location: LCCOMB_X90_Y42_N26
\data_memory|possible_outputs[3][24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][24]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux7~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][24]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][24]~combout\,
	datab => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux7~1_combout\,
	combout => \data_memory|possible_outputs[3][24]~combout\);

-- Location: LCCOMB_X90_Y42_N24
\data_memory|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux7~1_combout\ = (\data_memory|Mux7~0_combout\ & (((\data_memory|possible_outputs[3][24]~combout\) # (!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux7~0_combout\ & (\data_memory|possible_outputs[2][24]~combout\ & 
-- ((\arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][24]~combout\,
	datab => \data_memory|Mux7~0_combout\,
	datac => \data_memory|possible_outputs[3][24]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux7~1_combout\);

-- Location: LCCOMB_X90_Y42_N6
\register_file|registers:0:regx|Q~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~71_combout\ = (\arith_logic_unity|Add0~111_combout\ & ((\register_file|registers:0:regx|Q~56_combout\) # ((\data_memory|Mux7~1_combout\ & \register_file|registers:0:regx|Q~46_combout\)))) # 
-- (!\arith_logic_unity|Add0~111_combout\ & (\data_memory|Mux7~1_combout\ & ((\register_file|registers:0:regx|Q~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~111_combout\,
	datab => \data_memory|Mux7~1_combout\,
	datac => \register_file|registers:0:regx|Q~56_combout\,
	datad => \register_file|registers:0:regx|Q~46_combout\,
	combout => \register_file|registers:0:regx|Q~71_combout\);

-- Location: LCCOMB_X90_Y42_N0
\aluOp2[24]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[24]~67_combout\ = (\register_file|mux2|Mux7~1_combout\ & ((\instruction_memory|Mux9~0_combout\) # ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(5),
	datac => \instruction_memory|Mux3~2_combout\,
	datad => \register_file|mux2|Mux7~1_combout\,
	combout => \aluOp2[24]~67_combout\);

-- Location: LCCOMB_X90_Y42_N12
\register_file|registers:0:regx|Q~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~72_combout\ = (\register_file|registers:0:regx|Q~71_combout\) # ((\register_file|registers:0:regx|Q~58_combout\ & (\register_file|mux1|Mux7~0_combout\ $ (\aluOp2[24]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~71_combout\,
	datab => \register_file|mux1|Mux7~0_combout\,
	datac => \register_file|registers:0:regx|Q~58_combout\,
	datad => \aluOp2[24]~67_combout\,
	combout => \register_file|registers:0:regx|Q~72_combout\);

-- Location: FF_X91_Y41_N27
\register_file|registers:2:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~72_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(24));

-- Location: LCCOMB_X91_Y41_N10
\register_file|mux1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux7~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(24))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(24),
	datab => \register_file|registers:0:regx|Q\(24),
	datad => \instruction_memory|Mux9~1_combout\,
	combout => \register_file|mux1|Mux7~0_combout\);

-- Location: LCCOMB_X91_Y43_N4
\arith_logic_unity|Add0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~113_combout\ = ((\register_file|mux1|Mux6~0_combout\ $ (\arith_logic_unity|Add0~133_combout\ $ (\arith_logic_unity|Add0~112\)))) # (GND)
-- \arith_logic_unity|Add0~114\ = CARRY((\register_file|mux1|Mux6~0_combout\ & ((!\arith_logic_unity|Add0~112\) # (!\arith_logic_unity|Add0~133_combout\))) # (!\register_file|mux1|Mux6~0_combout\ & (!\arith_logic_unity|Add0~133_combout\ & 
-- !\arith_logic_unity|Add0~112\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux6~0_combout\,
	datab => \arith_logic_unity|Add0~133_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~112\,
	combout => \arith_logic_unity|Add0~113_combout\,
	cout => \arith_logic_unity|Add0~114\);

-- Location: LCCOMB_X92_Y47_N22
\register_file|registers:0:regx|Q~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~69_combout\ = (\data_memory|Mux6~1_combout\ & ((\register_file|registers:0:regx|Q~46_combout\) # ((\arith_logic_unity|Add0~113_combout\ & \register_file|registers:0:regx|Q~56_combout\)))) # (!\data_memory|Mux6~1_combout\ 
-- & (((\arith_logic_unity|Add0~113_combout\ & \register_file|registers:0:regx|Q~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux6~1_combout\,
	datab => \register_file|registers:0:regx|Q~46_combout\,
	datac => \arith_logic_unity|Add0~113_combout\,
	datad => \register_file|registers:0:regx|Q~56_combout\,
	combout => \register_file|registers:0:regx|Q~69_combout\);

-- Location: LCCOMB_X92_Y47_N4
\register_file|registers:0:regx|Q~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~70_combout\ = (\register_file|registers:0:regx|Q~69_combout\) # ((\register_file|registers:0:regx|Q~58_combout\ & (\aluOp2[25]~66_combout\ $ (\register_file|mux1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[25]~66_combout\,
	datab => \register_file|registers:0:regx|Q~69_combout\,
	datac => \register_file|mux1|Mux6~0_combout\,
	datad => \register_file|registers:0:regx|Q~58_combout\,
	combout => \register_file|registers:0:regx|Q~70_combout\);

-- Location: LCCOMB_X92_Y47_N0
\register_file|registers:2:regx|Q[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[25]~feeder_combout\ = \register_file|registers:0:regx|Q~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~70_combout\,
	combout => \register_file|registers:2:regx|Q[25]~feeder_combout\);

-- Location: FF_X92_Y47_N1
\register_file|registers:2:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(25));

-- Location: LCCOMB_X92_Y47_N18
\register_file|mux1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux6~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(25))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:2:regx|Q\(25),
	datac => \instruction_memory|Mux9~1_combout\,
	datad => \register_file|registers:0:regx|Q\(25),
	combout => \register_file|mux1|Mux6~0_combout\);

-- Location: LCCOMB_X91_Y43_N6
\arith_logic_unity|Add0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~115_combout\ = (\register_file|mux1|Mux5~0_combout\ & ((\arith_logic_unity|Add0~132_combout\ & (!\arith_logic_unity|Add0~114\)) # (!\arith_logic_unity|Add0~132_combout\ & (\arith_logic_unity|Add0~114\ & VCC)))) # 
-- (!\register_file|mux1|Mux5~0_combout\ & ((\arith_logic_unity|Add0~132_combout\ & ((\arith_logic_unity|Add0~114\) # (GND))) # (!\arith_logic_unity|Add0~132_combout\ & (!\arith_logic_unity|Add0~114\))))
-- \arith_logic_unity|Add0~116\ = CARRY((\register_file|mux1|Mux5~0_combout\ & (\arith_logic_unity|Add0~132_combout\ & !\arith_logic_unity|Add0~114\)) # (!\register_file|mux1|Mux5~0_combout\ & ((\arith_logic_unity|Add0~132_combout\) # 
-- (!\arith_logic_unity|Add0~114\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux5~0_combout\,
	datab => \arith_logic_unity|Add0~132_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~114\,
	combout => \arith_logic_unity|Add0~115_combout\,
	cout => \arith_logic_unity|Add0~116\);

-- Location: LCCOMB_X89_Y42_N2
\data_memory|possible_outputs[0][26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][26]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux5~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][26]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][26]~combout\,
	datac => \register_file|mux2|Mux5~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][26]~combout\);

-- Location: LCCOMB_X89_Y42_N8
\data_memory|possible_outputs[1][26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][26]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux5~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][26]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][26]~combout\,
	datac => \register_file|mux2|Mux5~1_combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][26]~combout\);

-- Location: LCCOMB_X90_Y42_N22
\data_memory|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux5~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][26]~combout\))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[0][26]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][26]~combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \data_memory|possible_outputs[1][26]~combout\,
	combout => \data_memory|Mux5~0_combout\);

-- Location: LCCOMB_X89_Y42_N18
\data_memory|possible_outputs[2][26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][26]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux5~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][26]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][26]~combout\,
	datac => \data_memory|Decoder0~0clkctrl_outclk\,
	datad => \register_file|mux2|Mux5~1_combout\,
	combout => \data_memory|possible_outputs[2][26]~combout\);

-- Location: LCCOMB_X91_Y42_N10
\data_memory|possible_outputs[3][26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][26]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux5~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][26]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][26]~combout\,
	datac => \register_file|mux2|Mux5~1_combout\,
	datad => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][26]~combout\);

-- Location: LCCOMB_X90_Y42_N20
\data_memory|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux5~1_combout\ = (\data_memory|Mux5~0_combout\ & (((\data_memory|possible_outputs[3][26]~combout\) # (!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux5~0_combout\ & (\data_memory|possible_outputs[2][26]~combout\ & 
-- ((\arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux5~0_combout\,
	datab => \data_memory|possible_outputs[2][26]~combout\,
	datac => \data_memory|possible_outputs[3][26]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux5~1_combout\);

-- Location: LCCOMB_X91_Y43_N22
\register_file|registers:0:regx|Q~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~67_combout\ = (\register_file|registers:0:regx|Q~46_combout\ & ((\data_memory|Mux5~1_combout\) # ((\arith_logic_unity|Add0~115_combout\ & \register_file|registers:0:regx|Q~56_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~46_combout\ & (\arith_logic_unity|Add0~115_combout\ & ((\register_file|registers:0:regx|Q~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~46_combout\,
	datab => \arith_logic_unity|Add0~115_combout\,
	datac => \data_memory|Mux5~1_combout\,
	datad => \register_file|registers:0:regx|Q~56_combout\,
	combout => \register_file|registers:0:regx|Q~67_combout\);

-- Location: LCCOMB_X91_Y43_N20
\register_file|registers:0:regx|Q~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~68_combout\ = (\register_file|registers:0:regx|Q~67_combout\) # ((\register_file|registers:0:regx|Q~58_combout\ & (\register_file|mux1|Mux5~0_combout\ $ (\aluOp2[26]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux5~0_combout\,
	datab => \aluOp2[26]~65_combout\,
	datac => \register_file|registers:0:regx|Q~67_combout\,
	datad => \register_file|registers:0:regx|Q~58_combout\,
	combout => \register_file|registers:0:regx|Q~68_combout\);

-- Location: LCCOMB_X91_Y41_N2
\register_file|registers:0:regx|Q[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[26]~feeder_combout\ = \register_file|registers:0:regx|Q~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~68_combout\,
	combout => \register_file|registers:0:regx|Q[26]~feeder_combout\);

-- Location: FF_X91_Y41_N3
\register_file|registers:0:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(26));

-- Location: LCCOMB_X91_Y41_N0
\register_file|mux1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux5~0_combout\ = (\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:2:regx|Q\(26)))) # (!\instruction_memory|Mux9~1_combout\ & (\register_file|registers:0:regx|Q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~1_combout\,
	datab => \register_file|registers:0:regx|Q\(26),
	datad => \register_file|registers:2:regx|Q\(26),
	combout => \register_file|mux1|Mux5~0_combout\);

-- Location: LCCOMB_X91_Y43_N8
\arith_logic_unity|Add0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~117_combout\ = ((\arith_logic_unity|Add0~131_combout\ $ (\register_file|mux1|Mux4~0_combout\ $ (\arith_logic_unity|Add0~116\)))) # (GND)
-- \arith_logic_unity|Add0~118\ = CARRY((\arith_logic_unity|Add0~131_combout\ & (\register_file|mux1|Mux4~0_combout\ & !\arith_logic_unity|Add0~116\)) # (!\arith_logic_unity|Add0~131_combout\ & ((\register_file|mux1|Mux4~0_combout\) # 
-- (!\arith_logic_unity|Add0~116\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~131_combout\,
	datab => \register_file|mux1|Mux4~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~116\,
	combout => \arith_logic_unity|Add0~117_combout\,
	cout => \arith_logic_unity|Add0~118\);

-- Location: LCCOMB_X87_Y45_N4
\data_memory|possible_outputs[3][27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][27]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\register_file|mux2|Mux4~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\data_memory|possible_outputs[3][27]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux4~1_combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \data_memory|possible_outputs[3][27]~combout\,
	combout => \data_memory|possible_outputs[3][27]~combout\);

-- Location: LCCOMB_X88_Y45_N2
\data_memory|possible_outputs[0][27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][27]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux4~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][27]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[0][27]~combout\,
	datac => \register_file|mux2|Mux4~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][27]~combout\);

-- Location: LCCOMB_X88_Y45_N28
\data_memory|possible_outputs[2][27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][27]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux4~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][27]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Decoder0~0clkctrl_outclk\,
	datab => \data_memory|possible_outputs[2][27]~combout\,
	datad => \register_file|mux2|Mux4~1_combout\,
	combout => \data_memory|possible_outputs[2][27]~combout\);

-- Location: LCCOMB_X88_Y45_N16
\data_memory|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux4~0_combout\ = (\arith_logic_unity|Mux29~1_combout\ & (((\arith_logic_unity|Mux28~1_combout\)))) # (!\arith_logic_unity|Mux29~1_combout\ & ((\arith_logic_unity|Mux28~1_combout\ & ((\data_memory|possible_outputs[2][27]~combout\))) # 
-- (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[0][27]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][27]~combout\,
	datab => \data_memory|possible_outputs[2][27]~combout\,
	datac => \arith_logic_unity|Mux29~1_combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux4~0_combout\);

-- Location: LCCOMB_X89_Y45_N4
\data_memory|possible_outputs[1][27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][27]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux4~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][27]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux4~1_combout\,
	datac => \data_memory|possible_outputs[1][27]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][27]~combout\);

-- Location: LCCOMB_X88_Y45_N26
\data_memory|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux4~1_combout\ = (\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|Mux4~0_combout\ & (\data_memory|possible_outputs[3][27]~combout\)) # (!\data_memory|Mux4~0_combout\ & ((\data_memory|possible_outputs[1][27]~combout\))))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (((\data_memory|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~1_combout\,
	datab => \data_memory|possible_outputs[3][27]~combout\,
	datac => \data_memory|Mux4~0_combout\,
	datad => \data_memory|possible_outputs[1][27]~combout\,
	combout => \data_memory|Mux4~1_combout\);

-- Location: LCCOMB_X90_Y43_N0
\register_file|registers:0:regx|Q~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~65_combout\ = (\arith_logic_unity|Add0~117_combout\ & ((\register_file|registers:0:regx|Q~56_combout\) # ((\register_file|registers:0:regx|Q~46_combout\ & \data_memory|Mux4~1_combout\)))) # 
-- (!\arith_logic_unity|Add0~117_combout\ & (\register_file|registers:0:regx|Q~46_combout\ & ((\data_memory|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~117_combout\,
	datab => \register_file|registers:0:regx|Q~46_combout\,
	datac => \register_file|registers:0:regx|Q~56_combout\,
	datad => \data_memory|Mux4~1_combout\,
	combout => \register_file|registers:0:regx|Q~65_combout\);

-- Location: LCCOMB_X90_Y43_N14
\register_file|registers:0:regx|Q~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~66_combout\ = (\register_file|registers:0:regx|Q~65_combout\) # ((\register_file|registers:0:regx|Q~58_combout\ & (\aluOp2[27]~64_combout\ $ (\register_file|mux1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[27]~64_combout\,
	datab => \register_file|registers:0:regx|Q~58_combout\,
	datac => \register_file|registers:0:regx|Q~65_combout\,
	datad => \register_file|mux1|Mux4~0_combout\,
	combout => \register_file|registers:0:regx|Q~66_combout\);

-- Location: FF_X91_Y47_N31
\register_file|registers:2:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~66_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(27));

-- Location: LCCOMB_X91_Y47_N8
\register_file|mux2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux4~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:2:regx|Q\(27)) # ((\instruction_memory|Mux6~2_combout\)))) # (!\instruction_memory|Mux5~1_combout\ & (((\register_file|registers:0:regx|Q\(27) & 
-- !\instruction_memory|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(27),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(27),
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux4~0_combout\);

-- Location: FF_X90_Y43_N19
\register_file|registers:3:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~66_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(27));

-- Location: FF_X90_Y43_N13
\register_file|registers:1:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~66_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(27));

-- Location: LCCOMB_X90_Y43_N18
\register_file|mux2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux4~1_combout\ = (\register_file|mux2|Mux4~0_combout\ & (((\register_file|registers:3:regx|Q\(27))) # (!\instruction_memory|Mux6~2_combout\))) # (!\register_file|mux2|Mux4~0_combout\ & (\instruction_memory|Mux6~2_combout\ & 
-- ((\register_file|registers:1:regx|Q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux4~0_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:3:regx|Q\(27),
	datad => \register_file|registers:1:regx|Q\(27),
	combout => \register_file|mux2|Mux4~1_combout\);

-- Location: LCCOMB_X92_Y43_N2
\arith_logic_unity|Add0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~131_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux4~1_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- ((\control|aluSrc~0_combout\) # ((!\register_file|mux2|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \register_file|mux2|Mux4~1_combout\,
	datad => \control|aluControl[2]~2_combout\,
	combout => \arith_logic_unity|Add0~131_combout\);

-- Location: LCCOMB_X91_Y43_N10
\arith_logic_unity|Add0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~119_combout\ = (\arith_logic_unity|Add0~130_combout\ & ((\register_file|mux1|Mux3~0_combout\ & (!\arith_logic_unity|Add0~118\)) # (!\register_file|mux1|Mux3~0_combout\ & ((\arith_logic_unity|Add0~118\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~130_combout\ & ((\register_file|mux1|Mux3~0_combout\ & (\arith_logic_unity|Add0~118\ & VCC)) # (!\register_file|mux1|Mux3~0_combout\ & (!\arith_logic_unity|Add0~118\))))
-- \arith_logic_unity|Add0~120\ = CARRY((\arith_logic_unity|Add0~130_combout\ & ((!\arith_logic_unity|Add0~118\) # (!\register_file|mux1|Mux3~0_combout\))) # (!\arith_logic_unity|Add0~130_combout\ & (!\register_file|mux1|Mux3~0_combout\ & 
-- !\arith_logic_unity|Add0~118\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~130_combout\,
	datab => \register_file|mux1|Mux3~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~118\,
	combout => \arith_logic_unity|Add0~119_combout\,
	cout => \arith_logic_unity|Add0~120\);

-- Location: LCCOMB_X89_Y49_N0
\register_file|registers:0:regx|Q~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~63_combout\ = (\register_file|registers:0:regx|Q~46_combout\ & ((\data_memory|Mux3~1_combout\) # ((\register_file|registers:0:regx|Q~56_combout\ & \arith_logic_unity|Add0~119_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~46_combout\ & (\register_file|registers:0:regx|Q~56_combout\ & ((\arith_logic_unity|Add0~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~46_combout\,
	datab => \register_file|registers:0:regx|Q~56_combout\,
	datac => \data_memory|Mux3~1_combout\,
	datad => \arith_logic_unity|Add0~119_combout\,
	combout => \register_file|registers:0:regx|Q~63_combout\);

-- Location: LCCOMB_X89_Y49_N28
\aluOp2[28]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[28]~63_combout\ = (\register_file|mux2|Mux3~1_combout\ & ((\instruction_memory|Mux9~0_combout\) # ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(5),
	datac => \instruction_memory|Mux3~2_combout\,
	datad => \register_file|mux2|Mux3~1_combout\,
	combout => \aluOp2[28]~63_combout\);

-- Location: LCCOMB_X89_Y49_N30
\register_file|registers:0:regx|Q~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~64_combout\ = (\register_file|registers:0:regx|Q~63_combout\) # ((\register_file|registers:0:regx|Q~58_combout\ & (\register_file|mux1|Mux3~0_combout\ $ (\aluOp2[28]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~58_combout\,
	datab => \register_file|mux1|Mux3~0_combout\,
	datac => \register_file|registers:0:regx|Q~63_combout\,
	datad => \aluOp2[28]~63_combout\,
	combout => \register_file|registers:0:regx|Q~64_combout\);

-- Location: FF_X90_Y47_N27
\register_file|registers:1:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~64_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(28));

-- Location: LCCOMB_X90_Y47_N26
\register_file|mux2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux3~0_combout\ = (\instruction_memory|Mux6~2_combout\ & ((\instruction_memory|Mux5~1_combout\) # ((\register_file|registers:1:regx|Q\(28))))) # (!\instruction_memory|Mux6~2_combout\ & (!\instruction_memory|Mux5~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~2_combout\,
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(28),
	datad => \register_file|registers:0:regx|Q\(28),
	combout => \register_file|mux2|Mux3~0_combout\);

-- Location: FF_X89_Y49_N7
\register_file|registers:3:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~64_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(28));

-- Location: LCCOMB_X89_Y49_N6
\register_file|mux2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux3~1_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|mux2|Mux3~0_combout\ & (\register_file|registers:3:regx|Q\(28))) # (!\register_file|mux2|Mux3~0_combout\ & ((\register_file|registers:2:regx|Q\(28)))))) # 
-- (!\instruction_memory|Mux5~1_combout\ & (\register_file|mux2|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|mux2|Mux3~0_combout\,
	datac => \register_file|registers:3:regx|Q\(28),
	datad => \register_file|registers:2:regx|Q\(28),
	combout => \register_file|mux2|Mux3~1_combout\);

-- Location: LCCOMB_X91_Y46_N18
\arith_logic_unity|Add0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~130_combout\ = (\control|aluControl[2]~4_combout\ & (\control|aluControl[2]~2_combout\ $ (((\control|aluSrc~0_combout\) # (!\register_file|mux2|Mux3~1_combout\))))) # (!\control|aluControl[2]~4_combout\ & 
-- ((\control|aluSrc~0_combout\) # ((!\register_file|mux2|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \control|aluControl[2]~2_combout\,
	datad => \register_file|mux2|Mux3~1_combout\,
	combout => \arith_logic_unity|Add0~130_combout\);

-- Location: LCCOMB_X91_Y43_N12
\arith_logic_unity|Add0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~121_combout\ = ((\register_file|mux1|Mux2~0_combout\ $ (\arith_logic_unity|Add0~129_combout\ $ (\arith_logic_unity|Add0~120\)))) # (GND)
-- \arith_logic_unity|Add0~122\ = CARRY((\register_file|mux1|Mux2~0_combout\ & ((!\arith_logic_unity|Add0~120\) # (!\arith_logic_unity|Add0~129_combout\))) # (!\register_file|mux1|Mux2~0_combout\ & (!\arith_logic_unity|Add0~129_combout\ & 
-- !\arith_logic_unity|Add0~120\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux2~0_combout\,
	datab => \arith_logic_unity|Add0~129_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~120\,
	combout => \arith_logic_unity|Add0~121_combout\,
	cout => \arith_logic_unity|Add0~122\);

-- Location: LCCOMB_X92_Y44_N10
\data_memory|possible_outputs[0][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][29]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux2~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][29]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][29]~combout\,
	datac => \register_file|mux2|Mux2~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][29]~combout\);

-- Location: LCCOMB_X92_Y44_N4
\data_memory|possible_outputs[2][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][29]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux2~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][29]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[2][29]~combout\,
	datac => \register_file|mux2|Mux2~1_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][29]~combout\);

-- Location: LCCOMB_X92_Y44_N24
\data_memory|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux2~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\data_memory|possible_outputs[2][29]~combout\) # (\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & (\data_memory|possible_outputs[0][29]~combout\ & 
-- ((!\arith_logic_unity|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][29]~combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[2][29]~combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux2~0_combout\);

-- Location: LCCOMB_X89_Y44_N30
\data_memory|possible_outputs[3][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][29]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux2~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][29]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][29]~combout\,
	datab => \register_file|mux2|Mux2~1_combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	combout => \data_memory|possible_outputs[3][29]~combout\);

-- Location: LCCOMB_X92_Y44_N2
\data_memory|possible_outputs[1][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][29]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux2~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][29]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux2~1_combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \data_memory|possible_outputs[1][29]~combout\,
	combout => \data_memory|possible_outputs[1][29]~combout\);

-- Location: LCCOMB_X92_Y44_N30
\data_memory|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux2~1_combout\ = (\data_memory|Mux2~0_combout\ & (((\data_memory|possible_outputs[3][29]~combout\)) # (!\arith_logic_unity|Mux29~1_combout\))) # (!\data_memory|Mux2~0_combout\ & (\arith_logic_unity|Mux29~1_combout\ & 
-- ((\data_memory|possible_outputs[1][29]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux2~0_combout\,
	datab => \arith_logic_unity|Mux29~1_combout\,
	datac => \data_memory|possible_outputs[3][29]~combout\,
	datad => \data_memory|possible_outputs[1][29]~combout\,
	combout => \data_memory|Mux2~1_combout\);

-- Location: LCCOMB_X91_Y43_N30
\register_file|registers:0:regx|Q~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~61_combout\ = (\register_file|registers:0:regx|Q~46_combout\ & ((\data_memory|Mux2~1_combout\) # ((\arith_logic_unity|Add0~121_combout\ & \register_file|registers:0:regx|Q~56_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~46_combout\ & (\arith_logic_unity|Add0~121_combout\ & ((\register_file|registers:0:regx|Q~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~46_combout\,
	datab => \arith_logic_unity|Add0~121_combout\,
	datac => \data_memory|Mux2~1_combout\,
	datad => \register_file|registers:0:regx|Q~56_combout\,
	combout => \register_file|registers:0:regx|Q~61_combout\);

-- Location: LCCOMB_X90_Y48_N18
\aluOp2[29]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[29]~62_combout\ = (\register_file|mux2|Mux2~1_combout\ & ((\instruction_memory|Mux9~0_combout\) # ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux2~1_combout\,
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \instruction_memory|Mux3~2_combout\,
	datad => \PC|Q\(5),
	combout => \aluOp2[29]~62_combout\);

-- Location: LCCOMB_X91_Y43_N28
\register_file|registers:0:regx|Q~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~62_combout\ = (\register_file|registers:0:regx|Q~61_combout\) # ((\register_file|registers:0:regx|Q~58_combout\ & (\aluOp2[29]~62_combout\ $ (\register_file|mux1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~61_combout\,
	datab => \aluOp2[29]~62_combout\,
	datac => \register_file|mux1|Mux2~0_combout\,
	datad => \register_file|registers:0:regx|Q~58_combout\,
	combout => \register_file|registers:0:regx|Q~62_combout\);

-- Location: FF_X91_Y43_N1
\register_file|registers:2:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~62_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(29));

-- Location: LCCOMB_X90_Y47_N22
\register_file|mux1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux2~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(29))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(29),
	datab => \instruction_memory|Mux9~1_combout\,
	datad => \register_file|registers:0:regx|Q\(29),
	combout => \register_file|mux1|Mux2~0_combout\);

-- Location: LCCOMB_X91_Y43_N14
\arith_logic_unity|Add0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~123_combout\ = (\arith_logic_unity|Add0~128_combout\ & ((\register_file|mux1|Mux1~0_combout\ & (!\arith_logic_unity|Add0~122\)) # (!\register_file|mux1|Mux1~0_combout\ & ((\arith_logic_unity|Add0~122\) # (GND))))) # 
-- (!\arith_logic_unity|Add0~128_combout\ & ((\register_file|mux1|Mux1~0_combout\ & (\arith_logic_unity|Add0~122\ & VCC)) # (!\register_file|mux1|Mux1~0_combout\ & (!\arith_logic_unity|Add0~122\))))
-- \arith_logic_unity|Add0~124\ = CARRY((\arith_logic_unity|Add0~128_combout\ & ((!\arith_logic_unity|Add0~122\) # (!\register_file|mux1|Mux1~0_combout\))) # (!\arith_logic_unity|Add0~128_combout\ & (!\register_file|mux1|Mux1~0_combout\ & 
-- !\arith_logic_unity|Add0~122\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~128_combout\,
	datab => \register_file|mux1|Mux1~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~122\,
	combout => \arith_logic_unity|Add0~123_combout\,
	cout => \arith_logic_unity|Add0~124\);

-- Location: LCCOMB_X88_Y45_N10
\data_memory|possible_outputs[2][30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][30]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux1~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][30]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][30]~combout\,
	datab => \register_file|mux2|Mux1~1_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][30]~combout\);

-- Location: LCCOMB_X88_Y45_N30
\data_memory|possible_outputs[0][30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][30]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\register_file|mux2|Mux1~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\data_memory|possible_outputs[0][30]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][30]~combout\,
	datab => \register_file|mux2|Mux1~1_combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][30]~combout\);

-- Location: LCCOMB_X88_Y45_N4
\data_memory|possible_outputs[1][30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][30]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\register_file|mux2|Mux1~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\data_memory|possible_outputs[1][30]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[1][30]~combout\,
	datac => \data_memory|Decoder0~1clkctrl_outclk\,
	datad => \register_file|mux2|Mux1~1_combout\,
	combout => \data_memory|possible_outputs[1][30]~combout\);

-- Location: LCCOMB_X88_Y45_N12
\data_memory|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux1~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[1][30]~combout\))) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[0][30]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[0][30]~combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[1][30]~combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux1~0_combout\);

-- Location: LCCOMB_X89_Y45_N18
\data_memory|possible_outputs[3][30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][30]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux1~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][30]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|possible_outputs[3][30]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux1~1_combout\,
	combout => \data_memory|possible_outputs[3][30]~combout\);

-- Location: LCCOMB_X88_Y45_N6
\data_memory|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux1~1_combout\ = (\data_memory|Mux1~0_combout\ & (((\data_memory|possible_outputs[3][30]~combout\) # (!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux1~0_combout\ & (\data_memory|possible_outputs[2][30]~combout\ & 
-- (\arith_logic_unity|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][30]~combout\,
	datab => \data_memory|Mux1~0_combout\,
	datac => \arith_logic_unity|Mux28~1_combout\,
	datad => \data_memory|possible_outputs[3][30]~combout\,
	combout => \data_memory|Mux1~1_combout\);

-- Location: LCCOMB_X91_Y43_N26
\register_file|registers:0:regx|Q~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~59_combout\ = (\register_file|registers:0:regx|Q~46_combout\ & ((\data_memory|Mux1~1_combout\) # ((\register_file|registers:0:regx|Q~56_combout\ & \arith_logic_unity|Add0~123_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~46_combout\ & (\register_file|registers:0:regx|Q~56_combout\ & (\arith_logic_unity|Add0~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~46_combout\,
	datab => \register_file|registers:0:regx|Q~56_combout\,
	datac => \arith_logic_unity|Add0~123_combout\,
	datad => \data_memory|Mux1~1_combout\,
	combout => \register_file|registers:0:regx|Q~59_combout\);

-- Location: LCCOMB_X91_Y43_N24
\register_file|registers:0:regx|Q~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~60_combout\ = (\register_file|registers:0:regx|Q~59_combout\) # ((\register_file|registers:0:regx|Q~58_combout\ & (\aluOp2[30]~61_combout\ $ (\register_file|mux1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[30]~61_combout\,
	datab => \register_file|mux1|Mux1~0_combout\,
	datac => \register_file|registers:0:regx|Q~59_combout\,
	datad => \register_file|registers:0:regx|Q~58_combout\,
	combout => \register_file|registers:0:regx|Q~60_combout\);

-- Location: FF_X91_Y43_N17
\register_file|registers:2:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~60_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(30));

-- Location: FF_X89_Y45_N29
\register_file|registers:3:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~60_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(30));

-- Location: FF_X90_Y47_N7
\register_file|registers:1:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~60_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(30));

-- Location: LCCOMB_X90_Y47_N6
\register_file|mux2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux1~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\instruction_memory|Mux6~2_combout\)) # (!\instruction_memory|Mux5~1_combout\ & ((\instruction_memory|Mux6~2_combout\ & (\register_file|registers:1:regx|Q\(30))) # 
-- (!\instruction_memory|Mux6~2_combout\ & ((\register_file|registers:0:regx|Q\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \instruction_memory|Mux6~2_combout\,
	datac => \register_file|registers:1:regx|Q\(30),
	datad => \register_file|registers:0:regx|Q\(30),
	combout => \register_file|mux2|Mux1~0_combout\);

-- Location: LCCOMB_X89_Y45_N28
\register_file|mux2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux1~1_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|mux2|Mux1~0_combout\ & ((\register_file|registers:3:regx|Q\(30)))) # (!\register_file|mux2|Mux1~0_combout\ & (\register_file|registers:2:regx|Q\(30))))) # 
-- (!\instruction_memory|Mux5~1_combout\ & (((\register_file|mux2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(30),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:3:regx|Q\(30),
	datad => \register_file|mux2|Mux1~0_combout\,
	combout => \register_file|mux2|Mux1~1_combout\);

-- Location: LCCOMB_X89_Y45_N0
\arith_logic_unity|Add0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~128_combout\ = (\control|aluSrc~0_combout\ & (((!\control|aluControl[2]~2_combout\) # (!\control|aluControl[2]~4_combout\)))) # (!\control|aluSrc~0_combout\ & (\register_file|mux2|Mux1~1_combout\ $ 
-- (((!\control|aluControl[2]~2_combout\) # (!\control|aluControl[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \register_file|mux2|Mux1~1_combout\,
	datac => \control|aluControl[2]~4_combout\,
	datad => \control|aluControl[2]~2_combout\,
	combout => \arith_logic_unity|Add0~128_combout\);

-- Location: LCCOMB_X91_Y43_N16
\arith_logic_unity|Add0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~125_combout\ = \arith_logic_unity|Add0~127_combout\ $ (\arith_logic_unity|Add0~124\ $ (\register_file|mux1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~127_combout\,
	datad => \register_file|mux1|Mux0~0_combout\,
	cin => \arith_logic_unity|Add0~124\,
	combout => \arith_logic_unity|Add0~125_combout\);

-- Location: LCCOMB_X90_Y47_N10
\register_file|registers:0:regx|Q~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~57_combout\ = (\register_file|registers:0:regx|Q~115_combout\) # ((\register_file|registers:0:regx|Q~55_combout\) # ((\register_file|registers:0:regx|Q~56_combout\ & \arith_logic_unity|Add0~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~115_combout\,
	datab => \register_file|registers:0:regx|Q~56_combout\,
	datac => \register_file|registers:0:regx|Q~55_combout\,
	datad => \arith_logic_unity|Add0~125_combout\,
	combout => \register_file|registers:0:regx|Q~57_combout\);

-- Location: LCCOMB_X89_Y47_N0
\register_file|registers:2:regx|Q[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[31]~feeder_combout\ = \register_file|registers:0:regx|Q~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~57_combout\,
	combout => \register_file|registers:2:regx|Q[31]~feeder_combout\);

-- Location: FF_X89_Y47_N1
\register_file|registers:2:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(31));

-- Location: LCCOMB_X90_Y47_N0
\register_file|mux1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux0~0_combout\ = (\instruction_memory|Mux9~1_combout\ & (\register_file|registers:2:regx|Q\(31))) # (!\instruction_memory|Mux9~1_combout\ & ((\register_file|registers:0:regx|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(31),
	datac => \register_file|registers:0:regx|Q\(31),
	datad => \instruction_memory|Mux9~1_combout\,
	combout => \register_file|mux1|Mux0~0_combout\);

-- Location: LCCOMB_X91_Y50_N8
\aluOp2[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[23]~68_combout\ = (\register_file|mux2|Mux8~1_combout\ & ((\PC|Q\(5)) # ((\instruction_memory|Mux9~0_combout\) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \register_file|mux2|Mux8~1_combout\,
	datac => \instruction_memory|Mux9~0_combout\,
	datad => \instruction_memory|Mux3~2_combout\,
	combout => \aluOp2[23]~68_combout\);

-- Location: LCCOMB_X91_Y45_N0
\aluOp2[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[22]~69_combout\ = (\register_file|mux2|Mux9~1_combout\ & ((\PC|Q\(5)) # ((\instruction_memory|Mux9~0_combout\) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux9~1_combout\,
	datab => \PC|Q\(5),
	datac => \instruction_memory|Mux3~2_combout\,
	datad => \instruction_memory|Mux9~0_combout\,
	combout => \aluOp2[22]~69_combout\);

-- Location: LCCOMB_X91_Y46_N30
\aluOp2[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[21]~70_combout\ = (\register_file|mux2|Mux10~1_combout\ & ((\PC|Q\(5)) # ((\instruction_memory|Mux9~0_combout\) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|mux2|Mux10~1_combout\,
	datad => \instruction_memory|Mux3~2_combout\,
	combout => \aluOp2[21]~70_combout\);

-- Location: LCCOMB_X92_Y45_N24
\aluOp2[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[20]~71_combout\ = (\register_file|mux2|Mux11~1_combout\ & ((\instruction_memory|Mux9~0_combout\) # ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(5),
	datac => \register_file|mux2|Mux11~1_combout\,
	datad => \instruction_memory|Mux3~2_combout\,
	combout => \aluOp2[20]~71_combout\);

-- Location: LCCOMB_X94_Y45_N30
\aluOp2[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[19]~72_combout\ = (\register_file|mux2|Mux12~1_combout\ & (((\instruction_memory|Mux9~0_combout\) # (\PC|Q\(5))) # (!\instruction_memory|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux3~2_combout\,
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \PC|Q\(5),
	datad => \register_file|mux2|Mux12~1_combout\,
	combout => \aluOp2[19]~72_combout\);

-- Location: LCCOMB_X90_Y42_N10
\aluOp2[18]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[18]~73_combout\ = (\register_file|mux2|Mux13~1_combout\ & ((\instruction_memory|Mux9~0_combout\) # ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \register_file|mux2|Mux13~1_combout\,
	datac => \instruction_memory|Mux3~2_combout\,
	datad => \PC|Q\(5),
	combout => \aluOp2[18]~73_combout\);

-- Location: LCCOMB_X91_Y46_N0
\aluOp2[17]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[17]~74_combout\ = (\register_file|mux2|Mux14~1_combout\ & (((\instruction_memory|Mux9~0_combout\) # (\PC|Q\(5))) # (!\instruction_memory|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux3~2_combout\,
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \PC|Q\(5),
	datad => \register_file|mux2|Mux14~1_combout\,
	combout => \aluOp2[17]~74_combout\);

-- Location: LCCOMB_X91_Y42_N2
\aluOp2[16]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[16]~75_combout\ = (\register_file|mux2|Mux15~1_combout\ & ((\instruction_memory|Mux9~0_combout\) # ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \instruction_memory|Mux3~2_combout\,
	datac => \register_file|mux2|Mux15~1_combout\,
	datad => \PC|Q\(5),
	combout => \aluOp2[16]~75_combout\);

-- Location: LCCOMB_X91_Y46_N26
\aluOp2[15]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[15]~76_combout\ = (\register_file|mux2|Mux16~1_combout\ & (((\instruction_memory|Mux9~0_combout\) # (\PC|Q\(5))) # (!\instruction_memory|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux3~2_combout\,
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \PC|Q\(5),
	datad => \register_file|mux2|Mux16~1_combout\,
	combout => \aluOp2[15]~76_combout\);

-- Location: LCCOMB_X90_Y44_N22
\aluOp2[14]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[14]~77_combout\ = (\register_file|mux2|Mux17~1_combout\ & (((\instruction_memory|Mux9~0_combout\) # (\PC|Q\(5))) # (!\instruction_memory|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux3~2_combout\,
	datab => \register_file|mux2|Mux17~1_combout\,
	datac => \instruction_memory|Mux9~0_combout\,
	datad => \PC|Q\(5),
	combout => \aluOp2[14]~77_combout\);

-- Location: LCCOMB_X91_Y48_N14
\aluOp2[13]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[13]~78_combout\ = (\register_file|mux2|Mux18~1_combout\ & ((\PC|Q\(5)) # ((\instruction_memory|Mux9~0_combout\) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \instruction_memory|Mux3~2_combout\,
	datac => \instruction_memory|Mux9~0_combout\,
	datad => \register_file|mux2|Mux18~1_combout\,
	combout => \aluOp2[13]~78_combout\);

-- Location: LCCOMB_X91_Y48_N28
\aluOp2[12]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[12]~79_combout\ = (\register_file|mux2|Mux19~1_combout\ & ((\instruction_memory|Mux9~0_combout\) # ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \register_file|mux2|Mux19~1_combout\,
	datac => \instruction_memory|Mux3~2_combout\,
	datad => \PC|Q\(5),
	combout => \aluOp2[12]~79_combout\);

-- Location: LCCOMB_X90_Y50_N12
\aluOp2[11]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[11]~80_combout\ = (\register_file|mux2|Mux20~1_combout\ & ((\instruction_memory|Mux9~0_combout\) # ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(5),
	datac => \instruction_memory|Mux3~2_combout\,
	datad => \register_file|mux2|Mux20~1_combout\,
	combout => \aluOp2[11]~80_combout\);

-- Location: LCCOMB_X90_Y43_N2
\aluOp2[10]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[10]~81_combout\ = (\register_file|mux2|Mux21~1_combout\ & ((\PC|Q\(5)) # ((\instruction_memory|Mux9~0_combout\) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|mux2|Mux21~1_combout\,
	datad => \instruction_memory|Mux3~2_combout\,
	combout => \aluOp2[10]~81_combout\);

-- Location: LCCOMB_X90_Y44_N0
\aluOp2[9]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[9]~82_combout\ = (\register_file|mux2|Mux22~1_combout\ & (((\instruction_memory|Mux9~0_combout\) # (\PC|Q\(5))) # (!\instruction_memory|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux3~2_combout\,
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \register_file|mux2|Mux22~1_combout\,
	datad => \PC|Q\(5),
	combout => \aluOp2[9]~82_combout\);

-- Location: LCCOMB_X90_Y48_N8
\aluOp2[8]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[8]~83_combout\ = (\register_file|mux2|Mux23~1_combout\ & ((\instruction_memory|Mux9~0_combout\) # ((\PC|Q\(5)) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux23~1_combout\,
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \instruction_memory|Mux3~2_combout\,
	datad => \PC|Q\(5),
	combout => \aluOp2[8]~83_combout\);

-- Location: LCCOMB_X91_Y50_N10
\aluOp2[7]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[7]~84_combout\ = (\register_file|mux2|Mux24~1_combout\ & ((\PC|Q\(5)) # ((\instruction_memory|Mux9~0_combout\) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \instruction_memory|Mux3~2_combout\,
	datac => \instruction_memory|Mux9~0_combout\,
	datad => \register_file|mux2|Mux24~1_combout\,
	combout => \aluOp2[7]~84_combout\);

-- Location: LCCOMB_X91_Y49_N14
\aluOp2[6]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[6]~85_combout\ = (\register_file|mux2|Mux25~1_combout\ & ((\PC|Q\(5)) # ((\instruction_memory|Mux9~0_combout\) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \instruction_memory|Mux3~2_combout\,
	datac => \instruction_memory|Mux9~0_combout\,
	datad => \register_file|mux2|Mux25~1_combout\,
	combout => \aluOp2[6]~85_combout\);

-- Location: LCCOMB_X89_Y45_N22
\aluOp2[5]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[5]~86_combout\ = (\register_file|mux2|Mux26~1_combout\ & ((\PC|Q\(5)) # ((\instruction_memory|Mux9~0_combout\) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \instruction_memory|Mux9~0_combout\,
	datac => \instruction_memory|Mux3~2_combout\,
	datad => \register_file|mux2|Mux26~1_combout\,
	combout => \aluOp2[5]~86_combout\);

-- Location: LCCOMB_X91_Y49_N18
\aluOp2[4]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[4]~59_combout\ = (\register_file|mux2|Mux27~1_combout\ & (((\PC|Q\(5)) # (\instruction_memory|Mux9~0_combout\)) # (!\instruction_memory|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux3~2_combout\,
	datab => \PC|Q\(5),
	datac => \instruction_memory|Mux9~0_combout\,
	datad => \register_file|mux2|Mux27~1_combout\,
	combout => \aluOp2[4]~59_combout\);

-- Location: LCCOMB_X91_Y46_N20
\aluOp2[0]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[0]~87_combout\ = (\register_file|mux2|Mux31~1_combout\ & ((\PC|Q\(5)) # ((\instruction_memory|Mux9~0_combout\) # (!\instruction_memory|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \instruction_memory|Mux3~2_combout\,
	datac => \instruction_memory|Mux9~0_combout\,
	datad => \register_file|mux2|Mux31~1_combout\,
	combout => \aluOp2[0]~87_combout\);

-- Location: LCCOMB_X90_Y46_N0
\arith_logic_unity|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~1_cout\ = CARRY((\aluOp2[0]~87_combout\ & !\register_file|mux1|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[0]~87_combout\,
	datab => \register_file|mux1|Mux31~0_combout\,
	datad => VCC,
	cout => \arith_logic_unity|LessThan0~1_cout\);

-- Location: LCCOMB_X90_Y46_N2
\arith_logic_unity|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~3_cout\ = CARRY((\register_file|mux1|Mux30~0_combout\ & ((!\arith_logic_unity|LessThan0~1_cout\) # (!\aluOp2[1]~58_combout\))) # (!\register_file|mux1|Mux30~0_combout\ & (!\aluOp2[1]~58_combout\ & 
-- !\arith_logic_unity|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux30~0_combout\,
	datab => \aluOp2[1]~58_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~1_cout\,
	cout => \arith_logic_unity|LessThan0~3_cout\);

-- Location: LCCOMB_X90_Y46_N4
\arith_logic_unity|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~5_cout\ = CARRY((\register_file|mux1|Mux29~0_combout\ & (\aluOp2[2]~57_combout\ & !\arith_logic_unity|LessThan0~3_cout\)) # (!\register_file|mux1|Mux29~0_combout\ & ((\aluOp2[2]~57_combout\) # 
-- (!\arith_logic_unity|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux29~0_combout\,
	datab => \aluOp2[2]~57_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~3_cout\,
	cout => \arith_logic_unity|LessThan0~5_cout\);

-- Location: LCCOMB_X90_Y46_N6
\arith_logic_unity|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~7_cout\ = CARRY((\register_file|mux1|Mux28~0_combout\ & ((!\arith_logic_unity|LessThan0~5_cout\) # (!\aluOp2[3]~56_combout\))) # (!\register_file|mux1|Mux28~0_combout\ & (!\aluOp2[3]~56_combout\ & 
-- !\arith_logic_unity|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux28~0_combout\,
	datab => \aluOp2[3]~56_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~5_cout\,
	cout => \arith_logic_unity|LessThan0~7_cout\);

-- Location: LCCOMB_X90_Y46_N8
\arith_logic_unity|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~9_cout\ = CARRY((\register_file|mux1|Mux27~0_combout\ & (\aluOp2[4]~59_combout\ & !\arith_logic_unity|LessThan0~7_cout\)) # (!\register_file|mux1|Mux27~0_combout\ & ((\aluOp2[4]~59_combout\) # 
-- (!\arith_logic_unity|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux27~0_combout\,
	datab => \aluOp2[4]~59_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~7_cout\,
	cout => \arith_logic_unity|LessThan0~9_cout\);

-- Location: LCCOMB_X90_Y46_N10
\arith_logic_unity|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~11_cout\ = CARRY((\aluOp2[5]~86_combout\ & (\register_file|mux1|Mux26~0_combout\ & !\arith_logic_unity|LessThan0~9_cout\)) # (!\aluOp2[5]~86_combout\ & ((\register_file|mux1|Mux26~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[5]~86_combout\,
	datab => \register_file|mux1|Mux26~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~9_cout\,
	cout => \arith_logic_unity|LessThan0~11_cout\);

-- Location: LCCOMB_X90_Y46_N12
\arith_logic_unity|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~13_cout\ = CARRY((\register_file|mux1|Mux25~0_combout\ & (\aluOp2[6]~85_combout\ & !\arith_logic_unity|LessThan0~11_cout\)) # (!\register_file|mux1|Mux25~0_combout\ & ((\aluOp2[6]~85_combout\) # 
-- (!\arith_logic_unity|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~0_combout\,
	datab => \aluOp2[6]~85_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~11_cout\,
	cout => \arith_logic_unity|LessThan0~13_cout\);

-- Location: LCCOMB_X90_Y46_N14
\arith_logic_unity|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~15_cout\ = CARRY((\register_file|mux1|Mux24~0_combout\ & ((!\arith_logic_unity|LessThan0~13_cout\) # (!\aluOp2[7]~84_combout\))) # (!\register_file|mux1|Mux24~0_combout\ & (!\aluOp2[7]~84_combout\ & 
-- !\arith_logic_unity|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux24~0_combout\,
	datab => \aluOp2[7]~84_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~13_cout\,
	cout => \arith_logic_unity|LessThan0~15_cout\);

-- Location: LCCOMB_X90_Y46_N16
\arith_logic_unity|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~17_cout\ = CARRY((\register_file|mux1|Mux23~0_combout\ & (\aluOp2[8]~83_combout\ & !\arith_logic_unity|LessThan0~15_cout\)) # (!\register_file|mux1|Mux23~0_combout\ & ((\aluOp2[8]~83_combout\) # 
-- (!\arith_logic_unity|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux23~0_combout\,
	datab => \aluOp2[8]~83_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~15_cout\,
	cout => \arith_logic_unity|LessThan0~17_cout\);

-- Location: LCCOMB_X90_Y46_N18
\arith_logic_unity|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~19_cout\ = CARRY((\register_file|mux1|Mux22~0_combout\ & ((!\arith_logic_unity|LessThan0~17_cout\) # (!\aluOp2[9]~82_combout\))) # (!\register_file|mux1|Mux22~0_combout\ & (!\aluOp2[9]~82_combout\ & 
-- !\arith_logic_unity|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux22~0_combout\,
	datab => \aluOp2[9]~82_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~17_cout\,
	cout => \arith_logic_unity|LessThan0~19_cout\);

-- Location: LCCOMB_X90_Y46_N20
\arith_logic_unity|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~21_cout\ = CARRY((\aluOp2[10]~81_combout\ & ((!\arith_logic_unity|LessThan0~19_cout\) # (!\register_file|mux1|Mux21~0_combout\))) # (!\aluOp2[10]~81_combout\ & (!\register_file|mux1|Mux21~0_combout\ & 
-- !\arith_logic_unity|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[10]~81_combout\,
	datab => \register_file|mux1|Mux21~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~19_cout\,
	cout => \arith_logic_unity|LessThan0~21_cout\);

-- Location: LCCOMB_X90_Y46_N22
\arith_logic_unity|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~23_cout\ = CARRY((\aluOp2[11]~80_combout\ & (\register_file|mux1|Mux20~0_combout\ & !\arith_logic_unity|LessThan0~21_cout\)) # (!\aluOp2[11]~80_combout\ & ((\register_file|mux1|Mux20~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[11]~80_combout\,
	datab => \register_file|mux1|Mux20~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~21_cout\,
	cout => \arith_logic_unity|LessThan0~23_cout\);

-- Location: LCCOMB_X90_Y46_N24
\arith_logic_unity|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~25_cout\ = CARRY((\register_file|mux1|Mux19~0_combout\ & (\aluOp2[12]~79_combout\ & !\arith_logic_unity|LessThan0~23_cout\)) # (!\register_file|mux1|Mux19~0_combout\ & ((\aluOp2[12]~79_combout\) # 
-- (!\arith_logic_unity|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux19~0_combout\,
	datab => \aluOp2[12]~79_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~23_cout\,
	cout => \arith_logic_unity|LessThan0~25_cout\);

-- Location: LCCOMB_X90_Y46_N26
\arith_logic_unity|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~27_cout\ = CARRY((\aluOp2[13]~78_combout\ & (\register_file|mux1|Mux18~0_combout\ & !\arith_logic_unity|LessThan0~25_cout\)) # (!\aluOp2[13]~78_combout\ & ((\register_file|mux1|Mux18~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[13]~78_combout\,
	datab => \register_file|mux1|Mux18~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~25_cout\,
	cout => \arith_logic_unity|LessThan0~27_cout\);

-- Location: LCCOMB_X90_Y46_N28
\arith_logic_unity|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~29_cout\ = CARRY((\aluOp2[14]~77_combout\ & ((!\arith_logic_unity|LessThan0~27_cout\) # (!\register_file|mux1|Mux17~0_combout\))) # (!\aluOp2[14]~77_combout\ & (!\register_file|mux1|Mux17~0_combout\ & 
-- !\arith_logic_unity|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[14]~77_combout\,
	datab => \register_file|mux1|Mux17~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~27_cout\,
	cout => \arith_logic_unity|LessThan0~29_cout\);

-- Location: LCCOMB_X90_Y46_N30
\arith_logic_unity|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~31_cout\ = CARRY((\aluOp2[15]~76_combout\ & (\register_file|mux1|Mux16~0_combout\ & !\arith_logic_unity|LessThan0~29_cout\)) # (!\aluOp2[15]~76_combout\ & ((\register_file|mux1|Mux16~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[15]~76_combout\,
	datab => \register_file|mux1|Mux16~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~29_cout\,
	cout => \arith_logic_unity|LessThan0~31_cout\);

-- Location: LCCOMB_X90_Y45_N0
\arith_logic_unity|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~33_cout\ = CARRY((\aluOp2[16]~75_combout\ & ((!\arith_logic_unity|LessThan0~31_cout\) # (!\register_file|mux1|Mux15~0_combout\))) # (!\aluOp2[16]~75_combout\ & (!\register_file|mux1|Mux15~0_combout\ & 
-- !\arith_logic_unity|LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[16]~75_combout\,
	datab => \register_file|mux1|Mux15~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~31_cout\,
	cout => \arith_logic_unity|LessThan0~33_cout\);

-- Location: LCCOMB_X90_Y45_N2
\arith_logic_unity|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~35_cout\ = CARRY((\aluOp2[17]~74_combout\ & (\register_file|mux1|Mux14~0_combout\ & !\arith_logic_unity|LessThan0~33_cout\)) # (!\aluOp2[17]~74_combout\ & ((\register_file|mux1|Mux14~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[17]~74_combout\,
	datab => \register_file|mux1|Mux14~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~33_cout\,
	cout => \arith_logic_unity|LessThan0~35_cout\);

-- Location: LCCOMB_X90_Y45_N4
\arith_logic_unity|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~37_cout\ = CARRY((\aluOp2[18]~73_combout\ & ((!\arith_logic_unity|LessThan0~35_cout\) # (!\register_file|mux1|Mux13~0_combout\))) # (!\aluOp2[18]~73_combout\ & (!\register_file|mux1|Mux13~0_combout\ & 
-- !\arith_logic_unity|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[18]~73_combout\,
	datab => \register_file|mux1|Mux13~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~35_cout\,
	cout => \arith_logic_unity|LessThan0~37_cout\);

-- Location: LCCOMB_X90_Y45_N6
\arith_logic_unity|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~39_cout\ = CARRY((\aluOp2[19]~72_combout\ & (\register_file|mux1|Mux12~0_combout\ & !\arith_logic_unity|LessThan0~37_cout\)) # (!\aluOp2[19]~72_combout\ & ((\register_file|mux1|Mux12~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[19]~72_combout\,
	datab => \register_file|mux1|Mux12~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~37_cout\,
	cout => \arith_logic_unity|LessThan0~39_cout\);

-- Location: LCCOMB_X90_Y45_N8
\arith_logic_unity|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~41_cout\ = CARRY((\aluOp2[20]~71_combout\ & ((!\arith_logic_unity|LessThan0~39_cout\) # (!\register_file|mux1|Mux11~0_combout\))) # (!\aluOp2[20]~71_combout\ & (!\register_file|mux1|Mux11~0_combout\ & 
-- !\arith_logic_unity|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[20]~71_combout\,
	datab => \register_file|mux1|Mux11~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~39_cout\,
	cout => \arith_logic_unity|LessThan0~41_cout\);

-- Location: LCCOMB_X90_Y45_N10
\arith_logic_unity|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~43_cout\ = CARRY((\register_file|mux1|Mux10~0_combout\ & ((!\arith_logic_unity|LessThan0~41_cout\) # (!\aluOp2[21]~70_combout\))) # (!\register_file|mux1|Mux10~0_combout\ & (!\aluOp2[21]~70_combout\ & 
-- !\arith_logic_unity|LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux10~0_combout\,
	datab => \aluOp2[21]~70_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~41_cout\,
	cout => \arith_logic_unity|LessThan0~43_cout\);

-- Location: LCCOMB_X90_Y45_N12
\arith_logic_unity|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~45_cout\ = CARRY((\register_file|mux1|Mux9~0_combout\ & (\aluOp2[22]~69_combout\ & !\arith_logic_unity|LessThan0~43_cout\)) # (!\register_file|mux1|Mux9~0_combout\ & ((\aluOp2[22]~69_combout\) # 
-- (!\arith_logic_unity|LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux9~0_combout\,
	datab => \aluOp2[22]~69_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~43_cout\,
	cout => \arith_logic_unity|LessThan0~45_cout\);

-- Location: LCCOMB_X90_Y45_N14
\arith_logic_unity|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~47_cout\ = CARRY((\aluOp2[23]~68_combout\ & (\register_file|mux1|Mux8~0_combout\ & !\arith_logic_unity|LessThan0~45_cout\)) # (!\aluOp2[23]~68_combout\ & ((\register_file|mux1|Mux8~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[23]~68_combout\,
	datab => \register_file|mux1|Mux8~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~45_cout\,
	cout => \arith_logic_unity|LessThan0~47_cout\);

-- Location: LCCOMB_X90_Y45_N16
\arith_logic_unity|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~49_cout\ = CARRY((\aluOp2[24]~67_combout\ & ((!\arith_logic_unity|LessThan0~47_cout\) # (!\register_file|mux1|Mux7~0_combout\))) # (!\aluOp2[24]~67_combout\ & (!\register_file|mux1|Mux7~0_combout\ & 
-- !\arith_logic_unity|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[24]~67_combout\,
	datab => \register_file|mux1|Mux7~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~47_cout\,
	cout => \arith_logic_unity|LessThan0~49_cout\);

-- Location: LCCOMB_X90_Y45_N18
\arith_logic_unity|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~51_cout\ = CARRY((\register_file|mux1|Mux6~0_combout\ & ((!\arith_logic_unity|LessThan0~49_cout\) # (!\aluOp2[25]~66_combout\))) # (!\register_file|mux1|Mux6~0_combout\ & (!\aluOp2[25]~66_combout\ & 
-- !\arith_logic_unity|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux6~0_combout\,
	datab => \aluOp2[25]~66_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~49_cout\,
	cout => \arith_logic_unity|LessThan0~51_cout\);

-- Location: LCCOMB_X90_Y45_N20
\arith_logic_unity|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~53_cout\ = CARRY((\register_file|mux1|Mux5~0_combout\ & (\aluOp2[26]~65_combout\ & !\arith_logic_unity|LessThan0~51_cout\)) # (!\register_file|mux1|Mux5~0_combout\ & ((\aluOp2[26]~65_combout\) # 
-- (!\arith_logic_unity|LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux5~0_combout\,
	datab => \aluOp2[26]~65_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~51_cout\,
	cout => \arith_logic_unity|LessThan0~53_cout\);

-- Location: LCCOMB_X90_Y45_N22
\arith_logic_unity|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~55_cout\ = CARRY((\register_file|mux1|Mux4~0_combout\ & ((!\arith_logic_unity|LessThan0~53_cout\) # (!\aluOp2[27]~64_combout\))) # (!\register_file|mux1|Mux4~0_combout\ & (!\aluOp2[27]~64_combout\ & 
-- !\arith_logic_unity|LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux4~0_combout\,
	datab => \aluOp2[27]~64_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~53_cout\,
	cout => \arith_logic_unity|LessThan0~55_cout\);

-- Location: LCCOMB_X90_Y45_N24
\arith_logic_unity|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~57_cout\ = CARRY((\aluOp2[28]~63_combout\ & ((!\arith_logic_unity|LessThan0~55_cout\) # (!\register_file|mux1|Mux3~0_combout\))) # (!\aluOp2[28]~63_combout\ & (!\register_file|mux1|Mux3~0_combout\ & 
-- !\arith_logic_unity|LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[28]~63_combout\,
	datab => \register_file|mux1|Mux3~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~55_cout\,
	cout => \arith_logic_unity|LessThan0~57_cout\);

-- Location: LCCOMB_X90_Y45_N26
\arith_logic_unity|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~59_cout\ = CARRY((\aluOp2[29]~62_combout\ & (\register_file|mux1|Mux2~0_combout\ & !\arith_logic_unity|LessThan0~57_cout\)) # (!\aluOp2[29]~62_combout\ & ((\register_file|mux1|Mux2~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[29]~62_combout\,
	datab => \register_file|mux1|Mux2~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~57_cout\,
	cout => \arith_logic_unity|LessThan0~59_cout\);

-- Location: LCCOMB_X90_Y45_N28
\arith_logic_unity|LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~61_cout\ = CARRY((\aluOp2[30]~61_combout\ & ((!\arith_logic_unity|LessThan0~59_cout\) # (!\register_file|mux1|Mux1~0_combout\))) # (!\aluOp2[30]~61_combout\ & (!\register_file|mux1|Mux1~0_combout\ & 
-- !\arith_logic_unity|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[30]~61_combout\,
	datab => \register_file|mux1|Mux1~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~59_cout\,
	cout => \arith_logic_unity|LessThan0~61_cout\);

-- Location: LCCOMB_X90_Y45_N30
\arith_logic_unity|LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~62_combout\ = (\register_file|mux1|Mux0~0_combout\ & (\arith_logic_unity|LessThan0~61_cout\ & \aluOp2[31]~60_combout\)) # (!\register_file|mux1|Mux0~0_combout\ & ((\arith_logic_unity|LessThan0~61_cout\) # 
-- (\aluOp2[31]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux0~0_combout\,
	datad => \aluOp2[31]~60_combout\,
	cin => \arith_logic_unity|LessThan0~61_cout\,
	combout => \arith_logic_unity|LessThan0~62_combout\);

-- Location: LCCOMB_X91_Y45_N8
\register_file|registers:0:regx|Q~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~53_combout\ = (\register_file|registers:0:regx|Q~52_combout\) # ((\register_file|registers:0:regx|Q~114_combout\ & (!\control|aluControl[0]~0_combout\)) # (!\register_file|registers:0:regx|Q~114_combout\ & 
-- (\control|aluControl[0]~0_combout\ & \arith_logic_unity|LessThan0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~114_combout\,
	datab => \register_file|registers:0:regx|Q~52_combout\,
	datac => \control|aluControl[0]~0_combout\,
	datad => \arith_logic_unity|LessThan0~62_combout\,
	combout => \register_file|registers:0:regx|Q~53_combout\);

-- Location: LCCOMB_X91_Y45_N14
\register_file|registers:0:regx|Q~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~54_combout\ = (\register_file|registers:0:regx|Q~47_combout\ & ((\register_file|registers:0:regx|Q~53_combout\) # ((\register_file|registers:0:regx|Q~46_combout\ & \data_memory|Mux31~1_combout\)))) # 
-- (!\register_file|registers:0:regx|Q~47_combout\ & (\register_file|registers:0:regx|Q~46_combout\ & ((\data_memory|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q~47_combout\,
	datab => \register_file|registers:0:regx|Q~46_combout\,
	datac => \register_file|registers:0:regx|Q~53_combout\,
	datad => \data_memory|Mux31~1_combout\,
	combout => \register_file|registers:0:regx|Q~54_combout\);

-- Location: FF_X91_Y45_N15
\register_file|registers:0:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk\(0),
	d => \register_file|registers:0:regx|Q~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(0));

-- Location: LCCOMB_X92_Y45_N20
\register_file|mux2|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux31~0_combout\ = (\instruction_memory|Mux6~2_combout\ & (((\instruction_memory|Mux5~1_combout\)))) # (!\instruction_memory|Mux6~2_combout\ & ((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:2:regx|Q\(0)))) # 
-- (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(0),
	datab => \register_file|registers:2:regx|Q\(0),
	datac => \instruction_memory|Mux6~2_combout\,
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux2|Mux31~0_combout\);

-- Location: LCCOMB_X92_Y45_N0
\register_file|mux2|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux31~1_combout\ = (\register_file|mux2|Mux31~0_combout\ & ((\register_file|registers:3:regx|Q\(0)) # ((!\instruction_memory|Mux6~2_combout\)))) # (!\register_file|mux2|Mux31~0_combout\ & (((\register_file|registers:1:regx|Q\(0) & 
-- \instruction_memory|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux31~0_combout\,
	datab => \register_file|registers:3:regx|Q\(0),
	datac => \register_file|registers:1:regx|Q\(0),
	datad => \instruction_memory|Mux6~2_combout\,
	combout => \register_file|mux2|Mux31~1_combout\);

-- Location: LCCOMB_X92_Y48_N26
\data_memory|possible_outputs[1][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[1][0]~combout\ = (GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & (\register_file|mux2|Mux31~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~1clkctrl_outclk\) & ((\data_memory|possible_outputs[1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux31~1_combout\,
	datac => \data_memory|possible_outputs[1][0]~combout\,
	datad => \data_memory|Decoder0~1clkctrl_outclk\,
	combout => \data_memory|possible_outputs[1][0]~combout\);

-- Location: LCCOMB_X92_Y48_N4
\data_memory|possible_outputs[0][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[0][0]~combout\ = (GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & (\register_file|mux2|Mux31~1_combout\)) # (!GLOBAL(\data_memory|Decoder0~2clkctrl_outclk\) & ((\data_memory|possible_outputs[0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux2|Mux31~1_combout\,
	datac => \data_memory|possible_outputs[0][0]~combout\,
	datad => \data_memory|Decoder0~2clkctrl_outclk\,
	combout => \data_memory|possible_outputs[0][0]~combout\);

-- Location: LCCOMB_X92_Y48_N16
\data_memory|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux31~0_combout\ = (\arith_logic_unity|Mux28~1_combout\ & (((\arith_logic_unity|Mux29~1_combout\)))) # (!\arith_logic_unity|Mux28~1_combout\ & ((\arith_logic_unity|Mux29~1_combout\ & (\data_memory|possible_outputs[1][0]~combout\)) # 
-- (!\arith_logic_unity|Mux29~1_combout\ & ((\data_memory|possible_outputs[0][0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[1][0]~combout\,
	datab => \arith_logic_unity|Mux28~1_combout\,
	datac => \data_memory|possible_outputs[0][0]~combout\,
	datad => \arith_logic_unity|Mux29~1_combout\,
	combout => \data_memory|Mux31~0_combout\);

-- Location: LCCOMB_X91_Y48_N20
\data_memory|possible_outputs[2][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[2][0]~combout\ = (GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & ((\register_file|mux2|Mux31~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~0clkctrl_outclk\) & (\data_memory|possible_outputs[2][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[2][0]~combout\,
	datab => \register_file|mux2|Mux31~1_combout\,
	datad => \data_memory|Decoder0~0clkctrl_outclk\,
	combout => \data_memory|possible_outputs[2][0]~combout\);

-- Location: LCCOMB_X92_Y48_N30
\data_memory|possible_outputs[3][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|possible_outputs[3][0]~combout\ = (GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & ((\register_file|mux2|Mux31~1_combout\))) # (!GLOBAL(\data_memory|Decoder0~3clkctrl_outclk\) & (\data_memory|possible_outputs[3][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|possible_outputs[3][0]~combout\,
	datac => \data_memory|Decoder0~3clkctrl_outclk\,
	datad => \register_file|mux2|Mux31~1_combout\,
	combout => \data_memory|possible_outputs[3][0]~combout\);

-- Location: LCCOMB_X92_Y48_N8
\data_memory|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux31~1_combout\ = (\data_memory|Mux31~0_combout\ & (((\data_memory|possible_outputs[3][0]~combout\) # (!\arith_logic_unity|Mux28~1_combout\)))) # (!\data_memory|Mux31~0_combout\ & (\data_memory|possible_outputs[2][0]~combout\ & 
-- ((\arith_logic_unity|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux31~0_combout\,
	datab => \data_memory|possible_outputs[2][0]~combout\,
	datac => \data_memory|possible_outputs[3][0]~combout\,
	datad => \arith_logic_unity|Mux28~1_combout\,
	combout => \data_memory|Mux31~1_combout\);

-- Location: LCCOMB_X96_Y49_N10
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

-- Location: LCCOMB_X95_Y49_N16
\PC|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~8_combout\ = (!\rst~input_o\ & (!\control|Equal1~0_combout\ & \pc_incremented[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \control|Equal1~0_combout\,
	datad => \pc_incremented[6]~8_combout\,
	combout => \PC|Q~8_combout\);

-- Location: FF_X95_Y49_N17
\PC|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(6));

-- Location: LCCOMB_X96_Y49_N12
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

-- Location: LCCOMB_X97_Y49_N4
\PC|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~9_combout\ = (\pc_incremented[7]~10_combout\ & !\control|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[7]~10_combout\,
	datac => \control|Equal1~0_combout\,
	combout => \PC|Q~9_combout\);

-- Location: FF_X97_Y49_N5
\PC|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~9_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(7));

-- Location: LCCOMB_X96_Y49_N14
\pc_incremented[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[8]~12_combout\ = (\PC|Q\(8) & (\pc_incremented[7]~11\ $ (GND))) # (!\PC|Q\(8) & (!\pc_incremented[7]~11\ & VCC))
-- \pc_incremented[8]~13\ = CARRY((\PC|Q\(8) & !\pc_incremented[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(8),
	datad => VCC,
	cin => \pc_incremented[7]~11\,
	combout => \pc_incremented[8]~12_combout\,
	cout => \pc_incremented[8]~13\);

-- Location: LCCOMB_X97_Y49_N2
\PC|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~10_combout\ = (!\control|Equal1~0_combout\ & (!\rst~input_o\ & \pc_incremented[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datab => \rst~input_o\,
	datac => \pc_incremented[8]~12_combout\,
	combout => \PC|Q~10_combout\);

-- Location: FF_X97_Y49_N3
\PC|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(8));

-- Location: LCCOMB_X96_Y49_N16
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

-- Location: LCCOMB_X97_Y49_N12
\PC|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~11_combout\ = (!\control|Equal1~0_combout\ & (\pc_incremented[9]~14_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datab => \pc_incremented[9]~14_combout\,
	datac => \rst~input_o\,
	combout => \PC|Q~11_combout\);

-- Location: FF_X97_Y49_N13
\PC|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(9));

-- Location: LCCOMB_X96_Y49_N18
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

-- Location: LCCOMB_X97_Y49_N10
\PC|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~12_combout\ = (!\control|Equal1~0_combout\ & (\pc_incremented[10]~16_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datab => \pc_incremented[10]~16_combout\,
	datac => \rst~input_o\,
	combout => \PC|Q~12_combout\);

-- Location: FF_X97_Y49_N11
\PC|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(10));

-- Location: LCCOMB_X96_Y49_N20
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

-- Location: LCCOMB_X97_Y49_N28
\PC|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~13_combout\ = (!\control|Equal1~0_combout\ & (\pc_incremented[11]~18_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datab => \pc_incremented[11]~18_combout\,
	datac => \rst~input_o\,
	combout => \PC|Q~13_combout\);

-- Location: FF_X97_Y49_N29
\PC|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(11));

-- Location: LCCOMB_X96_Y49_N22
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

-- Location: LCCOMB_X97_Y49_N14
\PC|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~14_combout\ = (!\control|Equal1~0_combout\ & (!\rst~input_o\ & \pc_incremented[12]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datab => \rst~input_o\,
	datac => \pc_incremented[12]~20_combout\,
	combout => \PC|Q~14_combout\);

-- Location: FF_X97_Y49_N15
\PC|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(12));

-- Location: LCCOMB_X96_Y49_N24
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

-- Location: LCCOMB_X97_Y49_N6
\PC|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~15_combout\ = (!\control|Equal1~0_combout\ & \pc_incremented[13]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datad => \pc_incremented[13]~22_combout\,
	combout => \PC|Q~15_combout\);

-- Location: FF_X97_Y49_N7
\PC|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~15_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(13));

-- Location: LCCOMB_X96_Y49_N26
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

-- Location: LCCOMB_X97_Y49_N20
\PC|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~16_combout\ = (!\control|Equal1~0_combout\ & \pc_incremented[14]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datab => \pc_incremented[14]~24_combout\,
	combout => \PC|Q~16_combout\);

-- Location: FF_X97_Y49_N21
\PC|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~16_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(14));

-- Location: LCCOMB_X96_Y49_N28
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

-- Location: LCCOMB_X97_Y49_N8
\PC|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~17_combout\ = (!\control|Equal1~0_combout\ & (!\rst~input_o\ & \pc_incremented[15]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datab => \rst~input_o\,
	datac => \pc_incremented[15]~26_combout\,
	combout => \PC|Q~17_combout\);

-- Location: FF_X97_Y49_N9
\PC|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(15));

-- Location: LCCOMB_X96_Y49_N30
\pc_incremented[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[16]~28_combout\ = (\PC|Q\(16) & (\pc_incremented[15]~27\ $ (GND))) # (!\PC|Q\(16) & (!\pc_incremented[15]~27\ & VCC))
-- \pc_incremented[16]~29\ = CARRY((\PC|Q\(16) & !\pc_incremented[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(16),
	datad => VCC,
	cin => \pc_incremented[15]~27\,
	combout => \pc_incremented[16]~28_combout\,
	cout => \pc_incremented[16]~29\);

-- Location: LCCOMB_X97_Y49_N30
\PC|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~18_combout\ = (!\control|Equal1~0_combout\ & (!\rst~input_o\ & \pc_incremented[16]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datab => \rst~input_o\,
	datac => \pc_incremented[16]~28_combout\,
	combout => \PC|Q~18_combout\);

-- Location: FF_X97_Y49_N31
\PC|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(16));

-- Location: LCCOMB_X96_Y48_N0
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

-- Location: LCCOMB_X97_Y48_N2
\PC|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~19_combout\ = (\pc_incremented[17]~30_combout\ & (!\control|Equal1~0_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[17]~30_combout\,
	datab => \control|Equal1~0_combout\,
	datac => \rst~input_o\,
	combout => \PC|Q~19_combout\);

-- Location: FF_X97_Y48_N3
\PC|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(17));

-- Location: LCCOMB_X96_Y48_N2
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

-- Location: LCCOMB_X95_Y49_N4
\PC|Q~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~33_combout\ = (\control|Equal1~0_combout\ & (((!\PC|Q\(5) & \instruction_memory|Mux6~1_combout\)))) # (!\control|Equal1~0_combout\ & (\pc_incremented[18]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[18]~32_combout\,
	datab => \PC|Q\(5),
	datac => \instruction_memory|Mux6~1_combout\,
	datad => \control|Equal1~0_combout\,
	combout => \PC|Q~33_combout\);

-- Location: FF_X95_Y49_N5
\PC|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~33_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(18));

-- Location: LCCOMB_X96_Y48_N4
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

-- Location: LCCOMB_X95_Y49_N30
\PC|Q~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~34_combout\ = (\control|Equal1~0_combout\ & (((!\PC|Q\(5) & \instruction_memory|Mux5~0_combout\)))) # (!\control|Equal1~0_combout\ & (\pc_incremented[19]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[19]~34_combout\,
	datab => \PC|Q\(5),
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \control|Equal1~0_combout\,
	combout => \PC|Q~34_combout\);

-- Location: FF_X95_Y49_N31
\PC|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~34_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(19));

-- Location: LCCOMB_X96_Y48_N6
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

-- Location: LCCOMB_X97_Y48_N8
\PC|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~20_combout\ = (\pc_incremented[20]~36_combout\ & (!\control|Equal1~0_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[20]~36_combout\,
	datab => \control|Equal1~0_combout\,
	datac => \rst~input_o\,
	combout => \PC|Q~20_combout\);

-- Location: FF_X97_Y48_N9
\PC|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(20));

-- Location: LCCOMB_X96_Y48_N8
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

-- Location: LCCOMB_X97_Y48_N10
\PC|Q~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~21_combout\ = (\pc_incremented[21]~38_combout\ & (!\control|Equal1~0_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[21]~38_combout\,
	datab => \control|Equal1~0_combout\,
	datac => \rst~input_o\,
	combout => \PC|Q~21_combout\);

-- Location: FF_X97_Y48_N11
\PC|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(21));

-- Location: LCCOMB_X96_Y48_N10
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

-- Location: LCCOMB_X97_Y48_N24
\PC|Q~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~22_combout\ = (!\control|Equal1~0_combout\ & (\pc_incremented[22]~40_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datab => \pc_incremented[22]~40_combout\,
	datac => \rst~input_o\,
	combout => \PC|Q~22_combout\);

-- Location: FF_X97_Y48_N25
\PC|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(22));

-- Location: LCCOMB_X96_Y48_N12
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

-- Location: LCCOMB_X97_Y48_N22
\PC|Q~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~23_combout\ = (!\control|Equal1~0_combout\ & (\pc_incremented[23]~42_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datab => \pc_incremented[23]~42_combout\,
	datac => \rst~input_o\,
	combout => \PC|Q~23_combout\);

-- Location: FF_X97_Y48_N23
\PC|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(23));

-- Location: LCCOMB_X96_Y48_N14
\pc_incremented[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[24]~44_combout\ = (\PC|Q\(24) & (\pc_incremented[23]~43\ $ (GND))) # (!\PC|Q\(24) & (!\pc_incremented[23]~43\ & VCC))
-- \pc_incremented[24]~45\ = CARRY((\PC|Q\(24) & !\pc_incremented[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(24),
	datad => VCC,
	cin => \pc_incremented[23]~43\,
	combout => \pc_incremented[24]~44_combout\,
	cout => \pc_incremented[24]~45\);

-- Location: LCCOMB_X97_Y48_N20
\PC|Q~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~24_combout\ = (\pc_incremented[24]~44_combout\ & !\control|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[24]~44_combout\,
	datab => \control|Equal1~0_combout\,
	combout => \PC|Q~24_combout\);

-- Location: FF_X97_Y48_N21
\PC|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~24_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(24));

-- Location: LCCOMB_X96_Y48_N16
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

-- Location: LCCOMB_X97_Y48_N0
\PC|Q~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~25_combout\ = (\pc_incremented[25]~46_combout\ & (!\control|Equal1~0_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[25]~46_combout\,
	datab => \control|Equal1~0_combout\,
	datac => \rst~input_o\,
	combout => \PC|Q~25_combout\);

-- Location: FF_X97_Y48_N1
\PC|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(25));

-- Location: LCCOMB_X96_Y48_N18
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

-- Location: LCCOMB_X97_Y48_N18
\PC|Q~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~26_combout\ = (!\control|Equal1~0_combout\ & (!\rst~input_o\ & \pc_incremented[26]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal1~0_combout\,
	datab => \rst~input_o\,
	datac => \pc_incremented[26]~48_combout\,
	combout => \PC|Q~26_combout\);

-- Location: FF_X97_Y48_N19
\PC|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(26));

-- Location: LCCOMB_X96_Y48_N20
\pc_incremented[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[27]~50_combout\ = (\PC|Q\(27) & (!\pc_incremented[26]~49\)) # (!\PC|Q\(27) & ((\pc_incremented[26]~49\) # (GND)))
-- \pc_incremented[27]~51\ = CARRY((!\pc_incremented[26]~49\) # (!\PC|Q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(27),
	datad => VCC,
	cin => \pc_incremented[26]~49\,
	combout => \pc_incremented[27]~50_combout\,
	cout => \pc_incremented[27]~51\);

-- Location: LCCOMB_X97_Y48_N12
\PC|Q~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~27_combout\ = (\pc_incremented[27]~50_combout\ & (!\control|Equal1~0_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[27]~50_combout\,
	datab => \control|Equal1~0_combout\,
	datac => \rst~input_o\,
	combout => \PC|Q~27_combout\);

-- Location: FF_X97_Y48_N13
\PC|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(27));

-- Location: LCCOMB_X96_Y48_N22
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

-- Location: LCCOMB_X96_Y48_N30
\PC|Q~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~28_combout\ = (\pc_incremented[28]~52_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[28]~52_combout\,
	datac => \rst~input_o\,
	combout => \PC|Q~28_combout\);

-- Location: LCCOMB_X92_Y49_N4
\PC|Q[28]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q[28]~29_combout\ = (\rst~input_o\) # (!\control|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|Equal1~0_combout\,
	datad => \rst~input_o\,
	combout => \PC|Q[28]~29_combout\);

-- Location: FF_X96_Y48_N31
\PC|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~28_combout\,
	ena => \PC|Q[28]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(28));

-- Location: LCCOMB_X96_Y48_N24
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

-- Location: LCCOMB_X92_Y49_N24
\PC|Q~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~30_combout\ = (!\rst~input_o\ & \pc_incremented[29]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \pc_incremented[29]~54_combout\,
	combout => \PC|Q~30_combout\);

-- Location: FF_X92_Y49_N25
\PC|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~30_combout\,
	ena => \PC|Q[28]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(29));

-- Location: LCCOMB_X96_Y48_N26
\pc_incremented[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[30]~56_combout\ = (\PC|Q\(30) & (\pc_incremented[29]~55\ $ (GND))) # (!\PC|Q\(30) & (!\pc_incremented[29]~55\ & VCC))
-- \pc_incremented[30]~57\ = CARRY((\PC|Q\(30) & !\pc_incremented[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(30),
	datad => VCC,
	cin => \pc_incremented[29]~55\,
	combout => \pc_incremented[30]~56_combout\,
	cout => \pc_incremented[30]~57\);

-- Location: LCCOMB_X92_Y49_N28
\PC|Q~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~31_combout\ = (!\rst~input_o\ & \pc_incremented[30]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \pc_incremented[30]~56_combout\,
	combout => \PC|Q~31_combout\);

-- Location: FF_X92_Y49_N29
\PC|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~31_combout\,
	ena => \PC|Q[28]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(30));

-- Location: LCCOMB_X96_Y48_N28
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

-- Location: LCCOMB_X92_Y49_N2
\PC|Q~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~32_combout\ = (!\rst~input_o\ & \pc_incremented[31]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \pc_incremented[31]~58_combout\,
	combout => \PC|Q~32_combout\);

-- Location: FF_X92_Y49_N3
\PC|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~32_combout\,
	ena => \PC|Q[28]~29_combout\,
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


