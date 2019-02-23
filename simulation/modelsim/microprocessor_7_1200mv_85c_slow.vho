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

-- DATE "02/21/2019 15:19:22"

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
-- data_memory_output[4]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[5]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[6]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[7]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[8]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[9]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[10]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[11]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[12]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[13]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[14]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[15]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[16]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[17]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[18]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[19]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[20]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[21]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[22]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[23]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[24]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[25]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[26]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[27]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[28]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[29]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[30]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[31]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[4]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[8]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[9]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[10]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[11]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[12]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[13]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[14]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[15]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[16]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[17]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[18]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[19]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[20]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[21]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[22]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[23]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[24]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[25]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[26]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[27]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[28]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[29]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[30]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[31]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \register_file|registers_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_file|registers_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_file|registers_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \instruction_memory|Mux8~0_combout\ : std_logic;
SIGNAL \pc_incremented[2]~1\ : std_logic;
SIGNAL \pc_incremented[3]~3\ : std_logic;
SIGNAL \pc_incremented[4]~4_combout\ : std_logic;
SIGNAL \pc_incremented[3]~2_combout\ : std_logic;
SIGNAL \pc_incremented[2]~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux10~0_combout\ : std_logic;
SIGNAL \branch_address[2]~1\ : std_logic;
SIGNAL \branch_address[3]~3\ : std_logic;
SIGNAL \branch_address[4]~4_combout\ : std_logic;
SIGNAL \control|aluControl[2]~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux5~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux5~1_combout\ : std_logic;
SIGNAL \instruction_memory|Mux4~0_combout\ : std_logic;
SIGNAL \register_file|registers_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~8_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux2~0_combout\ : std_logic;
SIGNAL \register_file|registers_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \instruction_memory|Mux2~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux2~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~22_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~13_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux3~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux4~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~24_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~12_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux5~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~11_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux6~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~10_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux7~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux8~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux9~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~8_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~29_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux10~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[20]~feeder_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~28_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux11~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[19]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux12~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~27_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~32_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[18]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux13~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux14~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~25_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~34_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[16]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux15~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~24_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~35_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~23_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux16~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux17~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~22_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~37_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux18~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~21_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~38_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~20_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux19~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~19_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux20~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux21~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~17_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux22~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux23~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~16_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~43_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux24~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~15_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~44_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux25~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~14_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~45_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux26~0_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux26~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux27~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~6_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux28~0_combout\ : std_logic;
SIGNAL \aluOp2[2]~0_combout\ : std_logic;
SIGNAL \aluOp2[2]~7_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux29~0_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[1]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[1]~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~4_combout\ : std_logic;
SIGNAL \aluOp2[0]~3_combout\ : std_logic;
SIGNAL \aluOp2[0]~2_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~5_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~7_cout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~8_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux0~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~7_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~20_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~31_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux1~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~93\ : std_logic;
SIGNAL \arith_logic_unity|Add0~94_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux1~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~7_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux1~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~21_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~95\ : std_logic;
SIGNAL \arith_logic_unity|Add0~96_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux0~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~6_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux0~0_combout\ : std_logic;
SIGNAL \aluOp2[2]~4_combout\ : std_logic;
SIGNAL \aluOp2[0]~5_combout\ : std_logic;
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
SIGNAL \arith_logic_unity|Mux31~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~5_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux31~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~9\ : std_logic;
SIGNAL \arith_logic_unity|Add0~10_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[1]~feeder_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~30_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux30~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~4_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[1]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux30~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~11\ : std_logic;
SIGNAL \arith_logic_unity|Add0~12_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux29~3_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux29~9_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~3_combout\ : std_logic;
SIGNAL \aluOp2[2]~6_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~3_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~13\ : std_logic;
SIGNAL \arith_logic_unity|Add0~14_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux28~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~2_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux28~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~2_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~15\ : std_logic;
SIGNAL \arith_logic_unity|Add0~16_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~5_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux27~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~1_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux27~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~17\ : std_logic;
SIGNAL \arith_logic_unity|Add0~19\ : std_logic;
SIGNAL \arith_logic_unity|Add0~46_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux25~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~31_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux25~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~47\ : std_logic;
SIGNAL \arith_logic_unity|Add0~48_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux24~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~30_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux24~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~49\ : std_logic;
SIGNAL \arith_logic_unity|Add0~50_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux23~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~29_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[8]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux23~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~51\ : std_logic;
SIGNAL \arith_logic_unity|Add0~52_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux22~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~28_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux22~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~42_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~53\ : std_logic;
SIGNAL \arith_logic_unity|Add0~54_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~18_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux21~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~27_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux21~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~41_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~55\ : std_logic;
SIGNAL \arith_logic_unity|Add0~56_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux20~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~26_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux20~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~40_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~57\ : std_logic;
SIGNAL \arith_logic_unity|Add0~58_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux19~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~25_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux19~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~39_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~59\ : std_logic;
SIGNAL \arith_logic_unity|Add0~60_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux18~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~24_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux18~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~61\ : std_logic;
SIGNAL \arith_logic_unity|Add0~62_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux17~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~23_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[14]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux17~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~63\ : std_logic;
SIGNAL \arith_logic_unity|Add0~64_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux16~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~22_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux16~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~36_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~65\ : std_logic;
SIGNAL \arith_logic_unity|Add0~66_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux15~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~21_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux15~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~67\ : std_logic;
SIGNAL \arith_logic_unity|Add0~68_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux14~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~20_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux14~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~69\ : std_logic;
SIGNAL \arith_logic_unity|Add0~70_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~26_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux13~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~19_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux13~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~33_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~71\ : std_logic;
SIGNAL \arith_logic_unity|Add0~72_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux12~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~18_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux12~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~73\ : std_logic;
SIGNAL \arith_logic_unity|Add0~74_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux11~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~17_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux11~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~31_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~75\ : std_logic;
SIGNAL \arith_logic_unity|Add0~76_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~29_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux10~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~16_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux10~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~30_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~77\ : std_logic;
SIGNAL \arith_logic_unity|Add0~78_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux9~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~15_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux9~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~79\ : std_logic;
SIGNAL \arith_logic_unity|Add0~80_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~9_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux8~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~14_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux8~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~28_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~81\ : std_logic;
SIGNAL \arith_logic_unity|Add0~82_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux7~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~13_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux7~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~27_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~83\ : std_logic;
SIGNAL \arith_logic_unity|Add0~84_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux6~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~12_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux6~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~26_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~85\ : std_logic;
SIGNAL \arith_logic_unity|Add0~86_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux5~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~11_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux5~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~25_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~87\ : std_logic;
SIGNAL \arith_logic_unity|Add0~88_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[27]~feeder_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~32_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux4~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~10_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux4~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~89\ : std_logic;
SIGNAL \arith_logic_unity|Add0~90_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux3~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q~9_combout\ : std_logic;
SIGNAL \register_file|mux2|Mux3~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~23_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~91\ : std_logic;
SIGNAL \arith_logic_unity|Add0~92_combout\ : std_logic;
SIGNAL \arith_logic_unity|Res~33_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux2~0_combout\ : std_logic;
SIGNAL \branch_or_next~9_combout\ : std_logic;
SIGNAL \branch_or_next~0_combout\ : std_logic;
SIGNAL \branch_or_next~6_combout\ : std_logic;
SIGNAL \branch_or_next~1_combout\ : std_logic;
SIGNAL \branch_or_next~2_combout\ : std_logic;
SIGNAL \branch_or_next~3_combout\ : std_logic;
SIGNAL \branch_or_next~4_combout\ : std_logic;
SIGNAL \branch_or_next~5_combout\ : std_logic;
SIGNAL \branch_or_next~7_combout\ : std_logic;
SIGNAL \branch_or_next~8_combout\ : std_logic;
SIGNAL \branch_or_next~10_combout\ : std_logic;
SIGNAL \PC|Q~5_combout\ : std_logic;
SIGNAL \PC|Q~6_combout\ : std_logic;
SIGNAL \control|aluControl[0]~1_combout\ : std_logic;
SIGNAL \PC|Q[7]~7_combout\ : std_logic;
SIGNAL \pc_incremented[4]~5\ : std_logic;
SIGNAL \pc_incremented[5]~6_combout\ : std_logic;
SIGNAL \branch_address[4]~5\ : std_logic;
SIGNAL \branch_address[5]~6_combout\ : std_logic;
SIGNAL \PC|Q~8_combout\ : std_logic;
SIGNAL \instruction_memory|Mux1~0_combout\ : std_logic;
SIGNAL \branch_address[2]~0_combout\ : std_logic;
SIGNAL \PC|Q~0_combout\ : std_logic;
SIGNAL \PC|Q~1_combout\ : std_logic;
SIGNAL \PC|Q~2_combout\ : std_logic;
SIGNAL \branch_address[3]~2_combout\ : std_logic;
SIGNAL \PC|Q~3_combout\ : std_logic;
SIGNAL \PC|Q~4_combout\ : std_logic;
SIGNAL \register_file|registers_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \arith_logic_unity|Res~4_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~18_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux26~0_combout\ : std_logic;
SIGNAL \data_memory|Mux31~0_combout\ : std_logic;
SIGNAL \pc_incremented[5]~7\ : std_logic;
SIGNAL \pc_incremented[6]~8_combout\ : std_logic;
SIGNAL \branch_address[5]~7\ : std_logic;
SIGNAL \branch_address[6]~8_combout\ : std_logic;
SIGNAL \PC|Q~9_combout\ : std_logic;
SIGNAL \pc_incremented[6]~9\ : std_logic;
SIGNAL \pc_incremented[7]~10_combout\ : std_logic;
SIGNAL \branch_address[6]~9\ : std_logic;
SIGNAL \branch_address[7]~10_combout\ : std_logic;
SIGNAL \PC|Q~10_combout\ : std_logic;
SIGNAL \pc_incremented[7]~11\ : std_logic;
SIGNAL \pc_incremented[8]~12_combout\ : std_logic;
SIGNAL \branch_address[7]~11\ : std_logic;
SIGNAL \branch_address[8]~12_combout\ : std_logic;
SIGNAL \PC|Q~11_combout\ : std_logic;
SIGNAL \pc_incremented[8]~13\ : std_logic;
SIGNAL \pc_incremented[9]~14_combout\ : std_logic;
SIGNAL \branch_address[8]~13\ : std_logic;
SIGNAL \branch_address[9]~14_combout\ : std_logic;
SIGNAL \PC|Q~12_combout\ : std_logic;
SIGNAL \pc_incremented[9]~15\ : std_logic;
SIGNAL \pc_incremented[10]~16_combout\ : std_logic;
SIGNAL \branch_address[9]~15\ : std_logic;
SIGNAL \branch_address[10]~16_combout\ : std_logic;
SIGNAL \PC|Q~13_combout\ : std_logic;
SIGNAL \pc_incremented[10]~17\ : std_logic;
SIGNAL \pc_incremented[11]~18_combout\ : std_logic;
SIGNAL \branch_address[10]~17\ : std_logic;
SIGNAL \branch_address[11]~18_combout\ : std_logic;
SIGNAL \PC|Q~14_combout\ : std_logic;
SIGNAL \pc_incremented[11]~19\ : std_logic;
SIGNAL \pc_incremented[12]~20_combout\ : std_logic;
SIGNAL \branch_address[11]~19\ : std_logic;
SIGNAL \branch_address[12]~20_combout\ : std_logic;
SIGNAL \PC|Q~15_combout\ : std_logic;
SIGNAL \pc_incremented[12]~21\ : std_logic;
SIGNAL \pc_incremented[13]~22_combout\ : std_logic;
SIGNAL \branch_address[12]~21\ : std_logic;
SIGNAL \branch_address[13]~22_combout\ : std_logic;
SIGNAL \PC|Q~16_combout\ : std_logic;
SIGNAL \pc_incremented[13]~23\ : std_logic;
SIGNAL \pc_incremented[14]~24_combout\ : std_logic;
SIGNAL \branch_address[13]~23\ : std_logic;
SIGNAL \branch_address[14]~24_combout\ : std_logic;
SIGNAL \PC|Q~17_combout\ : std_logic;
SIGNAL \pc_incremented[14]~25\ : std_logic;
SIGNAL \pc_incremented[15]~26_combout\ : std_logic;
SIGNAL \branch_address[14]~25\ : std_logic;
SIGNAL \branch_address[15]~26_combout\ : std_logic;
SIGNAL \PC|Q~18_combout\ : std_logic;
SIGNAL \pc_incremented[15]~27\ : std_logic;
SIGNAL \pc_incremented[16]~28_combout\ : std_logic;
SIGNAL \branch_address[15]~27\ : std_logic;
SIGNAL \branch_address[16]~28_combout\ : std_logic;
SIGNAL \PC|Q~19_combout\ : std_logic;
SIGNAL \pc_incremented[16]~29\ : std_logic;
SIGNAL \pc_incremented[17]~30_combout\ : std_logic;
SIGNAL \branch_address[16]~29\ : std_logic;
SIGNAL \branch_address[17]~30_combout\ : std_logic;
SIGNAL \PC|Q~20_combout\ : std_logic;
SIGNAL \pc_incremented[17]~31\ : std_logic;
SIGNAL \pc_incremented[18]~32_combout\ : std_logic;
SIGNAL \branch_address[17]~31\ : std_logic;
SIGNAL \branch_address[18]~32_combout\ : std_logic;
SIGNAL \PC|Q~21_combout\ : std_logic;
SIGNAL \pc_incremented[18]~33\ : std_logic;
SIGNAL \pc_incremented[19]~34_combout\ : std_logic;
SIGNAL \branch_address[18]~33\ : std_logic;
SIGNAL \branch_address[19]~34_combout\ : std_logic;
SIGNAL \PC|Q~22_combout\ : std_logic;
SIGNAL \pc_incremented[19]~35\ : std_logic;
SIGNAL \pc_incremented[20]~36_combout\ : std_logic;
SIGNAL \branch_address[19]~35\ : std_logic;
SIGNAL \branch_address[20]~36_combout\ : std_logic;
SIGNAL \PC|Q~23_combout\ : std_logic;
SIGNAL \pc_incremented[20]~37\ : std_logic;
SIGNAL \pc_incremented[21]~38_combout\ : std_logic;
SIGNAL \branch_address[20]~37\ : std_logic;
SIGNAL \branch_address[21]~38_combout\ : std_logic;
SIGNAL \PC|Q~24_combout\ : std_logic;
SIGNAL \pc_incremented[21]~39\ : std_logic;
SIGNAL \pc_incremented[22]~40_combout\ : std_logic;
SIGNAL \branch_address[21]~39\ : std_logic;
SIGNAL \branch_address[22]~40_combout\ : std_logic;
SIGNAL \PC|Q~25_combout\ : std_logic;
SIGNAL \pc_incremented[22]~41\ : std_logic;
SIGNAL \pc_incremented[23]~42_combout\ : std_logic;
SIGNAL \branch_address[22]~41\ : std_logic;
SIGNAL \branch_address[23]~42_combout\ : std_logic;
SIGNAL \PC|Q~26_combout\ : std_logic;
SIGNAL \PC|Q~27_combout\ : std_logic;
SIGNAL \pc_incremented[23]~43\ : std_logic;
SIGNAL \pc_incremented[24]~44_combout\ : std_logic;
SIGNAL \branch_address[23]~43\ : std_logic;
SIGNAL \branch_address[24]~44_combout\ : std_logic;
SIGNAL \PC|Q~28_combout\ : std_logic;
SIGNAL \pc_incremented[24]~45\ : std_logic;
SIGNAL \pc_incremented[25]~46_combout\ : std_logic;
SIGNAL \branch_address[24]~45\ : std_logic;
SIGNAL \branch_address[25]~46_combout\ : std_logic;
SIGNAL \PC|Q~29_combout\ : std_logic;
SIGNAL \pc_incremented[25]~47\ : std_logic;
SIGNAL \pc_incremented[26]~48_combout\ : std_logic;
SIGNAL \branch_address[25]~47\ : std_logic;
SIGNAL \branch_address[26]~48_combout\ : std_logic;
SIGNAL \PC|Q~30_combout\ : std_logic;
SIGNAL \pc_incremented[26]~49\ : std_logic;
SIGNAL \pc_incremented[27]~50_combout\ : std_logic;
SIGNAL \branch_address[26]~49\ : std_logic;
SIGNAL \branch_address[27]~50_combout\ : std_logic;
SIGNAL \PC|Q~31_combout\ : std_logic;
SIGNAL \pc_incremented[27]~51\ : std_logic;
SIGNAL \pc_incremented[28]~52_combout\ : std_logic;
SIGNAL \branch_address[27]~51\ : std_logic;
SIGNAL \branch_address[28]~52_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \PC|Q[31]~32_combout\ : std_logic;
SIGNAL \pc_incremented[28]~53\ : std_logic;
SIGNAL \pc_incremented[29]~54_combout\ : std_logic;
SIGNAL \branch_address[28]~53\ : std_logic;
SIGNAL \branch_address[29]~54_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \pc_incremented[29]~55\ : std_logic;
SIGNAL \pc_incremented[30]~56_combout\ : std_logic;
SIGNAL \branch_address[29]~55\ : std_logic;
SIGNAL \branch_address[30]~56_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \pc_incremented[30]~57\ : std_logic;
SIGNAL \pc_incremented[31]~58_combout\ : std_logic;
SIGNAL \branch_address[30]~57\ : std_logic;
SIGNAL \branch_address[31]~58_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PC|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers:0:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers:1:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers_clk\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instruction_memory|ALT_INV_Mux4~0_combout\ : std_logic;

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

\register_file|registers_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \register_file|registers_clk\(1));

\register_file|registers_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \register_file|registers_clk\(0));

\register_file|registers_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \register_file|registers_clk\(2));
\instruction_memory|ALT_INV_Mux4~0_combout\ <= NOT \instruction_memory|Mux4~0_combout\;
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
	i => \data_memory|Mux31~0_combout\,
	oe => \instruction_memory|Mux4~0_combout\,
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
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
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
	i => \data_memory|Mux31~0_combout\,
	oe => \instruction_memory|Mux4~0_combout\,
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
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\data_memory_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\data_memory_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\data_memory_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[6]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\data_memory_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\data_memory_output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[8]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\data_memory_output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\data_memory_output[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[10]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\data_memory_output[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[11]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\data_memory_output[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[12]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\data_memory_output[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\data_memory_output[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[14]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\data_memory_output[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[15]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\data_memory_output[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[16]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\data_memory_output[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[17]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\data_memory_output[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[18]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\data_memory_output[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[19]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\data_memory_output[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[20]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\data_memory_output[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[21]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\data_memory_output[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
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
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[23]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\data_memory_output[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[24]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\data_memory_output[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[25]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\data_memory_output[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[26]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\data_memory_output[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[27]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\data_memory_output[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[28]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\data_memory_output[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[29]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\data_memory_output[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[30]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\data_memory_output[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[31]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
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

-- Location: IOOBUF_X0_Y29_N16
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

-- Location: IOOBUF_X115_Y31_N9
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

-- Location: IOOBUF_X115_Y40_N2
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

-- Location: IOOBUF_X115_Y41_N9
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

-- Location: IOOBUF_X115_Y31_N2
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

-- Location: IOOBUF_X115_Y34_N16
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

-- Location: IOOBUF_X115_Y35_N23
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

-- Location: IOOBUF_X115_Y35_N16
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

-- Location: IOOBUF_X115_Y41_N2
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

-- Location: IOOBUF_X115_Y36_N16
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

-- Location: IOOBUF_X115_Y33_N2
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

-- Location: IOOBUF_X115_Y30_N9
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

-- Location: IOOBUF_X115_Y28_N9
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

-- Location: IOOBUF_X115_Y36_N2
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

-- Location: IOOBUF_X115_Y33_N9
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

-- Location: IOOBUF_X115_Y34_N23
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

-- Location: IOOBUF_X115_Y32_N2
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

-- Location: IOOBUF_X115_Y26_N23
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

-- Location: IOOBUF_X115_Y30_N2
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

-- Location: IOOBUF_X115_Y36_N9
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

-- Location: IOOBUF_X115_Y42_N16
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

-- Location: IOOBUF_X115_Y29_N9
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

-- Location: IOOBUF_X115_Y29_N2
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

-- Location: IOOBUF_X115_Y28_N2
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

-- Location: IOOBUF_X115_Y32_N9
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

-- Location: IOIBUF_X115_Y17_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X113_Y33_N4
\instruction_memory|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux8~0_combout\ = (\PC|Q\(5)) # ((\PC|Q\(4) & ((\PC|Q\(2)) # (\PC|Q\(3)))) # (!\PC|Q\(4) & (\PC|Q\(2) & \PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux8~0_combout\);

-- Location: LCCOMB_X112_Y34_N2
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

-- Location: LCCOMB_X112_Y34_N4
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

-- Location: LCCOMB_X112_Y34_N6
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

-- Location: LCCOMB_X113_Y33_N28
\instruction_memory|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux10~0_combout\ = (\PC|Q\(5)) # ((\PC|Q\(3) & (\PC|Q\(4))) # (!\PC|Q\(3) & ((\PC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux10~0_combout\);

-- Location: LCCOMB_X111_Y34_N2
\branch_address[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[2]~0_combout\ = (\pc_incremented[2]~0_combout\ & (\instruction_memory|Mux10~0_combout\ $ (VCC))) # (!\pc_incremented[2]~0_combout\ & (\instruction_memory|Mux10~0_combout\ & VCC))
-- \branch_address[2]~1\ = CARRY((\pc_incremented[2]~0_combout\ & \instruction_memory|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[2]~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datad => VCC,
	combout => \branch_address[2]~0_combout\,
	cout => \branch_address[2]~1\);

-- Location: LCCOMB_X111_Y34_N4
\branch_address[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[3]~2_combout\ = (\pc_incremented[3]~2_combout\ & ((\PC|Q~2_combout\ & (\branch_address[2]~1\ & VCC)) # (!\PC|Q~2_combout\ & (!\branch_address[2]~1\)))) # (!\pc_incremented[3]~2_combout\ & ((\PC|Q~2_combout\ & (!\branch_address[2]~1\)) # 
-- (!\PC|Q~2_combout\ & ((\branch_address[2]~1\) # (GND)))))
-- \branch_address[3]~3\ = CARRY((\pc_incremented[3]~2_combout\ & (!\PC|Q~2_combout\ & !\branch_address[2]~1\)) # (!\pc_incremented[3]~2_combout\ & ((!\branch_address[2]~1\) # (!\PC|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[3]~2_combout\,
	datab => \PC|Q~2_combout\,
	datad => VCC,
	cin => \branch_address[2]~1\,
	combout => \branch_address[3]~2_combout\,
	cout => \branch_address[3]~3\);

-- Location: LCCOMB_X111_Y34_N6
\branch_address[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[4]~4_combout\ = ((\pc_incremented[4]~4_combout\ $ (\instruction_memory|Mux8~0_combout\ $ (!\branch_address[3]~3\)))) # (GND)
-- \branch_address[4]~5\ = CARRY((\pc_incremented[4]~4_combout\ & ((\instruction_memory|Mux8~0_combout\) # (!\branch_address[3]~3\))) # (!\pc_incremented[4]~4_combout\ & (\instruction_memory|Mux8~0_combout\ & !\branch_address[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[4]~4_combout\,
	datab => \instruction_memory|Mux8~0_combout\,
	datad => VCC,
	cin => \branch_address[3]~3\,
	combout => \branch_address[4]~4_combout\,
	cout => \branch_address[4]~5\);

-- Location: LCCOMB_X113_Y33_N12
\control|aluControl[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[2]~0_combout\ = (\PC|Q\(4)) # ((\PC|Q\(5)) # (\PC|Q\(2) $ (\PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \control|aluControl[2]~0_combout\);

-- Location: LCCOMB_X113_Y33_N20
\instruction_memory|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux5~0_combout\ = (\PC|Q\(3) & ((\PC|Q\(2)))) # (!\PC|Q\(3) & (!\PC|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux5~0_combout\);

-- Location: LCCOMB_X113_Y33_N18
\instruction_memory|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux5~1_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & \instruction_memory|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \instruction_memory|Mux5~1_combout\);

-- Location: LCCOMB_X113_Y33_N26
\instruction_memory|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux4~0_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & (!\PC|Q\(2) & !\PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y37_N4
\register_file|registers_clk[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(0) = LCELL((!\CLK~input_o\ & ((\rst~input_o\) # (\instruction_memory|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \instruction_memory|Mux4~0_combout\,
	datad => \CLK~input_o\,
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

-- Location: LCCOMB_X109_Y29_N10
\register_file|registers:0:regx|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~8_combout\ = (!\rst~input_o\ & (!\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \instruction_memory|Mux4~0_combout\,
	datad => \arith_logic_unity|Mux2~0_combout\,
	combout => \register_file|registers:0:regx|Q~8_combout\);

-- Location: FF_X110_Y29_N15
\register_file|registers:0:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(29));

-- Location: FF_X109_Y29_N1
\register_file|registers:1:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(29));

-- Location: LCCOMB_X109_Y29_N18
\register_file|mux1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux2~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(29)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(29),
	datad => \register_file|registers:1:regx|Q\(29),
	combout => \register_file|mux1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y37_N10
\register_file|registers_clk[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(2) = LCELL((\rst~input_o\ & !\CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \CLK~input_o\,
	combout => \register_file|registers_clk\(2));

-- Location: CLKCTRL_G7
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

-- Location: FF_X110_Y29_N13
\register_file|registers:2:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(29));

-- Location: LCCOMB_X113_Y33_N6
\instruction_memory|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux2~0_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & (\PC|Q\(2) & !\PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y29_N12
\register_file|mux2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux2~0_combout\ = (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(29)) # ((\register_file|registers:2:regx|Q\(29) & \instruction_memory|Mux2~0_combout\)))) # (!\control|aluControl[0]~1_combout\ & 
-- (((\register_file|registers:2:regx|Q\(29) & \instruction_memory|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \register_file|registers:0:regx|Q\(29),
	datac => \register_file|registers:2:regx|Q\(29),
	datad => \instruction_memory|Mux2~0_combout\,
	combout => \register_file|mux2|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y29_N20
\arith_logic_unity|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~22_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux2~0_combout\,
	combout => \arith_logic_unity|Add0~22_combout\);

-- Location: FF_X110_Y32_N29
\register_file|registers:0:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(28));

-- Location: FF_X110_Y32_N11
\register_file|registers:1:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(28));

-- Location: LCCOMB_X110_Y32_N30
\arith_logic_unity|Res~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~13_combout\ = \register_file|mux2|Mux3~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(28)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:0:regx|Q\(28),
	datac => \register_file|mux2|Mux3~0_combout\,
	datad => \register_file|registers:1:regx|Q\(28),
	combout => \arith_logic_unity|Res~13_combout\);

-- Location: LCCOMB_X110_Y32_N26
\register_file|mux1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux3~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(28)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(28),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:1:regx|Q\(28),
	combout => \register_file|mux1|Mux3~0_combout\);

-- Location: FF_X110_Y30_N27
\register_file|registers:2:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(27));

-- Location: LCCOMB_X110_Y30_N26
\register_file|mux2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux4~0_combout\ = (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(27)) # ((\instruction_memory|Mux2~0_combout\ & \register_file|registers:2:regx|Q\(27))))) # (!\control|aluControl[0]~1_combout\ & 
-- (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(27),
	datad => \register_file|registers:0:regx|Q\(27),
	combout => \register_file|mux2|Mux4~0_combout\);

-- Location: LCCOMB_X110_Y30_N22
\arith_logic_unity|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~24_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datac => \register_file|mux2|Mux4~0_combout\,
	combout => \arith_logic_unity|Add0~24_combout\);

-- Location: FF_X110_Y30_N13
\register_file|registers:0:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(26));

-- Location: FF_X110_Y32_N25
\register_file|registers:1:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(26));

-- Location: LCCOMB_X110_Y32_N24
\arith_logic_unity|Res~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~12_combout\ = \register_file|mux2|Mux5~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(26)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(26),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(26),
	datad => \register_file|mux2|Mux5~0_combout\,
	combout => \arith_logic_unity|Res~12_combout\);

-- Location: LCCOMB_X110_Y30_N12
\register_file|mux1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux5~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(26)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(26),
	datad => \register_file|registers:1:regx|Q\(26),
	combout => \register_file|mux1|Mux5~0_combout\);

-- Location: FF_X110_Y30_N25
\register_file|registers:0:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(25));

-- Location: FF_X110_Y32_N7
\register_file|registers:1:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(25));

-- Location: LCCOMB_X110_Y32_N4
\arith_logic_unity|Res~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~11_combout\ = \register_file|mux2|Mux6~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(25)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:0:regx|Q\(25),
	datac => \register_file|mux2|Mux6~0_combout\,
	datad => \register_file|registers:1:regx|Q\(25),
	combout => \arith_logic_unity|Res~11_combout\);

-- Location: LCCOMB_X110_Y30_N30
\register_file|mux1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux6~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(25))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(25),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:0:regx|Q\(25),
	combout => \register_file|mux1|Mux6~0_combout\);

-- Location: FF_X110_Y30_N3
\register_file|registers:0:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(24));

-- Location: FF_X109_Y30_N31
\register_file|registers:1:regx|Q[24]\ : dffeas
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
	q => \register_file|registers:1:regx|Q\(24));

-- Location: LCCOMB_X110_Y30_N2
\arith_logic_unity|Res~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~10_combout\ = \register_file|mux2|Mux7~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(24)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux7~0_combout\,
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(24),
	datad => \register_file|registers:1:regx|Q\(24),
	combout => \arith_logic_unity|Res~10_combout\);

-- Location: LCCOMB_X109_Y30_N20
\register_file|mux1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux7~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(24))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(24),
	datad => \register_file|registers:0:regx|Q\(24),
	combout => \register_file|mux1|Mux7~0_combout\);

-- Location: FF_X109_Y29_N3
\register_file|registers:1:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(23));

-- Location: LCCOMB_X110_Y29_N2
\register_file|mux1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux8~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(23)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(23),
	datab => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:1:regx|Q\(23),
	combout => \register_file|mux1|Mux8~0_combout\);

-- Location: FF_X111_Y31_N25
\register_file|registers:2:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(22));

-- Location: LCCOMB_X111_Y31_N24
\register_file|mux2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux9~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(22)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(22))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(22),
	datad => \register_file|registers:0:regx|Q\(22),
	combout => \register_file|mux2|Mux9~0_combout\);

-- Location: FF_X110_Y32_N17
\register_file|registers:1:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(22));

-- Location: LCCOMB_X110_Y32_N18
\arith_logic_unity|Res~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~8_combout\ = \register_file|mux2|Mux9~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(22)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|mux2|Mux9~0_combout\,
	datac => \register_file|registers:0:regx|Q\(22),
	datad => \register_file|registers:1:regx|Q\(22),
	combout => \arith_logic_unity|Res~8_combout\);

-- Location: LCCOMB_X111_Y31_N10
\arith_logic_unity|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~29_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux9~0_combout\,
	combout => \arith_logic_unity|Add0~29_combout\);

-- Location: FF_X108_Y32_N9
\register_file|registers:1:regx|Q[21]\ : dffeas
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
	q => \register_file|registers:1:regx|Q\(21));

-- Location: FF_X108_Y32_N7
\register_file|registers:0:regx|Q[21]\ : dffeas
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
	q => \register_file|registers:0:regx|Q\(21));

-- Location: LCCOMB_X108_Y32_N16
\register_file|mux1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux10~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(21))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(21),
	datad => \register_file|registers:0:regx|Q\(21),
	combout => \register_file|mux1|Mux10~0_combout\);

-- Location: FF_X108_Y32_N31
\register_file|registers:1:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(20));

-- Location: LCCOMB_X108_Y32_N20
\register_file|registers:0:regx|Q[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[20]~feeder_combout\ = \register_file|registers:0:regx|Q~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~17_combout\,
	combout => \register_file|registers:0:regx|Q[20]~feeder_combout\);

-- Location: FF_X108_Y32_N21
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

-- Location: LCCOMB_X108_Y32_N24
\arith_logic_unity|Res~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~28_combout\ = \register_file|mux2|Mux11~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(20))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(20),
	datab => \register_file|registers:0:regx|Q\(20),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|mux2|Mux11~0_combout\,
	combout => \arith_logic_unity|Res~28_combout\);

-- Location: LCCOMB_X108_Y32_N26
\register_file|mux1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux11~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(20))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(20),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:0:regx|Q\(20),
	combout => \register_file|mux1|Mux11~0_combout\);

-- Location: FF_X108_Y29_N25
\register_file|registers:2:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(19));

-- Location: LCCOMB_X108_Y29_N20
\register_file|registers:0:regx|Q[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[19]~feeder_combout\ = \register_file|registers:0:regx|Q~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~18_combout\,
	combout => \register_file|registers:0:regx|Q[19]~feeder_combout\);

-- Location: FF_X108_Y29_N21
\register_file|registers:0:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(19));

-- Location: LCCOMB_X108_Y29_N24
\register_file|mux2|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux12~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(19)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(19))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(19),
	datad => \register_file|registers:0:regx|Q\(19),
	combout => \register_file|mux2|Mux12~0_combout\);

-- Location: LCCOMB_X108_Y32_N4
\arith_logic_unity|Res~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~27_combout\ = \register_file|mux2|Mux12~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(19))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(19),
	datab => \register_file|mux2|Mux12~0_combout\,
	datac => \register_file|registers:0:regx|Q\(19),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \arith_logic_unity|Res~27_combout\);

-- Location: LCCOMB_X108_Y29_N4
\arith_logic_unity|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~32_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux12~0_combout\,
	combout => \arith_logic_unity|Add0~32_combout\);

-- Location: FF_X108_Y32_N19
\register_file|registers:1:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(18));

-- Location: LCCOMB_X108_Y29_N18
\register_file|registers:0:regx|Q[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[18]~feeder_combout\ = \register_file|registers:0:regx|Q~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~19_combout\,
	combout => \register_file|registers:0:regx|Q[18]~feeder_combout\);

-- Location: FF_X108_Y29_N19
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

-- Location: LCCOMB_X108_Y29_N8
\register_file|mux1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux13~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(18))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(18),
	datad => \register_file|registers:0:regx|Q\(18),
	combout => \register_file|mux1|Mux13~0_combout\);

-- Location: FF_X111_Y31_N29
\register_file|registers:2:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(17));

-- Location: LCCOMB_X111_Y31_N28
\register_file|mux2|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux14~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(17)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(17))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(17),
	datad => \register_file|registers:0:regx|Q\(17),
	combout => \register_file|mux2|Mux14~0_combout\);

-- Location: FF_X108_Y31_N1
\register_file|registers:1:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(17));

-- Location: LCCOMB_X108_Y31_N14
\arith_logic_unity|Res~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~25_combout\ = \register_file|mux2|Mux14~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(17)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux14~0_combout\,
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(17),
	datad => \register_file|registers:1:regx|Q\(17),
	combout => \arith_logic_unity|Res~25_combout\);

-- Location: LCCOMB_X111_Y31_N6
\arith_logic_unity|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~34_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux14~0_combout\,
	combout => \arith_logic_unity|Add0~34_combout\);

-- Location: LCCOMB_X108_Y29_N12
\register_file|registers:0:regx|Q[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[16]~feeder_combout\ = \register_file|registers:0:regx|Q~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~21_combout\,
	combout => \register_file|registers:0:regx|Q[16]~feeder_combout\);

-- Location: FF_X108_Y29_N13
\register_file|registers:0:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(16));

-- Location: FF_X108_Y29_N29
\register_file|registers:2:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(16));

-- Location: LCCOMB_X108_Y29_N28
\register_file|mux2|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux15~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(16)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(16))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(16),
	datad => \register_file|registers:0:regx|Q\(16),
	combout => \register_file|mux2|Mux15~0_combout\);

-- Location: LCCOMB_X108_Y31_N12
\arith_logic_unity|Res~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~24_combout\ = \register_file|mux2|Mux15~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(16))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(16),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(16),
	datad => \register_file|mux2|Mux15~0_combout\,
	combout => \arith_logic_unity|Res~24_combout\);

-- Location: LCCOMB_X108_Y29_N16
\arith_logic_unity|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~35_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux15~0_combout\,
	combout => \arith_logic_unity|Add0~35_combout\);

-- Location: FF_X108_Y31_N25
\register_file|registers:1:regx|Q[15]\ : dffeas
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
	q => \register_file|registers:1:regx|Q\(15));

-- Location: FF_X108_Y31_N3
\register_file|registers:0:regx|Q[15]\ : dffeas
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
	q => \register_file|registers:0:regx|Q\(15));

-- Location: LCCOMB_X108_Y31_N16
\arith_logic_unity|Res~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~23_combout\ = \register_file|mux2|Mux16~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(15))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(15),
	datab => \register_file|registers:0:regx|Q\(15),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|mux2|Mux16~0_combout\,
	combout => \arith_logic_unity|Res~23_combout\);

-- Location: LCCOMB_X108_Y31_N28
\register_file|mux1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux16~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(15)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(15),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:1:regx|Q\(15),
	combout => \register_file|mux1|Mux16~0_combout\);

-- Location: FF_X107_Y31_N7
\register_file|registers:2:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(14));

-- Location: LCCOMB_X107_Y31_N6
\register_file|mux2|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux17~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(14)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(14))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(14),
	datad => \register_file|registers:0:regx|Q\(14),
	combout => \register_file|mux2|Mux17~0_combout\);

-- Location: FF_X108_Y31_N7
\register_file|registers:1:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(14));

-- Location: LCCOMB_X108_Y31_N4
\arith_logic_unity|Res~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~22_combout\ = \register_file|mux2|Mux17~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(14)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux17~0_combout\,
	datab => \register_file|registers:0:regx|Q\(14),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:1:regx|Q\(14),
	combout => \arith_logic_unity|Res~22_combout\);

-- Location: LCCOMB_X107_Y31_N26
\arith_logic_unity|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~37_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux17~0_combout\,
	combout => \arith_logic_unity|Add0~37_combout\);

-- Location: FF_X110_Y29_N19
\register_file|registers:2:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(13));

-- Location: LCCOMB_X110_Y29_N18
\register_file|mux2|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux18~0_combout\ = (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(13)) # ((\instruction_memory|Mux2~0_combout\ & \register_file|registers:2:regx|Q\(13))))) # (!\control|aluControl[0]~1_combout\ & 
-- (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(13),
	datad => \register_file|registers:0:regx|Q\(13),
	combout => \register_file|mux2|Mux18~0_combout\);

-- Location: FF_X110_Y31_N25
\register_file|registers:1:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(13));

-- Location: LCCOMB_X110_Y31_N6
\arith_logic_unity|Res~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~21_combout\ = \register_file|mux2|Mux18~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(13)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|mux2|Mux18~0_combout\,
	datac => \register_file|registers:0:regx|Q\(13),
	datad => \register_file|registers:1:regx|Q\(13),
	combout => \arith_logic_unity|Res~21_combout\);

-- Location: LCCOMB_X110_Y29_N26
\arith_logic_unity|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~38_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux18~0_combout\,
	combout => \arith_logic_unity|Add0~38_combout\);

-- Location: FF_X110_Y31_N27
\register_file|registers:1:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(12));

-- Location: FF_X110_Y31_N21
\register_file|registers:0:regx|Q[12]\ : dffeas
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
	q => \register_file|registers:0:regx|Q\(12));

-- Location: LCCOMB_X110_Y31_N20
\arith_logic_unity|Res~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~20_combout\ = \register_file|mux2|Mux19~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(12))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(12),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(12),
	datad => \register_file|mux2|Mux19~0_combout\,
	combout => \arith_logic_unity|Res~20_combout\);

-- Location: LCCOMB_X110_Y31_N22
\register_file|mux1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux19~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(12))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(12),
	datab => \register_file|registers:0:regx|Q\(12),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux1|Mux19~0_combout\);

-- Location: FF_X110_Y31_N17
\register_file|registers:1:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(11));

-- Location: FF_X110_Y31_N11
\register_file|registers:0:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(11));

-- Location: LCCOMB_X110_Y31_N10
\arith_logic_unity|Res~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~19_combout\ = \register_file|mux2|Mux20~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(11))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:1:regx|Q\(11),
	datac => \register_file|registers:0:regx|Q\(11),
	datad => \register_file|mux2|Mux20~0_combout\,
	combout => \arith_logic_unity|Res~19_combout\);

-- Location: LCCOMB_X110_Y31_N8
\register_file|mux1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux20~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(11)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(11),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:1:regx|Q\(11),
	combout => \register_file|mux1|Mux20~0_combout\);

-- Location: FF_X110_Y31_N3
\register_file|registers:0:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(10));

-- Location: FF_X110_Y31_N13
\register_file|registers:1:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(10));

-- Location: LCCOMB_X110_Y31_N28
\register_file|mux1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux21~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(10)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(10),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:1:regx|Q\(10),
	combout => \register_file|mux1|Mux21~0_combout\);

-- Location: FF_X109_Y29_N25
\register_file|registers:1:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(9));

-- Location: LCCOMB_X109_Y29_N22
\arith_logic_unity|Res~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~17_combout\ = \register_file|mux2|Mux22~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(9)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux22~0_combout\,
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(9),
	datad => \register_file|registers:1:regx|Q\(9),
	combout => \arith_logic_unity|Res~17_combout\);

-- Location: LCCOMB_X110_Y29_N8
\register_file|mux1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux22~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(9)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(9),
	datad => \register_file|registers:1:regx|Q\(9),
	combout => \register_file|mux1|Mux22~0_combout\);

-- Location: FF_X108_Y29_N7
\register_file|registers:2:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(8));

-- Location: LCCOMB_X108_Y29_N6
\register_file|mux2|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux23~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(8)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(8))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(8),
	datad => \register_file|registers:0:regx|Q\(8),
	combout => \register_file|mux2|Mux23~0_combout\);

-- Location: FF_X109_Y29_N11
\register_file|registers:1:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(8));

-- Location: LCCOMB_X109_Y29_N26
\arith_logic_unity|Res~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~16_combout\ = \register_file|mux2|Mux23~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(8)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(8),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|mux2|Mux23~0_combout\,
	datad => \register_file|registers:1:regx|Q\(8),
	combout => \arith_logic_unity|Res~16_combout\);

-- Location: LCCOMB_X108_Y29_N22
\arith_logic_unity|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~43_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux23~0_combout\,
	combout => \arith_logic_unity|Add0~43_combout\);

-- Location: FF_X110_Y29_N11
\register_file|registers:2:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(7));

-- Location: LCCOMB_X110_Y29_N10
\register_file|mux2|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux24~0_combout\ = (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(7)) # ((\instruction_memory|Mux2~0_combout\ & \register_file|registers:2:regx|Q\(7))))) # (!\control|aluControl[0]~1_combout\ & 
-- (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(7),
	datad => \register_file|registers:0:regx|Q\(7),
	combout => \register_file|mux2|Mux24~0_combout\);

-- Location: FF_X109_Y29_N21
\register_file|registers:1:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(7));

-- Location: LCCOMB_X109_Y29_N30
\arith_logic_unity|Res~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~15_combout\ = \register_file|mux2|Mux24~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(7)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux24~0_combout\,
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(7),
	datad => \register_file|registers:1:regx|Q\(7),
	combout => \arith_logic_unity|Res~15_combout\);

-- Location: LCCOMB_X110_Y29_N22
\arith_logic_unity|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~44_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux24~0_combout\,
	combout => \arith_logic_unity|Add0~44_combout\);

-- Location: FF_X109_Y32_N7
\register_file|registers:1:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(6));

-- Location: FF_X110_Y30_N19
\register_file|registers:2:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(6));

-- Location: LCCOMB_X110_Y30_N18
\register_file|mux2|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux25~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(6)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(6))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(6),
	datad => \register_file|registers:0:regx|Q\(6),
	combout => \register_file|mux2|Mux25~0_combout\);

-- Location: LCCOMB_X109_Y32_N4
\arith_logic_unity|Res~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~14_combout\ = \register_file|mux2|Mux25~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(6))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:1:regx|Q\(6),
	datac => \register_file|registers:0:regx|Q\(6),
	datad => \register_file|mux2|Mux25~0_combout\,
	combout => \arith_logic_unity|Res~14_combout\);

-- Location: LCCOMB_X110_Y30_N10
\arith_logic_unity|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~45_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux25~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux25~0_combout\,
	combout => \arith_logic_unity|Add0~45_combout\);

-- Location: LCCOMB_X110_Y33_N0
\register_file|registers:0:regx|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~0_combout\ = (!\rst~input_o\ & (!\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \instruction_memory|Mux4~0_combout\,
	datad => \arith_logic_unity|Mux26~0_combout\,
	combout => \register_file|registers:0:regx|Q~0_combout\);

-- Location: FF_X108_Y30_N13
\register_file|registers:0:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(5));

-- Location: LCCOMB_X108_Y30_N28
\register_file|mux1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux26~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(5))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(5),
	datab => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:0:regx|Q\(5),
	combout => \register_file|mux1|Mux26~0_combout\);

-- Location: FF_X109_Y30_N19
\register_file|registers:2:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(5));

-- Location: LCCOMB_X109_Y30_N18
\register_file|mux2|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux26~0_combout\ = (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(5)) # ((\instruction_memory|Mux2~0_combout\ & \register_file|registers:2:regx|Q\(5))))) # (!\control|aluControl[0]~1_combout\ & 
-- (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(5),
	datad => \register_file|registers:0:regx|Q\(5),
	combout => \register_file|mux2|Mux26~0_combout\);

-- Location: LCCOMB_X109_Y30_N24
\arith_logic_unity|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~0_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux26~0_combout\,
	combout => \arith_logic_unity|Add0~0_combout\);

-- Location: FF_X108_Y30_N9
\register_file|registers:1:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(4));

-- Location: FF_X108_Y30_N23
\register_file|registers:0:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(4));

-- Location: LCCOMB_X108_Y30_N14
\register_file|mux1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux27~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(4))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:1:regx|Q\(4),
	datac => \register_file|registers:0:regx|Q\(4),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux1|Mux27~0_combout\);

-- Location: FF_X110_Y32_N9
\register_file|registers:1:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(3));

-- Location: FF_X110_Y29_N3
\register_file|registers:0:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(3));

-- Location: LCCOMB_X110_Y32_N2
\arith_logic_unity|Res~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~6_combout\ = \register_file|mux2|Mux28~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(3))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|mux2|Mux28~0_combout\,
	datac => \register_file|registers:1:regx|Q\(3),
	datad => \register_file|registers:0:regx|Q\(3),
	combout => \arith_logic_unity|Res~6_combout\);

-- Location: LCCOMB_X110_Y29_N14
\register_file|mux1|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux28~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(3)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:0:regx|Q\(3),
	datad => \register_file|registers:1:regx|Q\(3),
	combout => \register_file|mux1|Mux28~0_combout\);

-- Location: LCCOMB_X113_Y33_N30
\aluOp2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[2]~0_combout\ = (\PC|Q\(4)) # ((\PC|Q\(5)) # (\PC|Q\(2) $ (\PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \aluOp2[2]~0_combout\);

-- Location: LCCOMB_X113_Y33_N8
\aluOp2[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[2]~7_combout\ = (\instruction_memory|Mux8~0_combout\ & ((\instruction_memory|Mux4~0_combout\) # ((!\instruction_memory|Mux2~0_combout\ & \instruction_memory|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \instruction_memory|Mux8~0_combout\,
	datad => \instruction_memory|Mux1~0_combout\,
	combout => \aluOp2[2]~7_combout\);

-- Location: FF_X110_Y32_N15
\register_file|registers:1:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(2));

-- Location: FF_X110_Y33_N7
\register_file|registers:0:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(2));

-- Location: LCCOMB_X110_Y32_N14
\register_file|mux1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux29~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(2))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(2),
	datad => \register_file|registers:0:regx|Q\(2),
	combout => \register_file|mux1|Mux29~0_combout\);

-- Location: LCCOMB_X112_Y32_N8
\register_file|registers:2:regx|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[1]~feeder_combout\ = \register_file|registers:0:regx|Q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~4_combout\,
	combout => \register_file|registers:2:regx|Q[1]~feeder_combout\);

-- Location: FF_X112_Y32_N9
\register_file|registers:2:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(1));

-- Location: LCCOMB_X112_Y32_N4
\aluOp2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[1]~1_combout\ = (\aluOp2[2]~0_combout\ & ((\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(1))) # (!\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:0:regx|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[2]~0_combout\,
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(1),
	datad => \register_file|registers:0:regx|Q\(1),
	combout => \aluOp2[1]~1_combout\);

-- Location: LCCOMB_X109_Y32_N8
\arith_logic_unity|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~4_combout\ = \control|aluControl[2]~0_combout\ $ (\aluOp2[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datad => \aluOp2[1]~1_combout\,
	combout => \arith_logic_unity|Add0~4_combout\);

-- Location: LCCOMB_X113_Y33_N22
\aluOp2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[0]~3_combout\ = (\instruction_memory|Mux10~0_combout\ & ((\instruction_memory|Mux4~0_combout\) # ((\instruction_memory|Mux1~0_combout\ & !\instruction_memory|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \instruction_memory|Mux4~0_combout\,
	datad => \instruction_memory|Mux10~0_combout\,
	combout => \aluOp2[0]~3_combout\);

-- Location: FF_X110_Y33_N11
\register_file|registers:2:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(0));

-- Location: FF_X110_Y33_N5
\register_file|registers:0:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(0));

-- Location: LCCOMB_X110_Y33_N10
\aluOp2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[0]~2_combout\ = (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(0))) # (!\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:0:regx|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(0),
	datad => \register_file|registers:0:regx|Q\(0),
	combout => \aluOp2[0]~2_combout\);

-- Location: LCCOMB_X110_Y33_N30
\arith_logic_unity|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~5_combout\ = \control|aluControl[2]~0_combout\ $ (((\aluOp2[0]~3_combout\) # ((\aluOp2[2]~0_combout\ & \aluOp2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \aluOp2[2]~0_combout\,
	datac => \aluOp2[0]~3_combout\,
	datad => \aluOp2[0]~2_combout\,
	combout => \arith_logic_unity|Add0~5_combout\);

-- Location: LCCOMB_X109_Y32_N16
\arith_logic_unity|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~7_cout\ = CARRY(\control|aluControl[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cout => \arith_logic_unity|Add0~7_cout\);

-- Location: LCCOMB_X109_Y32_N18
\arith_logic_unity|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~8_combout\ = (\register_file|mux1|Mux31~0_combout\ & ((\arith_logic_unity|Add0~5_combout\ & (\arith_logic_unity|Add0~7_cout\ & VCC)) # (!\arith_logic_unity|Add0~5_combout\ & (!\arith_logic_unity|Add0~7_cout\)))) # 
-- (!\register_file|mux1|Mux31~0_combout\ & ((\arith_logic_unity|Add0~5_combout\ & (!\arith_logic_unity|Add0~7_cout\)) # (!\arith_logic_unity|Add0~5_combout\ & ((\arith_logic_unity|Add0~7_cout\) # (GND)))))
-- \arith_logic_unity|Add0~9\ = CARRY((\register_file|mux1|Mux31~0_combout\ & (!\arith_logic_unity|Add0~5_combout\ & !\arith_logic_unity|Add0~7_cout\)) # (!\register_file|mux1|Mux31~0_combout\ & ((!\arith_logic_unity|Add0~7_cout\) # 
-- (!\arith_logic_unity|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux31~0_combout\,
	datab => \arith_logic_unity|Add0~5_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~7_cout\,
	combout => \arith_logic_unity|Add0~8_combout\,
	cout => \arith_logic_unity|Add0~9\);

-- Location: FF_X108_Y30_N3
\register_file|registers:0:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(31));

-- Location: FF_X109_Y30_N23
\register_file|registers:2:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(31));

-- Location: LCCOMB_X109_Y30_N22
\register_file|mux2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux0~0_combout\ = (\register_file|registers:0:regx|Q\(31) & ((\control|aluControl[0]~1_combout\) # ((\instruction_memory|Mux2~0_combout\ & \register_file|registers:2:regx|Q\(31))))) # (!\register_file|registers:0:regx|Q\(31) & 
-- (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(31),
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(31),
	datad => \control|aluControl[0]~1_combout\,
	combout => \register_file|mux2|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y30_N2
\arith_logic_unity|Res~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~7_combout\ = \register_file|mux2|Mux0~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(31))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux0~0_combout\,
	datab => \register_file|registers:1:regx|Q\(31),
	datac => \register_file|registers:0:regx|Q\(31),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \arith_logic_unity|Res~7_combout\);

-- Location: LCCOMB_X110_Y30_N24
\arith_logic_unity|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~20_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux0~0_combout\,
	combout => \arith_logic_unity|Add0~20_combout\);

-- Location: FF_X108_Y30_N21
\register_file|registers:1:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(30));

-- Location: LCCOMB_X108_Y30_N20
\arith_logic_unity|Res~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~31_combout\ = \register_file|mux2|Mux1~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(30)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(30),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(30),
	datad => \register_file|mux2|Mux1~0_combout\,
	combout => \arith_logic_unity|Res~31_combout\);

-- Location: LCCOMB_X108_Y30_N0
\register_file|mux1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux1~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(30))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:1:regx|Q\(30),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:0:regx|Q\(30),
	combout => \register_file|mux1|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y30_N12
\arith_logic_unity|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~92_combout\ = ((\register_file|mux1|Mux2~0_combout\ $ (\arith_logic_unity|Add0~22_combout\ $ (!\arith_logic_unity|Add0~91\)))) # (GND)
-- \arith_logic_unity|Add0~93\ = CARRY((\register_file|mux1|Mux2~0_combout\ & ((\arith_logic_unity|Add0~22_combout\) # (!\arith_logic_unity|Add0~91\))) # (!\register_file|mux1|Mux2~0_combout\ & (\arith_logic_unity|Add0~22_combout\ & 
-- !\arith_logic_unity|Add0~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux2~0_combout\,
	datab => \arith_logic_unity|Add0~22_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~91\,
	combout => \arith_logic_unity|Add0~92_combout\,
	cout => \arith_logic_unity|Add0~93\);

-- Location: LCCOMB_X109_Y30_N14
\arith_logic_unity|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~94_combout\ = (\arith_logic_unity|Add0~21_combout\ & ((\register_file|mux1|Mux1~0_combout\ & (\arith_logic_unity|Add0~93\ & VCC)) # (!\register_file|mux1|Mux1~0_combout\ & (!\arith_logic_unity|Add0~93\)))) # 
-- (!\arith_logic_unity|Add0~21_combout\ & ((\register_file|mux1|Mux1~0_combout\ & (!\arith_logic_unity|Add0~93\)) # (!\register_file|mux1|Mux1~0_combout\ & ((\arith_logic_unity|Add0~93\) # (GND)))))
-- \arith_logic_unity|Add0~95\ = CARRY((\arith_logic_unity|Add0~21_combout\ & (!\register_file|mux1|Mux1~0_combout\ & !\arith_logic_unity|Add0~93\)) # (!\arith_logic_unity|Add0~21_combout\ & ((!\arith_logic_unity|Add0~93\) # 
-- (!\register_file|mux1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~21_combout\,
	datab => \register_file|mux1|Mux1~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~93\,
	combout => \arith_logic_unity|Add0~94_combout\,
	cout => \arith_logic_unity|Add0~95\);

-- Location: LCCOMB_X108_Y30_N26
\arith_logic_unity|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux1~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~31_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datac => \arith_logic_unity|Res~31_combout\,
	datad => \arith_logic_unity|Add0~94_combout\,
	combout => \arith_logic_unity|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y30_N22
\register_file|registers:0:regx|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~7_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux1~0_combout\,
	combout => \register_file|registers:0:regx|Q~7_combout\);

-- Location: FF_X108_Y30_N11
\register_file|registers:0:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(30));

-- Location: FF_X109_Y30_N29
\register_file|registers:2:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(30));

-- Location: LCCOMB_X109_Y30_N28
\register_file|mux2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux1~0_combout\ = (\register_file|registers:0:regx|Q\(30) & ((\control|aluControl[0]~1_combout\) # ((\instruction_memory|Mux2~0_combout\ & \register_file|registers:2:regx|Q\(30))))) # (!\register_file|registers:0:regx|Q\(30) & 
-- (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(30),
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(30),
	datad => \control|aluControl[0]~1_combout\,
	combout => \register_file|mux2|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y30_N30
\arith_logic_unity|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~21_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux1~0_combout\,
	combout => \arith_logic_unity|Add0~21_combout\);

-- Location: LCCOMB_X109_Y30_N16
\arith_logic_unity|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~96_combout\ = \arith_logic_unity|Add0~20_combout\ $ (\arith_logic_unity|Add0~95\ $ (!\register_file|mux1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~20_combout\,
	datad => \register_file|mux1|Mux0~0_combout\,
	cin => \arith_logic_unity|Add0~95\,
	combout => \arith_logic_unity|Add0~96_combout\);

-- Location: LCCOMB_X109_Y33_N6
\arith_logic_unity|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux0~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~7_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Res~7_combout\,
	datac => \control|aluControl[0]~1_combout\,
	datad => \arith_logic_unity|Add0~96_combout\,
	combout => \arith_logic_unity|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y30_N10
\register_file|registers:0:regx|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~6_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux0~0_combout\,
	combout => \register_file|registers:0:regx|Q~6_combout\);

-- Location: FF_X108_Y30_N29
\register_file|registers:1:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(31));

-- Location: LCCOMB_X108_Y30_N30
\register_file|mux1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux0~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(31))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:1:regx|Q\(31),
	datad => \register_file|registers:0:regx|Q\(31),
	combout => \register_file|mux1|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y33_N20
\aluOp2[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[2]~4_combout\ = (\aluOp2[2]~7_combout\) # ((\aluOp2[2]~0_combout\ & \aluOp2[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluOp2[2]~0_combout\,
	datac => \aluOp2[2]~7_combout\,
	datad => \aluOp2[2]~6_combout\,
	combout => \aluOp2[2]~4_combout\);

-- Location: LCCOMB_X110_Y33_N28
\aluOp2[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[0]~5_combout\ = (\aluOp2[0]~3_combout\) # ((\aluOp2[2]~0_combout\ & \aluOp2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluOp2[2]~0_combout\,
	datac => \aluOp2[0]~3_combout\,
	datad => \aluOp2[0]~2_combout\,
	combout => \aluOp2[0]~5_combout\);

-- Location: LCCOMB_X111_Y30_N0
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

-- Location: LCCOMB_X111_Y30_N2
\arith_logic_unity|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~3_cout\ = CARRY((\aluOp2[1]~1_combout\ & (\register_file|mux1|Mux30~0_combout\ & !\arith_logic_unity|LessThan0~1_cout\)) # (!\aluOp2[1]~1_combout\ & ((\register_file|mux1|Mux30~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[1]~1_combout\,
	datab => \register_file|mux1|Mux30~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~1_cout\,
	cout => \arith_logic_unity|LessThan0~3_cout\);

-- Location: LCCOMB_X111_Y30_N4
\arith_logic_unity|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~5_cout\ = CARRY((\aluOp2[2]~4_combout\ & ((!\arith_logic_unity|LessThan0~3_cout\) # (!\register_file|mux1|Mux29~0_combout\))) # (!\aluOp2[2]~4_combout\ & (!\register_file|mux1|Mux29~0_combout\ & 
-- !\arith_logic_unity|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[2]~4_combout\,
	datab => \register_file|mux1|Mux29~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~3_cout\,
	cout => \arith_logic_unity|LessThan0~5_cout\);

-- Location: LCCOMB_X111_Y30_N6
\arith_logic_unity|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~7_cout\ = CARRY((\register_file|mux1|Mux28~0_combout\ & ((!\arith_logic_unity|LessThan0~5_cout\) # (!\register_file|mux2|Mux28~0_combout\))) # (!\register_file|mux1|Mux28~0_combout\ & (!\register_file|mux2|Mux28~0_combout\ & 
-- !\arith_logic_unity|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux28~0_combout\,
	datab => \register_file|mux2|Mux28~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~5_cout\,
	cout => \arith_logic_unity|LessThan0~7_cout\);

-- Location: LCCOMB_X111_Y30_N8
\arith_logic_unity|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~9_cout\ = CARRY((\register_file|mux2|Mux27~0_combout\ & ((!\arith_logic_unity|LessThan0~7_cout\) # (!\register_file|mux1|Mux27~0_combout\))) # (!\register_file|mux2|Mux27~0_combout\ & (!\register_file|mux1|Mux27~0_combout\ & 
-- !\arith_logic_unity|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux27~0_combout\,
	datab => \register_file|mux1|Mux27~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~7_cout\,
	cout => \arith_logic_unity|LessThan0~9_cout\);

-- Location: LCCOMB_X111_Y30_N10
\arith_logic_unity|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~11_cout\ = CARRY((\register_file|mux2|Mux26~0_combout\ & (\register_file|mux1|Mux26~0_combout\ & !\arith_logic_unity|LessThan0~9_cout\)) # (!\register_file|mux2|Mux26~0_combout\ & ((\register_file|mux1|Mux26~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux26~0_combout\,
	datab => \register_file|mux1|Mux26~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~9_cout\,
	cout => \arith_logic_unity|LessThan0~11_cout\);

-- Location: LCCOMB_X111_Y30_N12
\arith_logic_unity|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~13_cout\ = CARRY((\register_file|mux1|Mux25~0_combout\ & (\register_file|mux2|Mux25~0_combout\ & !\arith_logic_unity|LessThan0~11_cout\)) # (!\register_file|mux1|Mux25~0_combout\ & ((\register_file|mux2|Mux25~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~0_combout\,
	datab => \register_file|mux2|Mux25~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~11_cout\,
	cout => \arith_logic_unity|LessThan0~13_cout\);

-- Location: LCCOMB_X111_Y30_N14
\arith_logic_unity|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~15_cout\ = CARRY((\register_file|mux1|Mux24~0_combout\ & ((!\arith_logic_unity|LessThan0~13_cout\) # (!\register_file|mux2|Mux24~0_combout\))) # (!\register_file|mux1|Mux24~0_combout\ & (!\register_file|mux2|Mux24~0_combout\ & 
-- !\arith_logic_unity|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux24~0_combout\,
	datab => \register_file|mux2|Mux24~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~13_cout\,
	cout => \arith_logic_unity|LessThan0~15_cout\);

-- Location: LCCOMB_X111_Y30_N16
\arith_logic_unity|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~17_cout\ = CARRY((\register_file|mux1|Mux23~0_combout\ & (\register_file|mux2|Mux23~0_combout\ & !\arith_logic_unity|LessThan0~15_cout\)) # (!\register_file|mux1|Mux23~0_combout\ & ((\register_file|mux2|Mux23~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux23~0_combout\,
	datab => \register_file|mux2|Mux23~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~15_cout\,
	cout => \arith_logic_unity|LessThan0~17_cout\);

-- Location: LCCOMB_X111_Y30_N18
\arith_logic_unity|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~19_cout\ = CARRY((\register_file|mux2|Mux22~0_combout\ & (\register_file|mux1|Mux22~0_combout\ & !\arith_logic_unity|LessThan0~17_cout\)) # (!\register_file|mux2|Mux22~0_combout\ & ((\register_file|mux1|Mux22~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux22~0_combout\,
	datab => \register_file|mux1|Mux22~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~17_cout\,
	cout => \arith_logic_unity|LessThan0~19_cout\);

-- Location: LCCOMB_X111_Y30_N20
\arith_logic_unity|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~21_cout\ = CARRY((\register_file|mux1|Mux21~0_combout\ & (\register_file|mux2|Mux21~0_combout\ & !\arith_logic_unity|LessThan0~19_cout\)) # (!\register_file|mux1|Mux21~0_combout\ & ((\register_file|mux2|Mux21~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux21~0_combout\,
	datab => \register_file|mux2|Mux21~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~19_cout\,
	cout => \arith_logic_unity|LessThan0~21_cout\);

-- Location: LCCOMB_X111_Y30_N22
\arith_logic_unity|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~23_cout\ = CARRY((\register_file|mux1|Mux20~0_combout\ & ((!\arith_logic_unity|LessThan0~21_cout\) # (!\register_file|mux2|Mux20~0_combout\))) # (!\register_file|mux1|Mux20~0_combout\ & (!\register_file|mux2|Mux20~0_combout\ & 
-- !\arith_logic_unity|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux20~0_combout\,
	datab => \register_file|mux2|Mux20~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~21_cout\,
	cout => \arith_logic_unity|LessThan0~23_cout\);

-- Location: LCCOMB_X111_Y30_N24
\arith_logic_unity|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~25_cout\ = CARRY((\register_file|mux2|Mux19~0_combout\ & ((!\arith_logic_unity|LessThan0~23_cout\) # (!\register_file|mux1|Mux19~0_combout\))) # (!\register_file|mux2|Mux19~0_combout\ & (!\register_file|mux1|Mux19~0_combout\ & 
-- !\arith_logic_unity|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux19~0_combout\,
	datab => \register_file|mux1|Mux19~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~23_cout\,
	cout => \arith_logic_unity|LessThan0~25_cout\);

-- Location: LCCOMB_X111_Y30_N26
\arith_logic_unity|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~27_cout\ = CARRY((\register_file|mux2|Mux18~0_combout\ & (\register_file|mux1|Mux18~0_combout\ & !\arith_logic_unity|LessThan0~25_cout\)) # (!\register_file|mux2|Mux18~0_combout\ & ((\register_file|mux1|Mux18~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux18~0_combout\,
	datab => \register_file|mux1|Mux18~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~25_cout\,
	cout => \arith_logic_unity|LessThan0~27_cout\);

-- Location: LCCOMB_X111_Y30_N28
\arith_logic_unity|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~29_cout\ = CARRY((\register_file|mux1|Mux17~0_combout\ & (\register_file|mux2|Mux17~0_combout\ & !\arith_logic_unity|LessThan0~27_cout\)) # (!\register_file|mux1|Mux17~0_combout\ & ((\register_file|mux2|Mux17~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux17~0_combout\,
	datab => \register_file|mux2|Mux17~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~27_cout\,
	cout => \arith_logic_unity|LessThan0~29_cout\);

-- Location: LCCOMB_X111_Y30_N30
\arith_logic_unity|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~31_cout\ = CARRY((\register_file|mux2|Mux16~0_combout\ & (\register_file|mux1|Mux16~0_combout\ & !\arith_logic_unity|LessThan0~29_cout\)) # (!\register_file|mux2|Mux16~0_combout\ & ((\register_file|mux1|Mux16~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux16~0_combout\,
	datab => \register_file|mux1|Mux16~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~29_cout\,
	cout => \arith_logic_unity|LessThan0~31_cout\);

-- Location: LCCOMB_X111_Y29_N0
\arith_logic_unity|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~33_cout\ = CARRY((\register_file|mux2|Mux15~0_combout\ & ((!\arith_logic_unity|LessThan0~31_cout\) # (!\register_file|mux1|Mux15~0_combout\))) # (!\register_file|mux2|Mux15~0_combout\ & (!\register_file|mux1|Mux15~0_combout\ & 
-- !\arith_logic_unity|LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux15~0_combout\,
	datab => \register_file|mux1|Mux15~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~31_cout\,
	cout => \arith_logic_unity|LessThan0~33_cout\);

-- Location: LCCOMB_X111_Y29_N2
\arith_logic_unity|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~35_cout\ = CARRY((\register_file|mux2|Mux14~0_combout\ & (\register_file|mux1|Mux14~0_combout\ & !\arith_logic_unity|LessThan0~33_cout\)) # (!\register_file|mux2|Mux14~0_combout\ & ((\register_file|mux1|Mux14~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux14~0_combout\,
	datab => \register_file|mux1|Mux14~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~33_cout\,
	cout => \arith_logic_unity|LessThan0~35_cout\);

-- Location: LCCOMB_X111_Y29_N4
\arith_logic_unity|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~37_cout\ = CARRY((\register_file|mux2|Mux13~0_combout\ & ((!\arith_logic_unity|LessThan0~35_cout\) # (!\register_file|mux1|Mux13~0_combout\))) # (!\register_file|mux2|Mux13~0_combout\ & (!\register_file|mux1|Mux13~0_combout\ & 
-- !\arith_logic_unity|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux13~0_combout\,
	datab => \register_file|mux1|Mux13~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~35_cout\,
	cout => \arith_logic_unity|LessThan0~37_cout\);

-- Location: LCCOMB_X111_Y29_N6
\arith_logic_unity|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~39_cout\ = CARRY((\register_file|mux2|Mux12~0_combout\ & (\register_file|mux1|Mux12~0_combout\ & !\arith_logic_unity|LessThan0~37_cout\)) # (!\register_file|mux2|Mux12~0_combout\ & ((\register_file|mux1|Mux12~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux12~0_combout\,
	datab => \register_file|mux1|Mux12~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~37_cout\,
	cout => \arith_logic_unity|LessThan0~39_cout\);

-- Location: LCCOMB_X111_Y29_N8
\arith_logic_unity|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~41_cout\ = CARRY((\register_file|mux1|Mux11~0_combout\ & (\register_file|mux2|Mux11~0_combout\ & !\arith_logic_unity|LessThan0~39_cout\)) # (!\register_file|mux1|Mux11~0_combout\ & ((\register_file|mux2|Mux11~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux11~0_combout\,
	datab => \register_file|mux2|Mux11~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~39_cout\,
	cout => \arith_logic_unity|LessThan0~41_cout\);

-- Location: LCCOMB_X111_Y29_N10
\arith_logic_unity|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~43_cout\ = CARRY((\register_file|mux1|Mux10~0_combout\ & ((!\arith_logic_unity|LessThan0~41_cout\) # (!\register_file|mux2|Mux10~0_combout\))) # (!\register_file|mux1|Mux10~0_combout\ & (!\register_file|mux2|Mux10~0_combout\ & 
-- !\arith_logic_unity|LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux10~0_combout\,
	datab => \register_file|mux2|Mux10~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~41_cout\,
	cout => \arith_logic_unity|LessThan0~43_cout\);

-- Location: LCCOMB_X111_Y29_N12
\arith_logic_unity|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~45_cout\ = CARRY((\register_file|mux1|Mux9~0_combout\ & (\register_file|mux2|Mux9~0_combout\ & !\arith_logic_unity|LessThan0~43_cout\)) # (!\register_file|mux1|Mux9~0_combout\ & ((\register_file|mux2|Mux9~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux9~0_combout\,
	datab => \register_file|mux2|Mux9~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~43_cout\,
	cout => \arith_logic_unity|LessThan0~45_cout\);

-- Location: LCCOMB_X111_Y29_N14
\arith_logic_unity|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~47_cout\ = CARRY((\register_file|mux1|Mux8~0_combout\ & ((!\arith_logic_unity|LessThan0~45_cout\) # (!\register_file|mux2|Mux8~0_combout\))) # (!\register_file|mux1|Mux8~0_combout\ & (!\register_file|mux2|Mux8~0_combout\ & 
-- !\arith_logic_unity|LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux8~0_combout\,
	datab => \register_file|mux2|Mux8~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~45_cout\,
	cout => \arith_logic_unity|LessThan0~47_cout\);

-- Location: LCCOMB_X111_Y29_N16
\arith_logic_unity|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~49_cout\ = CARRY((\register_file|mux1|Mux7~0_combout\ & (\register_file|mux2|Mux7~0_combout\ & !\arith_logic_unity|LessThan0~47_cout\)) # (!\register_file|mux1|Mux7~0_combout\ & ((\register_file|mux2|Mux7~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux7~0_combout\,
	datab => \register_file|mux2|Mux7~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~47_cout\,
	cout => \arith_logic_unity|LessThan0~49_cout\);

-- Location: LCCOMB_X111_Y29_N18
\arith_logic_unity|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~51_cout\ = CARRY((\register_file|mux1|Mux6~0_combout\ & ((!\arith_logic_unity|LessThan0~49_cout\) # (!\register_file|mux2|Mux6~0_combout\))) # (!\register_file|mux1|Mux6~0_combout\ & (!\register_file|mux2|Mux6~0_combout\ & 
-- !\arith_logic_unity|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux6~0_combout\,
	datab => \register_file|mux2|Mux6~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~49_cout\,
	cout => \arith_logic_unity|LessThan0~51_cout\);

-- Location: LCCOMB_X111_Y29_N20
\arith_logic_unity|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~53_cout\ = CARRY((\register_file|mux2|Mux5~0_combout\ & ((!\arith_logic_unity|LessThan0~51_cout\) # (!\register_file|mux1|Mux5~0_combout\))) # (!\register_file|mux2|Mux5~0_combout\ & (!\register_file|mux1|Mux5~0_combout\ & 
-- !\arith_logic_unity|LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux5~0_combout\,
	datab => \register_file|mux1|Mux5~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~51_cout\,
	cout => \arith_logic_unity|LessThan0~53_cout\);

-- Location: LCCOMB_X111_Y29_N22
\arith_logic_unity|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~55_cout\ = CARRY((\register_file|mux2|Mux4~0_combout\ & (\register_file|mux1|Mux4~0_combout\ & !\arith_logic_unity|LessThan0~53_cout\)) # (!\register_file|mux2|Mux4~0_combout\ & ((\register_file|mux1|Mux4~0_combout\) # 
-- (!\arith_logic_unity|LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux4~0_combout\,
	datab => \register_file|mux1|Mux4~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~53_cout\,
	cout => \arith_logic_unity|LessThan0~55_cout\);

-- Location: LCCOMB_X111_Y29_N24
\arith_logic_unity|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~57_cout\ = CARRY((\register_file|mux2|Mux3~0_combout\ & ((!\arith_logic_unity|LessThan0~55_cout\) # (!\register_file|mux1|Mux3~0_combout\))) # (!\register_file|mux2|Mux3~0_combout\ & (!\register_file|mux1|Mux3~0_combout\ & 
-- !\arith_logic_unity|LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux3~0_combout\,
	datab => \register_file|mux1|Mux3~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~55_cout\,
	cout => \arith_logic_unity|LessThan0~57_cout\);

-- Location: LCCOMB_X111_Y29_N26
\arith_logic_unity|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~59_cout\ = CARRY((\register_file|mux1|Mux2~0_combout\ & ((!\arith_logic_unity|LessThan0~57_cout\) # (!\register_file|mux2|Mux2~0_combout\))) # (!\register_file|mux1|Mux2~0_combout\ & (!\register_file|mux2|Mux2~0_combout\ & 
-- !\arith_logic_unity|LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux2~0_combout\,
	datab => \register_file|mux2|Mux2~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~57_cout\,
	cout => \arith_logic_unity|LessThan0~59_cout\);

-- Location: LCCOMB_X111_Y29_N28
\arith_logic_unity|LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~61_cout\ = CARRY((\register_file|mux2|Mux1~0_combout\ & ((!\arith_logic_unity|LessThan0~59_cout\) # (!\register_file|mux1|Mux1~0_combout\))) # (!\register_file|mux2|Mux1~0_combout\ & (!\register_file|mux1|Mux1~0_combout\ & 
-- !\arith_logic_unity|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux1~0_combout\,
	datab => \register_file|mux1|Mux1~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~59_cout\,
	cout => \arith_logic_unity|LessThan0~61_cout\);

-- Location: LCCOMB_X111_Y29_N30
\arith_logic_unity|LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~62_combout\ = (\register_file|mux1|Mux0~0_combout\ & (\arith_logic_unity|LessThan0~61_cout\ & \register_file|mux2|Mux0~0_combout\)) # (!\register_file|mux1|Mux0~0_combout\ & ((\arith_logic_unity|LessThan0~61_cout\) # 
-- (\register_file|mux2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux0~0_combout\,
	datad => \register_file|mux2|Mux0~0_combout\,
	cin => \arith_logic_unity|LessThan0~61_cout\,
	combout => \arith_logic_unity|LessThan0~62_combout\);

-- Location: LCCOMB_X110_Y33_N18
\arith_logic_unity|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~0_combout\ = (\control|aluControl[2]~0_combout\ & (((\arith_logic_unity|LessThan0~62_combout\)))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux31~0_combout\ $ (((\aluOp2[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \register_file|mux1|Mux31~0_combout\,
	datac => \arith_logic_unity|LessThan0~62_combout\,
	datad => \aluOp2[0]~5_combout\,
	combout => \arith_logic_unity|Mux31~0_combout\);

-- Location: LCCOMB_X109_Y33_N8
\arith_logic_unity|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~1_combout\ = (\control|aluControl[0]~1_combout\ & ((\arith_logic_unity|Mux31~0_combout\))) # (!\control|aluControl[0]~1_combout\ & (\arith_logic_unity|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Add0~8_combout\,
	datad => \arith_logic_unity|Mux31~0_combout\,
	combout => \arith_logic_unity|Mux31~1_combout\);

-- Location: LCCOMB_X110_Y33_N24
\register_file|registers:0:regx|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~5_combout\ = (!\rst~input_o\ & ((\instruction_memory|Mux4~0_combout\ & (\data_memory|Mux31~0_combout\)) # (!\instruction_memory|Mux4~0_combout\ & ((\arith_logic_unity|Mux31~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux31~0_combout\,
	datab => \rst~input_o\,
	datac => \instruction_memory|Mux4~0_combout\,
	datad => \arith_logic_unity|Mux31~1_combout\,
	combout => \register_file|registers:0:regx|Q~5_combout\);

-- Location: FF_X110_Y32_N21
\register_file|registers:1:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(0));

-- Location: LCCOMB_X110_Y32_N20
\register_file|mux1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux31~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(0))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(0),
	datad => \register_file|registers:0:regx|Q\(0),
	combout => \register_file|mux1|Mux31~0_combout\);

-- Location: LCCOMB_X109_Y32_N20
\arith_logic_unity|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~10_combout\ = ((\register_file|mux1|Mux30~0_combout\ $ (\arith_logic_unity|Add0~4_combout\ $ (!\arith_logic_unity|Add0~9\)))) # (GND)
-- \arith_logic_unity|Add0~11\ = CARRY((\register_file|mux1|Mux30~0_combout\ & ((\arith_logic_unity|Add0~4_combout\) # (!\arith_logic_unity|Add0~9\))) # (!\register_file|mux1|Mux30~0_combout\ & (\arith_logic_unity|Add0~4_combout\ & 
-- !\arith_logic_unity|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux30~0_combout\,
	datab => \arith_logic_unity|Add0~4_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~9\,
	combout => \arith_logic_unity|Add0~10_combout\,
	cout => \arith_logic_unity|Add0~11\);

-- Location: LCCOMB_X111_Y32_N24
\register_file|registers:1:regx|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[1]~feeder_combout\ = \register_file|registers:0:regx|Q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q~4_combout\,
	combout => \register_file|registers:1:regx|Q[1]~feeder_combout\);

-- Location: FF_X111_Y32_N25
\register_file|registers:1:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(1));

-- Location: LCCOMB_X112_Y32_N28
\arith_logic_unity|Res~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~30_combout\ = \aluOp2[1]~1_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(1)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(1),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \aluOp2[1]~1_combout\,
	datad => \register_file|registers:1:regx|Q\(1),
	combout => \arith_logic_unity|Res~30_combout\);

-- Location: LCCOMB_X109_Y32_N12
\arith_logic_unity|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux30~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Res~30_combout\)))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Add0~10_combout\,
	datad => \arith_logic_unity|Res~30_combout\,
	combout => \arith_logic_unity|Mux30~0_combout\);

-- Location: LCCOMB_X110_Y32_N8
\register_file|registers:0:regx|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~4_combout\ = (\arith_logic_unity|Mux30~0_combout\ & (!\rst~input_o\ & !\instruction_memory|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux30~0_combout\,
	datab => \rst~input_o\,
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \register_file|registers:0:regx|Q~4_combout\);

-- Location: LCCOMB_X112_Y32_N6
\register_file|registers:0:regx|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[1]~feeder_combout\ = \register_file|registers:0:regx|Q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~4_combout\,
	combout => \register_file|registers:0:regx|Q[1]~feeder_combout\);

-- Location: FF_X112_Y32_N7
\register_file|registers:0:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(1));

-- Location: LCCOMB_X112_Y32_N18
\register_file|mux1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux30~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(1)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(1),
	datab => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:1:regx|Q\(1),
	combout => \register_file|mux1|Mux30~0_combout\);

-- Location: LCCOMB_X109_Y32_N22
\arith_logic_unity|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~12_combout\ = (\arith_logic_unity|Add0~3_combout\ & ((\register_file|mux1|Mux29~0_combout\ & (\arith_logic_unity|Add0~11\ & VCC)) # (!\register_file|mux1|Mux29~0_combout\ & (!\arith_logic_unity|Add0~11\)))) # 
-- (!\arith_logic_unity|Add0~3_combout\ & ((\register_file|mux1|Mux29~0_combout\ & (!\arith_logic_unity|Add0~11\)) # (!\register_file|mux1|Mux29~0_combout\ & ((\arith_logic_unity|Add0~11\) # (GND)))))
-- \arith_logic_unity|Add0~13\ = CARRY((\arith_logic_unity|Add0~3_combout\ & (!\register_file|mux1|Mux29~0_combout\ & !\arith_logic_unity|Add0~11\)) # (!\arith_logic_unity|Add0~3_combout\ & ((!\arith_logic_unity|Add0~11\) # 
-- (!\register_file|mux1|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~3_combout\,
	datab => \register_file|mux1|Mux29~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~11\,
	combout => \arith_logic_unity|Add0~12_combout\,
	cout => \arith_logic_unity|Add0~13\);

-- Location: LCCOMB_X112_Y34_N0
\arith_logic_unity|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux29~3_combout\ = (\PC|Q\(2)) # (!\PC|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|Q\(3),
	datad => \PC|Q\(2),
	combout => \arith_logic_unity|Mux29~3_combout\);

-- Location: LCCOMB_X109_Y32_N14
\arith_logic_unity|Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux29~9_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & (\arith_logic_unity|Add0~12_combout\ & \arith_logic_unity|Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \arith_logic_unity|Add0~12_combout\,
	datad => \arith_logic_unity|Mux29~3_combout\,
	combout => \arith_logic_unity|Mux29~9_combout\);

-- Location: LCCOMB_X110_Y33_N14
\register_file|registers:0:regx|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~3_combout\ = (!\rst~input_o\ & ((\instruction_memory|Mux4~0_combout\ & (\data_memory|Mux31~0_combout\)) # (!\instruction_memory|Mux4~0_combout\ & ((\arith_logic_unity|Mux29~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|Mux31~0_combout\,
	datab => \arith_logic_unity|Mux29~9_combout\,
	datac => \rst~input_o\,
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \register_file|registers:0:regx|Q~3_combout\);

-- Location: FF_X110_Y33_N13
\register_file|registers:2:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(2));

-- Location: LCCOMB_X110_Y33_N12
\aluOp2[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[2]~6_combout\ = (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(2))) # (!\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:0:regx|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(2),
	datad => \register_file|registers:0:regx|Q\(2),
	combout => \aluOp2[2]~6_combout\);

-- Location: LCCOMB_X110_Y33_N16
\arith_logic_unity|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~3_combout\ = \control|aluControl[2]~0_combout\ $ (((\aluOp2[2]~7_combout\) # ((\aluOp2[2]~0_combout\ & \aluOp2[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \aluOp2[2]~0_combout\,
	datac => \aluOp2[2]~7_combout\,
	datad => \aluOp2[2]~6_combout\,
	combout => \arith_logic_unity|Add0~3_combout\);

-- Location: LCCOMB_X109_Y32_N24
\arith_logic_unity|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~14_combout\ = ((\arith_logic_unity|Add0~2_combout\ $ (\register_file|mux1|Mux28~0_combout\ $ (!\arith_logic_unity|Add0~13\)))) # (GND)
-- \arith_logic_unity|Add0~15\ = CARRY((\arith_logic_unity|Add0~2_combout\ & ((\register_file|mux1|Mux28~0_combout\) # (!\arith_logic_unity|Add0~13\))) # (!\arith_logic_unity|Add0~2_combout\ & (\register_file|mux1|Mux28~0_combout\ & 
-- !\arith_logic_unity|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~2_combout\,
	datab => \register_file|mux1|Mux28~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~13\,
	combout => \arith_logic_unity|Add0~14_combout\,
	cout => \arith_logic_unity|Add0~15\);

-- Location: LCCOMB_X110_Y32_N0
\arith_logic_unity|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux28~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~6_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Res~6_combout\,
	datac => \control|aluControl[0]~1_combout\,
	datad => \arith_logic_unity|Add0~14_combout\,
	combout => \arith_logic_unity|Mux28~0_combout\);

-- Location: LCCOMB_X110_Y32_N10
\register_file|registers:0:regx|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~2_combout\ = (!\instruction_memory|Mux4~0_combout\ & (\arith_logic_unity|Mux28~0_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \arith_logic_unity|Mux28~0_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~2_combout\);

-- Location: FF_X110_Y29_N1
\register_file|registers:2:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(3));

-- Location: LCCOMB_X110_Y29_N0
\register_file|mux2|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux28~0_combout\ = (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(3)) # ((\instruction_memory|Mux2~0_combout\ & \register_file|registers:2:regx|Q\(3))))) # (!\control|aluControl[0]~1_combout\ & 
-- (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(3),
	datad => \register_file|registers:0:regx|Q\(3),
	combout => \register_file|mux2|Mux28~0_combout\);

-- Location: LCCOMB_X110_Y29_N4
\arith_logic_unity|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~2_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux28~0_combout\,
	combout => \arith_logic_unity|Add0~2_combout\);

-- Location: LCCOMB_X109_Y32_N26
\arith_logic_unity|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~16_combout\ = (\arith_logic_unity|Add0~1_combout\ & ((\register_file|mux1|Mux27~0_combout\ & (\arith_logic_unity|Add0~15\ & VCC)) # (!\register_file|mux1|Mux27~0_combout\ & (!\arith_logic_unity|Add0~15\)))) # 
-- (!\arith_logic_unity|Add0~1_combout\ & ((\register_file|mux1|Mux27~0_combout\ & (!\arith_logic_unity|Add0~15\)) # (!\register_file|mux1|Mux27~0_combout\ & ((\arith_logic_unity|Add0~15\) # (GND)))))
-- \arith_logic_unity|Add0~17\ = CARRY((\arith_logic_unity|Add0~1_combout\ & (!\register_file|mux1|Mux27~0_combout\ & !\arith_logic_unity|Add0~15\)) # (!\arith_logic_unity|Add0~1_combout\ & ((!\arith_logic_unity|Add0~15\) # 
-- (!\register_file|mux1|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~1_combout\,
	datab => \register_file|mux1|Mux27~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~15\,
	combout => \arith_logic_unity|Add0~16_combout\,
	cout => \arith_logic_unity|Add0~17\);

-- Location: LCCOMB_X108_Y30_N16
\arith_logic_unity|Res~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~5_combout\ = \register_file|mux2|Mux27~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(4))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:1:regx|Q\(4),
	datac => \register_file|registers:0:regx|Q\(4),
	datad => \register_file|mux2|Mux27~0_combout\,
	combout => \arith_logic_unity|Res~5_combout\);

-- Location: LCCOMB_X109_Y32_N0
\arith_logic_unity|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux27~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Res~5_combout\)))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Add0~16_combout\,
	datad => \arith_logic_unity|Res~5_combout\,
	combout => \arith_logic_unity|Mux27~0_combout\);

-- Location: LCCOMB_X110_Y33_N4
\register_file|registers:0:regx|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~1_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux27~0_combout\,
	combout => \register_file|registers:0:regx|Q~1_combout\);

-- Location: FF_X109_Y33_N21
\register_file|registers:2:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(4));

-- Location: LCCOMB_X109_Y33_N20
\register_file|mux2|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux27~0_combout\ = (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(4)) # ((\instruction_memory|Mux2~0_combout\ & \register_file|registers:2:regx|Q\(4))))) # (!\control|aluControl[0]~1_combout\ & 
-- (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(4),
	datad => \register_file|registers:0:regx|Q\(4),
	combout => \register_file|mux2|Mux27~0_combout\);

-- Location: LCCOMB_X109_Y33_N30
\arith_logic_unity|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~1_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux27~0_combout\,
	combout => \arith_logic_unity|Add0~1_combout\);

-- Location: LCCOMB_X109_Y32_N28
\arith_logic_unity|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~18_combout\ = ((\register_file|mux1|Mux26~0_combout\ $ (\arith_logic_unity|Add0~0_combout\ $ (!\arith_logic_unity|Add0~17\)))) # (GND)
-- \arith_logic_unity|Add0~19\ = CARRY((\register_file|mux1|Mux26~0_combout\ & ((\arith_logic_unity|Add0~0_combout\) # (!\arith_logic_unity|Add0~17\))) # (!\register_file|mux1|Mux26~0_combout\ & (\arith_logic_unity|Add0~0_combout\ & 
-- !\arith_logic_unity|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux26~0_combout\,
	datab => \arith_logic_unity|Add0~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~17\,
	combout => \arith_logic_unity|Add0~18_combout\,
	cout => \arith_logic_unity|Add0~19\);

-- Location: LCCOMB_X109_Y32_N30
\arith_logic_unity|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~46_combout\ = (\register_file|mux1|Mux25~0_combout\ & ((\arith_logic_unity|Add0~45_combout\ & (\arith_logic_unity|Add0~19\ & VCC)) # (!\arith_logic_unity|Add0~45_combout\ & (!\arith_logic_unity|Add0~19\)))) # 
-- (!\register_file|mux1|Mux25~0_combout\ & ((\arith_logic_unity|Add0~45_combout\ & (!\arith_logic_unity|Add0~19\)) # (!\arith_logic_unity|Add0~45_combout\ & ((\arith_logic_unity|Add0~19\) # (GND)))))
-- \arith_logic_unity|Add0~47\ = CARRY((\register_file|mux1|Mux25~0_combout\ & (!\arith_logic_unity|Add0~45_combout\ & !\arith_logic_unity|Add0~19\)) # (!\register_file|mux1|Mux25~0_combout\ & ((!\arith_logic_unity|Add0~19\) # 
-- (!\arith_logic_unity|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~0_combout\,
	datab => \arith_logic_unity|Add0~45_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~19\,
	combout => \arith_logic_unity|Add0~46_combout\,
	cout => \arith_logic_unity|Add0~47\);

-- Location: LCCOMB_X109_Y32_N2
\arith_logic_unity|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux25~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~14_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Res~14_combout\,
	datac => \arith_logic_unity|Add0~46_combout\,
	datad => \control|aluControl[0]~1_combout\,
	combout => \arith_logic_unity|Mux25~0_combout\);

-- Location: LCCOMB_X110_Y32_N22
\register_file|registers:0:regx|Q~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~31_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux25~0_combout\,
	combout => \register_file|registers:0:regx|Q~31_combout\);

-- Location: FF_X109_Y32_N5
\register_file|registers:0:regx|Q[6]\ : dffeas
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
	q => \register_file|registers:0:regx|Q\(6));

-- Location: LCCOMB_X109_Y32_N6
\register_file|mux1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux25~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(6)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(6),
	datac => \register_file|registers:1:regx|Q\(6),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux1|Mux25~0_combout\);

-- Location: LCCOMB_X109_Y31_N0
\arith_logic_unity|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~48_combout\ = ((\register_file|mux1|Mux24~0_combout\ $ (\arith_logic_unity|Add0~44_combout\ $ (!\arith_logic_unity|Add0~47\)))) # (GND)
-- \arith_logic_unity|Add0~49\ = CARRY((\register_file|mux1|Mux24~0_combout\ & ((\arith_logic_unity|Add0~44_combout\) # (!\arith_logic_unity|Add0~47\))) # (!\register_file|mux1|Mux24~0_combout\ & (\arith_logic_unity|Add0~44_combout\ & 
-- !\arith_logic_unity|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux24~0_combout\,
	datab => \arith_logic_unity|Add0~44_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~47\,
	combout => \arith_logic_unity|Add0~48_combout\,
	cout => \arith_logic_unity|Add0~49\);

-- Location: LCCOMB_X109_Y29_N8
\arith_logic_unity|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux24~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~15_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Res~15_combout\,
	datad => \arith_logic_unity|Add0~48_combout\,
	combout => \arith_logic_unity|Mux24~0_combout\);

-- Location: LCCOMB_X109_Y29_N14
\register_file|registers:0:regx|Q~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~30_combout\ = (!\rst~input_o\ & (!\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \instruction_memory|Mux4~0_combout\,
	datad => \arith_logic_unity|Mux24~0_combout\,
	combout => \register_file|registers:0:regx|Q~30_combout\);

-- Location: FF_X110_Y29_N21
\register_file|registers:0:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(7));

-- Location: LCCOMB_X110_Y29_N30
\register_file|mux1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux24~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(7)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:0:regx|Q\(7),
	datad => \register_file|registers:1:regx|Q\(7),
	combout => \register_file|mux1|Mux24~0_combout\);

-- Location: LCCOMB_X109_Y31_N2
\arith_logic_unity|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~50_combout\ = (\register_file|mux1|Mux23~0_combout\ & ((\arith_logic_unity|Add0~43_combout\ & (\arith_logic_unity|Add0~49\ & VCC)) # (!\arith_logic_unity|Add0~43_combout\ & (!\arith_logic_unity|Add0~49\)))) # 
-- (!\register_file|mux1|Mux23~0_combout\ & ((\arith_logic_unity|Add0~43_combout\ & (!\arith_logic_unity|Add0~49\)) # (!\arith_logic_unity|Add0~43_combout\ & ((\arith_logic_unity|Add0~49\) # (GND)))))
-- \arith_logic_unity|Add0~51\ = CARRY((\register_file|mux1|Mux23~0_combout\ & (!\arith_logic_unity|Add0~43_combout\ & !\arith_logic_unity|Add0~49\)) # (!\register_file|mux1|Mux23~0_combout\ & ((!\arith_logic_unity|Add0~49\) # 
-- (!\arith_logic_unity|Add0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux23~0_combout\,
	datab => \arith_logic_unity|Add0~43_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~49\,
	combout => \arith_logic_unity|Add0~50_combout\,
	cout => \arith_logic_unity|Add0~51\);

-- Location: LCCOMB_X109_Y29_N12
\arith_logic_unity|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux23~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~16_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Res~16_combout\,
	datad => \arith_logic_unity|Add0~50_combout\,
	combout => \arith_logic_unity|Mux23~0_combout\);

-- Location: LCCOMB_X109_Y29_N24
\register_file|registers:0:regx|Q~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~29_combout\ = (!\instruction_memory|Mux4~0_combout\ & (\arith_logic_unity|Mux23~0_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \arith_logic_unity|Mux23~0_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~29_combout\);

-- Location: LCCOMB_X108_Y29_N14
\register_file|registers:0:regx|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[8]~feeder_combout\ = \register_file|registers:0:regx|Q~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \register_file|registers:0:regx|Q~29_combout\,
	combout => \register_file|registers:0:regx|Q[8]~feeder_combout\);

-- Location: FF_X108_Y29_N15
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

-- Location: LCCOMB_X108_Y29_N0
\register_file|mux1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux23~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(8)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(8),
	datac => \register_file|registers:1:regx|Q\(8),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \register_file|mux1|Mux23~0_combout\);

-- Location: LCCOMB_X109_Y31_N4
\arith_logic_unity|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~52_combout\ = ((\arith_logic_unity|Add0~42_combout\ $ (\register_file|mux1|Mux22~0_combout\ $ (!\arith_logic_unity|Add0~51\)))) # (GND)
-- \arith_logic_unity|Add0~53\ = CARRY((\arith_logic_unity|Add0~42_combout\ & ((\register_file|mux1|Mux22~0_combout\) # (!\arith_logic_unity|Add0~51\))) # (!\arith_logic_unity|Add0~42_combout\ & (\register_file|mux1|Mux22~0_combout\ & 
-- !\arith_logic_unity|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~42_combout\,
	datab => \register_file|mux1|Mux22~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~51\,
	combout => \arith_logic_unity|Add0~52_combout\,
	cout => \arith_logic_unity|Add0~53\);

-- Location: LCCOMB_X109_Y29_N28
\arith_logic_unity|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux22~0_combout\ = (\control|aluControl[0]~1_combout\ & (\arith_logic_unity|Res~17_combout\ & ((!\control|aluControl[2]~0_combout\)))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Res~17_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Add0~52_combout\,
	datad => \control|aluControl[2]~0_combout\,
	combout => \arith_logic_unity|Mux22~0_combout\);

-- Location: LCCOMB_X109_Y29_N20
\register_file|registers:0:regx|Q~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~28_combout\ = (!\rst~input_o\ & (!\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \instruction_memory|Mux4~0_combout\,
	datad => \arith_logic_unity|Mux22~0_combout\,
	combout => \register_file|registers:0:regx|Q~28_combout\);

-- Location: FF_X110_Y29_N9
\register_file|registers:0:regx|Q[9]\ : dffeas
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
	q => \register_file|registers:0:regx|Q\(9));

-- Location: FF_X110_Y29_N7
\register_file|registers:2:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(9));

-- Location: LCCOMB_X110_Y29_N6
\register_file|mux2|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux22~0_combout\ = (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(9)) # ((\register_file|registers:2:regx|Q\(9) & \instruction_memory|Mux2~0_combout\)))) # (!\control|aluControl[0]~1_combout\ & 
-- (((\register_file|registers:2:regx|Q\(9) & \instruction_memory|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \register_file|registers:0:regx|Q\(9),
	datac => \register_file|registers:2:regx|Q\(9),
	datad => \instruction_memory|Mux2~0_combout\,
	combout => \register_file|mux2|Mux22~0_combout\);

-- Location: LCCOMB_X110_Y29_N16
\arith_logic_unity|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~42_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux22~0_combout\,
	combout => \arith_logic_unity|Add0~42_combout\);

-- Location: LCCOMB_X109_Y31_N6
\arith_logic_unity|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~54_combout\ = (\arith_logic_unity|Add0~41_combout\ & ((\register_file|mux1|Mux21~0_combout\ & (\arith_logic_unity|Add0~53\ & VCC)) # (!\register_file|mux1|Mux21~0_combout\ & (!\arith_logic_unity|Add0~53\)))) # 
-- (!\arith_logic_unity|Add0~41_combout\ & ((\register_file|mux1|Mux21~0_combout\ & (!\arith_logic_unity|Add0~53\)) # (!\register_file|mux1|Mux21~0_combout\ & ((\arith_logic_unity|Add0~53\) # (GND)))))
-- \arith_logic_unity|Add0~55\ = CARRY((\arith_logic_unity|Add0~41_combout\ & (!\register_file|mux1|Mux21~0_combout\ & !\arith_logic_unity|Add0~53\)) # (!\arith_logic_unity|Add0~41_combout\ & ((!\arith_logic_unity|Add0~53\) # 
-- (!\register_file|mux1|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~41_combout\,
	datab => \register_file|mux1|Mux21~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~53\,
	combout => \arith_logic_unity|Add0~54_combout\,
	cout => \arith_logic_unity|Add0~55\);

-- Location: LCCOMB_X110_Y31_N2
\arith_logic_unity|Res~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~18_combout\ = \register_file|mux2|Mux21~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(10)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux21~0_combout\,
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(10),
	datad => \register_file|registers:1:regx|Q\(10),
	combout => \arith_logic_unity|Res~18_combout\);

-- Location: LCCOMB_X110_Y31_N14
\arith_logic_unity|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux21~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Res~18_combout\)))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datac => \arith_logic_unity|Add0~54_combout\,
	datad => \arith_logic_unity|Res~18_combout\,
	combout => \arith_logic_unity|Mux21~0_combout\);

-- Location: LCCOMB_X110_Y31_N24
\register_file|registers:0:regx|Q~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~27_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux21~0_combout\,
	combout => \register_file|registers:0:regx|Q~27_combout\);

-- Location: FF_X111_Y31_N1
\register_file|registers:2:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(10));

-- Location: LCCOMB_X111_Y31_N0
\register_file|mux2|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux21~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(10)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(10))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(10),
	datad => \register_file|registers:0:regx|Q\(10),
	combout => \register_file|mux2|Mux21~0_combout\);

-- Location: LCCOMB_X111_Y31_N14
\arith_logic_unity|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~41_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux21~0_combout\,
	combout => \arith_logic_unity|Add0~41_combout\);

-- Location: LCCOMB_X109_Y31_N8
\arith_logic_unity|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~56_combout\ = ((\arith_logic_unity|Add0~40_combout\ $ (\register_file|mux1|Mux20~0_combout\ $ (!\arith_logic_unity|Add0~55\)))) # (GND)
-- \arith_logic_unity|Add0~57\ = CARRY((\arith_logic_unity|Add0~40_combout\ & ((\register_file|mux1|Mux20~0_combout\) # (!\arith_logic_unity|Add0~55\))) # (!\arith_logic_unity|Add0~40_combout\ & (\register_file|mux1|Mux20~0_combout\ & 
-- !\arith_logic_unity|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~40_combout\,
	datab => \register_file|mux1|Mux20~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~55\,
	combout => \arith_logic_unity|Add0~56_combout\,
	cout => \arith_logic_unity|Add0~57\);

-- Location: LCCOMB_X110_Y31_N0
\arith_logic_unity|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux20~0_combout\ = (\control|aluControl[0]~1_combout\ & (\arith_logic_unity|Res~19_combout\ & (!\control|aluControl[2]~0_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Res~19_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datac => \control|aluControl[0]~1_combout\,
	datad => \arith_logic_unity|Add0~56_combout\,
	combout => \arith_logic_unity|Mux20~0_combout\);

-- Location: LCCOMB_X108_Y31_N6
\register_file|registers:0:regx|Q~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~26_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux20~0_combout\,
	combout => \register_file|registers:0:regx|Q~26_combout\);

-- Location: FF_X111_Y31_N19
\register_file|registers:2:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(11));

-- Location: LCCOMB_X111_Y31_N18
\register_file|mux2|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux20~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(11)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(11))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(11),
	datad => \register_file|registers:0:regx|Q\(11),
	combout => \register_file|mux2|Mux20~0_combout\);

-- Location: LCCOMB_X111_Y31_N20
\arith_logic_unity|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~40_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux20~0_combout\,
	combout => \arith_logic_unity|Add0~40_combout\);

-- Location: LCCOMB_X109_Y31_N10
\arith_logic_unity|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~58_combout\ = (\arith_logic_unity|Add0~39_combout\ & ((\register_file|mux1|Mux19~0_combout\ & (\arith_logic_unity|Add0~57\ & VCC)) # (!\register_file|mux1|Mux19~0_combout\ & (!\arith_logic_unity|Add0~57\)))) # 
-- (!\arith_logic_unity|Add0~39_combout\ & ((\register_file|mux1|Mux19~0_combout\ & (!\arith_logic_unity|Add0~57\)) # (!\register_file|mux1|Mux19~0_combout\ & ((\arith_logic_unity|Add0~57\) # (GND)))))
-- \arith_logic_unity|Add0~59\ = CARRY((\arith_logic_unity|Add0~39_combout\ & (!\register_file|mux1|Mux19~0_combout\ & !\arith_logic_unity|Add0~57\)) # (!\arith_logic_unity|Add0~39_combout\ & ((!\arith_logic_unity|Add0~57\) # 
-- (!\register_file|mux1|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~39_combout\,
	datab => \register_file|mux1|Mux19~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~57\,
	combout => \arith_logic_unity|Add0~58_combout\,
	cout => \arith_logic_unity|Add0~59\);

-- Location: LCCOMB_X110_Y31_N30
\arith_logic_unity|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux19~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~20_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datac => \arith_logic_unity|Res~20_combout\,
	datad => \arith_logic_unity|Add0~58_combout\,
	combout => \arith_logic_unity|Mux19~0_combout\);

-- Location: LCCOMB_X110_Y31_N16
\register_file|registers:0:regx|Q~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~25_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux19~0_combout\,
	combout => \register_file|registers:0:regx|Q~25_combout\);

-- Location: FF_X111_Y31_N17
\register_file|registers:2:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(12));

-- Location: LCCOMB_X111_Y31_N16
\register_file|mux2|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux19~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(12)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(12))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(12),
	datad => \register_file|registers:0:regx|Q\(12),
	combout => \register_file|mux2|Mux19~0_combout\);

-- Location: LCCOMB_X111_Y31_N26
\arith_logic_unity|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~39_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux19~0_combout\,
	combout => \arith_logic_unity|Add0~39_combout\);

-- Location: LCCOMB_X109_Y31_N12
\arith_logic_unity|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~60_combout\ = ((\register_file|mux1|Mux18~0_combout\ $ (\arith_logic_unity|Add0~38_combout\ $ (!\arith_logic_unity|Add0~59\)))) # (GND)
-- \arith_logic_unity|Add0~61\ = CARRY((\register_file|mux1|Mux18~0_combout\ & ((\arith_logic_unity|Add0~38_combout\) # (!\arith_logic_unity|Add0~59\))) # (!\register_file|mux1|Mux18~0_combout\ & (\arith_logic_unity|Add0~38_combout\ & 
-- !\arith_logic_unity|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux18~0_combout\,
	datab => \arith_logic_unity|Add0~38_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~59\,
	combout => \arith_logic_unity|Add0~60_combout\,
	cout => \arith_logic_unity|Add0~61\);

-- Location: LCCOMB_X110_Y31_N4
\arith_logic_unity|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux18~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~21_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datac => \arith_logic_unity|Res~21_combout\,
	datad => \arith_logic_unity|Add0~60_combout\,
	combout => \arith_logic_unity|Mux18~0_combout\);

-- Location: LCCOMB_X110_Y31_N26
\register_file|registers:0:regx|Q~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~24_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux18~0_combout\,
	combout => \register_file|registers:0:regx|Q~24_combout\);

-- Location: FF_X110_Y31_N7
\register_file|registers:0:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(13));

-- Location: LCCOMB_X110_Y31_N12
\register_file|mux1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux18~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(13)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(13),
	datab => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:1:regx|Q\(13),
	combout => \register_file|mux1|Mux18~0_combout\);

-- Location: LCCOMB_X109_Y31_N14
\arith_logic_unity|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~62_combout\ = (\register_file|mux1|Mux17~0_combout\ & ((\arith_logic_unity|Add0~37_combout\ & (\arith_logic_unity|Add0~61\ & VCC)) # (!\arith_logic_unity|Add0~37_combout\ & (!\arith_logic_unity|Add0~61\)))) # 
-- (!\register_file|mux1|Mux17~0_combout\ & ((\arith_logic_unity|Add0~37_combout\ & (!\arith_logic_unity|Add0~61\)) # (!\arith_logic_unity|Add0~37_combout\ & ((\arith_logic_unity|Add0~61\) # (GND)))))
-- \arith_logic_unity|Add0~63\ = CARRY((\register_file|mux1|Mux17~0_combout\ & (!\arith_logic_unity|Add0~37_combout\ & !\arith_logic_unity|Add0~61\)) # (!\register_file|mux1|Mux17~0_combout\ & ((!\arith_logic_unity|Add0~61\) # 
-- (!\arith_logic_unity|Add0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux17~0_combout\,
	datab => \arith_logic_unity|Add0~37_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~61\,
	combout => \arith_logic_unity|Add0~62_combout\,
	cout => \arith_logic_unity|Add0~63\);

-- Location: LCCOMB_X108_Y31_N26
\arith_logic_unity|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux17~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~22_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Res~22_combout\,
	datad => \arith_logic_unity|Add0~62_combout\,
	combout => \arith_logic_unity|Mux17~0_combout\);

-- Location: LCCOMB_X108_Y31_N2
\register_file|registers:0:regx|Q~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~23_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux17~0_combout\,
	combout => \register_file|registers:0:regx|Q~23_combout\);

-- Location: LCCOMB_X107_Y31_N18
\register_file|registers:0:regx|Q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[14]~feeder_combout\ = \register_file|registers:0:regx|Q~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~23_combout\,
	combout => \register_file|registers:0:regx|Q[14]~feeder_combout\);

-- Location: FF_X107_Y31_N19
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

-- Location: LCCOMB_X107_Y31_N28
\register_file|mux1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux17~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(14)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(14),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:1:regx|Q\(14),
	combout => \register_file|mux1|Mux17~0_combout\);

-- Location: LCCOMB_X109_Y31_N16
\arith_logic_unity|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~64_combout\ = ((\arith_logic_unity|Add0~36_combout\ $ (\register_file|mux1|Mux16~0_combout\ $ (!\arith_logic_unity|Add0~63\)))) # (GND)
-- \arith_logic_unity|Add0~65\ = CARRY((\arith_logic_unity|Add0~36_combout\ & ((\register_file|mux1|Mux16~0_combout\) # (!\arith_logic_unity|Add0~63\))) # (!\arith_logic_unity|Add0~36_combout\ & (\register_file|mux1|Mux16~0_combout\ & 
-- !\arith_logic_unity|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~36_combout\,
	datab => \register_file|mux1|Mux16~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~63\,
	combout => \arith_logic_unity|Add0~64_combout\,
	cout => \arith_logic_unity|Add0~65\);

-- Location: LCCOMB_X108_Y31_N22
\arith_logic_unity|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux16~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~23_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Res~23_combout\,
	datac => \control|aluControl[0]~1_combout\,
	datad => \arith_logic_unity|Add0~64_combout\,
	combout => \arith_logic_unity|Mux16~0_combout\);

-- Location: LCCOMB_X108_Y31_N10
\register_file|registers:0:regx|Q~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~22_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux16~0_combout\,
	combout => \register_file|registers:0:regx|Q~22_combout\);

-- Location: FF_X111_Y31_N31
\register_file|registers:2:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(15));

-- Location: LCCOMB_X111_Y31_N30
\register_file|mux2|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux16~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(15)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(15))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(15),
	datad => \register_file|registers:0:regx|Q\(15),
	combout => \register_file|mux2|Mux16~0_combout\);

-- Location: LCCOMB_X111_Y31_N12
\arith_logic_unity|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~36_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datac => \register_file|mux2|Mux16~0_combout\,
	combout => \arith_logic_unity|Add0~36_combout\);

-- Location: LCCOMB_X109_Y31_N18
\arith_logic_unity|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~66_combout\ = (\register_file|mux1|Mux15~0_combout\ & ((\arith_logic_unity|Add0~35_combout\ & (\arith_logic_unity|Add0~65\ & VCC)) # (!\arith_logic_unity|Add0~35_combout\ & (!\arith_logic_unity|Add0~65\)))) # 
-- (!\register_file|mux1|Mux15~0_combout\ & ((\arith_logic_unity|Add0~35_combout\ & (!\arith_logic_unity|Add0~65\)) # (!\arith_logic_unity|Add0~35_combout\ & ((\arith_logic_unity|Add0~65\) # (GND)))))
-- \arith_logic_unity|Add0~67\ = CARRY((\register_file|mux1|Mux15~0_combout\ & (!\arith_logic_unity|Add0~35_combout\ & !\arith_logic_unity|Add0~65\)) # (!\register_file|mux1|Mux15~0_combout\ & ((!\arith_logic_unity|Add0~65\) # 
-- (!\arith_logic_unity|Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux15~0_combout\,
	datab => \arith_logic_unity|Add0~35_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~65\,
	combout => \arith_logic_unity|Add0~66_combout\,
	cout => \arith_logic_unity|Add0~67\);

-- Location: LCCOMB_X108_Y31_N30
\arith_logic_unity|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux15~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~24_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Res~24_combout\,
	datad => \arith_logic_unity|Add0~66_combout\,
	combout => \arith_logic_unity|Mux15~0_combout\);

-- Location: LCCOMB_X108_Y31_N0
\register_file|registers:0:regx|Q~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~21_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux15~0_combout\,
	combout => \register_file|registers:0:regx|Q~21_combout\);

-- Location: FF_X108_Y31_N11
\register_file|registers:1:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(16));

-- Location: LCCOMB_X108_Y29_N2
\register_file|mux1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux15~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(16))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(16),
	datad => \register_file|registers:0:regx|Q\(16),
	combout => \register_file|mux1|Mux15~0_combout\);

-- Location: LCCOMB_X109_Y31_N20
\arith_logic_unity|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~68_combout\ = ((\register_file|mux1|Mux14~0_combout\ $ (\arith_logic_unity|Add0~34_combout\ $ (!\arith_logic_unity|Add0~67\)))) # (GND)
-- \arith_logic_unity|Add0~69\ = CARRY((\register_file|mux1|Mux14~0_combout\ & ((\arith_logic_unity|Add0~34_combout\) # (!\arith_logic_unity|Add0~67\))) # (!\register_file|mux1|Mux14~0_combout\ & (\arith_logic_unity|Add0~34_combout\ & 
-- !\arith_logic_unity|Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux14~0_combout\,
	datab => \arith_logic_unity|Add0~34_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~67\,
	combout => \arith_logic_unity|Add0~68_combout\,
	cout => \arith_logic_unity|Add0~69\);

-- Location: LCCOMB_X108_Y31_N8
\arith_logic_unity|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux14~0_combout\ = (\control|aluControl[0]~1_combout\ & (\arith_logic_unity|Res~25_combout\ & ((!\control|aluControl[2]~0_combout\)))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Res~25_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Add0~68_combout\,
	datad => \control|aluControl[2]~0_combout\,
	combout => \arith_logic_unity|Mux14~0_combout\);

-- Location: LCCOMB_X108_Y31_N24
\register_file|registers:0:regx|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~20_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux14~0_combout\,
	combout => \register_file|registers:0:regx|Q~20_combout\);

-- Location: FF_X108_Y31_N15
\register_file|registers:0:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(17));

-- Location: LCCOMB_X108_Y31_N20
\register_file|mux1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux14~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(17)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|registers:0:regx|Q\(17),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|registers:1:regx|Q\(17),
	combout => \register_file|mux1|Mux14~0_combout\);

-- Location: LCCOMB_X109_Y31_N22
\arith_logic_unity|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~70_combout\ = (\arith_logic_unity|Add0~33_combout\ & ((\register_file|mux1|Mux13~0_combout\ & (\arith_logic_unity|Add0~69\ & VCC)) # (!\register_file|mux1|Mux13~0_combout\ & (!\arith_logic_unity|Add0~69\)))) # 
-- (!\arith_logic_unity|Add0~33_combout\ & ((\register_file|mux1|Mux13~0_combout\ & (!\arith_logic_unity|Add0~69\)) # (!\register_file|mux1|Mux13~0_combout\ & ((\arith_logic_unity|Add0~69\) # (GND)))))
-- \arith_logic_unity|Add0~71\ = CARRY((\arith_logic_unity|Add0~33_combout\ & (!\register_file|mux1|Mux13~0_combout\ & !\arith_logic_unity|Add0~69\)) # (!\arith_logic_unity|Add0~33_combout\ & ((!\arith_logic_unity|Add0~69\) # 
-- (!\register_file|mux1|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~33_combout\,
	datab => \register_file|mux1|Mux13~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~69\,
	combout => \arith_logic_unity|Add0~70_combout\,
	cout => \arith_logic_unity|Add0~71\);

-- Location: LCCOMB_X108_Y32_N12
\arith_logic_unity|Res~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~26_combout\ = \register_file|mux2|Mux13~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(18)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(18),
	datab => \register_file|registers:1:regx|Q\(18),
	datac => \instruction_memory|Mux5~1_combout\,
	datad => \register_file|mux2|Mux13~0_combout\,
	combout => \arith_logic_unity|Res~26_combout\);

-- Location: LCCOMB_X108_Y32_N22
\arith_logic_unity|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux13~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Res~26_combout\)))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Add0~70_combout\,
	datad => \arith_logic_unity|Res~26_combout\,
	combout => \arith_logic_unity|Mux13~0_combout\);

-- Location: LCCOMB_X108_Y32_N0
\register_file|registers:0:regx|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~19_combout\ = (\arith_logic_unity|Mux13~0_combout\ & (!\instruction_memory|Mux4~0_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux13~0_combout\,
	datab => \instruction_memory|Mux4~0_combout\,
	datad => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~19_combout\);

-- Location: FF_X108_Y29_N27
\register_file|registers:2:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(18));

-- Location: LCCOMB_X108_Y29_N26
\register_file|mux2|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux13~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(18)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(18))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(18),
	datad => \register_file|registers:0:regx|Q\(18),
	combout => \register_file|mux2|Mux13~0_combout\);

-- Location: LCCOMB_X108_Y29_N10
\arith_logic_unity|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~33_combout\ = \register_file|mux2|Mux13~0_combout\ $ (\control|aluControl[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|mux2|Mux13~0_combout\,
	datad => \control|aluControl[2]~0_combout\,
	combout => \arith_logic_unity|Add0~33_combout\);

-- Location: LCCOMB_X109_Y31_N24
\arith_logic_unity|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~72_combout\ = ((\register_file|mux1|Mux12~0_combout\ $ (\arith_logic_unity|Add0~32_combout\ $ (!\arith_logic_unity|Add0~71\)))) # (GND)
-- \arith_logic_unity|Add0~73\ = CARRY((\register_file|mux1|Mux12~0_combout\ & ((\arith_logic_unity|Add0~32_combout\) # (!\arith_logic_unity|Add0~71\))) # (!\register_file|mux1|Mux12~0_combout\ & (\arith_logic_unity|Add0~32_combout\ & 
-- !\arith_logic_unity|Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux12~0_combout\,
	datab => \arith_logic_unity|Add0~32_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~71\,
	combout => \arith_logic_unity|Add0~72_combout\,
	cout => \arith_logic_unity|Add0~73\);

-- Location: LCCOMB_X108_Y32_N14
\arith_logic_unity|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux12~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~27_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Res~27_combout\,
	datad => \arith_logic_unity|Add0~72_combout\,
	combout => \arith_logic_unity|Mux12~0_combout\);

-- Location: LCCOMB_X108_Y32_N18
\register_file|registers:0:regx|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~18_combout\ = (!\rst~input_o\ & (!\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \instruction_memory|Mux4~0_combout\,
	datad => \arith_logic_unity|Mux12~0_combout\,
	combout => \register_file|registers:0:regx|Q~18_combout\);

-- Location: FF_X108_Y32_N1
\register_file|registers:1:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(19));

-- Location: LCCOMB_X108_Y29_N30
\register_file|mux1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux12~0_combout\ = (\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(19))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(19),
	datad => \register_file|registers:0:regx|Q\(19),
	combout => \register_file|mux1|Mux12~0_combout\);

-- Location: LCCOMB_X109_Y31_N26
\arith_logic_unity|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~74_combout\ = (\arith_logic_unity|Add0~31_combout\ & ((\register_file|mux1|Mux11~0_combout\ & (\arith_logic_unity|Add0~73\ & VCC)) # (!\register_file|mux1|Mux11~0_combout\ & (!\arith_logic_unity|Add0~73\)))) # 
-- (!\arith_logic_unity|Add0~31_combout\ & ((\register_file|mux1|Mux11~0_combout\ & (!\arith_logic_unity|Add0~73\)) # (!\register_file|mux1|Mux11~0_combout\ & ((\arith_logic_unity|Add0~73\) # (GND)))))
-- \arith_logic_unity|Add0~75\ = CARRY((\arith_logic_unity|Add0~31_combout\ & (!\register_file|mux1|Mux11~0_combout\ & !\arith_logic_unity|Add0~73\)) # (!\arith_logic_unity|Add0~31_combout\ & ((!\arith_logic_unity|Add0~73\) # 
-- (!\register_file|mux1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~31_combout\,
	datab => \register_file|mux1|Mux11~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~73\,
	combout => \arith_logic_unity|Add0~74_combout\,
	cout => \arith_logic_unity|Add0~75\);

-- Location: LCCOMB_X108_Y32_N2
\arith_logic_unity|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux11~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~28_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Res~28_combout\,
	datac => \control|aluControl[0]~1_combout\,
	datad => \arith_logic_unity|Add0~74_combout\,
	combout => \arith_logic_unity|Mux11~0_combout\);

-- Location: LCCOMB_X108_Y32_N8
\register_file|registers:0:regx|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~17_combout\ = (!\rst~input_o\ & (!\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \instruction_memory|Mux4~0_combout\,
	datad => \arith_logic_unity|Mux11~0_combout\,
	combout => \register_file|registers:0:regx|Q~17_combout\);

-- Location: FF_X111_Y31_N3
\register_file|registers:2:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(20));

-- Location: LCCOMB_X111_Y31_N2
\register_file|mux2|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux11~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(20)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(20))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(20),
	datad => \register_file|registers:0:regx|Q\(20),
	combout => \register_file|mux2|Mux11~0_combout\);

-- Location: LCCOMB_X111_Y31_N8
\arith_logic_unity|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~31_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux11~0_combout\,
	combout => \arith_logic_unity|Add0~31_combout\);

-- Location: LCCOMB_X109_Y31_N28
\arith_logic_unity|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~76_combout\ = ((\arith_logic_unity|Add0~30_combout\ $ (\register_file|mux1|Mux10~0_combout\ $ (!\arith_logic_unity|Add0~75\)))) # (GND)
-- \arith_logic_unity|Add0~77\ = CARRY((\arith_logic_unity|Add0~30_combout\ & ((\register_file|mux1|Mux10~0_combout\) # (!\arith_logic_unity|Add0~75\))) # (!\arith_logic_unity|Add0~30_combout\ & (\register_file|mux1|Mux10~0_combout\ & 
-- !\arith_logic_unity|Add0~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~30_combout\,
	datab => \register_file|mux1|Mux10~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~75\,
	combout => \arith_logic_unity|Add0~76_combout\,
	cout => \arith_logic_unity|Add0~77\);

-- Location: LCCOMB_X108_Y32_N6
\arith_logic_unity|Res~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~29_combout\ = \register_file|mux2|Mux10~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(21))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~1_combout\,
	datab => \register_file|registers:1:regx|Q\(21),
	datac => \register_file|registers:0:regx|Q\(21),
	datad => \register_file|mux2|Mux10~0_combout\,
	combout => \arith_logic_unity|Res~29_combout\);

-- Location: LCCOMB_X108_Y32_N28
\arith_logic_unity|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux10~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Res~29_combout\)))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Add0~76_combout\,
	datad => \arith_logic_unity|Res~29_combout\,
	combout => \arith_logic_unity|Mux10~0_combout\);

-- Location: LCCOMB_X108_Y32_N30
\register_file|registers:0:regx|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~16_combout\ = (!\rst~input_o\ & (!\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \instruction_memory|Mux4~0_combout\,
	datad => \arith_logic_unity|Mux10~0_combout\,
	combout => \register_file|registers:0:regx|Q~16_combout\);

-- Location: FF_X107_Y31_N17
\register_file|registers:2:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(21));

-- Location: LCCOMB_X107_Y31_N16
\register_file|mux2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux10~0_combout\ = (\instruction_memory|Mux2~0_combout\ & ((\register_file|registers:2:regx|Q\(21)) # ((\control|aluControl[0]~1_combout\ & \register_file|registers:0:regx|Q\(21))))) # (!\instruction_memory|Mux2~0_combout\ & 
-- (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \register_file|registers:2:regx|Q\(21),
	datad => \register_file|registers:0:regx|Q\(21),
	combout => \register_file|mux2|Mux10~0_combout\);

-- Location: LCCOMB_X107_Y31_N24
\arith_logic_unity|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~30_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux10~0_combout\,
	combout => \arith_logic_unity|Add0~30_combout\);

-- Location: LCCOMB_X109_Y31_N30
\arith_logic_unity|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~78_combout\ = (\register_file|mux1|Mux9~0_combout\ & ((\arith_logic_unity|Add0~29_combout\ & (\arith_logic_unity|Add0~77\ & VCC)) # (!\arith_logic_unity|Add0~29_combout\ & (!\arith_logic_unity|Add0~77\)))) # 
-- (!\register_file|mux1|Mux9~0_combout\ & ((\arith_logic_unity|Add0~29_combout\ & (!\arith_logic_unity|Add0~77\)) # (!\arith_logic_unity|Add0~29_combout\ & ((\arith_logic_unity|Add0~77\) # (GND)))))
-- \arith_logic_unity|Add0~79\ = CARRY((\register_file|mux1|Mux9~0_combout\ & (!\arith_logic_unity|Add0~29_combout\ & !\arith_logic_unity|Add0~77\)) # (!\register_file|mux1|Mux9~0_combout\ & ((!\arith_logic_unity|Add0~77\) # 
-- (!\arith_logic_unity|Add0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux9~0_combout\,
	datab => \arith_logic_unity|Add0~29_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~77\,
	combout => \arith_logic_unity|Add0~78_combout\,
	cout => \arith_logic_unity|Add0~79\);

-- Location: LCCOMB_X109_Y33_N0
\arith_logic_unity|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux9~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~8_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Res~8_combout\,
	datac => \control|aluControl[0]~1_combout\,
	datad => \arith_logic_unity|Add0~78_combout\,
	combout => \arith_logic_unity|Mux9~0_combout\);

-- Location: LCCOMB_X110_Y32_N28
\register_file|registers:0:regx|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~15_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux9~0_combout\,
	combout => \register_file|registers:0:regx|Q~15_combout\);

-- Location: FF_X110_Y32_N23
\register_file|registers:0:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(22));

-- Location: LCCOMB_X110_Y32_N12
\register_file|mux1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux9~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(22)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(22),
	datad => \register_file|registers:1:regx|Q\(22),
	combout => \register_file|mux1|Mux9~0_combout\);

-- Location: LCCOMB_X109_Y30_N0
\arith_logic_unity|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~80_combout\ = ((\arith_logic_unity|Add0~28_combout\ $ (\register_file|mux1|Mux8~0_combout\ $ (!\arith_logic_unity|Add0~79\)))) # (GND)
-- \arith_logic_unity|Add0~81\ = CARRY((\arith_logic_unity|Add0~28_combout\ & ((\register_file|mux1|Mux8~0_combout\) # (!\arith_logic_unity|Add0~79\))) # (!\arith_logic_unity|Add0~28_combout\ & (\register_file|mux1|Mux8~0_combout\ & 
-- !\arith_logic_unity|Add0~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~28_combout\,
	datab => \register_file|mux1|Mux8~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~79\,
	combout => \arith_logic_unity|Add0~80_combout\,
	cout => \arith_logic_unity|Add0~81\);

-- Location: LCCOMB_X109_Y29_N2
\arith_logic_unity|Res~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~9_combout\ = \register_file|mux2|Mux8~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(23)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(23),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:1:regx|Q\(23),
	datad => \register_file|mux2|Mux8~0_combout\,
	combout => \arith_logic_unity|Res~9_combout\);

-- Location: LCCOMB_X109_Y33_N26
\arith_logic_unity|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux8~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Res~9_combout\)))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Add0~80_combout\,
	datad => \arith_logic_unity|Res~9_combout\,
	combout => \arith_logic_unity|Mux8~0_combout\);

-- Location: LCCOMB_X110_Y33_N22
\register_file|registers:0:regx|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~14_combout\ = (\arith_logic_unity|Mux8~0_combout\ & (!\instruction_memory|Mux4~0_combout\ & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux8~0_combout\,
	datab => \instruction_memory|Mux4~0_combout\,
	datac => \rst~input_o\,
	combout => \register_file|registers:0:regx|Q~14_combout\);

-- Location: FF_X110_Y29_N31
\register_file|registers:0:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(23));

-- Location: FF_X110_Y29_N29
\register_file|registers:2:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(23));

-- Location: LCCOMB_X110_Y29_N28
\register_file|mux2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux8~0_combout\ = (\register_file|registers:0:regx|Q\(23) & ((\control|aluControl[0]~1_combout\) # ((\instruction_memory|Mux2~0_combout\ & \register_file|registers:2:regx|Q\(23))))) # (!\register_file|registers:0:regx|Q\(23) & 
-- (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(23),
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(23),
	datad => \control|aluControl[0]~1_combout\,
	combout => \register_file|mux2|Mux8~0_combout\);

-- Location: LCCOMB_X110_Y29_N24
\arith_logic_unity|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~28_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux8~0_combout\,
	combout => \arith_logic_unity|Add0~28_combout\);

-- Location: LCCOMB_X109_Y30_N2
\arith_logic_unity|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~82_combout\ = (\arith_logic_unity|Add0~27_combout\ & ((\register_file|mux1|Mux7~0_combout\ & (\arith_logic_unity|Add0~81\ & VCC)) # (!\register_file|mux1|Mux7~0_combout\ & (!\arith_logic_unity|Add0~81\)))) # 
-- (!\arith_logic_unity|Add0~27_combout\ & ((\register_file|mux1|Mux7~0_combout\ & (!\arith_logic_unity|Add0~81\)) # (!\register_file|mux1|Mux7~0_combout\ & ((\arith_logic_unity|Add0~81\) # (GND)))))
-- \arith_logic_unity|Add0~83\ = CARRY((\arith_logic_unity|Add0~27_combout\ & (!\register_file|mux1|Mux7~0_combout\ & !\arith_logic_unity|Add0~81\)) # (!\arith_logic_unity|Add0~27_combout\ & ((!\arith_logic_unity|Add0~81\) # 
-- (!\register_file|mux1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~27_combout\,
	datab => \register_file|mux1|Mux7~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~81\,
	combout => \arith_logic_unity|Add0~82_combout\,
	cout => \arith_logic_unity|Add0~83\);

-- Location: LCCOMB_X109_Y33_N24
\arith_logic_unity|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux7~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~10_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \arith_logic_unity|Res~10_combout\,
	datad => \arith_logic_unity|Add0~82_combout\,
	combout => \arith_logic_unity|Mux7~0_combout\);

-- Location: LCCOMB_X110_Y33_N8
\register_file|registers:0:regx|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~13_combout\ = (!\rst~input_o\ & (!\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \instruction_memory|Mux4~0_combout\,
	datad => \arith_logic_unity|Mux7~0_combout\,
	combout => \register_file|registers:0:regx|Q~13_combout\);

-- Location: FF_X110_Y30_N9
\register_file|registers:2:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(24));

-- Location: LCCOMB_X110_Y30_N8
\register_file|mux2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux7~0_combout\ = (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(24)) # ((\instruction_memory|Mux2~0_combout\ & \register_file|registers:2:regx|Q\(24))))) # (!\control|aluControl[0]~1_combout\ & 
-- (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(24),
	datad => \register_file|registers:0:regx|Q\(24),
	combout => \register_file|mux2|Mux7~0_combout\);

-- Location: LCCOMB_X110_Y30_N4
\arith_logic_unity|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~27_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datac => \register_file|mux2|Mux7~0_combout\,
	combout => \arith_logic_unity|Add0~27_combout\);

-- Location: LCCOMB_X109_Y30_N4
\arith_logic_unity|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~84_combout\ = ((\arith_logic_unity|Add0~26_combout\ $ (\register_file|mux1|Mux6~0_combout\ $ (!\arith_logic_unity|Add0~83\)))) # (GND)
-- \arith_logic_unity|Add0~85\ = CARRY((\arith_logic_unity|Add0~26_combout\ & ((\register_file|mux1|Mux6~0_combout\) # (!\arith_logic_unity|Add0~83\))) # (!\arith_logic_unity|Add0~26_combout\ & (\register_file|mux1|Mux6~0_combout\ & 
-- !\arith_logic_unity|Add0~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~26_combout\,
	datab => \register_file|mux1|Mux6~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~83\,
	combout => \arith_logic_unity|Add0~84_combout\,
	cout => \arith_logic_unity|Add0~85\);

-- Location: LCCOMB_X109_Y33_N22
\arith_logic_unity|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux6~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~11_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Res~11_combout\,
	datac => \control|aluControl[0]~1_combout\,
	datad => \arith_logic_unity|Add0~84_combout\,
	combout => \arith_logic_unity|Mux6~0_combout\);

-- Location: LCCOMB_X110_Y33_N2
\register_file|registers:0:regx|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~12_combout\ = (!\rst~input_o\ & (!\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \instruction_memory|Mux4~0_combout\,
	datad => \arith_logic_unity|Mux6~0_combout\,
	combout => \register_file|registers:0:regx|Q~12_combout\);

-- Location: FF_X110_Y30_N17
\register_file|registers:2:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(25));

-- Location: LCCOMB_X110_Y30_N16
\register_file|mux2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux6~0_combout\ = (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(25)) # ((\instruction_memory|Mux2~0_combout\ & \register_file|registers:2:regx|Q\(25))))) # (!\control|aluControl[0]~1_combout\ & 
-- (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(25),
	datad => \register_file|registers:0:regx|Q\(25),
	combout => \register_file|mux2|Mux6~0_combout\);

-- Location: LCCOMB_X110_Y30_N6
\arith_logic_unity|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~26_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux6~0_combout\,
	combout => \arith_logic_unity|Add0~26_combout\);

-- Location: LCCOMB_X109_Y30_N6
\arith_logic_unity|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~86_combout\ = (\arith_logic_unity|Add0~25_combout\ & ((\register_file|mux1|Mux5~0_combout\ & (\arith_logic_unity|Add0~85\ & VCC)) # (!\register_file|mux1|Mux5~0_combout\ & (!\arith_logic_unity|Add0~85\)))) # 
-- (!\arith_logic_unity|Add0~25_combout\ & ((\register_file|mux1|Mux5~0_combout\ & (!\arith_logic_unity|Add0~85\)) # (!\register_file|mux1|Mux5~0_combout\ & ((\arith_logic_unity|Add0~85\) # (GND)))))
-- \arith_logic_unity|Add0~87\ = CARRY((\arith_logic_unity|Add0~25_combout\ & (!\register_file|mux1|Mux5~0_combout\ & !\arith_logic_unity|Add0~85\)) # (!\arith_logic_unity|Add0~25_combout\ & ((!\arith_logic_unity|Add0~85\) # 
-- (!\register_file|mux1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~25_combout\,
	datab => \register_file|mux1|Mux5~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~85\,
	combout => \arith_logic_unity|Add0~86_combout\,
	cout => \arith_logic_unity|Add0~87\);

-- Location: LCCOMB_X109_Y33_N14
\arith_logic_unity|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux5~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Res~12_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Res~12_combout\,
	datac => \control|aluControl[0]~1_combout\,
	datad => \arith_logic_unity|Add0~86_combout\,
	combout => \arith_logic_unity|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y32_N6
\register_file|registers:0:regx|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~11_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux5~0_combout\,
	combout => \register_file|registers:0:regx|Q~11_combout\);

-- Location: FF_X110_Y30_N15
\register_file|registers:2:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(26));

-- Location: LCCOMB_X110_Y30_N14
\register_file|mux2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux5~0_combout\ = (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(26)) # ((\instruction_memory|Mux2~0_combout\ & \register_file|registers:2:regx|Q\(26))))) # (!\control|aluControl[0]~1_combout\ & 
-- (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(26),
	datad => \register_file|registers:0:regx|Q\(26),
	combout => \register_file|mux2|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y30_N0
\arith_logic_unity|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~25_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datac => \register_file|mux2|Mux5~0_combout\,
	combout => \arith_logic_unity|Add0~25_combout\);

-- Location: LCCOMB_X109_Y30_N8
\arith_logic_unity|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~88_combout\ = ((\register_file|mux1|Mux4~0_combout\ $ (\arith_logic_unity|Add0~24_combout\ $ (!\arith_logic_unity|Add0~87\)))) # (GND)
-- \arith_logic_unity|Add0~89\ = CARRY((\register_file|mux1|Mux4~0_combout\ & ((\arith_logic_unity|Add0~24_combout\) # (!\arith_logic_unity|Add0~87\))) # (!\register_file|mux1|Mux4~0_combout\ & (\arith_logic_unity|Add0~24_combout\ & 
-- !\arith_logic_unity|Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux4~0_combout\,
	datab => \arith_logic_unity|Add0~24_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~87\,
	combout => \arith_logic_unity|Add0~88_combout\,
	cout => \arith_logic_unity|Add0~89\);

-- Location: LCCOMB_X109_Y29_N16
\register_file|registers:1:regx|Q[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[27]~feeder_combout\ = \register_file|registers:0:regx|Q~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \register_file|registers:0:regx|Q~10_combout\,
	combout => \register_file|registers:1:regx|Q[27]~feeder_combout\);

-- Location: FF_X109_Y29_N17
\register_file|registers:1:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(27));

-- Location: LCCOMB_X108_Y30_N24
\arith_logic_unity|Res~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~32_combout\ = \register_file|mux2|Mux4~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(27))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(27),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(27),
	datad => \register_file|mux2|Mux4~0_combout\,
	combout => \arith_logic_unity|Res~32_combout\);

-- Location: LCCOMB_X108_Y30_N6
\arith_logic_unity|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux4~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Res~32_combout\)))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datac => \arith_logic_unity|Add0~88_combout\,
	datad => \arith_logic_unity|Res~32_combout\,
	combout => \arith_logic_unity|Mux4~0_combout\);

-- Location: LCCOMB_X108_Y30_N8
\register_file|registers:0:regx|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~10_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux4~0_combout\,
	combout => \register_file|registers:0:regx|Q~10_combout\);

-- Location: FF_X109_Y29_N15
\register_file|registers:0:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(27));

-- Location: LCCOMB_X109_Y29_N4
\register_file|mux1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux4~0_combout\ = (\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(27)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(27),
	datad => \register_file|registers:1:regx|Q\(27),
	combout => \register_file|mux1|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y30_N10
\arith_logic_unity|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~90_combout\ = (\arith_logic_unity|Add0~23_combout\ & ((\register_file|mux1|Mux3~0_combout\ & (\arith_logic_unity|Add0~89\ & VCC)) # (!\register_file|mux1|Mux3~0_combout\ & (!\arith_logic_unity|Add0~89\)))) # 
-- (!\arith_logic_unity|Add0~23_combout\ & ((\register_file|mux1|Mux3~0_combout\ & (!\arith_logic_unity|Add0~89\)) # (!\register_file|mux1|Mux3~0_combout\ & ((\arith_logic_unity|Add0~89\) # (GND)))))
-- \arith_logic_unity|Add0~91\ = CARRY((\arith_logic_unity|Add0~23_combout\ & (!\register_file|mux1|Mux3~0_combout\ & !\arith_logic_unity|Add0~89\)) # (!\arith_logic_unity|Add0~23_combout\ & ((!\arith_logic_unity|Add0~89\) # 
-- (!\register_file|mux1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~23_combout\,
	datab => \register_file|mux1|Mux3~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~89\,
	combout => \arith_logic_unity|Add0~90_combout\,
	cout => \arith_logic_unity|Add0~91\);

-- Location: LCCOMB_X109_Y30_N26
\arith_logic_unity|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux3~0_combout\ = (\control|aluControl[0]~1_combout\ & (\arith_logic_unity|Res~13_combout\ & (!\control|aluControl[2]~0_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \arith_logic_unity|Res~13_combout\,
	datac => \control|aluControl[2]~0_combout\,
	datad => \arith_logic_unity|Add0~90_combout\,
	combout => \arith_logic_unity|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y32_N16
\register_file|registers:0:regx|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q~9_combout\ = (!\instruction_memory|Mux4~0_combout\ & (!\rst~input_o\ & \arith_logic_unity|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \rst~input_o\,
	datad => \arith_logic_unity|Mux3~0_combout\,
	combout => \register_file|registers:0:regx|Q~9_combout\);

-- Location: FF_X110_Y30_N29
\register_file|registers:2:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(28));

-- Location: LCCOMB_X110_Y30_N28
\register_file|mux2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux2|Mux3~0_combout\ = (\control|aluControl[0]~1_combout\ & ((\register_file|registers:0:regx|Q\(28)) # ((\instruction_memory|Mux2~0_combout\ & \register_file|registers:2:regx|Q\(28))))) # (!\control|aluControl[0]~1_combout\ & 
-- (\instruction_memory|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \instruction_memory|Mux2~0_combout\,
	datac => \register_file|registers:2:regx|Q\(28),
	datad => \register_file|registers:0:regx|Q\(28),
	combout => \register_file|mux2|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y30_N20
\arith_logic_unity|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~23_combout\ = \control|aluControl[2]~0_combout\ $ (\register_file|mux2|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux2|Mux3~0_combout\,
	combout => \arith_logic_unity|Add0~23_combout\);

-- Location: LCCOMB_X109_Y29_N0
\arith_logic_unity|Res~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~33_combout\ = \register_file|mux2|Mux2~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:1:regx|Q\(29)))) # (!\instruction_memory|Mux5~1_combout\ & (\register_file|registers:0:regx|Q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux2|Mux2~0_combout\,
	datab => \register_file|registers:0:regx|Q\(29),
	datac => \register_file|registers:1:regx|Q\(29),
	datad => \instruction_memory|Mux5~1_combout\,
	combout => \arith_logic_unity|Res~33_combout\);

-- Location: LCCOMB_X108_Y30_N4
\arith_logic_unity|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux2~0_combout\ = (\control|aluControl[0]~1_combout\ & (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Res~33_combout\)))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datac => \arith_logic_unity|Add0~92_combout\,
	datad => \arith_logic_unity|Res~33_combout\,
	combout => \arith_logic_unity|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y30_N18
\branch_or_next~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~9_combout\ = (!\arith_logic_unity|Mux2~0_combout\ & (!\arith_logic_unity|Mux1~0_combout\ & !\arith_logic_unity|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arith_logic_unity|Mux2~0_combout\,
	datac => \arith_logic_unity|Mux1~0_combout\,
	datad => \arith_logic_unity|Mux4~0_combout\,
	combout => \branch_or_next~9_combout\);

-- Location: LCCOMB_X109_Y33_N16
\branch_or_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~0_combout\ = (!\arith_logic_unity|Mux8~0_combout\ & (!\arith_logic_unity|Mux9~0_combout\ & (!\arith_logic_unity|Mux6~0_combout\ & !\arith_logic_unity|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux8~0_combout\,
	datab => \arith_logic_unity|Mux9~0_combout\,
	datac => \arith_logic_unity|Mux6~0_combout\,
	datad => \arith_logic_unity|Mux7~0_combout\,
	combout => \branch_or_next~0_combout\);

-- Location: LCCOMB_X109_Y33_N10
\branch_or_next~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~6_combout\ = (!\arith_logic_unity|Mux26~0_combout\ & (!\arith_logic_unity|Mux30~0_combout\ & (!\arith_logic_unity|Mux27~0_combout\ & !\arith_logic_unity|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux26~0_combout\,
	datab => \arith_logic_unity|Mux30~0_combout\,
	datac => \arith_logic_unity|Mux27~0_combout\,
	datad => \arith_logic_unity|Mux28~0_combout\,
	combout => \branch_or_next~6_combout\);

-- Location: LCCOMB_X109_Y29_N6
\branch_or_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~1_combout\ = (!\arith_logic_unity|Mux23~0_combout\ & (!\arith_logic_unity|Mux25~0_combout\ & (!\arith_logic_unity|Mux24~0_combout\ & !\arith_logic_unity|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux23~0_combout\,
	datab => \arith_logic_unity|Mux25~0_combout\,
	datac => \arith_logic_unity|Mux24~0_combout\,
	datad => \arith_logic_unity|Mux22~0_combout\,
	combout => \branch_or_next~1_combout\);

-- Location: LCCOMB_X110_Y31_N18
\branch_or_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~2_combout\ = (!\arith_logic_unity|Mux19~0_combout\ & (!\arith_logic_unity|Mux21~0_combout\ & (!\arith_logic_unity|Mux18~0_combout\ & !\arith_logic_unity|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux19~0_combout\,
	datab => \arith_logic_unity|Mux21~0_combout\,
	datac => \arith_logic_unity|Mux18~0_combout\,
	datad => \arith_logic_unity|Mux20~0_combout\,
	combout => \branch_or_next~2_combout\);

-- Location: LCCOMB_X108_Y31_N18
\branch_or_next~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~3_combout\ = (!\arith_logic_unity|Mux15~0_combout\ & (!\arith_logic_unity|Mux14~0_combout\ & (!\arith_logic_unity|Mux17~0_combout\ & !\arith_logic_unity|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux15~0_combout\,
	datab => \arith_logic_unity|Mux14~0_combout\,
	datac => \arith_logic_unity|Mux17~0_combout\,
	datad => \arith_logic_unity|Mux16~0_combout\,
	combout => \branch_or_next~3_combout\);

-- Location: LCCOMB_X109_Y33_N4
\branch_or_next~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~4_combout\ = (\instruction_memory|Mux2~0_combout\ & (\branch_or_next~1_combout\ & (\branch_or_next~2_combout\ & \branch_or_next~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux2~0_combout\,
	datab => \branch_or_next~1_combout\,
	datac => \branch_or_next~2_combout\,
	datad => \branch_or_next~3_combout\,
	combout => \branch_or_next~4_combout\);

-- Location: LCCOMB_X108_Y32_N10
\branch_or_next~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~5_combout\ = (!\arith_logic_unity|Mux12~0_combout\ & (!\arith_logic_unity|Mux11~0_combout\ & (!\arith_logic_unity|Mux13~0_combout\ & !\arith_logic_unity|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux12~0_combout\,
	datab => \arith_logic_unity|Mux11~0_combout\,
	datac => \arith_logic_unity|Mux13~0_combout\,
	datad => \arith_logic_unity|Mux10~0_combout\,
	combout => \branch_or_next~5_combout\);

-- Location: LCCOMB_X109_Y33_N28
\branch_or_next~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~7_combout\ = (\branch_or_next~6_combout\ & (!\arith_logic_unity|Mux29~9_combout\ & (\branch_or_next~4_combout\ & \branch_or_next~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~6_combout\,
	datab => \arith_logic_unity|Mux29~9_combout\,
	datac => \branch_or_next~4_combout\,
	datad => \branch_or_next~5_combout\,
	combout => \branch_or_next~7_combout\);

-- Location: LCCOMB_X109_Y33_N18
\branch_or_next~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~8_combout\ = (!\arith_logic_unity|Mux3~0_combout\ & (\branch_or_next~0_combout\ & (!\arith_logic_unity|Mux5~0_combout\ & \branch_or_next~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux3~0_combout\,
	datab => \branch_or_next~0_combout\,
	datac => \arith_logic_unity|Mux5~0_combout\,
	datad => \branch_or_next~7_combout\,
	combout => \branch_or_next~8_combout\);

-- Location: LCCOMB_X109_Y33_N12
\branch_or_next~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~10_combout\ = (\branch_or_next~9_combout\ & (!\arith_logic_unity|Mux0~0_combout\ & (!\arith_logic_unity|Mux31~1_combout\ & \branch_or_next~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~9_combout\,
	datab => \arith_logic_unity|Mux0~0_combout\,
	datac => \arith_logic_unity|Mux31~1_combout\,
	datad => \branch_or_next~8_combout\,
	combout => \branch_or_next~10_combout\);

-- Location: LCCOMB_X114_Y33_N10
\PC|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~5_combout\ = (\branch_or_next~10_combout\ & (\branch_address[4]~4_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \branch_address[4]~4_combout\,
	datac => \pc_incremented[4]~4_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \PC|Q~5_combout\);

-- Location: LCCOMB_X114_Y33_N4
\PC|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~6_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\PC|Q~5_combout\) # ((\instruction_memory|Mux8~0_combout\ & \control|aluControl[0]~1_combout\)))) # (!\instruction_memory|Mux1~0_combout\ & (\instruction_memory|Mux8~0_combout\ & 
-- (\control|aluControl[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux8~0_combout\,
	datac => \control|aluControl[0]~1_combout\,
	datad => \PC|Q~5_combout\,
	combout => \PC|Q~6_combout\);

-- Location: FF_X114_Y33_N5
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

-- Location: LCCOMB_X113_Y33_N14
\control|aluControl[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[0]~1_combout\ = (\PC|Q\(4)) # ((\PC|Q\(5)) # ((!\PC|Q\(2) & \PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \control|aluControl[0]~1_combout\);

-- Location: LCCOMB_X110_Y33_N6
\PC|Q[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q[7]~7_combout\ = (\rst~input_o\) # (\control|aluControl[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \control|aluControl[0]~1_combout\,
	combout => \PC|Q[7]~7_combout\);

-- Location: LCCOMB_X112_Y34_N8
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

-- Location: LCCOMB_X111_Y34_N8
\branch_address[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[5]~6_combout\ = (\pc_incremented[5]~6_combout\ & (!\branch_address[4]~5\)) # (!\pc_incremented[5]~6_combout\ & ((\branch_address[4]~5\) # (GND)))
-- \branch_address[5]~7\ = CARRY((!\branch_address[4]~5\) # (!\pc_incremented[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[5]~6_combout\,
	datad => VCC,
	cin => \branch_address[4]~5\,
	combout => \branch_address[5]~6_combout\,
	cout => \branch_address[5]~7\);

-- Location: LCCOMB_X114_Y33_N26
\PC|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~8_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[5]~6_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \branch_address[5]~6_combout\,
	datac => \pc_incremented[5]~6_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \PC|Q~8_combout\);

-- Location: FF_X114_Y33_N27
\PC|Q[5]\ : dffeas
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
	q => \PC|Q\(5));

-- Location: LCCOMB_X114_Y33_N6
\instruction_memory|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux1~0_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & \PC|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \PC|Q\(2),
	combout => \instruction_memory|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y33_N10
\PC|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~0_combout\ = (\instruction_memory|Mux4~0_combout\) # ((\instruction_memory|Mux10~0_combout\ & !\instruction_memory|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \instruction_memory|Mux4~0_combout\,
	datad => \instruction_memory|Mux1~0_combout\,
	combout => \PC|Q~0_combout\);

-- Location: LCCOMB_X114_Y33_N20
\PC|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~1_combout\ = (\PC|Q~0_combout\) # ((\instruction_memory|Mux1~0_combout\ & (\branch_address[2]~0_combout\ & \branch_or_next~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \branch_address[2]~0_combout\,
	datac => \PC|Q~0_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \PC|Q~1_combout\);

-- Location: FF_X114_Y33_N21
\PC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~1_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(2));

-- Location: LCCOMB_X113_Y33_N0
\PC|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~2_combout\ = (!\PC|Q\(2) & (\PC|Q\(3) & (!\PC|Q\(4) & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \PC|Q~2_combout\);

-- Location: LCCOMB_X113_Y33_N2
\PC|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~3_combout\ = (\branch_or_next~10_combout\ & ((\branch_address[3]~2_combout\))) # (!\branch_or_next~10_combout\ & (\pc_incremented[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[3]~2_combout\,
	datac => \branch_address[3]~2_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \PC|Q~3_combout\);

-- Location: LCCOMB_X113_Y33_N24
\PC|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~4_combout\ = (\PC|Q~2_combout\) # ((!\PC|Q\(5) & (!\PC|Q\(4) & \PC|Q~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q~2_combout\,
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \PC|Q~3_combout\,
	combout => \PC|Q~4_combout\);

-- Location: FF_X113_Y33_N25
\PC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~4_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(3));

-- Location: LCCOMB_X114_Y37_N6
\register_file|registers_clk[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(1) = LCELL((!\CLK~input_o\ & ((\rst~input_o\) # ((\PC|Q\(3) & \instruction_memory|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \rst~input_o\,
	datac => \CLK~input_o\,
	datad => \instruction_memory|Mux1~0_combout\,
	combout => \register_file|registers_clk\(1));

-- Location: CLKCTRL_G5
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

-- Location: FF_X108_Y30_N31
\register_file|registers:1:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \register_file|registers:0:regx|Q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(5));

-- Location: LCCOMB_X108_Y30_N12
\arith_logic_unity|Res~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Res~4_combout\ = \register_file|mux2|Mux26~0_combout\ $ (((\instruction_memory|Mux5~1_combout\ & (\register_file|registers:1:regx|Q\(5))) # (!\instruction_memory|Mux5~1_combout\ & ((\register_file|registers:0:regx|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(5),
	datab => \instruction_memory|Mux5~1_combout\,
	datac => \register_file|registers:0:regx|Q\(5),
	datad => \register_file|mux2|Mux26~0_combout\,
	combout => \arith_logic_unity|Res~4_combout\);

-- Location: LCCOMB_X109_Y32_N10
\arith_logic_unity|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux26~0_combout\ = (\control|aluControl[0]~1_combout\ & (\arith_logic_unity|Res~4_combout\ & (!\control|aluControl[2]~0_combout\))) # (!\control|aluControl[0]~1_combout\ & (((\arith_logic_unity|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Res~4_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \control|aluControl[2]~0_combout\,
	datad => \arith_logic_unity|Add0~18_combout\,
	combout => \arith_logic_unity|Mux26~0_combout\);

-- Location: LCCOMB_X110_Y33_N26
\data_memory|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux31~0_combout\ = (\arith_logic_unity|Mux26~0_combout\ & (\arith_logic_unity|Mux28~0_combout\ & (\arith_logic_unity|Mux29~9_combout\ & \arith_logic_unity|Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux26~0_combout\,
	datab => \arith_logic_unity|Mux28~0_combout\,
	datac => \arith_logic_unity|Mux29~9_combout\,
	datad => \arith_logic_unity|Mux27~0_combout\,
	combout => \data_memory|Mux31~0_combout\);

-- Location: LCCOMB_X112_Y34_N10
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

-- Location: LCCOMB_X111_Y34_N10
\branch_address[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[6]~8_combout\ = (\pc_incremented[6]~8_combout\ & (\branch_address[5]~7\ $ (GND))) # (!\pc_incremented[6]~8_combout\ & (!\branch_address[5]~7\ & VCC))
-- \branch_address[6]~9\ = CARRY((\pc_incremented[6]~8_combout\ & !\branch_address[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[6]~8_combout\,
	datad => VCC,
	cin => \branch_address[5]~7\,
	combout => \branch_address[6]~8_combout\,
	cout => \branch_address[6]~9\);

-- Location: LCCOMB_X108_Y33_N28
\PC|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~9_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & ((\branch_address[6]~8_combout\))) # (!\branch_or_next~10_combout\ & (\pc_incremented[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[6]~8_combout\,
	datab => \branch_address[6]~8_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \PC|Q[7]~7_combout\,
	combout => \PC|Q~9_combout\);

-- Location: FF_X108_Y33_N29
\PC|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(6));

-- Location: LCCOMB_X112_Y34_N12
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

-- Location: LCCOMB_X111_Y34_N12
\branch_address[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[7]~10_combout\ = (\pc_incremented[7]~10_combout\ & (!\branch_address[6]~9\)) # (!\pc_incremented[7]~10_combout\ & ((\branch_address[6]~9\) # (GND)))
-- \branch_address[7]~11\ = CARRY((!\branch_address[6]~9\) # (!\pc_incremented[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[7]~10_combout\,
	datad => VCC,
	cin => \branch_address[6]~9\,
	combout => \branch_address[7]~10_combout\,
	cout => \branch_address[7]~11\);

-- Location: LCCOMB_X108_Y33_N2
\PC|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~10_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & ((\branch_address[7]~10_combout\))) # (!\branch_or_next~10_combout\ & (\pc_incremented[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \pc_incremented[7]~10_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \branch_address[7]~10_combout\,
	combout => \PC|Q~10_combout\);

-- Location: FF_X108_Y33_N3
\PC|Q[7]\ : dffeas
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
	q => \PC|Q\(7));

-- Location: LCCOMB_X112_Y34_N14
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

-- Location: LCCOMB_X111_Y34_N14
\branch_address[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[8]~12_combout\ = (\pc_incremented[8]~12_combout\ & (\branch_address[7]~11\ $ (GND))) # (!\pc_incremented[8]~12_combout\ & (!\branch_address[7]~11\ & VCC))
-- \branch_address[8]~13\ = CARRY((\pc_incremented[8]~12_combout\ & !\branch_address[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[8]~12_combout\,
	datad => VCC,
	cin => \branch_address[7]~11\,
	combout => \branch_address[8]~12_combout\,
	cout => \branch_address[8]~13\);

-- Location: LCCOMB_X114_Y33_N30
\PC|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~11_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & ((\branch_address[8]~12_combout\))) # (!\branch_or_next~10_combout\ & (\pc_incremented[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \pc_incremented[8]~12_combout\,
	datac => \branch_address[8]~12_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \PC|Q~11_combout\);

-- Location: FF_X114_Y33_N31
\PC|Q[8]\ : dffeas
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
	q => \PC|Q\(8));

-- Location: LCCOMB_X112_Y34_N16
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

-- Location: LCCOMB_X111_Y34_N16
\branch_address[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[9]~14_combout\ = (\pc_incremented[9]~14_combout\ & (!\branch_address[8]~13\)) # (!\pc_incremented[9]~14_combout\ & ((\branch_address[8]~13\) # (GND)))
-- \branch_address[9]~15\ = CARRY((!\branch_address[8]~13\) # (!\pc_incremented[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[9]~14_combout\,
	datad => VCC,
	cin => \branch_address[8]~13\,
	combout => \branch_address[9]~14_combout\,
	cout => \branch_address[9]~15\);

-- Location: LCCOMB_X108_Y33_N0
\PC|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~12_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[9]~14_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[9]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \branch_address[9]~14_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \pc_incremented[9]~14_combout\,
	combout => \PC|Q~12_combout\);

-- Location: FF_X108_Y33_N1
\PC|Q[9]\ : dffeas
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
	q => \PC|Q\(9));

-- Location: LCCOMB_X112_Y34_N18
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

-- Location: LCCOMB_X111_Y34_N18
\branch_address[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[10]~16_combout\ = (\pc_incremented[10]~16_combout\ & (\branch_address[9]~15\ $ (GND))) # (!\pc_incremented[10]~16_combout\ & (!\branch_address[9]~15\ & VCC))
-- \branch_address[10]~17\ = CARRY((\pc_incremented[10]~16_combout\ & !\branch_address[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[10]~16_combout\,
	datad => VCC,
	cin => \branch_address[9]~15\,
	combout => \branch_address[10]~16_combout\,
	cout => \branch_address[10]~17\);

-- Location: LCCOMB_X108_Y33_N10
\PC|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~13_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[10]~16_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[10]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[10]~16_combout\,
	datab => \pc_incremented[10]~16_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \PC|Q[7]~7_combout\,
	combout => \PC|Q~13_combout\);

-- Location: FF_X108_Y33_N11
\PC|Q[10]\ : dffeas
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
	q => \PC|Q\(10));

-- Location: LCCOMB_X112_Y34_N20
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

-- Location: LCCOMB_X111_Y34_N20
\branch_address[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[11]~18_combout\ = (\pc_incremented[11]~18_combout\ & (!\branch_address[10]~17\)) # (!\pc_incremented[11]~18_combout\ & ((\branch_address[10]~17\) # (GND)))
-- \branch_address[11]~19\ = CARRY((!\branch_address[10]~17\) # (!\pc_incremented[11]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[11]~18_combout\,
	datad => VCC,
	cin => \branch_address[10]~17\,
	combout => \branch_address[11]~18_combout\,
	cout => \branch_address[11]~19\);

-- Location: LCCOMB_X114_Y33_N16
\PC|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~14_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[11]~18_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[11]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \branch_address[11]~18_combout\,
	datac => \pc_incremented[11]~18_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \PC|Q~14_combout\);

-- Location: FF_X114_Y33_N17
\PC|Q[11]\ : dffeas
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
	q => \PC|Q\(11));

-- Location: LCCOMB_X112_Y34_N22
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

-- Location: LCCOMB_X111_Y34_N22
\branch_address[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[12]~20_combout\ = (\pc_incremented[12]~20_combout\ & (\branch_address[11]~19\ $ (GND))) # (!\pc_incremented[12]~20_combout\ & (!\branch_address[11]~19\ & VCC))
-- \branch_address[12]~21\ = CARRY((\pc_incremented[12]~20_combout\ & !\branch_address[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[12]~20_combout\,
	datad => VCC,
	cin => \branch_address[11]~19\,
	combout => \branch_address[12]~20_combout\,
	cout => \branch_address[12]~21\);

-- Location: LCCOMB_X108_Y33_N20
\PC|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~15_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & ((\branch_address[12]~20_combout\))) # (!\branch_or_next~10_combout\ & (\pc_incremented[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[12]~20_combout\,
	datab => \branch_address[12]~20_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \PC|Q[7]~7_combout\,
	combout => \PC|Q~15_combout\);

-- Location: FF_X108_Y33_N21
\PC|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(12));

-- Location: LCCOMB_X112_Y34_N24
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

-- Location: LCCOMB_X111_Y34_N24
\branch_address[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[13]~22_combout\ = (\pc_incremented[13]~22_combout\ & (!\branch_address[12]~21\)) # (!\pc_incremented[13]~22_combout\ & ((\branch_address[12]~21\) # (GND)))
-- \branch_address[13]~23\ = CARRY((!\branch_address[12]~21\) # (!\pc_incremented[13]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[13]~22_combout\,
	datad => VCC,
	cin => \branch_address[12]~21\,
	combout => \branch_address[13]~22_combout\,
	cout => \branch_address[13]~23\);

-- Location: LCCOMB_X108_Y33_N18
\PC|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~16_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[13]~22_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[13]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \branch_address[13]~22_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \pc_incremented[13]~22_combout\,
	combout => \PC|Q~16_combout\);

-- Location: FF_X108_Y33_N19
\PC|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(13));

-- Location: LCCOMB_X112_Y34_N26
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

-- Location: LCCOMB_X111_Y34_N26
\branch_address[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[14]~24_combout\ = (\pc_incremented[14]~24_combout\ & (\branch_address[13]~23\ $ (GND))) # (!\pc_incremented[14]~24_combout\ & (!\branch_address[13]~23\ & VCC))
-- \branch_address[14]~25\ = CARRY((\pc_incremented[14]~24_combout\ & !\branch_address[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[14]~24_combout\,
	datad => VCC,
	cin => \branch_address[13]~23\,
	combout => \branch_address[14]~24_combout\,
	cout => \branch_address[14]~25\);

-- Location: LCCOMB_X108_Y33_N16
\PC|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~17_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & ((\branch_address[14]~24_combout\))) # (!\branch_or_next~10_combout\ & (\pc_incremented[14]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \pc_incremented[14]~24_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \branch_address[14]~24_combout\,
	combout => \PC|Q~17_combout\);

-- Location: FF_X108_Y33_N17
\PC|Q[14]\ : dffeas
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
	q => \PC|Q\(14));

-- Location: LCCOMB_X112_Y34_N28
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

-- Location: LCCOMB_X111_Y34_N28
\branch_address[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[15]~26_combout\ = (\pc_incremented[15]~26_combout\ & (!\branch_address[14]~25\)) # (!\pc_incremented[15]~26_combout\ & ((\branch_address[14]~25\) # (GND)))
-- \branch_address[15]~27\ = CARRY((!\branch_address[14]~25\) # (!\pc_incremented[15]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[15]~26_combout\,
	datad => VCC,
	cin => \branch_address[14]~25\,
	combout => \branch_address[15]~26_combout\,
	cout => \branch_address[15]~27\);

-- Location: LCCOMB_X108_Y33_N22
\PC|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~18_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[15]~26_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[15]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[15]~26_combout\,
	datab => \branch_or_next~10_combout\,
	datac => \PC|Q[7]~7_combout\,
	datad => \pc_incremented[15]~26_combout\,
	combout => \PC|Q~18_combout\);

-- Location: FF_X108_Y33_N23
\PC|Q[15]\ : dffeas
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
	q => \PC|Q\(15));

-- Location: LCCOMB_X112_Y34_N30
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

-- Location: LCCOMB_X111_Y34_N30
\branch_address[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[16]~28_combout\ = (\pc_incremented[16]~28_combout\ & (\branch_address[15]~27\ $ (GND))) # (!\pc_incremented[16]~28_combout\ & (!\branch_address[15]~27\ & VCC))
-- \branch_address[16]~29\ = CARRY((\pc_incremented[16]~28_combout\ & !\branch_address[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[16]~28_combout\,
	datad => VCC,
	cin => \branch_address[15]~27\,
	combout => \branch_address[16]~28_combout\,
	cout => \branch_address[16]~29\);

-- Location: LCCOMB_X108_Y33_N4
\PC|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~19_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & ((\branch_address[16]~28_combout\))) # (!\branch_or_next~10_combout\ & (\pc_incremented[16]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \pc_incremented[16]~28_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \branch_address[16]~28_combout\,
	combout => \PC|Q~19_combout\);

-- Location: FF_X108_Y33_N5
\PC|Q[16]\ : dffeas
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
	q => \PC|Q\(16));

-- Location: LCCOMB_X112_Y33_N0
\pc_incremented[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[17]~30_combout\ = (\PC|Q\(17) & (!\pc_incremented[16]~29\)) # (!\PC|Q\(17) & ((\pc_incremented[16]~29\) # (GND)))
-- \pc_incremented[17]~31\ = CARRY((!\pc_incremented[16]~29\) # (!\PC|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(17),
	datad => VCC,
	cin => \pc_incremented[16]~29\,
	combout => \pc_incremented[17]~30_combout\,
	cout => \pc_incremented[17]~31\);

-- Location: LCCOMB_X111_Y33_N0
\branch_address[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[17]~30_combout\ = (\pc_incremented[17]~30_combout\ & (!\branch_address[16]~29\)) # (!\pc_incremented[17]~30_combout\ & ((\branch_address[16]~29\) # (GND)))
-- \branch_address[17]~31\ = CARRY((!\branch_address[16]~29\) # (!\pc_incremented[17]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[17]~30_combout\,
	datad => VCC,
	cin => \branch_address[16]~29\,
	combout => \branch_address[17]~30_combout\,
	cout => \branch_address[17]~31\);

-- Location: LCCOMB_X108_Y33_N6
\PC|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~20_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[17]~30_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[17]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \branch_address[17]~30_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \pc_incremented[17]~30_combout\,
	combout => \PC|Q~20_combout\);

-- Location: FF_X108_Y33_N7
\PC|Q[17]\ : dffeas
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
	q => \PC|Q\(17));

-- Location: LCCOMB_X112_Y33_N2
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

-- Location: LCCOMB_X111_Y33_N2
\branch_address[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[18]~32_combout\ = (\pc_incremented[18]~32_combout\ & (\branch_address[17]~31\ $ (GND))) # (!\pc_incremented[18]~32_combout\ & (!\branch_address[17]~31\ & VCC))
-- \branch_address[18]~33\ = CARRY((\pc_incremented[18]~32_combout\ & !\branch_address[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[18]~32_combout\,
	datad => VCC,
	cin => \branch_address[17]~31\,
	combout => \branch_address[18]~32_combout\,
	cout => \branch_address[18]~33\);

-- Location: LCCOMB_X114_Y33_N18
\PC|Q~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~21_combout\ = (!\control|aluControl[0]~1_combout\ & ((\branch_or_next~10_combout\ & ((\branch_address[18]~32_combout\))) # (!\branch_or_next~10_combout\ & (\pc_incremented[18]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \pc_incremented[18]~32_combout\,
	datac => \branch_address[18]~32_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \PC|Q~21_combout\);

-- Location: FF_X114_Y33_N19
\PC|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~21_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(18));

-- Location: LCCOMB_X112_Y33_N4
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

-- Location: LCCOMB_X111_Y33_N4
\branch_address[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[19]~34_combout\ = (\pc_incremented[19]~34_combout\ & (!\branch_address[18]~33\)) # (!\pc_incremented[19]~34_combout\ & ((\branch_address[18]~33\) # (GND)))
-- \branch_address[19]~35\ = CARRY((!\branch_address[18]~33\) # (!\pc_incremented[19]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[19]~34_combout\,
	datad => VCC,
	cin => \branch_address[18]~33\,
	combout => \branch_address[19]~34_combout\,
	cout => \branch_address[19]~35\);

-- Location: LCCOMB_X114_Y33_N22
\PC|Q~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~22_combout\ = (!\control|aluControl[0]~1_combout\ & ((\branch_or_next~10_combout\ & ((\branch_address[19]~34_combout\))) # (!\branch_or_next~10_combout\ & (\pc_incremented[19]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[0]~1_combout\,
	datab => \pc_incremented[19]~34_combout\,
	datac => \branch_address[19]~34_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \PC|Q~22_combout\);

-- Location: FF_X114_Y33_N23
\PC|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~22_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(19));

-- Location: LCCOMB_X112_Y33_N6
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

-- Location: LCCOMB_X111_Y33_N6
\branch_address[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[20]~36_combout\ = (\pc_incremented[20]~36_combout\ & (\branch_address[19]~35\ $ (GND))) # (!\pc_incremented[20]~36_combout\ & (!\branch_address[19]~35\ & VCC))
-- \branch_address[20]~37\ = CARRY((\pc_incremented[20]~36_combout\ & !\branch_address[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[20]~36_combout\,
	datad => VCC,
	cin => \branch_address[19]~35\,
	combout => \branch_address[20]~36_combout\,
	cout => \branch_address[20]~37\);

-- Location: LCCOMB_X108_Y33_N24
\PC|Q~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~23_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[20]~36_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[20]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \branch_address[20]~36_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \pc_incremented[20]~36_combout\,
	combout => \PC|Q~23_combout\);

-- Location: FF_X108_Y33_N25
\PC|Q[20]\ : dffeas
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
	q => \PC|Q\(20));

-- Location: LCCOMB_X112_Y33_N8
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

-- Location: LCCOMB_X111_Y33_N8
\branch_address[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[21]~38_combout\ = (\pc_incremented[21]~38_combout\ & (!\branch_address[20]~37\)) # (!\pc_incremented[21]~38_combout\ & ((\branch_address[20]~37\) # (GND)))
-- \branch_address[21]~39\ = CARRY((!\branch_address[20]~37\) # (!\pc_incremented[21]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[21]~38_combout\,
	datad => VCC,
	cin => \branch_address[20]~37\,
	combout => \branch_address[21]~38_combout\,
	cout => \branch_address[21]~39\);

-- Location: LCCOMB_X108_Y33_N14
\PC|Q~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~24_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[21]~38_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[21]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \branch_address[21]~38_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \pc_incremented[21]~38_combout\,
	combout => \PC|Q~24_combout\);

-- Location: FF_X108_Y33_N15
\PC|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(21));

-- Location: LCCOMB_X112_Y33_N10
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

-- Location: LCCOMB_X111_Y33_N10
\branch_address[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[22]~40_combout\ = (\pc_incremented[22]~40_combout\ & (\branch_address[21]~39\ $ (GND))) # (!\pc_incremented[22]~40_combout\ & (!\branch_address[21]~39\ & VCC))
-- \branch_address[22]~41\ = CARRY((\pc_incremented[22]~40_combout\ & !\branch_address[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[22]~40_combout\,
	datad => VCC,
	cin => \branch_address[21]~39\,
	combout => \branch_address[22]~40_combout\,
	cout => \branch_address[22]~41\);

-- Location: LCCOMB_X108_Y33_N12
\PC|Q~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~25_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[22]~40_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[22]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \branch_address[22]~40_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \pc_incremented[22]~40_combout\,
	combout => \PC|Q~25_combout\);

-- Location: FF_X108_Y33_N13
\PC|Q[22]\ : dffeas
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
	q => \PC|Q\(22));

-- Location: LCCOMB_X112_Y33_N12
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

-- Location: LCCOMB_X111_Y33_N12
\branch_address[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[23]~42_combout\ = (\pc_incremented[23]~42_combout\ & (!\branch_address[22]~41\)) # (!\pc_incremented[23]~42_combout\ & ((\branch_address[22]~41\) # (GND)))
-- \branch_address[23]~43\ = CARRY((!\branch_address[22]~41\) # (!\pc_incremented[23]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[23]~42_combout\,
	datad => VCC,
	cin => \branch_address[22]~41\,
	combout => \branch_address[23]~42_combout\,
	cout => \branch_address[23]~43\);

-- Location: LCCOMB_X114_Y33_N0
\PC|Q~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~26_combout\ = (!\control|aluControl[0]~1_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[23]~42_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[23]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[23]~42_combout\,
	datab => \control|aluControl[0]~1_combout\,
	datac => \pc_incremented[23]~42_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \PC|Q~26_combout\);

-- Location: LCCOMB_X114_Y33_N2
\PC|Q~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~27_combout\ = (\PC|Q~26_combout\) # ((\instruction_memory|Mux5~0_combout\ & \PC|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datac => \PC|Q~2_combout\,
	datad => \PC|Q~26_combout\,
	combout => \PC|Q~27_combout\);

-- Location: FF_X114_Y33_N3
\PC|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~27_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(23));

-- Location: LCCOMB_X112_Y33_N14
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

-- Location: LCCOMB_X111_Y33_N14
\branch_address[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[24]~44_combout\ = (\pc_incremented[24]~44_combout\ & (\branch_address[23]~43\ $ (GND))) # (!\pc_incremented[24]~44_combout\ & (!\branch_address[23]~43\ & VCC))
-- \branch_address[24]~45\ = CARRY((\pc_incremented[24]~44_combout\ & !\branch_address[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[24]~44_combout\,
	datad => VCC,
	cin => \branch_address[23]~43\,
	combout => \branch_address[24]~44_combout\,
	cout => \branch_address[24]~45\);

-- Location: LCCOMB_X108_Y33_N30
\PC|Q~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~28_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & ((\branch_address[24]~44_combout\))) # (!\branch_or_next~10_combout\ & (\pc_incremented[24]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \pc_incremented[24]~44_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \branch_address[24]~44_combout\,
	combout => \PC|Q~28_combout\);

-- Location: FF_X108_Y33_N31
\PC|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(24));

-- Location: LCCOMB_X112_Y33_N16
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

-- Location: LCCOMB_X111_Y33_N16
\branch_address[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[25]~46_combout\ = (\pc_incremented[25]~46_combout\ & (!\branch_address[24]~45\)) # (!\pc_incremented[25]~46_combout\ & ((\branch_address[24]~45\) # (GND)))
-- \branch_address[25]~47\ = CARRY((!\branch_address[24]~45\) # (!\pc_incremented[25]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[25]~46_combout\,
	datad => VCC,
	cin => \branch_address[24]~45\,
	combout => \branch_address[25]~46_combout\,
	cout => \branch_address[25]~47\);

-- Location: LCCOMB_X114_Y33_N24
\PC|Q~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~29_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[25]~46_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[25]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q[7]~7_combout\,
	datab => \branch_address[25]~46_combout\,
	datac => \pc_incremented[25]~46_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \PC|Q~29_combout\);

-- Location: FF_X114_Y33_N25
\PC|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(25));

-- Location: LCCOMB_X112_Y33_N18
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

-- Location: LCCOMB_X111_Y33_N18
\branch_address[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[26]~48_combout\ = (\pc_incremented[26]~48_combout\ & (\branch_address[25]~47\ $ (GND))) # (!\pc_incremented[26]~48_combout\ & (!\branch_address[25]~47\ & VCC))
-- \branch_address[26]~49\ = CARRY((\pc_incremented[26]~48_combout\ & !\branch_address[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[26]~48_combout\,
	datad => VCC,
	cin => \branch_address[25]~47\,
	combout => \branch_address[26]~48_combout\,
	cout => \branch_address[26]~49\);

-- Location: LCCOMB_X108_Y33_N8
\PC|Q~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~30_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[26]~48_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[26]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[26]~48_combout\,
	datab => \branch_or_next~10_combout\,
	datac => \PC|Q[7]~7_combout\,
	datad => \pc_incremented[26]~48_combout\,
	combout => \PC|Q~30_combout\);

-- Location: FF_X108_Y33_N9
\PC|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(26));

-- Location: LCCOMB_X112_Y33_N20
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

-- Location: LCCOMB_X111_Y33_N20
\branch_address[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[27]~50_combout\ = (\pc_incremented[27]~50_combout\ & (!\branch_address[26]~49\)) # (!\pc_incremented[27]~50_combout\ & ((\branch_address[26]~49\) # (GND)))
-- \branch_address[27]~51\ = CARRY((!\branch_address[26]~49\) # (!\pc_incremented[27]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[27]~50_combout\,
	datad => VCC,
	cin => \branch_address[26]~49\,
	combout => \branch_address[27]~50_combout\,
	cout => \branch_address[27]~51\);

-- Location: LCCOMB_X108_Y33_N26
\PC|Q~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q~31_combout\ = (!\PC|Q[7]~7_combout\ & ((\branch_or_next~10_combout\ & (\branch_address[27]~50_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[27]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[27]~50_combout\,
	datab => \branch_or_next~10_combout\,
	datac => \PC|Q[7]~7_combout\,
	datad => \pc_incremented[27]~50_combout\,
	combout => \PC|Q~31_combout\);

-- Location: FF_X108_Y33_N27
\PC|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(27));

-- Location: LCCOMB_X112_Y33_N22
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

-- Location: LCCOMB_X111_Y33_N22
\branch_address[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[28]~52_combout\ = (\pc_incremented[28]~52_combout\ & (\branch_address[27]~51\ $ (GND))) # (!\pc_incremented[28]~52_combout\ & (!\branch_address[27]~51\ & VCC))
-- \branch_address[28]~53\ = CARRY((\pc_incremented[28]~52_combout\ & !\branch_address[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[28]~52_combout\,
	datad => VCC,
	cin => \branch_address[27]~51\,
	combout => \branch_address[28]~52_combout\,
	cout => \branch_address[28]~53\);

-- Location: LCCOMB_X114_Y33_N14
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\branch_or_next~10_combout\ & ((\branch_address[28]~52_combout\))) # (!\branch_or_next~10_combout\ & (\pc_incremented[28]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[28]~52_combout\,
	datac => \branch_address[28]~52_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X113_Y33_N16
\PC|Q[31]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q[31]~32_combout\ = (\rst~input_o\) # (!\control|aluControl[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[0]~1_combout\,
	datad => \rst~input_o\,
	combout => \PC|Q[31]~32_combout\);

-- Location: FF_X114_Y33_N15
\PC|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add1~0_combout\,
	sclr => \rst~input_o\,
	ena => \PC|Q[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(28));

-- Location: LCCOMB_X112_Y33_N24
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

-- Location: LCCOMB_X111_Y33_N24
\branch_address[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[29]~54_combout\ = (\pc_incremented[29]~54_combout\ & (!\branch_address[28]~53\)) # (!\pc_incremented[29]~54_combout\ & ((\branch_address[28]~53\) # (GND)))
-- \branch_address[29]~55\ = CARRY((!\branch_address[28]~53\) # (!\pc_incremented[29]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[29]~54_combout\,
	datad => VCC,
	cin => \branch_address[28]~53\,
	combout => \branch_address[29]~54_combout\,
	cout => \branch_address[29]~55\);

-- Location: LCCOMB_X114_Y33_N8
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\branch_or_next~10_combout\ & ((\branch_address[29]~54_combout\))) # (!\branch_or_next~10_combout\ & (\pc_incremented[29]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[29]~54_combout\,
	datac => \branch_address[29]~54_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \Add1~1_combout\);

-- Location: FF_X114_Y33_N9
\PC|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add1~1_combout\,
	sclr => \rst~input_o\,
	ena => \PC|Q[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(29));

-- Location: LCCOMB_X112_Y33_N26
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

-- Location: LCCOMB_X111_Y33_N26
\branch_address[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[30]~56_combout\ = (\pc_incremented[30]~56_combout\ & (\branch_address[29]~55\ $ (GND))) # (!\pc_incremented[30]~56_combout\ & (!\branch_address[29]~55\ & VCC))
-- \branch_address[30]~57\ = CARRY((\pc_incremented[30]~56_combout\ & !\branch_address[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[30]~56_combout\,
	datad => VCC,
	cin => \branch_address[29]~55\,
	combout => \branch_address[30]~56_combout\,
	cout => \branch_address[30]~57\);

-- Location: LCCOMB_X114_Y33_N12
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\branch_or_next~10_combout\ & (\branch_address[30]~56_combout\)) # (!\branch_or_next~10_combout\ & ((\pc_incremented[30]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[30]~56_combout\,
	datab => \pc_incremented[30]~56_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \Add1~2_combout\);

-- Location: FF_X114_Y33_N13
\PC|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add1~2_combout\,
	sclr => \rst~input_o\,
	ena => \PC|Q[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(30));

-- Location: LCCOMB_X112_Y33_N28
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

-- Location: LCCOMB_X111_Y33_N28
\branch_address[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[31]~58_combout\ = \branch_address[30]~57\ $ (\pc_incremented[31]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pc_incremented[31]~58_combout\,
	cin => \branch_address[30]~57\,
	combout => \branch_address[31]~58_combout\);

-- Location: LCCOMB_X114_Y33_N28
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\branch_or_next~10_combout\ & ((\branch_address[31]~58_combout\))) # (!\branch_or_next~10_combout\ & (\pc_incremented[31]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[31]~58_combout\,
	datac => \branch_address[31]~58_combout\,
	datad => \branch_or_next~10_combout\,
	combout => \Add1~3_combout\);

-- Location: FF_X114_Y33_N29
\PC|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add1~3_combout\,
	sclr => \rst~input_o\,
	ena => \PC|Q[31]~32_combout\,
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


