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

-- DATE "12/13/2018 17:40:57"

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
	instruction_addr : OUT std_logic_vector(31 DOWNTO 0)
	);
END microprocessor;

-- Design Ports Information
-- data_memory_output[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[4]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[8]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[10]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[11]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[12]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[13]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[14]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[15]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[16]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[17]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[18]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[19]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[20]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[21]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[22]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[23]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[24]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[25]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[26]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[27]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[28]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[29]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[30]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[31]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[1]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[4]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[8]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[9]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[10]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[11]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[12]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[13]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[14]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[15]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[16]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[17]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[18]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[19]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[20]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[21]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[22]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[23]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[24]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[25]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[26]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[27]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[28]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[29]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[30]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[31]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \register_file|registers_clk[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \pc_incremented[4]~5\ : std_logic;
SIGNAL \pc_incremented[5]~6_combout\ : std_logic;
SIGNAL \instruction_memory|Mux10~1_combout\ : std_logic;
SIGNAL \instruction_memory|Mux13~0_combout\ : std_logic;
SIGNAL \pc_incremented[2]~0_combout\ : std_logic;
SIGNAL \branch_address[2]~0_combout\ : std_logic;
SIGNAL \control|aluSrc~0_combout\ : std_logic;
SIGNAL \control|aluOp[0]~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux10~0_combout\ : std_logic;
SIGNAL \control|aluControl[2]~3_combout\ : std_logic;
SIGNAL \instruction_memory|Mux7~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux7~1_combout\ : std_logic;
SIGNAL \register_file|registers_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \arith_logic_unity|Mux26~5_combout\ : std_logic;
SIGNAL \instruction_memory|Mux4~0_combout\ : std_logic;
SIGNAL \write_data[5]~3_combout\ : std_logic;
SIGNAL \instruction_memory|Mux1~0_combout\ : std_logic;
SIGNAL \register_file|registers_clk[3]~clkctrl_outclk\ : std_logic;
SIGNAL \register_file|registers_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \register_file|registers_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \aluOp2[5]~9_combout\ : std_logic;
SIGNAL \aluOp2[5]~10_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~11_combout\ : std_logic;
SIGNAL \instruction_memory|Mux6~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux26~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux26~1_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[4]~feeder_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[4]~feeder_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[4]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[4]~11_combout\ : std_logic;
SIGNAL \aluOp2[4]~12_combout\ : std_logic;
SIGNAL \aluOp2[4]~13_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~12_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[3]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[3]~14_combout\ : std_logic;
SIGNAL \aluOp2[3]~15_combout\ : std_logic;
SIGNAL \aluOp2[3]~16_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~13_combout\ : std_logic;
SIGNAL \write_data[2]~0_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[2]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[2]~0_combout\ : std_logic;
SIGNAL \aluOp2[2]~1_combout\ : std_logic;
SIGNAL \aluOp2[2]~2_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux29~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux29~1_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[1]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[1]~3_combout\ : std_logic;
SIGNAL \aluOp2[1]~4_combout\ : std_logic;
SIGNAL \aluOp2[1]~5_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~1_combout\ : std_logic;
SIGNAL \branch_or_next~88_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[0]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[0]~6_combout\ : std_logic;
SIGNAL \aluOp2[0]~7_combout\ : std_logic;
SIGNAL \aluOp2[0]~8_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~2_combout\ : std_logic;
SIGNAL \control|aluControl[2]~4_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~4_cout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~5_combout\ : std_logic;
SIGNAL \control|aluControl[1]~2_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~3_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~95_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[31]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux0~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux0~1_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[30]~feeder_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[30]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[30]~89_combout\ : std_logic;
SIGNAL \aluOp2[30]~90_combout\ : std_logic;
SIGNAL \aluOp2[30]~91_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~92_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[29]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[29]~62_combout\ : std_logic;
SIGNAL \aluOp2[29]~63_combout\ : std_logic;
SIGNAL \aluOp2[29]~64_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~65_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux3~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux3~1_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux4~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux4~1_combout\ : std_logic;
SIGNAL \aluOp2[26]~71_combout\ : std_logic;
SIGNAL \aluOp2[26]~72_combout\ : std_logic;
SIGNAL \aluOp2[26]~73_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~68_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux6~0_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[25]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux6~1_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[24]~feeder_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[24]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux7~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux7~1_combout\ : std_logic;
SIGNAL \aluOp2[23]~80_combout\ : std_logic;
SIGNAL \aluOp2[23]~81_combout\ : std_logic;
SIGNAL \aluOp2[23]~82_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~71_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[22]~feeder_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[22]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[22]~83_combout\ : std_logic;
SIGNAL \aluOp2[22]~84_combout\ : std_logic;
SIGNAL \aluOp2[22]~85_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~72_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[21]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[21]~86_combout\ : std_logic;
SIGNAL \aluOp2[21]~87_combout\ : std_logic;
SIGNAL \aluOp2[21]~88_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~73_combout\ : std_logic;
SIGNAL \aluOp2[20]~17_combout\ : std_logic;
SIGNAL \aluOp2[20]~18_combout\ : std_logic;
SIGNAL \aluOp2[20]~19_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~20_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[19]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux12~0_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[19]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux12~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[18]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[18]~23_combout\ : std_logic;
SIGNAL \aluOp2[18]~24_combout\ : std_logic;
SIGNAL \aluOp2[18]~25_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~22_combout\ : std_logic;
SIGNAL \aluOp2[17]~26_combout\ : std_logic;
SIGNAL \aluOp2[17]~27_combout\ : std_logic;
SIGNAL \aluOp2[17]~28_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~23_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[16]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux15~0_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[16]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux15~1_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux16~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux16~1_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux17~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux17~1_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux18~0_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[13]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux18~1_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux19~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux19~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[11]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux20~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux20~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[10]~feeder_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[10]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[10]~46_combout\ : std_logic;
SIGNAL \aluOp2[10]~47_combout\ : std_logic;
SIGNAL \aluOp2[10]~48_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~30_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[9]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux22~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux22~1_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[8]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux23~0_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[8]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux23~1_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[7]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[7]~55_combout\ : std_logic;
SIGNAL \aluOp2[7]~56_combout\ : std_logic;
SIGNAL \aluOp2[7]~57_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~33_combout\ : std_logic;
SIGNAL \aluOp2[6]~58_combout\ : std_logic;
SIGNAL \aluOp2[6]~59_combout\ : std_logic;
SIGNAL \aluOp2[6]~60_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~34_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~19\ : std_logic;
SIGNAL \arith_logic_unity|Add0~35_combout\ : std_logic;
SIGNAL \write_data[6]~29_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux25~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux25~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~36\ : std_logic;
SIGNAL \arith_logic_unity|Add0~37_combout\ : std_logic;
SIGNAL \write_data[7]~30_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[7]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux24~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux24~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~38\ : std_logic;
SIGNAL \arith_logic_unity|Add0~39_combout\ : std_logic;
SIGNAL \write_data[8]~31_combout\ : std_logic;
SIGNAL \register_file|registers:3:regx|Q[8]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[8]~52_combout\ : std_logic;
SIGNAL \aluOp2[8]~53_combout\ : std_logic;
SIGNAL \aluOp2[8]~54_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~32_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~40\ : std_logic;
SIGNAL \arith_logic_unity|Add0~41_combout\ : std_logic;
SIGNAL \write_data[9]~17_combout\ : std_logic;
SIGNAL \aluOp2[9]~49_combout\ : std_logic;
SIGNAL \aluOp2[9]~50_combout\ : std_logic;
SIGNAL \aluOp2[9]~51_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~31_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~42\ : std_logic;
SIGNAL \arith_logic_unity|Add0~43_combout\ : std_logic;
SIGNAL \write_data[10]~18_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux21~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux21~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~44\ : std_logic;
SIGNAL \arith_logic_unity|Add0~45_combout\ : std_logic;
SIGNAL \write_data[11]~19_combout\ : std_logic;
SIGNAL \register_file|registers:3:regx|Q[11]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[11]~43_combout\ : std_logic;
SIGNAL \aluOp2[11]~44_combout\ : std_logic;
SIGNAL \aluOp2[11]~45_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~29_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~46\ : std_logic;
SIGNAL \arith_logic_unity|Add0~47_combout\ : std_logic;
SIGNAL \write_data[12]~20_combout\ : std_logic;
SIGNAL \aluOp2[12]~41_combout\ : std_logic;
SIGNAL \aluOp2[12]~42_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~28_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~48\ : std_logic;
SIGNAL \arith_logic_unity|Add0~49_combout\ : std_logic;
SIGNAL \write_data[13]~21_combout\ : std_logic;
SIGNAL \aluOp2[13]~38_combout\ : std_logic;
SIGNAL \aluOp2[13]~39_combout\ : std_logic;
SIGNAL \aluOp2[13]~40_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~27_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~50\ : std_logic;
SIGNAL \arith_logic_unity|Add0~51_combout\ : std_logic;
SIGNAL \write_data[14]~22_combout\ : std_logic;
SIGNAL \aluOp2[14]~35_combout\ : std_logic;
SIGNAL \aluOp2[14]~36_combout\ : std_logic;
SIGNAL \aluOp2[14]~37_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~26_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~52\ : std_logic;
SIGNAL \arith_logic_unity|Add0~53_combout\ : std_logic;
SIGNAL \write_data[15]~23_combout\ : std_logic;
SIGNAL \aluOp2[15]~32_combout\ : std_logic;
SIGNAL \aluOp2[15]~33_combout\ : std_logic;
SIGNAL \aluOp2[15]~34_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~25_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~54\ : std_logic;
SIGNAL \arith_logic_unity|Add0~55_combout\ : std_logic;
SIGNAL \write_data[16]~24_combout\ : std_logic;
SIGNAL \aluOp2[16]~29_combout\ : std_logic;
SIGNAL \aluOp2[16]~30_combout\ : std_logic;
SIGNAL \aluOp2[16]~31_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~24_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~56\ : std_logic;
SIGNAL \arith_logic_unity|Add0~57_combout\ : std_logic;
SIGNAL \write_data[17]~25_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[17]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux14~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux14~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~58\ : std_logic;
SIGNAL \arith_logic_unity|Add0~59_combout\ : std_logic;
SIGNAL \write_data[18]~26_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux13~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux13~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~60\ : std_logic;
SIGNAL \arith_logic_unity|Add0~61_combout\ : std_logic;
SIGNAL \write_data[19]~27_combout\ : std_logic;
SIGNAL \register_file|registers:3:regx|Q[19]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[19]~20_combout\ : std_logic;
SIGNAL \aluOp2[19]~21_combout\ : std_logic;
SIGNAL \aluOp2[19]~22_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~21_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~62\ : std_logic;
SIGNAL \arith_logic_unity|Add0~63_combout\ : std_logic;
SIGNAL \write_data[20]~28_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux11~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux11~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~64\ : std_logic;
SIGNAL \arith_logic_unity|Add0~74_combout\ : std_logic;
SIGNAL \write_data[21]~13_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[21]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux10~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux10~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~75\ : std_logic;
SIGNAL \arith_logic_unity|Add0~76_combout\ : std_logic;
SIGNAL \write_data[22]~14_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux9~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux9~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~77\ : std_logic;
SIGNAL \arith_logic_unity|Add0~78_combout\ : std_logic;
SIGNAL \write_data[23]~15_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux8~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux8~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~79\ : std_logic;
SIGNAL \arith_logic_unity|Add0~80_combout\ : std_logic;
SIGNAL \write_data[24]~16_combout\ : std_logic;
SIGNAL \aluOp2[24]~77_combout\ : std_logic;
SIGNAL \aluOp2[24]~78_combout\ : std_logic;
SIGNAL \aluOp2[24]~79_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~70_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~81\ : std_logic;
SIGNAL \arith_logic_unity|Add0~82_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux6~5_combout\ : std_logic;
SIGNAL \write_data[25]~10_combout\ : std_logic;
SIGNAL \aluOp2[25]~74_combout\ : std_logic;
SIGNAL \aluOp2[25]~75_combout\ : std_logic;
SIGNAL \aluOp2[25]~76_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~69_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~83\ : std_logic;
SIGNAL \arith_logic_unity|Add0~84_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux5~5_combout\ : std_logic;
SIGNAL \write_data[26]~9_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux5~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux5~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~85\ : std_logic;
SIGNAL \arith_logic_unity|Add0~86_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux4~5_combout\ : std_logic;
SIGNAL \write_data[27]~8_combout\ : std_logic;
SIGNAL \register_file|registers:2:regx|Q[27]~feeder_combout\ : std_logic;
SIGNAL \aluOp2[27]~68_combout\ : std_logic;
SIGNAL \aluOp2[27]~69_combout\ : std_logic;
SIGNAL \aluOp2[27]~70_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~67_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~87\ : std_logic;
SIGNAL \arith_logic_unity|Add0~88_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux3~5_combout\ : std_logic;
SIGNAL \write_data[28]~7_combout\ : std_logic;
SIGNAL \aluOp2[28]~65_combout\ : std_logic;
SIGNAL \aluOp2[28]~66_combout\ : std_logic;
SIGNAL \aluOp2[28]~67_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~66_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~89\ : std_logic;
SIGNAL \arith_logic_unity|Add0~90_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux2~5_combout\ : std_logic;
SIGNAL \write_data[29]~6_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux2~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux2~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~91\ : std_logic;
SIGNAL \arith_logic_unity|Add0~93_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux1~5_combout\ : std_logic;
SIGNAL \write_data[30]~11_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux1~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux1~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~94\ : std_logic;
SIGNAL \arith_logic_unity|Add0~96_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux0~5_combout\ : std_logic;
SIGNAL \write_data[31]~12_combout\ : std_logic;
SIGNAL \aluOp2[31]~92_combout\ : std_logic;
SIGNAL \aluOp2[31]~93_combout\ : std_logic;
SIGNAL \aluOp2[31]~94_combout\ : std_logic;
SIGNAL \aluOp2[12]~61_combout\ : std_logic;
SIGNAL \aluOp2[5]~95_combout\ : std_logic;
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
SIGNAL \arith_logic_unity|Mux31~2_combout\ : std_logic;
SIGNAL \write_data[0]~2_combout\ : std_logic;
SIGNAL \register_file|registers:0:regx|Q[0]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux31~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux31~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~6\ : std_logic;
SIGNAL \arith_logic_unity|Add0~7_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux30~5_combout\ : std_logic;
SIGNAL \data_memory|Mux1~0_combout\ : std_logic;
SIGNAL \write_data[1]~1_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux30~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux30~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~8\ : std_logic;
SIGNAL \arith_logic_unity|Add0~10\ : std_logic;
SIGNAL \arith_logic_unity|Add0~14_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux28~5_combout\ : std_logic;
SIGNAL \write_data[3]~5_combout\ : std_logic;
SIGNAL \register_file|registers:3:regx|Q[3]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux28~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux28~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~15\ : std_logic;
SIGNAL \arith_logic_unity|Add0~16_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux27~5_combout\ : std_logic;
SIGNAL \write_data[4]~4_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux27~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux27~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~17\ : std_logic;
SIGNAL \arith_logic_unity|Add0~18_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~9_combout\ : std_logic;
SIGNAL \branch_or_next~6_combout\ : std_logic;
SIGNAL \branch_or_next~3_combout\ : std_logic;
SIGNAL \branch_or_next~83_combout\ : std_logic;
SIGNAL \branch_or_next~25_combout\ : std_logic;
SIGNAL \branch_or_next~84_combout\ : std_logic;
SIGNAL \branch_or_next~37_combout\ : std_logic;
SIGNAL \branch_or_next~85_combout\ : std_logic;
SIGNAL \branch_or_next~61_combout\ : std_logic;
SIGNAL \branch_or_next~87_combout\ : std_logic;
SIGNAL \branch_or_next~78_combout\ : std_logic;
SIGNAL \branch_or_next~49_combout\ : std_logic;
SIGNAL \branch_or_next~86_combout\ : std_logic;
SIGNAL \branch_or_next~79_combout\ : std_logic;
SIGNAL \branch_or_next~80_combout\ : std_logic;
SIGNAL \branch_or_next~81_combout\ : std_logic;
SIGNAL \branch_or_next~82_combout\ : std_logic;
SIGNAL \PC|Q[2]~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux11~0_combout\ : std_logic;
SIGNAL \pc_incremented[2]~1\ : std_logic;
SIGNAL \pc_incremented[3]~2_combout\ : std_logic;
SIGNAL \branch_address[2]~1\ : std_logic;
SIGNAL \branch_address[3]~3\ : std_logic;
SIGNAL \branch_address[4]~5\ : std_logic;
SIGNAL \branch_address[5]~6_combout\ : std_logic;
SIGNAL \pc_in[5]~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux12~0_combout\ : std_logic;
SIGNAL \branch_address[3]~2_combout\ : std_logic;
SIGNAL \PC|Q[3]~1_combout\ : std_logic;
SIGNAL \pc_incremented[3]~3\ : std_logic;
SIGNAL \pc_incremented[4]~4_combout\ : std_logic;
SIGNAL \branch_address[4]~4_combout\ : std_logic;
SIGNAL \PC|Q[4]~2_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux29~5_combout\ : std_logic;
SIGNAL \data_memory|Mux2~0_combout\ : std_logic;
SIGNAL \pc_incremented[5]~7\ : std_logic;
SIGNAL \pc_incremented[6]~8_combout\ : std_logic;
SIGNAL \branch_address[5]~7\ : std_logic;
SIGNAL \branch_address[6]~8_combout\ : std_logic;
SIGNAL \pc_in[6]~1_combout\ : std_logic;
SIGNAL \pc_incremented[6]~9\ : std_logic;
SIGNAL \pc_incremented[7]~10_combout\ : std_logic;
SIGNAL \branch_address[6]~9\ : std_logic;
SIGNAL \branch_address[7]~10_combout\ : std_logic;
SIGNAL \pc_in[7]~2_combout\ : std_logic;
SIGNAL \pc_incremented[7]~11\ : std_logic;
SIGNAL \pc_incremented[8]~12_combout\ : std_logic;
SIGNAL \branch_address[7]~11\ : std_logic;
SIGNAL \branch_address[8]~12_combout\ : std_logic;
SIGNAL \pc_in[8]~3_combout\ : std_logic;
SIGNAL \pc_incremented[8]~13\ : std_logic;
SIGNAL \pc_incremented[9]~14_combout\ : std_logic;
SIGNAL \branch_address[8]~13\ : std_logic;
SIGNAL \branch_address[9]~14_combout\ : std_logic;
SIGNAL \pc_in[9]~4_combout\ : std_logic;
SIGNAL \pc_incremented[9]~15\ : std_logic;
SIGNAL \pc_incremented[10]~16_combout\ : std_logic;
SIGNAL \branch_address[9]~15\ : std_logic;
SIGNAL \branch_address[10]~16_combout\ : std_logic;
SIGNAL \pc_in[10]~5_combout\ : std_logic;
SIGNAL \pc_incremented[10]~17\ : std_logic;
SIGNAL \pc_incremented[11]~18_combout\ : std_logic;
SIGNAL \branch_address[10]~17\ : std_logic;
SIGNAL \branch_address[11]~18_combout\ : std_logic;
SIGNAL \pc_in[11]~6_combout\ : std_logic;
SIGNAL \pc_incremented[11]~19\ : std_logic;
SIGNAL \pc_incremented[12]~20_combout\ : std_logic;
SIGNAL \branch_address[11]~19\ : std_logic;
SIGNAL \branch_address[12]~20_combout\ : std_logic;
SIGNAL \pc_in[12]~7_combout\ : std_logic;
SIGNAL \pc_incremented[12]~21\ : std_logic;
SIGNAL \pc_incremented[13]~22_combout\ : std_logic;
SIGNAL \branch_address[12]~21\ : std_logic;
SIGNAL \branch_address[13]~22_combout\ : std_logic;
SIGNAL \pc_in[13]~8_combout\ : std_logic;
SIGNAL \pc_incremented[13]~23\ : std_logic;
SIGNAL \pc_incremented[14]~24_combout\ : std_logic;
SIGNAL \branch_address[13]~23\ : std_logic;
SIGNAL \branch_address[14]~24_combout\ : std_logic;
SIGNAL \pc_in[14]~9_combout\ : std_logic;
SIGNAL \pc_incremented[14]~25\ : std_logic;
SIGNAL \pc_incremented[15]~26_combout\ : std_logic;
SIGNAL \branch_address[14]~25\ : std_logic;
SIGNAL \branch_address[15]~26_combout\ : std_logic;
SIGNAL \pc_in[15]~10_combout\ : std_logic;
SIGNAL \pc_incremented[15]~27\ : std_logic;
SIGNAL \pc_incremented[16]~28_combout\ : std_logic;
SIGNAL \branch_address[15]~27\ : std_logic;
SIGNAL \branch_address[16]~28_combout\ : std_logic;
SIGNAL \pc_in[16]~11_combout\ : std_logic;
SIGNAL \pc_incremented[16]~29\ : std_logic;
SIGNAL \pc_incremented[17]~30_combout\ : std_logic;
SIGNAL \branch_address[16]~29\ : std_logic;
SIGNAL \branch_address[17]~30_combout\ : std_logic;
SIGNAL \pc_in[17]~12_combout\ : std_logic;
SIGNAL \pc_incremented[17]~31\ : std_logic;
SIGNAL \pc_incremented[18]~32_combout\ : std_logic;
SIGNAL \branch_address[17]~31\ : std_logic;
SIGNAL \branch_address[18]~32_combout\ : std_logic;
SIGNAL \pc_in[18]~13_combout\ : std_logic;
SIGNAL \pc_incremented[18]~33\ : std_logic;
SIGNAL \pc_incremented[19]~34_combout\ : std_logic;
SIGNAL \branch_address[18]~33\ : std_logic;
SIGNAL \branch_address[19]~34_combout\ : std_logic;
SIGNAL \pc_in[19]~14_combout\ : std_logic;
SIGNAL \pc_incremented[19]~35\ : std_logic;
SIGNAL \pc_incremented[20]~36_combout\ : std_logic;
SIGNAL \branch_address[19]~35\ : std_logic;
SIGNAL \branch_address[20]~36_combout\ : std_logic;
SIGNAL \pc_in[20]~15_combout\ : std_logic;
SIGNAL \pc_incremented[20]~37\ : std_logic;
SIGNAL \pc_incremented[21]~38_combout\ : std_logic;
SIGNAL \branch_address[20]~37\ : std_logic;
SIGNAL \branch_address[21]~38_combout\ : std_logic;
SIGNAL \pc_in[21]~16_combout\ : std_logic;
SIGNAL \pc_incremented[21]~39\ : std_logic;
SIGNAL \pc_incremented[22]~40_combout\ : std_logic;
SIGNAL \branch_address[21]~39\ : std_logic;
SIGNAL \branch_address[22]~40_combout\ : std_logic;
SIGNAL \pc_in[22]~17_combout\ : std_logic;
SIGNAL \pc_incremented[22]~41\ : std_logic;
SIGNAL \pc_incremented[23]~42_combout\ : std_logic;
SIGNAL \branch_address[22]~41\ : std_logic;
SIGNAL \branch_address[23]~42_combout\ : std_logic;
SIGNAL \PC|Q[23]~3_combout\ : std_logic;
SIGNAL \pc_incremented[23]~43\ : std_logic;
SIGNAL \pc_incremented[24]~44_combout\ : std_logic;
SIGNAL \branch_address[23]~43\ : std_logic;
SIGNAL \branch_address[24]~44_combout\ : std_logic;
SIGNAL \pc_in[24]~18_combout\ : std_logic;
SIGNAL \pc_incremented[24]~45\ : std_logic;
SIGNAL \pc_incremented[25]~46_combout\ : std_logic;
SIGNAL \branch_address[24]~45\ : std_logic;
SIGNAL \branch_address[25]~46_combout\ : std_logic;
SIGNAL \pc_in[25]~19_combout\ : std_logic;
SIGNAL \pc_incremented[25]~47\ : std_logic;
SIGNAL \pc_incremented[26]~48_combout\ : std_logic;
SIGNAL \branch_address[25]~47\ : std_logic;
SIGNAL \branch_address[26]~48_combout\ : std_logic;
SIGNAL \pc_in[26]~20_combout\ : std_logic;
SIGNAL \pc_incremented[26]~49\ : std_logic;
SIGNAL \pc_incremented[27]~50_combout\ : std_logic;
SIGNAL \branch_address[26]~49\ : std_logic;
SIGNAL \branch_address[27]~50_combout\ : std_logic;
SIGNAL \pc_in[27]~21_combout\ : std_logic;
SIGNAL \pc_incremented[27]~51\ : std_logic;
SIGNAL \pc_incremented[28]~52_combout\ : std_logic;
SIGNAL \branch_address[27]~51\ : std_logic;
SIGNAL \branch_address[28]~52_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
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
SIGNAL \PC|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers:0:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers:3:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers:1:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers_clk\ : std_logic_vector(31 DOWNTO 0);
SIGNAL writeLoc : std_logic_vector(4 DOWNTO 0);
SIGNAL \register_file|registers:2:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instruction_memory|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \instruction_memory|ALT_INV_Mux10~1_combout\ : std_logic;

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

\register_file|registers_clk[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \register_file|registers_clk\(3));

\register_file|registers_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \register_file|registers_clk\(2));
\instruction_memory|ALT_INV_Mux4~0_combout\ <= NOT \instruction_memory|Mux4~0_combout\;
\instruction_memory|ALT_INV_Mux10~1_combout\ <= NOT \instruction_memory|Mux10~1_combout\;
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
	i => \data_memory|Mux2~0_combout\,
	oe => \instruction_memory|ALT_INV_Mux4~0_combout\,
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
	i => \data_memory|Mux1~0_combout\,
	oe => \instruction_memory|ALT_INV_Mux4~0_combout\,
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
	i => \branch_or_next~88_combout\,
	oe => \instruction_memory|ALT_INV_Mux4~0_combout\,
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
	i => \branch_or_next~88_combout\,
	oe => \instruction_memory|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[3]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\data_memory_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\data_memory_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[5]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\data_memory_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[6]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\data_memory_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[7]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\data_memory_output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[8]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\data_memory_output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[9]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\data_memory_output[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[10]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\data_memory_output[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[11]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\data_memory_output[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[12]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\data_memory_output[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[13]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\data_memory_output[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[14]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\data_memory_output[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[15]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\data_memory_output[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[16]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\data_memory_output[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[17]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\data_memory_output[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[18]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\data_memory_output[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[19]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\data_memory_output[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[20]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\data_memory_output[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[21]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\data_memory_output[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[22]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\data_memory_output[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[23]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\data_memory_output[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[24]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\data_memory_output[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[25]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\data_memory_output[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[26]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\data_memory_output[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[27]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\data_memory_output[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[28]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\data_memory_output[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[29]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\data_memory_output[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[30]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\data_memory_output[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \instruction_memory|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[31]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X98_Y73_N16
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

-- Location: IOOBUF_X115_Y58_N16
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

-- Location: IOOBUF_X100_Y73_N23
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

-- Location: IOOBUF_X115_Y56_N16
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

-- Location: IOOBUF_X100_Y73_N16
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

-- Location: IOOBUF_X89_Y73_N16
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

-- Location: IOOBUF_X115_Y57_N16
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

-- Location: IOOBUF_X96_Y73_N16
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

-- Location: IOOBUF_X115_Y56_N23
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

-- Location: IOOBUF_X115_Y53_N16
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

-- Location: IOOBUF_X91_Y73_N16
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

-- Location: IOOBUF_X115_Y52_N9
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

-- Location: IOOBUF_X89_Y73_N9
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

-- Location: IOOBUF_X115_Y58_N23
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

-- Location: IOOBUF_X115_Y52_N2
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

-- Location: IOOBUF_X89_Y73_N23
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

-- Location: IOOBUF_X115_Y55_N23
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

-- Location: IOOBUF_X115_Y55_N16
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

-- Location: IOOBUF_X98_Y73_N23
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

-- Location: IOOBUF_X115_Y54_N16
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

-- Location: IOOBUF_X115_Y51_N9
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

-- Location: IOOBUF_X115_Y59_N16
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

-- Location: LCCOMB_X97_Y56_N6
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

-- Location: LCCOMB_X97_Y56_N8
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

-- Location: LCCOMB_X94_Y55_N4
\instruction_memory|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux10~1_combout\ = (!\PC|Q\(4) & !\PC|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \instruction_memory|Mux10~1_combout\);

-- Location: LCCOMB_X91_Y56_N14
\instruction_memory|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux13~0_combout\ = (\PC|Q\(5)) # ((\PC|Q\(4) & ((\PC|Q\(3)) # (\PC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(3),
	datac => \PC|Q\(4),
	datad => \PC|Q\(2),
	combout => \instruction_memory|Mux13~0_combout\);

-- Location: LCCOMB_X97_Y56_N2
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

-- Location: LCCOMB_X95_Y56_N2
\branch_address[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[2]~0_combout\ = (\instruction_memory|Mux13~0_combout\ & (\pc_incremented[2]~0_combout\ $ (VCC))) # (!\instruction_memory|Mux13~0_combout\ & (\pc_incremented[2]~0_combout\ & VCC))
-- \branch_address[2]~1\ = CARRY((\instruction_memory|Mux13~0_combout\ & \pc_incremented[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux13~0_combout\,
	datab => \pc_incremented[2]~0_combout\,
	datad => VCC,
	combout => \branch_address[2]~0_combout\,
	cout => \branch_address[2]~1\);

-- Location: LCCOMB_X91_Y56_N4
\control|aluSrc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluSrc~0_combout\ = (\PC|Q\(4)) # ((\PC|Q\(5)) # (\PC|Q\(2) $ (\PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(2),
	datac => \PC|Q\(3),
	datad => \PC|Q\(5),
	combout => \control|aluSrc~0_combout\);

-- Location: LCCOMB_X88_Y53_N4
\control|aluOp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluOp[0]~0_combout\ = (\PC|Q\(2)) # ((\PC|Q\(5)) # ((\PC|Q\(4)) # (!\PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(5),
	datac => \PC|Q\(3),
	datad => \PC|Q\(4),
	combout => \control|aluOp[0]~0_combout\);

-- Location: LCCOMB_X94_Y55_N18
\instruction_memory|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux10~0_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & (\PC|Q\(2) & !\PC|Q\(3))))

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
	combout => \instruction_memory|Mux10~0_combout\);

-- Location: LCCOMB_X87_Y55_N22
\control|aluControl[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[2]~3_combout\ = ((\instruction_memory|Mux12~0_combout\) # ((!\instruction_memory|Mux11~0_combout\ & \instruction_memory|Mux13~0_combout\))) # (!\instruction_memory|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux11~0_combout\,
	datac => \instruction_memory|Mux12~0_combout\,
	datad => \instruction_memory|Mux13~0_combout\,
	combout => \control|aluControl[2]~3_combout\);

-- Location: LCCOMB_X94_Y55_N8
\instruction_memory|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux7~0_combout\ = (\PC|Q\(3) & ((!\PC|Q\(2)))) # (!\PC|Q\(3) & (\PC|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux7~0_combout\);

-- Location: LCCOMB_X94_Y55_N10
\instruction_memory|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux7~1_combout\ = (!\PC|Q\(5) & (\instruction_memory|Mux7~0_combout\ & !\PC|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datac => \instruction_memory|Mux7~0_combout\,
	datad => \PC|Q\(4),
	combout => \instruction_memory|Mux7~1_combout\);

-- Location: LCCOMB_X94_Y55_N26
\writeLoc[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- writeLoc(1) = (\instruction_memory|Mux10~0_combout\ & ((\instruction_memory|Mux10~0_combout\))) # (!\instruction_memory|Mux10~0_combout\ & (\instruction_memory|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datad => \instruction_memory|Mux10~0_combout\,
	combout => writeLoc(1));

-- Location: LCCOMB_X94_Y55_N20
\register_file|registers_clk[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(2) = LCELL((writeLoc(1) & (\instruction_memory|Mux10~1_combout\ & (!\CLK~input_o\ & !\PC|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writeLoc(1),
	datab => \instruction_memory|Mux10~1_combout\,
	datac => \CLK~input_o\,
	datad => \PC|Q\(3),
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

-- Location: LCCOMB_X91_Y57_N20
\arith_logic_unity|Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux26~5_combout\ = (!\PC|Q\(5) & (\arith_logic_unity|Add0~18_combout\ & !\PC|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datac => \arith_logic_unity|Add0~18_combout\,
	datad => \PC|Q\(4),
	combout => \arith_logic_unity|Mux26~5_combout\);

-- Location: LCCOMB_X88_Y53_N10
\instruction_memory|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux4~0_combout\ = (\PC|Q\(4)) # ((\PC|Q\(2)) # ((\PC|Q\(3)) # (\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(2),
	datac => \PC|Q\(3),
	datad => \PC|Q\(5),
	combout => \instruction_memory|Mux4~0_combout\);

-- Location: LCCOMB_X88_Y55_N28
\write_data[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[5]~3_combout\ = (\arith_logic_unity|Mux26~5_combout\ & \instruction_memory|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux26~5_combout\,
	datab => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[5]~3_combout\);

-- Location: FF_X87_Y55_N9
\register_file|registers:2:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(5));

-- Location: LCCOMB_X94_Y55_N6
\instruction_memory|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux1~0_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & (\PC|Q\(2) & \PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux1~0_combout\);

-- Location: LCCOMB_X94_Y55_N2
\register_file|registers_clk[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(3) = LCELL((writeLoc(1) & (!\CLK~input_o\ & \instruction_memory|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writeLoc(1),
	datac => \CLK~input_o\,
	datad => \instruction_memory|Mux1~0_combout\,
	combout => \register_file|registers_clk\(3));

-- Location: CLKCTRL_G9
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

-- Location: FF_X87_Y55_N19
\register_file|registers:3:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(5));

-- Location: LCCOMB_X94_Y55_N14
\register_file|registers_clk[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(0) = LCELL((!writeLoc(1) & (\instruction_memory|Mux10~1_combout\ & (!\CLK~input_o\ & !\PC|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writeLoc(1),
	datab => \instruction_memory|Mux10~1_combout\,
	datac => \CLK~input_o\,
	datad => \PC|Q\(3),
	combout => \register_file|registers_clk\(0));

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

-- Location: FF_X88_Y55_N1
\register_file|registers:0:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(5));

-- Location: LCCOMB_X94_Y55_N16
\register_file|registers_clk[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(1) = LCELL((!writeLoc(1) & (!\CLK~input_o\ & \instruction_memory|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writeLoc(1),
	datac => \CLK~input_o\,
	datad => \instruction_memory|Mux1~0_combout\,
	combout => \register_file|registers_clk\(1));

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

-- Location: FF_X88_Y55_N11
\register_file|registers:1:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(5));

-- Location: LCCOMB_X88_Y55_N6
\aluOp2[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[5]~9_combout\ = (\instruction_memory|Mux1~0_combout\ & (((\instruction_memory|Mux7~1_combout\) # (\register_file|registers:1:regx|Q\(5))))) # (!\instruction_memory|Mux1~0_combout\ & (\register_file|registers:0:regx|Q\(5) & 
-- (!\instruction_memory|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:0:regx|Q\(5),
	datac => \instruction_memory|Mux7~1_combout\,
	datad => \register_file|registers:1:regx|Q\(5),
	combout => \aluOp2[5]~9_combout\);

-- Location: LCCOMB_X87_Y55_N18
\aluOp2[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[5]~10_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[5]~9_combout\ & ((\register_file|registers:3:regx|Q\(5)))) # (!\aluOp2[5]~9_combout\ & (\register_file|registers:2:regx|Q\(5))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:2:regx|Q\(5),
	datac => \register_file|registers:3:regx|Q\(5),
	datad => \aluOp2[5]~9_combout\,
	combout => \aluOp2[5]~10_combout\);

-- Location: LCCOMB_X87_Y55_N26
\arith_logic_unity|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~11_combout\ = (\control|aluSrc~0_combout\ & (\aluOp2[5]~10_combout\ $ (((\control|aluControl[2]~3_combout\) # (!\control|aluOp[0]~0_combout\))))) # (!\control|aluSrc~0_combout\ & (!\control|aluOp[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \control|aluOp[0]~0_combout\,
	datac => \control|aluControl[2]~3_combout\,
	datad => \aluOp2[5]~10_combout\,
	combout => \arith_logic_unity|Add0~11_combout\);

-- Location: LCCOMB_X92_Y52_N4
\instruction_memory|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux6~0_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & (\PC|Q\(2) $ (!\PC|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(2),
	datad => \PC|Q\(3),
	combout => \instruction_memory|Mux6~0_combout\);

-- Location: LCCOMB_X88_Y55_N24
\register_file|mux1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux26~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(5)) # (!\instruction_memory|Mux6~0_combout\)))) # (!\instruction_memory|Mux10~0_combout\ & (\register_file|registers:1:regx|Q\(5) & 
-- (\instruction_memory|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(5),
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:3:regx|Q\(5),
	combout => \register_file|mux1|Mux26~0_combout\);

-- Location: LCCOMB_X87_Y55_N8
\register_file|mux1|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux26~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|mux1|Mux26~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux26~0_combout\ & ((\register_file|registers:2:regx|Q\(5)))) # 
-- (!\register_file|mux1|Mux26~0_combout\ & (\register_file|registers:0:regx|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(5),
	datac => \register_file|registers:2:regx|Q\(5),
	datad => \register_file|mux1|Mux26~0_combout\,
	combout => \register_file|mux1|Mux26~1_combout\);

-- Location: LCCOMB_X89_Y55_N14
\register_file|registers:2:regx|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[4]~feeder_combout\ = \write_data[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[4]~4_combout\,
	combout => \register_file|registers:2:regx|Q[4]~feeder_combout\);

-- Location: FF_X89_Y55_N15
\register_file|registers:2:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(4));

-- Location: LCCOMB_X88_Y55_N26
\register_file|registers:1:regx|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[4]~feeder_combout\ = \write_data[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[4]~4_combout\,
	combout => \register_file|registers:1:regx|Q[4]~feeder_combout\);

-- Location: FF_X88_Y55_N27
\register_file|registers:1:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(4));

-- Location: LCCOMB_X88_Y55_N20
\register_file|registers:0:regx|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[4]~feeder_combout\ = \write_data[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[4]~4_combout\,
	combout => \register_file|registers:0:regx|Q[4]~feeder_combout\);

-- Location: FF_X88_Y55_N21
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

-- Location: LCCOMB_X88_Y55_N12
\aluOp2[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[4]~11_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\) # ((\register_file|registers:1:regx|Q\(4))))) # (!\instruction_memory|Mux1~0_combout\ & (!\instruction_memory|Mux7~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:1:regx|Q\(4),
	datad => \register_file|registers:0:regx|Q\(4),
	combout => \aluOp2[4]~11_combout\);

-- Location: LCCOMB_X89_Y55_N2
\aluOp2[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[4]~12_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[4]~11_combout\ & (\register_file|registers:3:regx|Q\(4))) # (!\aluOp2[4]~11_combout\ & ((\register_file|registers:2:regx|Q\(4)))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:3:regx|Q\(4),
	datac => \register_file|registers:2:regx|Q\(4),
	datad => \aluOp2[4]~11_combout\,
	combout => \aluOp2[4]~12_combout\);

-- Location: LCCOMB_X89_Y55_N24
\aluOp2[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[4]~13_combout\ = (\aluOp2[4]~12_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \aluOp2[4]~12_combout\,
	combout => \aluOp2[4]~13_combout\);

-- Location: LCCOMB_X91_Y55_N2
\arith_logic_unity|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~12_combout\ = \aluOp2[4]~13_combout\ $ ((((\control|aluControl[2]~3_combout\ & \control|aluSrc~0_combout\)) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[0]~0_combout\,
	datab => \control|aluControl[2]~3_combout\,
	datac => \aluOp2[4]~13_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \arith_logic_unity|Add0~12_combout\);

-- Location: FF_X89_Y54_N11
\register_file|registers:1:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[3]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(3));

-- Location: LCCOMB_X89_Y55_N0
\register_file|registers:2:regx|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[3]~feeder_combout\ = \write_data[3]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[3]~5_combout\,
	combout => \register_file|registers:2:regx|Q[3]~feeder_combout\);

-- Location: FF_X89_Y55_N1
\register_file|registers:2:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(3));

-- Location: FF_X89_Y54_N1
\register_file|registers:0:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[3]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(3));

-- Location: LCCOMB_X89_Y55_N20
\aluOp2[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[3]~14_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:2:regx|Q\(3)) # ((\instruction_memory|Mux1~0_combout\)))) # (!\instruction_memory|Mux7~1_combout\ & (((!\instruction_memory|Mux1~0_combout\ & 
-- \register_file|registers:0:regx|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:2:regx|Q\(3),
	datac => \instruction_memory|Mux1~0_combout\,
	datad => \register_file|registers:0:regx|Q\(3),
	combout => \aluOp2[3]~14_combout\);

-- Location: LCCOMB_X89_Y55_N6
\aluOp2[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[3]~15_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[3]~14_combout\ & (\register_file|registers:3:regx|Q\(3))) # (!\aluOp2[3]~14_combout\ & ((\register_file|registers:1:regx|Q\(3)))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (((\aluOp2[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:3:regx|Q\(3),
	datac => \register_file|registers:1:regx|Q\(3),
	datad => \aluOp2[3]~14_combout\,
	combout => \aluOp2[3]~15_combout\);

-- Location: LCCOMB_X89_Y55_N4
\aluOp2[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[3]~16_combout\ = (\aluOp2[3]~15_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \aluOp2[3]~15_combout\,
	combout => \aluOp2[3]~16_combout\);

-- Location: LCCOMB_X91_Y55_N8
\arith_logic_unity|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~13_combout\ = \aluOp2[3]~16_combout\ $ ((((\control|aluControl[2]~3_combout\ & \control|aluSrc~0_combout\)) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[0]~0_combout\,
	datab => \control|aluControl[2]~3_combout\,
	datac => \aluOp2[3]~16_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \arith_logic_unity|Add0~13_combout\);

-- Location: LCCOMB_X88_Y55_N30
\write_data[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[2]~0_combout\ = (\instruction_memory|Mux4~0_combout\ & (((\arith_logic_unity|Mux29~5_combout\)))) # (!\instruction_memory|Mux4~0_combout\ & ((\arith_logic_unity|Mux26~5_combout\) # ((\arith_logic_unity|Mux27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux26~5_combout\,
	datab => \arith_logic_unity|Mux27~5_combout\,
	datac => \arith_logic_unity|Mux29~5_combout\,
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[2]~0_combout\);

-- Location: FF_X87_Y55_N15
\register_file|registers:2:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(2));

-- Location: FF_X87_Y55_N21
\register_file|registers:3:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(2));

-- Location: LCCOMB_X88_Y55_N14
\register_file|registers:1:regx|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[2]~feeder_combout\ = \write_data[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_data[2]~0_combout\,
	combout => \register_file|registers:1:regx|Q[2]~feeder_combout\);

-- Location: FF_X88_Y55_N15
\register_file|registers:1:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(2));

-- Location: FF_X88_Y55_N29
\register_file|registers:0:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(2));

-- Location: LCCOMB_X88_Y55_N18
\aluOp2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[2]~0_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\) # ((\register_file|registers:1:regx|Q\(2))))) # (!\instruction_memory|Mux1~0_combout\ & (!\instruction_memory|Mux7~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:1:regx|Q\(2),
	datad => \register_file|registers:0:regx|Q\(2),
	combout => \aluOp2[2]~0_combout\);

-- Location: LCCOMB_X87_Y55_N20
\aluOp2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[2]~1_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[2]~0_combout\ & ((\register_file|registers:3:regx|Q\(2)))) # (!\aluOp2[2]~0_combout\ & (\register_file|registers:2:regx|Q\(2))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:2:regx|Q\(2),
	datac => \register_file|registers:3:regx|Q\(2),
	datad => \aluOp2[2]~0_combout\,
	combout => \aluOp2[2]~1_combout\);

-- Location: LCCOMB_X87_Y55_N28
\aluOp2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[2]~2_combout\ = (\control|aluSrc~0_combout\ & ((\aluOp2[2]~1_combout\))) # (!\control|aluSrc~0_combout\ & (\instruction_memory|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux11~0_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \aluOp2[2]~1_combout\,
	combout => \aluOp2[2]~2_combout\);

-- Location: LCCOMB_X87_Y55_N16
\arith_logic_unity|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~0_combout\ = \aluOp2[2]~2_combout\ $ ((((\control|aluSrc~0_combout\ & \control|aluControl[2]~3_combout\)) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \control|aluOp[0]~0_combout\,
	datac => \control|aluControl[2]~3_combout\,
	datad => \aluOp2[2]~2_combout\,
	combout => \arith_logic_unity|Add0~0_combout\);

-- Location: LCCOMB_X88_Y55_N4
\register_file|mux1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux29~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(2))) # (!\instruction_memory|Mux6~0_combout\))) # (!\instruction_memory|Mux10~0_combout\ & (\instruction_memory|Mux6~0_combout\ & 
-- (\register_file|registers:1:regx|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(2),
	datad => \register_file|registers:3:regx|Q\(2),
	combout => \register_file|mux1|Mux29~0_combout\);

-- Location: LCCOMB_X87_Y55_N14
\register_file|mux1|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux29~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|mux1|Mux29~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux29~0_combout\ & ((\register_file|registers:2:regx|Q\(2)))) # 
-- (!\register_file|mux1|Mux29~0_combout\ & (\register_file|registers:0:regx|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(2),
	datac => \register_file|registers:2:regx|Q\(2),
	datad => \register_file|mux1|Mux29~0_combout\,
	combout => \register_file|mux1|Mux29~1_combout\);

-- Location: FF_X87_Y55_N25
\register_file|registers:2:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(1));

-- Location: FF_X87_Y55_N3
\register_file|registers:3:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(1));

-- Location: LCCOMB_X88_Y55_N2
\register_file|registers:1:regx|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[1]~feeder_combout\ = \write_data[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[1]~1_combout\,
	combout => \register_file|registers:1:regx|Q[1]~feeder_combout\);

-- Location: FF_X88_Y55_N3
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

-- Location: LCCOMB_X88_Y55_N22
\aluOp2[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[1]~3_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\) # ((\register_file|registers:1:regx|Q\(1))))) # (!\instruction_memory|Mux1~0_combout\ & (!\instruction_memory|Mux7~1_combout\ & 
-- (\register_file|registers:0:regx|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:0:regx|Q\(1),
	datad => \register_file|registers:1:regx|Q\(1),
	combout => \aluOp2[1]~3_combout\);

-- Location: LCCOMB_X87_Y55_N2
\aluOp2[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[1]~4_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[1]~3_combout\ & ((\register_file|registers:3:regx|Q\(1)))) # (!\aluOp2[1]~3_combout\ & (\register_file|registers:2:regx|Q\(1))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:2:regx|Q\(1),
	datac => \register_file|registers:3:regx|Q\(1),
	datad => \aluOp2[1]~3_combout\,
	combout => \aluOp2[1]~4_combout\);

-- Location: LCCOMB_X87_Y55_N10
\aluOp2[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[1]~5_combout\ = (\control|aluSrc~0_combout\ & ((\aluOp2[1]~4_combout\))) # (!\control|aluSrc~0_combout\ & (\instruction_memory|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datac => \instruction_memory|Mux12~0_combout\,
	datad => \aluOp2[1]~4_combout\,
	combout => \aluOp2[1]~5_combout\);

-- Location: LCCOMB_X87_Y55_N0
\arith_logic_unity|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~1_combout\ = \aluOp2[1]~5_combout\ $ ((((\control|aluSrc~0_combout\ & \control|aluControl[2]~3_combout\)) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \control|aluOp[0]~0_combout\,
	datac => \control|aluControl[2]~3_combout\,
	datad => \aluOp2[1]~5_combout\,
	combout => \arith_logic_unity|Add0~1_combout\);

-- Location: LCCOMB_X91_Y57_N2
\branch_or_next~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~88_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & ((\arith_logic_unity|Add0~18_combout\) # (\arith_logic_unity|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \arith_logic_unity|Add0~18_combout\,
	datac => \arith_logic_unity|Add0~16_combout\,
	datad => \PC|Q\(4),
	combout => \branch_or_next~88_combout\);

-- Location: FF_X87_Y55_N31
\register_file|registers:3:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(0));

-- Location: FF_X90_Y52_N5
\register_file|registers:2:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(0));

-- Location: LCCOMB_X88_Y52_N8
\register_file|registers:1:regx|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[0]~feeder_combout\ = \write_data[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[0]~2_combout\,
	combout => \register_file|registers:1:regx|Q[0]~feeder_combout\);

-- Location: FF_X88_Y52_N9
\register_file|registers:1:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(0));

-- Location: LCCOMB_X88_Y52_N2
\aluOp2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[0]~6_combout\ = (\instruction_memory|Mux7~1_combout\ & (\instruction_memory|Mux1~0_combout\)) # (!\instruction_memory|Mux7~1_combout\ & ((\instruction_memory|Mux1~0_combout\ & (\register_file|registers:1:regx|Q\(0))) # 
-- (!\instruction_memory|Mux1~0_combout\ & ((\register_file|registers:0:regx|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \instruction_memory|Mux1~0_combout\,
	datac => \register_file|registers:1:regx|Q\(0),
	datad => \register_file|registers:0:regx|Q\(0),
	combout => \aluOp2[0]~6_combout\);

-- Location: LCCOMB_X87_Y55_N12
\aluOp2[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[0]~7_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[0]~6_combout\ & (\register_file|registers:3:regx|Q\(0))) # (!\aluOp2[0]~6_combout\ & ((\register_file|registers:2:regx|Q\(0)))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:3:regx|Q\(0),
	datac => \register_file|registers:2:regx|Q\(0),
	datad => \aluOp2[0]~6_combout\,
	combout => \aluOp2[0]~7_combout\);

-- Location: LCCOMB_X87_Y55_N6
\aluOp2[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[0]~8_combout\ = (\control|aluSrc~0_combout\ & ((\aluOp2[0]~7_combout\))) # (!\control|aluSrc~0_combout\ & (\instruction_memory|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux13~0_combout\,
	datac => \control|aluSrc~0_combout\,
	datad => \aluOp2[0]~7_combout\,
	combout => \aluOp2[0]~8_combout\);

-- Location: LCCOMB_X87_Y55_N4
\arith_logic_unity|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~2_combout\ = \aluOp2[0]~8_combout\ $ ((((\control|aluSrc~0_combout\ & \control|aluControl[2]~3_combout\)) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datab => \control|aluOp[0]~0_combout\,
	datac => \control|aluControl[2]~3_combout\,
	datad => \aluOp2[0]~8_combout\,
	combout => \arith_logic_unity|Add0~2_combout\);

-- Location: LCCOMB_X91_Y55_N4
\control|aluControl[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[2]~4_combout\ = (\control|aluControl[2]~3_combout\ & (((\PC|Q\(2) & !\PC|Q\(3))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \control|aluControl[2]~3_combout\,
	combout => \control|aluControl[2]~4_combout\);

-- Location: LCCOMB_X91_Y55_N16
\arith_logic_unity|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~4_cout\ = CARRY((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[0]~0_combout\,
	datab => \control|aluControl[2]~4_combout\,
	datad => VCC,
	cout => \arith_logic_unity|Add0~4_cout\);

-- Location: LCCOMB_X91_Y55_N18
\arith_logic_unity|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~5_combout\ = (\register_file|mux1|Mux31~1_combout\ & ((\arith_logic_unity|Add0~2_combout\ & (\arith_logic_unity|Add0~4_cout\ & VCC)) # (!\arith_logic_unity|Add0~2_combout\ & (!\arith_logic_unity|Add0~4_cout\)))) # 
-- (!\register_file|mux1|Mux31~1_combout\ & ((\arith_logic_unity|Add0~2_combout\ & (!\arith_logic_unity|Add0~4_cout\)) # (!\arith_logic_unity|Add0~2_combout\ & ((\arith_logic_unity|Add0~4_cout\) # (GND)))))
-- \arith_logic_unity|Add0~6\ = CARRY((\register_file|mux1|Mux31~1_combout\ & (!\arith_logic_unity|Add0~2_combout\ & !\arith_logic_unity|Add0~4_cout\)) # (!\register_file|mux1|Mux31~1_combout\ & ((!\arith_logic_unity|Add0~4_cout\) # 
-- (!\arith_logic_unity|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux31~1_combout\,
	datab => \arith_logic_unity|Add0~2_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~4_cout\,
	combout => \arith_logic_unity|Add0~5_combout\,
	cout => \arith_logic_unity|Add0~6\);

-- Location: LCCOMB_X95_Y56_N0
\control|aluControl[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[1]~2_combout\ = (\instruction_memory|Mux12~0_combout\) # (((!\instruction_memory|Mux10~0_combout\) # (!\instruction_memory|Mux11~0_combout\)) # (!\control|aluSrc~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux12~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \instruction_memory|Mux11~0_combout\,
	datad => \instruction_memory|Mux10~0_combout\,
	combout => \control|aluControl[1]~2_combout\);

-- Location: LCCOMB_X91_Y55_N0
\arith_logic_unity|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~3_combout\ = (\PC|Q\(4)) # (\PC|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \arith_logic_unity|Mux31~3_combout\);

-- Location: LCCOMB_X89_Y53_N4
\arith_logic_unity|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~95_combout\ = \aluOp2[31]~94_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[31]~94_combout\,
	datab => \control|aluOp[0]~0_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~95_combout\);

-- Location: LCCOMB_X88_Y53_N28
\register_file|registers:0:regx|Q[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[31]~feeder_combout\ = \write_data[31]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[31]~12_combout\,
	combout => \register_file|registers:0:regx|Q[31]~feeder_combout\);

-- Location: FF_X88_Y53_N29
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

-- Location: FF_X89_Y53_N7
\register_file|registers:1:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[31]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(31));

-- Location: FF_X89_Y53_N1
\register_file|registers:3:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[31]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(31));

-- Location: LCCOMB_X89_Y53_N24
\register_file|mux1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux0~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(31))) # (!\instruction_memory|Mux6~0_combout\))) # (!\instruction_memory|Mux10~0_combout\ & (\instruction_memory|Mux6~0_combout\ & 
-- (\register_file|registers:1:regx|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(31),
	datad => \register_file|registers:3:regx|Q\(31),
	combout => \register_file|mux1|Mux0~0_combout\);

-- Location: LCCOMB_X88_Y53_N12
\register_file|mux1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux0~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|mux1|Mux0~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux0~0_combout\ & ((\register_file|registers:2:regx|Q\(31)))) # 
-- (!\register_file|mux1|Mux0~0_combout\ & (\register_file|registers:0:regx|Q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(31),
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:2:regx|Q\(31),
	datad => \register_file|mux1|Mux0~0_combout\,
	combout => \register_file|mux1|Mux0~1_combout\);

-- Location: FF_X91_Y56_N11
\register_file|registers:3:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[30]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(30));

-- Location: LCCOMB_X92_Y56_N4
\register_file|registers:2:regx|Q[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[30]~feeder_combout\ = \write_data[30]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[30]~11_combout\,
	combout => \register_file|registers:2:regx|Q[30]~feeder_combout\);

-- Location: FF_X92_Y56_N5
\register_file|registers:2:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(30));

-- Location: LCCOMB_X92_Y56_N18
\register_file|registers:0:regx|Q[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[30]~feeder_combout\ = \write_data[30]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[30]~11_combout\,
	combout => \register_file|registers:0:regx|Q[30]~feeder_combout\);

-- Location: FF_X92_Y56_N19
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

-- Location: LCCOMB_X92_Y56_N22
\aluOp2[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[30]~89_combout\ = (\instruction_memory|Mux1~0_combout\ & (\instruction_memory|Mux7~1_combout\)) # (!\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\ & (\register_file|registers:2:regx|Q\(30))) # 
-- (!\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:0:regx|Q\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:2:regx|Q\(30),
	datad => \register_file|registers:0:regx|Q\(30),
	combout => \aluOp2[30]~89_combout\);

-- Location: LCCOMB_X91_Y56_N10
\aluOp2[30]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[30]~90_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[30]~89_combout\ & ((\register_file|registers:3:regx|Q\(30)))) # (!\aluOp2[30]~89_combout\ & (\register_file|registers:1:regx|Q\(30))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (((\aluOp2[30]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(30),
	datab => \instruction_memory|Mux1~0_combout\,
	datac => \register_file|registers:3:regx|Q\(30),
	datad => \aluOp2[30]~89_combout\,
	combout => \aluOp2[30]~90_combout\);

-- Location: LCCOMB_X91_Y56_N16
\aluOp2[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[30]~91_combout\ = (\aluOp2[30]~90_combout\ & ((\PC|Q\(2) $ (\PC|Q\(3))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \PC|Q\(2),
	datac => \PC|Q\(3),
	datad => \aluOp2[30]~90_combout\,
	combout => \aluOp2[30]~91_combout\);

-- Location: LCCOMB_X91_Y56_N18
\arith_logic_unity|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~92_combout\ = \aluOp2[30]~91_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluOp2[30]~91_combout\,
	datac => \control|aluControl[2]~4_combout\,
	datad => \control|aluOp[0]~0_combout\,
	combout => \arith_logic_unity|Add0~92_combout\);

-- Location: FF_X89_Y52_N25
\register_file|registers:1:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[29]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(29));

-- Location: LCCOMB_X92_Y52_N12
\register_file|registers:0:regx|Q[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[29]~feeder_combout\ = \write_data[29]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[29]~6_combout\,
	combout => \register_file|registers:0:regx|Q[29]~feeder_combout\);

-- Location: FF_X92_Y52_N13
\register_file|registers:0:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(29));

-- Location: LCCOMB_X89_Y52_N24
\aluOp2[29]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[29]~62_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\) # ((\register_file|registers:1:regx|Q\(29))))) # (!\instruction_memory|Mux1~0_combout\ & (!\instruction_memory|Mux7~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:1:regx|Q\(29),
	datad => \register_file|registers:0:regx|Q\(29),
	combout => \aluOp2[29]~62_combout\);

-- Location: FF_X89_Y52_N11
\register_file|registers:3:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[29]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(29));

-- Location: LCCOMB_X92_Y52_N10
\aluOp2[29]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[29]~63_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[29]~62_combout\ & ((\register_file|registers:3:regx|Q\(29)))) # (!\aluOp2[29]~62_combout\ & (\register_file|registers:2:regx|Q\(29))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[29]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(29),
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \aluOp2[29]~62_combout\,
	datad => \register_file|registers:3:regx|Q\(29),
	combout => \aluOp2[29]~63_combout\);

-- Location: LCCOMB_X92_Y52_N28
\aluOp2[29]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[29]~64_combout\ = (\aluOp2[29]~63_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \PC|Q\(3),
	datac => \PC|Q\(2),
	datad => \aluOp2[29]~63_combout\,
	combout => \aluOp2[29]~64_combout\);

-- Location: LCCOMB_X92_Y52_N2
\arith_logic_unity|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~65_combout\ = \aluOp2[29]~64_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluOp2[29]~64_combout\,
	datac => \control|aluControl[2]~4_combout\,
	datad => \control|aluOp[0]~0_combout\,
	combout => \arith_logic_unity|Add0~65_combout\);

-- Location: FF_X91_Y53_N31
\register_file|registers:2:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[28]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(28));

-- Location: FF_X91_Y53_N21
\register_file|registers:0:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[28]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(28));

-- Location: LCCOMB_X92_Y53_N30
\register_file|mux1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux3~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (!\instruction_memory|Mux6~0_combout\)) # (!\instruction_memory|Mux10~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(28))) # 
-- (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(28),
	datad => \register_file|registers:0:regx|Q\(28),
	combout => \register_file|mux1|Mux3~0_combout\);

-- Location: FF_X92_Y53_N5
\register_file|registers:3:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[28]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(28));

-- Location: LCCOMB_X91_Y53_N28
\register_file|mux1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux3~1_combout\ = (\instruction_memory|Mux10~0_combout\ & ((\register_file|mux1|Mux3~0_combout\ & (\register_file|registers:2:regx|Q\(28))) # (!\register_file|mux1|Mux3~0_combout\ & ((\register_file|registers:3:regx|Q\(28)))))) # 
-- (!\instruction_memory|Mux10~0_combout\ & (((\register_file|mux1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(28),
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|mux1|Mux3~0_combout\,
	datad => \register_file|registers:3:regx|Q\(28),
	combout => \register_file|mux1|Mux3~1_combout\);

-- Location: FF_X92_Y52_N17
\register_file|registers:0:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[27]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(27));

-- Location: FF_X89_Y52_N31
\register_file|registers:3:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[27]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(27));

-- Location: FF_X89_Y52_N1
\register_file|registers:1:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[27]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(27));

-- Location: LCCOMB_X89_Y52_N6
\register_file|mux1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux4~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\instruction_memory|Mux10~0_combout\ & (\register_file|registers:3:regx|Q\(27))) # (!\instruction_memory|Mux10~0_combout\ & ((\register_file|registers:1:regx|Q\(27)))))) # 
-- (!\instruction_memory|Mux6~0_combout\ & (\instruction_memory|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:3:regx|Q\(27),
	datad => \register_file|registers:1:regx|Q\(27),
	combout => \register_file|mux1|Mux4~0_combout\);

-- Location: LCCOMB_X92_Y52_N20
\register_file|mux1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux4~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|mux1|Mux4~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux4~0_combout\ & (\register_file|registers:2:regx|Q\(27))) # 
-- (!\register_file|mux1|Mux4~0_combout\ & ((\register_file|registers:0:regx|Q\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(27),
	datab => \register_file|registers:0:regx|Q\(27),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|mux1|Mux4~0_combout\,
	combout => \register_file|mux1|Mux4~1_combout\);

-- Location: FF_X92_Y53_N9
\register_file|registers:1:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[26]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(26));

-- Location: FF_X92_Y53_N19
\register_file|registers:3:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[26]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(26));

-- Location: FF_X91_Y53_N25
\register_file|registers:2:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[26]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(26));

-- Location: LCCOMB_X92_Y53_N2
\aluOp2[26]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[26]~71_combout\ = (\instruction_memory|Mux1~0_combout\ & (\instruction_memory|Mux7~1_combout\)) # (!\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:2:regx|Q\(26)))) # 
-- (!\instruction_memory|Mux7~1_combout\ & (\register_file|registers:0:regx|Q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:0:regx|Q\(26),
	datad => \register_file|registers:2:regx|Q\(26),
	combout => \aluOp2[26]~71_combout\);

-- Location: LCCOMB_X92_Y53_N18
\aluOp2[26]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[26]~72_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[26]~71_combout\ & ((\register_file|registers:3:regx|Q\(26)))) # (!\aluOp2[26]~71_combout\ & (\register_file|registers:1:regx|Q\(26))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (((\aluOp2[26]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:1:regx|Q\(26),
	datac => \register_file|registers:3:regx|Q\(26),
	datad => \aluOp2[26]~71_combout\,
	combout => \aluOp2[26]~72_combout\);

-- Location: LCCOMB_X92_Y53_N20
\aluOp2[26]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[26]~73_combout\ = (\aluOp2[26]~72_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \PC|Q\(3),
	datac => \PC|Q\(2),
	datad => \aluOp2[26]~72_combout\,
	combout => \aluOp2[26]~73_combout\);

-- Location: LCCOMB_X92_Y53_N26
\arith_logic_unity|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~68_combout\ = \aluOp2[26]~73_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluOp2[26]~73_combout\,
	datac => \control|aluOp[0]~0_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~68_combout\);

-- Location: FF_X89_Y53_N29
\register_file|registers:3:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[25]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(25));

-- Location: LCCOMB_X88_Y53_N30
\register_file|mux1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux6~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(25))) # (!\instruction_memory|Mux6~0_combout\))) # (!\instruction_memory|Mux10~0_combout\ & (\instruction_memory|Mux6~0_combout\ & 
-- (\register_file|registers:1:regx|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(25),
	datad => \register_file|registers:3:regx|Q\(25),
	combout => \register_file|mux1|Mux6~0_combout\);

-- Location: LCCOMB_X88_Y53_N8
\register_file|registers:2:regx|Q[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[25]~feeder_combout\ = \write_data[25]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[25]~10_combout\,
	combout => \register_file|registers:2:regx|Q[25]~feeder_combout\);

-- Location: FF_X88_Y53_N9
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

-- Location: FF_X88_Y53_N17
\register_file|registers:0:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[25]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(25));

-- Location: LCCOMB_X88_Y53_N22
\register_file|mux1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux6~1_combout\ = (\register_file|mux1|Mux6~0_combout\ & ((\instruction_memory|Mux6~0_combout\) # ((\register_file|registers:2:regx|Q\(25))))) # (!\register_file|mux1|Mux6~0_combout\ & (!\instruction_memory|Mux6~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux6~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:2:regx|Q\(25),
	datad => \register_file|registers:0:regx|Q\(25),
	combout => \register_file|mux1|Mux6~1_combout\);

-- Location: LCCOMB_X92_Y56_N26
\register_file|registers:2:regx|Q[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[24]~feeder_combout\ = \write_data[24]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[24]~16_combout\,
	combout => \register_file|registers:2:regx|Q[24]~feeder_combout\);

-- Location: FF_X92_Y56_N27
\register_file|registers:2:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(24));

-- Location: LCCOMB_X92_Y56_N28
\register_file|registers:0:regx|Q[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[24]~feeder_combout\ = \write_data[24]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[24]~16_combout\,
	combout => \register_file|registers:0:regx|Q[24]~feeder_combout\);

-- Location: FF_X92_Y56_N29
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

-- Location: LCCOMB_X91_Y56_N6
\register_file|mux1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux7~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (!\instruction_memory|Mux10~0_combout\ & (\register_file|registers:1:regx|Q\(24)))) # (!\instruction_memory|Mux6~0_combout\ & ((\instruction_memory|Mux10~0_combout\) # 
-- ((\register_file|registers:0:regx|Q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:1:regx|Q\(24),
	datad => \register_file|registers:0:regx|Q\(24),
	combout => \register_file|mux1|Mux7~0_combout\);

-- Location: FF_X91_Y56_N21
\register_file|registers:3:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[24]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(24));

-- Location: LCCOMB_X91_Y56_N0
\register_file|mux1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux7~1_combout\ = (\instruction_memory|Mux10~0_combout\ & ((\register_file|mux1|Mux7~0_combout\ & (\register_file|registers:2:regx|Q\(24))) # (!\register_file|mux1|Mux7~0_combout\ & ((\register_file|registers:3:regx|Q\(24)))))) # 
-- (!\instruction_memory|Mux10~0_combout\ & (((\register_file|mux1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \register_file|registers:2:regx|Q\(24),
	datac => \register_file|mux1|Mux7~0_combout\,
	datad => \register_file|registers:3:regx|Q\(24),
	combout => \register_file|mux1|Mux7~1_combout\);

-- Location: FF_X90_Y52_N19
\register_file|registers:0:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[23]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(23));

-- Location: LCCOMB_X89_Y53_N18
\aluOp2[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[23]~80_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\) # ((\register_file|registers:1:regx|Q\(23))))) # (!\instruction_memory|Mux1~0_combout\ & (!\instruction_memory|Mux7~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:1:regx|Q\(23),
	datad => \register_file|registers:0:regx|Q\(23),
	combout => \aluOp2[23]~80_combout\);

-- Location: FF_X89_Y53_N17
\register_file|registers:3:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[23]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(23));

-- Location: FF_X90_Y52_N1
\register_file|registers:2:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[23]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(23));

-- Location: LCCOMB_X89_Y53_N16
\aluOp2[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[23]~81_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[23]~80_combout\ & (\register_file|registers:3:regx|Q\(23))) # (!\aluOp2[23]~80_combout\ & ((\register_file|registers:2:regx|Q\(23)))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (\aluOp2[23]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \aluOp2[23]~80_combout\,
	datac => \register_file|registers:3:regx|Q\(23),
	datad => \register_file|registers:2:regx|Q\(23),
	combout => \aluOp2[23]~81_combout\);

-- Location: LCCOMB_X89_Y53_N30
\aluOp2[23]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[23]~82_combout\ = (\aluOp2[23]~81_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \instruction_memory|Mux10~1_combout\,
	datac => \PC|Q\(2),
	datad => \aluOp2[23]~81_combout\,
	combout => \aluOp2[23]~82_combout\);

-- Location: LCCOMB_X90_Y53_N14
\arith_logic_unity|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~71_combout\ = \aluOp2[23]~82_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[0]~0_combout\,
	datab => \control|aluControl[2]~4_combout\,
	datad => \aluOp2[23]~82_combout\,
	combout => \arith_logic_unity|Add0~71_combout\);

-- Location: FF_X92_Y53_N15
\register_file|registers:1:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[22]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(22));

-- Location: LCCOMB_X94_Y53_N22
\register_file|registers:2:regx|Q[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[22]~feeder_combout\ = \write_data[22]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[22]~14_combout\,
	combout => \register_file|registers:2:regx|Q[22]~feeder_combout\);

-- Location: FF_X94_Y53_N23
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

-- Location: LCCOMB_X94_Y53_N20
\register_file|registers:0:regx|Q[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[22]~feeder_combout\ = \write_data[22]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[22]~14_combout\,
	combout => \register_file|registers:0:regx|Q[22]~feeder_combout\);

-- Location: FF_X94_Y53_N21
\register_file|registers:0:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(22));

-- Location: LCCOMB_X94_Y53_N12
\aluOp2[22]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[22]~83_combout\ = (\instruction_memory|Mux1~0_combout\ & (\instruction_memory|Mux7~1_combout\)) # (!\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\ & (\register_file|registers:2:regx|Q\(22))) # 
-- (!\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:0:regx|Q\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:2:regx|Q\(22),
	datad => \register_file|registers:0:regx|Q\(22),
	combout => \aluOp2[22]~83_combout\);

-- Location: LCCOMB_X92_Y53_N10
\aluOp2[22]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[22]~84_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[22]~83_combout\ & (\register_file|registers:3:regx|Q\(22))) # (!\aluOp2[22]~83_combout\ & ((\register_file|registers:1:regx|Q\(22)))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (((\aluOp2[22]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:3:regx|Q\(22),
	datac => \register_file|registers:1:regx|Q\(22),
	datad => \aluOp2[22]~83_combout\,
	combout => \aluOp2[22]~84_combout\);

-- Location: LCCOMB_X92_Y53_N24
\aluOp2[22]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[22]~85_combout\ = (\aluOp2[22]~84_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \PC|Q\(3),
	datac => \PC|Q\(2),
	datad => \aluOp2[22]~84_combout\,
	combout => \aluOp2[22]~85_combout\);

-- Location: LCCOMB_X92_Y53_N6
\arith_logic_unity|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~72_combout\ = \aluOp2[22]~85_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluOp2[22]~85_combout\,
	datac => \control|aluOp[0]~0_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~72_combout\);

-- Location: FF_X90_Y52_N13
\register_file|registers:2:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[21]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(21));

-- Location: LCCOMB_X89_Y52_N28
\register_file|registers:1:regx|Q[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[21]~feeder_combout\ = \write_data[21]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[21]~13_combout\,
	combout => \register_file|registers:1:regx|Q[21]~feeder_combout\);

-- Location: FF_X89_Y52_N29
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

-- Location: LCCOMB_X89_Y52_N22
\aluOp2[21]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[21]~86_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\) # ((\register_file|registers:1:regx|Q\(21))))) # (!\instruction_memory|Mux1~0_combout\ & (!\instruction_memory|Mux7~1_combout\ & 
-- (\register_file|registers:0:regx|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:0:regx|Q\(21),
	datad => \register_file|registers:1:regx|Q\(21),
	combout => \aluOp2[21]~86_combout\);

-- Location: FF_X89_Y52_N19
\register_file|registers:3:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[21]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(21));

-- Location: LCCOMB_X89_Y52_N16
\aluOp2[21]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[21]~87_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[21]~86_combout\ & ((\register_file|registers:3:regx|Q\(21)))) # (!\aluOp2[21]~86_combout\ & (\register_file|registers:2:regx|Q\(21))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[21]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:2:regx|Q\(21),
	datac => \aluOp2[21]~86_combout\,
	datad => \register_file|registers:3:regx|Q\(21),
	combout => \aluOp2[21]~87_combout\);

-- Location: LCCOMB_X89_Y52_N26
\aluOp2[21]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[21]~88_combout\ = (\aluOp2[21]~87_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \PC|Q\(3),
	datac => \PC|Q\(2),
	datad => \aluOp2[21]~87_combout\,
	combout => \aluOp2[21]~88_combout\);

-- Location: LCCOMB_X90_Y52_N14
\arith_logic_unity|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~73_combout\ = \aluOp2[21]~88_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluOp[0]~0_combout\,
	datac => \aluOp2[21]~88_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~73_combout\);

-- Location: FF_X89_Y54_N27
\register_file|registers:1:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[20]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(20));

-- Location: FF_X90_Y54_N17
\register_file|registers:2:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[20]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(20));

-- Location: FF_X89_Y54_N9
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

-- Location: LCCOMB_X90_Y54_N16
\aluOp2[20]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[20]~17_combout\ = (\instruction_memory|Mux1~0_combout\ & (\instruction_memory|Mux7~1_combout\)) # (!\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\ & (\register_file|registers:2:regx|Q\(20))) # 
-- (!\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:0:regx|Q\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:2:regx|Q\(20),
	datad => \register_file|registers:0:regx|Q\(20),
	combout => \aluOp2[20]~17_combout\);

-- Location: LCCOMB_X92_Y54_N22
\aluOp2[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[20]~18_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[20]~17_combout\ & (\register_file|registers:3:regx|Q\(20))) # (!\aluOp2[20]~17_combout\ & ((\register_file|registers:1:regx|Q\(20)))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (((\aluOp2[20]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:3:regx|Q\(20),
	datac => \register_file|registers:1:regx|Q\(20),
	datad => \aluOp2[20]~17_combout\,
	combout => \aluOp2[20]~18_combout\);

-- Location: LCCOMB_X92_Y54_N28
\aluOp2[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[20]~19_combout\ = (\aluOp2[20]~18_combout\ & ((\PC|Q\(2) $ (\PC|Q\(3))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \aluOp2[20]~18_combout\,
	datad => \instruction_memory|Mux10~1_combout\,
	combout => \aluOp2[20]~19_combout\);

-- Location: LCCOMB_X92_Y54_N24
\arith_logic_unity|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~20_combout\ = \aluOp2[20]~19_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[0]~0_combout\,
	datab => \aluOp2[20]~19_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~20_combout\);

-- Location: LCCOMB_X89_Y56_N28
\register_file|registers:0:regx|Q[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[19]~feeder_combout\ = \write_data[19]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[19]~27_combout\,
	combout => \register_file|registers:0:regx|Q[19]~feeder_combout\);

-- Location: FF_X89_Y56_N29
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

-- Location: FF_X88_Y56_N13
\register_file|registers:1:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[19]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(19));

-- Location: LCCOMB_X88_Y56_N30
\register_file|mux1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux12~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(19))) # (!\instruction_memory|Mux6~0_combout\))) # (!\instruction_memory|Mux10~0_combout\ & (\instruction_memory|Mux6~0_combout\ & 
-- ((\register_file|registers:1:regx|Q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:3:regx|Q\(19),
	datad => \register_file|registers:1:regx|Q\(19),
	combout => \register_file|mux1|Mux12~0_combout\);

-- Location: LCCOMB_X88_Y56_N24
\register_file|registers:2:regx|Q[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[19]~feeder_combout\ = \write_data[19]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[19]~27_combout\,
	combout => \register_file|registers:2:regx|Q[19]~feeder_combout\);

-- Location: FF_X88_Y56_N25
\register_file|registers:2:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(19));

-- Location: LCCOMB_X88_Y56_N6
\register_file|mux1|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux12~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|mux1|Mux12~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux12~0_combout\ & ((\register_file|registers:2:regx|Q\(19)))) # 
-- (!\register_file|mux1|Mux12~0_combout\ & (\register_file|registers:0:regx|Q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(19),
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|mux1|Mux12~0_combout\,
	datad => \register_file|registers:2:regx|Q\(19),
	combout => \register_file|mux1|Mux12~1_combout\);

-- Location: FF_X90_Y54_N1
\register_file|registers:3:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[18]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(18));

-- Location: FF_X90_Y54_N11
\register_file|registers:2:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[18]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(18));

-- Location: LCCOMB_X89_Y54_N12
\register_file|registers:0:regx|Q[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[18]~feeder_combout\ = \write_data[18]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[18]~26_combout\,
	combout => \register_file|registers:0:regx|Q[18]~feeder_combout\);

-- Location: FF_X89_Y54_N13
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

-- Location: LCCOMB_X90_Y54_N10
\aluOp2[18]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[18]~23_combout\ = (\instruction_memory|Mux1~0_combout\ & (\instruction_memory|Mux7~1_combout\)) # (!\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\ & (\register_file|registers:2:regx|Q\(18))) # 
-- (!\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:0:regx|Q\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:2:regx|Q\(18),
	datad => \register_file|registers:0:regx|Q\(18),
	combout => \aluOp2[18]~23_combout\);

-- Location: LCCOMB_X90_Y54_N0
\aluOp2[18]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[18]~24_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[18]~23_combout\ & ((\register_file|registers:3:regx|Q\(18)))) # (!\aluOp2[18]~23_combout\ & (\register_file|registers:1:regx|Q\(18))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (((\aluOp2[18]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:1:regx|Q\(18),
	datac => \register_file|registers:3:regx|Q\(18),
	datad => \aluOp2[18]~23_combout\,
	combout => \aluOp2[18]~24_combout\);

-- Location: LCCOMB_X90_Y54_N22
\aluOp2[18]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[18]~25_combout\ = (\aluOp2[18]~24_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \instruction_memory|Mux10~1_combout\,
	datac => \aluOp2[18]~24_combout\,
	datad => \PC|Q\(2),
	combout => \aluOp2[18]~25_combout\);

-- Location: LCCOMB_X90_Y54_N20
\arith_logic_unity|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~22_combout\ = \aluOp2[18]~25_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[18]~25_combout\,
	datab => \control|aluControl[2]~4_combout\,
	datad => \control|aluOp[0]~0_combout\,
	combout => \arith_logic_unity|Add0~22_combout\);

-- Location: FF_X90_Y53_N19
\register_file|registers:2:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[17]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(17));

-- Location: FF_X90_Y53_N5
\register_file|registers:3:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[17]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(17));

-- Location: FF_X89_Y53_N21
\register_file|registers:1:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[17]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(17));

-- Location: LCCOMB_X89_Y53_N20
\aluOp2[17]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[17]~26_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\) # ((\register_file|registers:1:regx|Q\(17))))) # (!\instruction_memory|Mux1~0_combout\ & (!\instruction_memory|Mux7~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:1:regx|Q\(17),
	datad => \register_file|registers:0:regx|Q\(17),
	combout => \aluOp2[17]~26_combout\);

-- Location: LCCOMB_X90_Y53_N12
\aluOp2[17]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[17]~27_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[17]~26_combout\ & ((\register_file|registers:3:regx|Q\(17)))) # (!\aluOp2[17]~26_combout\ & (\register_file|registers:2:regx|Q\(17))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[17]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:2:regx|Q\(17),
	datac => \register_file|registers:3:regx|Q\(17),
	datad => \aluOp2[17]~26_combout\,
	combout => \aluOp2[17]~27_combout\);

-- Location: LCCOMB_X90_Y53_N22
\aluOp2[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[17]~28_combout\ = (\aluOp2[17]~27_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \aluOp2[17]~27_combout\,
	combout => \aluOp2[17]~28_combout\);

-- Location: LCCOMB_X90_Y53_N16
\arith_logic_unity|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~23_combout\ = \aluOp2[17]~28_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[17]~28_combout\,
	datac => \control|aluControl[2]~4_combout\,
	datad => \control|aluOp[0]~0_combout\,
	combout => \arith_logic_unity|Add0~23_combout\);

-- Location: FF_X89_Y55_N31
\register_file|registers:3:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[16]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(16));

-- Location: LCCOMB_X89_Y54_N20
\register_file|registers:0:regx|Q[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[16]~feeder_combout\ = \write_data[16]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[16]~24_combout\,
	combout => \register_file|registers:0:regx|Q[16]~feeder_combout\);

-- Location: FF_X89_Y54_N21
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

-- Location: LCCOMB_X89_Y54_N22
\register_file|mux1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux15~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (!\instruction_memory|Mux10~0_combout\ & (\register_file|registers:1:regx|Q\(16)))) # (!\instruction_memory|Mux6~0_combout\ & ((\instruction_memory|Mux10~0_combout\) # 
-- ((\register_file|registers:0:regx|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:1:regx|Q\(16),
	datad => \register_file|registers:0:regx|Q\(16),
	combout => \register_file|mux1|Mux15~0_combout\);

-- Location: LCCOMB_X89_Y55_N28
\register_file|registers:2:regx|Q[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[16]~feeder_combout\ = \write_data[16]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[16]~24_combout\,
	combout => \register_file|registers:2:regx|Q[16]~feeder_combout\);

-- Location: FF_X89_Y55_N29
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

-- Location: LCCOMB_X89_Y54_N28
\register_file|mux1|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux15~1_combout\ = (\instruction_memory|Mux10~0_combout\ & ((\register_file|mux1|Mux15~0_combout\ & ((\register_file|registers:2:regx|Q\(16)))) # (!\register_file|mux1|Mux15~0_combout\ & (\register_file|registers:3:regx|Q\(16))))) # 
-- (!\instruction_memory|Mux10~0_combout\ & (((\register_file|mux1|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:3:regx|Q\(16),
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|mux1|Mux15~0_combout\,
	datad => \register_file|registers:2:regx|Q\(16),
	combout => \register_file|mux1|Mux15~1_combout\);

-- Location: FF_X89_Y53_N11
\register_file|registers:1:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[15]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(15));

-- Location: LCCOMB_X90_Y53_N6
\register_file|mux1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux16~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(15))) # (!\instruction_memory|Mux6~0_combout\))) # (!\instruction_memory|Mux10~0_combout\ & (\instruction_memory|Mux6~0_combout\ & 
-- ((\register_file|registers:1:regx|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:3:regx|Q\(15),
	datad => \register_file|registers:1:regx|Q\(15),
	combout => \register_file|mux1|Mux16~0_combout\);

-- Location: FF_X90_Y53_N9
\register_file|registers:2:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[15]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(15));

-- Location: FF_X91_Y53_N19
\register_file|registers:0:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[15]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(15));

-- Location: LCCOMB_X90_Y53_N8
\register_file|mux1|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux16~1_combout\ = (\register_file|mux1|Mux16~0_combout\ & ((\instruction_memory|Mux6~0_combout\) # ((\register_file|registers:2:regx|Q\(15))))) # (!\register_file|mux1|Mux16~0_combout\ & (!\instruction_memory|Mux6~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux16~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:2:regx|Q\(15),
	datad => \register_file|registers:0:regx|Q\(15),
	combout => \register_file|mux1|Mux16~1_combout\);

-- Location: FF_X91_Y54_N17
\register_file|registers:0:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[14]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(14));

-- Location: LCCOMB_X91_Y56_N8
\register_file|mux1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux17~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (!\instruction_memory|Mux10~0_combout\ & (\register_file|registers:1:regx|Q\(14)))) # (!\instruction_memory|Mux6~0_combout\ & ((\instruction_memory|Mux10~0_combout\) # 
-- ((\register_file|registers:0:regx|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:1:regx|Q\(14),
	datad => \register_file|registers:0:regx|Q\(14),
	combout => \register_file|mux1|Mux17~0_combout\);

-- Location: FF_X90_Y54_N15
\register_file|registers:3:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[14]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(14));

-- Location: FF_X90_Y54_N25
\register_file|registers:2:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[14]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(14));

-- Location: LCCOMB_X91_Y56_N22
\register_file|mux1|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux17~1_combout\ = (\instruction_memory|Mux10~0_combout\ & ((\register_file|mux1|Mux17~0_combout\ & ((\register_file|registers:2:regx|Q\(14)))) # (!\register_file|mux1|Mux17~0_combout\ & (\register_file|registers:3:regx|Q\(14))))) # 
-- (!\instruction_memory|Mux10~0_combout\ & (\register_file|mux1|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \register_file|mux1|Mux17~0_combout\,
	datac => \register_file|registers:3:regx|Q\(14),
	datad => \register_file|registers:2:regx|Q\(14),
	combout => \register_file|mux1|Mux17~1_combout\);

-- Location: FF_X90_Y53_N25
\register_file|registers:3:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[13]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(13));

-- Location: FF_X89_Y53_N5
\register_file|registers:1:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[13]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(13));

-- Location: LCCOMB_X90_Y53_N24
\register_file|mux1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux18~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(13))) # (!\instruction_memory|Mux6~0_combout\))) # (!\instruction_memory|Mux10~0_combout\ & (\instruction_memory|Mux6~0_combout\ & 
-- ((\register_file|registers:1:regx|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:3:regx|Q\(13),
	datad => \register_file|registers:1:regx|Q\(13),
	combout => \register_file|mux1|Mux18~0_combout\);

-- Location: LCCOMB_X88_Y53_N2
\register_file|registers:0:regx|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[13]~feeder_combout\ = \write_data[13]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[13]~21_combout\,
	combout => \register_file|registers:0:regx|Q[13]~feeder_combout\);

-- Location: FF_X88_Y53_N3
\register_file|registers:0:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(13));

-- Location: LCCOMB_X90_Y53_N10
\register_file|mux1|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux18~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (\register_file|mux1|Mux18~0_combout\)) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux18~0_combout\ & (\register_file|registers:2:regx|Q\(13))) # 
-- (!\register_file|mux1|Mux18~0_combout\ & ((\register_file|registers:0:regx|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|mux1|Mux18~0_combout\,
	datac => \register_file|registers:2:regx|Q\(13),
	datad => \register_file|registers:0:regx|Q\(13),
	combout => \register_file|mux1|Mux18~1_combout\);

-- Location: FF_X90_Y54_N31
\register_file|registers:3:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[12]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(12));

-- Location: FF_X89_Y54_N25
\register_file|registers:1:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[12]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(12));

-- Location: FF_X89_Y54_N3
\register_file|registers:0:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[12]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(12));

-- Location: LCCOMB_X89_Y54_N24
\register_file|mux1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux19~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (!\instruction_memory|Mux10~0_combout\ & (\register_file|registers:1:regx|Q\(12)))) # (!\instruction_memory|Mux6~0_combout\ & ((\instruction_memory|Mux10~0_combout\) # 
-- ((\register_file|registers:0:regx|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:1:regx|Q\(12),
	datad => \register_file|registers:0:regx|Q\(12),
	combout => \register_file|mux1|Mux19~0_combout\);

-- Location: LCCOMB_X89_Y54_N18
\register_file|mux1|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux19~1_combout\ = (\register_file|mux1|Mux19~0_combout\ & (((\register_file|registers:2:regx|Q\(12)) # (!\instruction_memory|Mux10~0_combout\)))) # (!\register_file|mux1|Mux19~0_combout\ & (\register_file|registers:3:regx|Q\(12) & 
-- (\instruction_memory|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:3:regx|Q\(12),
	datab => \register_file|mux1|Mux19~0_combout\,
	datac => \instruction_memory|Mux10~0_combout\,
	datad => \register_file|registers:2:regx|Q\(12),
	combout => \register_file|mux1|Mux19~1_combout\);

-- Location: LCCOMB_X90_Y52_N22
\register_file|registers:0:regx|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[11]~feeder_combout\ = \write_data[11]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[11]~19_combout\,
	combout => \register_file|registers:0:regx|Q[11]~feeder_combout\);

-- Location: FF_X90_Y52_N23
\register_file|registers:0:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(11));

-- Location: FF_X90_Y52_N29
\register_file|registers:2:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[11]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(11));

-- Location: FF_X89_Y52_N15
\register_file|registers:1:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[11]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(11));

-- Location: LCCOMB_X89_Y52_N14
\register_file|mux1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux20~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\instruction_memory|Mux10~0_combout\ & (\register_file|registers:3:regx|Q\(11))) # (!\instruction_memory|Mux10~0_combout\ & ((\register_file|registers:1:regx|Q\(11)))))) # 
-- (!\instruction_memory|Mux6~0_combout\ & (((\instruction_memory|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:3:regx|Q\(11),
	datac => \register_file|registers:1:regx|Q\(11),
	datad => \instruction_memory|Mux10~0_combout\,
	combout => \register_file|mux1|Mux20~0_combout\);

-- Location: LCCOMB_X90_Y52_N28
\register_file|mux1|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux20~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|mux1|Mux20~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux20~0_combout\ & ((\register_file|registers:2:regx|Q\(11)))) # 
-- (!\register_file|mux1|Mux20~0_combout\ & (\register_file|registers:0:regx|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(11),
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:2:regx|Q\(11),
	datad => \register_file|mux1|Mux20~0_combout\,
	combout => \register_file|mux1|Mux20~1_combout\);

-- Location: FF_X91_Y52_N15
\register_file|registers:1:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[10]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(10));

-- Location: LCCOMB_X92_Y52_N18
\register_file|registers:0:regx|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[10]~feeder_combout\ = \write_data[10]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[10]~18_combout\,
	combout => \register_file|registers:0:regx|Q[10]~feeder_combout\);

-- Location: FF_X92_Y52_N19
\register_file|registers:0:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(10));

-- Location: LCCOMB_X92_Y52_N0
\register_file|registers:2:regx|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[10]~feeder_combout\ = \write_data[10]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[10]~18_combout\,
	combout => \register_file|registers:2:regx|Q[10]~feeder_combout\);

-- Location: FF_X92_Y52_N1
\register_file|registers:2:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(10));

-- Location: LCCOMB_X92_Y52_N22
\aluOp2[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[10]~46_combout\ = (\instruction_memory|Mux1~0_combout\ & (((\instruction_memory|Mux7~1_combout\)))) # (!\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:2:regx|Q\(10)))) # 
-- (!\instruction_memory|Mux7~1_combout\ & (\register_file|registers:0:regx|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:0:regx|Q\(10),
	datac => \instruction_memory|Mux7~1_combout\,
	datad => \register_file|registers:2:regx|Q\(10),
	combout => \aluOp2[10]~46_combout\);

-- Location: LCCOMB_X91_Y52_N12
\aluOp2[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[10]~47_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[10]~46_combout\ & ((\register_file|registers:3:regx|Q\(10)))) # (!\aluOp2[10]~46_combout\ & (\register_file|registers:1:regx|Q\(10))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (((\aluOp2[10]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:1:regx|Q\(10),
	datac => \register_file|registers:3:regx|Q\(10),
	datad => \aluOp2[10]~46_combout\,
	combout => \aluOp2[10]~47_combout\);

-- Location: LCCOMB_X91_Y52_N30
\aluOp2[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[10]~48_combout\ = (\aluOp2[10]~47_combout\ & ((\PC|Q\(2) $ (\PC|Q\(3))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \aluOp2[10]~47_combout\,
	combout => \aluOp2[10]~48_combout\);

-- Location: LCCOMB_X91_Y52_N20
\arith_logic_unity|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~30_combout\ = \aluOp2[10]~48_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[0]~0_combout\,
	datac => \aluOp2[10]~48_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~30_combout\);

-- Location: LCCOMB_X90_Y52_N8
\register_file|registers:0:regx|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[9]~feeder_combout\ = \write_data[9]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[9]~17_combout\,
	combout => \register_file|registers:0:regx|Q[9]~feeder_combout\);

-- Location: FF_X90_Y52_N9
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

-- Location: FF_X91_Y52_N9
\register_file|registers:1:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[9]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(9));

-- Location: FF_X91_Y52_N19
\register_file|registers:3:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[9]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(9));

-- Location: LCCOMB_X91_Y52_N8
\register_file|mux1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux22~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(9))) # (!\instruction_memory|Mux6~0_combout\))) # (!\instruction_memory|Mux10~0_combout\ & (\instruction_memory|Mux6~0_combout\ & 
-- (\register_file|registers:1:regx|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(9),
	datad => \register_file|registers:3:regx|Q\(9),
	combout => \register_file|mux1|Mux22~0_combout\);

-- Location: LCCOMB_X90_Y52_N30
\register_file|mux1|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux22~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|mux1|Mux22~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux22~0_combout\ & ((\register_file|registers:2:regx|Q\(9)))) # 
-- (!\register_file|mux1|Mux22~0_combout\ & (\register_file|registers:0:regx|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(9),
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:2:regx|Q\(9),
	datad => \register_file|mux1|Mux22~0_combout\,
	combout => \register_file|mux1|Mux22~1_combout\);

-- Location: FF_X89_Y54_N31
\register_file|registers:1:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[8]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(8));

-- Location: LCCOMB_X89_Y54_N4
\register_file|registers:0:regx|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[8]~feeder_combout\ = \write_data[8]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[8]~31_combout\,
	combout => \register_file|registers:0:regx|Q[8]~feeder_combout\);

-- Location: FF_X89_Y54_N5
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

-- Location: LCCOMB_X89_Y54_N30
\register_file|mux1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux23~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (!\instruction_memory|Mux10~0_combout\ & (\register_file|registers:1:regx|Q\(8)))) # (!\instruction_memory|Mux6~0_combout\ & ((\instruction_memory|Mux10~0_combout\) # 
-- ((\register_file|registers:0:regx|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:1:regx|Q\(8),
	datad => \register_file|registers:0:regx|Q\(8),
	combout => \register_file|mux1|Mux23~0_combout\);

-- Location: LCCOMB_X88_Y54_N6
\register_file|registers:2:regx|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[8]~feeder_combout\ = \write_data[8]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_data[8]~31_combout\,
	combout => \register_file|registers:2:regx|Q[8]~feeder_combout\);

-- Location: FF_X88_Y54_N7
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

-- Location: LCCOMB_X89_Y54_N16
\register_file|mux1|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux23~1_combout\ = (\register_file|mux1|Mux23~0_combout\ & (((\register_file|registers:2:regx|Q\(8))) # (!\instruction_memory|Mux10~0_combout\))) # (!\register_file|mux1|Mux23~0_combout\ & (\instruction_memory|Mux10~0_combout\ & 
-- ((\register_file|registers:3:regx|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux23~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:2:regx|Q\(8),
	datad => \register_file|registers:3:regx|Q\(8),
	combout => \register_file|mux1|Mux23~1_combout\);

-- Location: FF_X91_Y52_N25
\register_file|registers:3:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[7]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(7));

-- Location: FF_X90_Y52_N27
\register_file|registers:2:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[7]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(7));

-- Location: LCCOMB_X91_Y52_N2
\register_file|registers:1:regx|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[7]~feeder_combout\ = \write_data[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[7]~30_combout\,
	combout => \register_file|registers:1:regx|Q[7]~feeder_combout\);

-- Location: FF_X91_Y52_N3
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

-- Location: LCCOMB_X91_Y52_N0
\aluOp2[7]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[7]~55_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\) # ((\register_file|registers:1:regx|Q\(7))))) # (!\instruction_memory|Mux1~0_combout\ & (!\instruction_memory|Mux7~1_combout\ & 
-- (\register_file|registers:0:regx|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:0:regx|Q\(7),
	datad => \register_file|registers:1:regx|Q\(7),
	combout => \aluOp2[7]~55_combout\);

-- Location: LCCOMB_X91_Y52_N22
\aluOp2[7]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[7]~56_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[7]~55_combout\ & (\register_file|registers:3:regx|Q\(7))) # (!\aluOp2[7]~55_combout\ & ((\register_file|registers:2:regx|Q\(7)))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[7]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:3:regx|Q\(7),
	datac => \register_file|registers:2:regx|Q\(7),
	datad => \aluOp2[7]~55_combout\,
	combout => \aluOp2[7]~56_combout\);

-- Location: LCCOMB_X91_Y52_N16
\aluOp2[7]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[7]~57_combout\ = (\aluOp2[7]~56_combout\ & ((\PC|Q\(2) $ (\PC|Q\(3))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \aluOp2[7]~56_combout\,
	datad => \instruction_memory|Mux10~1_combout\,
	combout => \aluOp2[7]~57_combout\);

-- Location: LCCOMB_X91_Y52_N6
\arith_logic_unity|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~33_combout\ = \aluOp2[7]~57_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[0]~0_combout\,
	datab => \aluOp2[7]~57_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~33_combout\);

-- Location: FF_X89_Y54_N7
\register_file|registers:1:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[6]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(6));

-- Location: FF_X90_Y54_N3
\register_file|registers:3:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[6]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(6));

-- Location: FF_X91_Y54_N9
\register_file|registers:0:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[6]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(6));

-- Location: LCCOMB_X90_Y54_N6
\aluOp2[6]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[6]~58_combout\ = (\instruction_memory|Mux1~0_combout\ & (\instruction_memory|Mux7~1_combout\)) # (!\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:2:regx|Q\(6)))) # 
-- (!\instruction_memory|Mux7~1_combout\ & (\register_file|registers:0:regx|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:0:regx|Q\(6),
	datad => \register_file|registers:2:regx|Q\(6),
	combout => \aluOp2[6]~58_combout\);

-- Location: LCCOMB_X90_Y54_N2
\aluOp2[6]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[6]~59_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[6]~58_combout\ & ((\register_file|registers:3:regx|Q\(6)))) # (!\aluOp2[6]~58_combout\ & (\register_file|registers:1:regx|Q\(6))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (((\aluOp2[6]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:1:regx|Q\(6),
	datac => \register_file|registers:3:regx|Q\(6),
	datad => \aluOp2[6]~58_combout\,
	combout => \aluOp2[6]~59_combout\);

-- Location: LCCOMB_X91_Y55_N6
\aluOp2[6]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[6]~60_combout\ = (\aluOp2[6]~59_combout\ & ((\PC|Q\(2) $ (\PC|Q\(3))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \aluOp2[6]~59_combout\,
	combout => \aluOp2[6]~60_combout\);

-- Location: LCCOMB_X91_Y55_N12
\arith_logic_unity|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~34_combout\ = \aluOp2[6]~60_combout\ $ ((((\control|aluControl[2]~3_combout\ & \control|aluSrc~0_combout\)) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[6]~60_combout\,
	datab => \control|aluControl[2]~3_combout\,
	datac => \control|aluOp[0]~0_combout\,
	datad => \control|aluSrc~0_combout\,
	combout => \arith_logic_unity|Add0~34_combout\);

-- Location: LCCOMB_X91_Y55_N28
\arith_logic_unity|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~18_combout\ = ((\arith_logic_unity|Add0~11_combout\ $ (\register_file|mux1|Mux26~1_combout\ $ (!\arith_logic_unity|Add0~17\)))) # (GND)
-- \arith_logic_unity|Add0~19\ = CARRY((\arith_logic_unity|Add0~11_combout\ & ((\register_file|mux1|Mux26~1_combout\) # (!\arith_logic_unity|Add0~17\))) # (!\arith_logic_unity|Add0~11_combout\ & (\register_file|mux1|Mux26~1_combout\ & 
-- !\arith_logic_unity|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~11_combout\,
	datab => \register_file|mux1|Mux26~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~17\,
	combout => \arith_logic_unity|Add0~18_combout\,
	cout => \arith_logic_unity|Add0~19\);

-- Location: LCCOMB_X91_Y55_N30
\arith_logic_unity|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~35_combout\ = (\register_file|mux1|Mux25~1_combout\ & ((\arith_logic_unity|Add0~34_combout\ & (\arith_logic_unity|Add0~19\ & VCC)) # (!\arith_logic_unity|Add0~34_combout\ & (!\arith_logic_unity|Add0~19\)))) # 
-- (!\register_file|mux1|Mux25~1_combout\ & ((\arith_logic_unity|Add0~34_combout\ & (!\arith_logic_unity|Add0~19\)) # (!\arith_logic_unity|Add0~34_combout\ & ((\arith_logic_unity|Add0~19\) # (GND)))))
-- \arith_logic_unity|Add0~36\ = CARRY((\register_file|mux1|Mux25~1_combout\ & (!\arith_logic_unity|Add0~34_combout\ & !\arith_logic_unity|Add0~19\)) # (!\register_file|mux1|Mux25~1_combout\ & ((!\arith_logic_unity|Add0~19\) # 
-- (!\arith_logic_unity|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~1_combout\,
	datab => \arith_logic_unity|Add0~34_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~19\,
	combout => \arith_logic_unity|Add0~35_combout\,
	cout => \arith_logic_unity|Add0~36\);

-- Location: LCCOMB_X92_Y54_N30
\write_data[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[6]~29_combout\ = (\instruction_memory|Mux4~0_combout\ & (\arith_logic_unity|Add0~35_combout\ & (!\PC|Q\(4) & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \arith_logic_unity|Add0~35_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \write_data[6]~29_combout\);

-- Location: FF_X90_Y54_N13
\register_file|registers:2:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[6]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(6));

-- Location: LCCOMB_X89_Y54_N6
\register_file|mux1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux25~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((!\instruction_memory|Mux6~0_combout\)))) # (!\instruction_memory|Mux10~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:1:regx|Q\(6)))) # 
-- (!\instruction_memory|Mux6~0_combout\ & (\register_file|registers:0:regx|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(6),
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:1:regx|Q\(6),
	datad => \instruction_memory|Mux6~0_combout\,
	combout => \register_file|mux1|Mux25~0_combout\);

-- Location: LCCOMB_X90_Y54_N8
\register_file|mux1|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux25~1_combout\ = (\instruction_memory|Mux10~0_combout\ & ((\register_file|mux1|Mux25~0_combout\ & (\register_file|registers:2:regx|Q\(6))) # (!\register_file|mux1|Mux25~0_combout\ & ((\register_file|registers:3:regx|Q\(6)))))) # 
-- (!\instruction_memory|Mux10~0_combout\ & (((\register_file|mux1|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(6),
	datab => \register_file|registers:3:regx|Q\(6),
	datac => \instruction_memory|Mux10~0_combout\,
	datad => \register_file|mux1|Mux25~0_combout\,
	combout => \register_file|mux1|Mux25~1_combout\);

-- Location: LCCOMB_X91_Y54_N0
\arith_logic_unity|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~37_combout\ = ((\register_file|mux1|Mux24~1_combout\ $ (\arith_logic_unity|Add0~33_combout\ $ (!\arith_logic_unity|Add0~36\)))) # (GND)
-- \arith_logic_unity|Add0~38\ = CARRY((\register_file|mux1|Mux24~1_combout\ & ((\arith_logic_unity|Add0~33_combout\) # (!\arith_logic_unity|Add0~36\))) # (!\register_file|mux1|Mux24~1_combout\ & (\arith_logic_unity|Add0~33_combout\ & 
-- !\arith_logic_unity|Add0~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux24~1_combout\,
	datab => \arith_logic_unity|Add0~33_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~36\,
	combout => \arith_logic_unity|Add0~37_combout\,
	cout => \arith_logic_unity|Add0~38\);

-- Location: LCCOMB_X91_Y56_N26
\write_data[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[7]~30_combout\ = (\arith_logic_unity|Add0~37_combout\ & (!\PC|Q\(5) & (!\PC|Q\(4) & \instruction_memory|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~37_combout\,
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[7]~30_combout\);

-- Location: LCCOMB_X90_Y52_N16
\register_file|registers:0:regx|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[7]~feeder_combout\ = \write_data[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[7]~30_combout\,
	combout => \register_file|registers:0:regx|Q[7]~feeder_combout\);

-- Location: FF_X90_Y52_N17
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

-- Location: LCCOMB_X91_Y52_N24
\register_file|mux1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux24~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(7))) # (!\instruction_memory|Mux6~0_combout\))) # (!\instruction_memory|Mux10~0_combout\ & (\instruction_memory|Mux6~0_combout\ & 
-- ((\register_file|registers:1:regx|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:3:regx|Q\(7),
	datad => \register_file|registers:1:regx|Q\(7),
	combout => \register_file|mux1|Mux24~0_combout\);

-- Location: LCCOMB_X90_Y52_N26
\register_file|mux1|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux24~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|mux1|Mux24~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux24~0_combout\ & ((\register_file|registers:2:regx|Q\(7)))) # 
-- (!\register_file|mux1|Mux24~0_combout\ & (\register_file|registers:0:regx|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(7),
	datac => \register_file|registers:2:regx|Q\(7),
	datad => \register_file|mux1|Mux24~0_combout\,
	combout => \register_file|mux1|Mux24~1_combout\);

-- Location: LCCOMB_X91_Y54_N2
\arith_logic_unity|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~39_combout\ = (\arith_logic_unity|Add0~32_combout\ & ((\register_file|mux1|Mux23~1_combout\ & (\arith_logic_unity|Add0~38\ & VCC)) # (!\register_file|mux1|Mux23~1_combout\ & (!\arith_logic_unity|Add0~38\)))) # 
-- (!\arith_logic_unity|Add0~32_combout\ & ((\register_file|mux1|Mux23~1_combout\ & (!\arith_logic_unity|Add0~38\)) # (!\register_file|mux1|Mux23~1_combout\ & ((\arith_logic_unity|Add0~38\) # (GND)))))
-- \arith_logic_unity|Add0~40\ = CARRY((\arith_logic_unity|Add0~32_combout\ & (!\register_file|mux1|Mux23~1_combout\ & !\arith_logic_unity|Add0~38\)) # (!\arith_logic_unity|Add0~32_combout\ & ((!\arith_logic_unity|Add0~38\) # 
-- (!\register_file|mux1|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~32_combout\,
	datab => \register_file|mux1|Mux23~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~38\,
	combout => \arith_logic_unity|Add0~39_combout\,
	cout => \arith_logic_unity|Add0~40\);

-- Location: LCCOMB_X91_Y57_N18
\write_data[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[8]~31_combout\ = (\arith_logic_unity|Add0~39_combout\ & (!\PC|Q\(4) & (!\PC|Q\(5) & \instruction_memory|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~39_combout\,
	datab => \PC|Q\(4),
	datac => \PC|Q\(5),
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[8]~31_combout\);

-- Location: LCCOMB_X88_Y54_N24
\register_file|registers:3:regx|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:3:regx|Q[8]~feeder_combout\ = \write_data[8]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_data[8]~31_combout\,
	combout => \register_file|registers:3:regx|Q[8]~feeder_combout\);

-- Location: FF_X88_Y54_N25
\register_file|registers:3:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	d => \register_file|registers:3:regx|Q[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(8));

-- Location: LCCOMB_X88_Y54_N28
\aluOp2[8]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[8]~52_combout\ = (\instruction_memory|Mux1~0_combout\ & (((\instruction_memory|Mux7~1_combout\)))) # (!\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:2:regx|Q\(8)))) # 
-- (!\instruction_memory|Mux7~1_combout\ & (\register_file|registers:0:regx|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(8),
	datab => \instruction_memory|Mux1~0_combout\,
	datac => \instruction_memory|Mux7~1_combout\,
	datad => \register_file|registers:2:regx|Q\(8),
	combout => \aluOp2[8]~52_combout\);

-- Location: LCCOMB_X88_Y54_N30
\aluOp2[8]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[8]~53_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[8]~52_combout\ & (\register_file|registers:3:regx|Q\(8))) # (!\aluOp2[8]~52_combout\ & ((\register_file|registers:1:regx|Q\(8)))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (((\aluOp2[8]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:3:regx|Q\(8),
	datac => \register_file|registers:1:regx|Q\(8),
	datad => \aluOp2[8]~52_combout\,
	combout => \aluOp2[8]~53_combout\);

-- Location: LCCOMB_X88_Y54_N8
\aluOp2[8]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[8]~54_combout\ = (\aluOp2[8]~53_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \PC|Q\(3),
	datac => \aluOp2[8]~53_combout\,
	datad => \PC|Q\(2),
	combout => \aluOp2[8]~54_combout\);

-- Location: LCCOMB_X88_Y54_N18
\arith_logic_unity|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~32_combout\ = \aluOp2[8]~54_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[0]~0_combout\,
	datac => \aluOp2[8]~54_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~32_combout\);

-- Location: LCCOMB_X91_Y54_N4
\arith_logic_unity|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~41_combout\ = ((\arith_logic_unity|Add0~31_combout\ $ (\register_file|mux1|Mux22~1_combout\ $ (!\arith_logic_unity|Add0~40\)))) # (GND)
-- \arith_logic_unity|Add0~42\ = CARRY((\arith_logic_unity|Add0~31_combout\ & ((\register_file|mux1|Mux22~1_combout\) # (!\arith_logic_unity|Add0~40\))) # (!\arith_logic_unity|Add0~31_combout\ & (\register_file|mux1|Mux22~1_combout\ & 
-- !\arith_logic_unity|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~31_combout\,
	datab => \register_file|mux1|Mux22~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~40\,
	combout => \arith_logic_unity|Add0~41_combout\,
	cout => \arith_logic_unity|Add0~42\);

-- Location: LCCOMB_X92_Y52_N8
\write_data[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[9]~17_combout\ = (!\PC|Q\(4) & (\arith_logic_unity|Add0~41_combout\ & (!\PC|Q\(5) & \instruction_memory|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \arith_logic_unity|Add0~41_combout\,
	datac => \PC|Q\(5),
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[9]~17_combout\);

-- Location: FF_X90_Y52_N31
\register_file|registers:2:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[9]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(9));

-- Location: LCCOMB_X91_Y52_N10
\aluOp2[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[9]~49_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\) # ((\register_file|registers:1:regx|Q\(9))))) # (!\instruction_memory|Mux1~0_combout\ & (!\instruction_memory|Mux7~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:1:regx|Q\(9),
	datad => \register_file|registers:0:regx|Q\(9),
	combout => \aluOp2[9]~49_combout\);

-- Location: LCCOMB_X91_Y52_N18
\aluOp2[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[9]~50_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[9]~49_combout\ & ((\register_file|registers:3:regx|Q\(9)))) # (!\aluOp2[9]~49_combout\ & (\register_file|registers:2:regx|Q\(9))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[9]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:2:regx|Q\(9),
	datac => \register_file|registers:3:regx|Q\(9),
	datad => \aluOp2[9]~49_combout\,
	combout => \aluOp2[9]~50_combout\);

-- Location: LCCOMB_X91_Y52_N4
\aluOp2[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[9]~51_combout\ = (\aluOp2[9]~50_combout\ & ((\PC|Q\(2) $ (\PC|Q\(3))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \aluOp2[9]~50_combout\,
	combout => \aluOp2[9]~51_combout\);

-- Location: LCCOMB_X91_Y52_N26
\arith_logic_unity|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~31_combout\ = \aluOp2[9]~51_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[0]~0_combout\,
	datac => \aluOp2[9]~51_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~31_combout\);

-- Location: LCCOMB_X91_Y54_N6
\arith_logic_unity|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~43_combout\ = (\register_file|mux1|Mux21~1_combout\ & ((\arith_logic_unity|Add0~30_combout\ & (\arith_logic_unity|Add0~42\ & VCC)) # (!\arith_logic_unity|Add0~30_combout\ & (!\arith_logic_unity|Add0~42\)))) # 
-- (!\register_file|mux1|Mux21~1_combout\ & ((\arith_logic_unity|Add0~30_combout\ & (!\arith_logic_unity|Add0~42\)) # (!\arith_logic_unity|Add0~30_combout\ & ((\arith_logic_unity|Add0~42\) # (GND)))))
-- \arith_logic_unity|Add0~44\ = CARRY((\register_file|mux1|Mux21~1_combout\ & (!\arith_logic_unity|Add0~30_combout\ & !\arith_logic_unity|Add0~42\)) # (!\register_file|mux1|Mux21~1_combout\ & ((!\arith_logic_unity|Add0~42\) # 
-- (!\arith_logic_unity|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux21~1_combout\,
	datab => \arith_logic_unity|Add0~30_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~42\,
	combout => \arith_logic_unity|Add0~43_combout\,
	cout => \arith_logic_unity|Add0~44\);

-- Location: LCCOMB_X92_Y52_N14
\write_data[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[10]~18_combout\ = (!\PC|Q\(4) & (\instruction_memory|Mux4~0_combout\ & (\arith_logic_unity|Add0~43_combout\ & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \instruction_memory|Mux4~0_combout\,
	datac => \arith_logic_unity|Add0~43_combout\,
	datad => \PC|Q\(5),
	combout => \write_data[10]~18_combout\);

-- Location: FF_X91_Y52_N13
\register_file|registers:3:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[10]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(10));

-- Location: LCCOMB_X91_Y52_N14
\register_file|mux1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux21~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (!\instruction_memory|Mux6~0_combout\)) # (!\instruction_memory|Mux10~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(10))) # 
-- (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(10),
	datad => \register_file|registers:0:regx|Q\(10),
	combout => \register_file|mux1|Mux21~0_combout\);

-- Location: LCCOMB_X91_Y52_N28
\register_file|mux1|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux21~1_combout\ = (\instruction_memory|Mux10~0_combout\ & ((\register_file|mux1|Mux21~0_combout\ & ((\register_file|registers:2:regx|Q\(10)))) # (!\register_file|mux1|Mux21~0_combout\ & (\register_file|registers:3:regx|Q\(10))))) # 
-- (!\instruction_memory|Mux10~0_combout\ & (((\register_file|mux1|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \register_file|registers:3:regx|Q\(10),
	datac => \register_file|registers:2:regx|Q\(10),
	datad => \register_file|mux1|Mux21~0_combout\,
	combout => \register_file|mux1|Mux21~1_combout\);

-- Location: LCCOMB_X91_Y54_N8
\arith_logic_unity|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~45_combout\ = ((\arith_logic_unity|Add0~29_combout\ $ (\register_file|mux1|Mux20~1_combout\ $ (!\arith_logic_unity|Add0~44\)))) # (GND)
-- \arith_logic_unity|Add0~46\ = CARRY((\arith_logic_unity|Add0~29_combout\ & ((\register_file|mux1|Mux20~1_combout\) # (!\arith_logic_unity|Add0~44\))) # (!\arith_logic_unity|Add0~29_combout\ & (\register_file|mux1|Mux20~1_combout\ & 
-- !\arith_logic_unity|Add0~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~29_combout\,
	datab => \register_file|mux1|Mux20~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~44\,
	combout => \arith_logic_unity|Add0~45_combout\,
	cout => \arith_logic_unity|Add0~46\);

-- Location: LCCOMB_X88_Y53_N24
\write_data[11]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[11]~19_combout\ = (\arith_logic_unity|Add0~45_combout\ & (!\PC|Q\(5) & (!\PC|Q\(4) & \instruction_memory|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~45_combout\,
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[11]~19_combout\);

-- Location: LCCOMB_X89_Y52_N20
\register_file|registers:3:regx|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:3:regx|Q[11]~feeder_combout\ = \write_data[11]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[11]~19_combout\,
	combout => \register_file|registers:3:regx|Q[11]~feeder_combout\);

-- Location: FF_X89_Y52_N21
\register_file|registers:3:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	d => \register_file|registers:3:regx|Q[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(11));

-- Location: LCCOMB_X89_Y52_N4
\aluOp2[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[11]~43_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\register_file|registers:1:regx|Q\(11)) # ((\instruction_memory|Mux7~1_combout\)))) # (!\instruction_memory|Mux1~0_combout\ & (((!\instruction_memory|Mux7~1_combout\ & 
-- \register_file|registers:0:regx|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:1:regx|Q\(11),
	datac => \instruction_memory|Mux7~1_combout\,
	datad => \register_file|registers:0:regx|Q\(11),
	combout => \aluOp2[11]~43_combout\);

-- Location: LCCOMB_X89_Y52_N2
\aluOp2[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[11]~44_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[11]~43_combout\ & (\register_file|registers:3:regx|Q\(11))) # (!\aluOp2[11]~43_combout\ & ((\register_file|registers:2:regx|Q\(11)))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[11]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:3:regx|Q\(11),
	datac => \aluOp2[11]~43_combout\,
	datad => \register_file|registers:2:regx|Q\(11),
	combout => \aluOp2[11]~44_combout\);

-- Location: LCCOMB_X89_Y52_N12
\aluOp2[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[11]~45_combout\ = (\aluOp2[11]~44_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \PC|Q\(3),
	datac => \PC|Q\(2),
	datad => \aluOp2[11]~44_combout\,
	combout => \aluOp2[11]~45_combout\);

-- Location: LCCOMB_X90_Y52_N6
\arith_logic_unity|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~29_combout\ = \aluOp2[11]~45_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluOp[0]~0_combout\,
	datac => \control|aluControl[2]~4_combout\,
	datad => \aluOp2[11]~45_combout\,
	combout => \arith_logic_unity|Add0~29_combout\);

-- Location: LCCOMB_X91_Y54_N10
\arith_logic_unity|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~47_combout\ = (\arith_logic_unity|Add0~28_combout\ & ((\register_file|mux1|Mux19~1_combout\ & (\arith_logic_unity|Add0~46\ & VCC)) # (!\register_file|mux1|Mux19~1_combout\ & (!\arith_logic_unity|Add0~46\)))) # 
-- (!\arith_logic_unity|Add0~28_combout\ & ((\register_file|mux1|Mux19~1_combout\ & (!\arith_logic_unity|Add0~46\)) # (!\register_file|mux1|Mux19~1_combout\ & ((\arith_logic_unity|Add0~46\) # (GND)))))
-- \arith_logic_unity|Add0~48\ = CARRY((\arith_logic_unity|Add0~28_combout\ & (!\register_file|mux1|Mux19~1_combout\ & !\arith_logic_unity|Add0~46\)) # (!\arith_logic_unity|Add0~28_combout\ & ((!\arith_logic_unity|Add0~46\) # 
-- (!\register_file|mux1|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~28_combout\,
	datab => \register_file|mux1|Mux19~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~46\,
	combout => \arith_logic_unity|Add0~47_combout\,
	cout => \arith_logic_unity|Add0~48\);

-- Location: LCCOMB_X92_Y54_N14
\write_data[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[12]~20_combout\ = (\arith_logic_unity|Add0~47_combout\ & (!\PC|Q\(5) & (!\PC|Q\(4) & \instruction_memory|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~47_combout\,
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[12]~20_combout\);

-- Location: FF_X90_Y54_N29
\register_file|registers:2:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[12]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(12));

-- Location: LCCOMB_X90_Y54_N28
\aluOp2[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[12]~41_combout\ = (\instruction_memory|Mux1~0_combout\ & (\instruction_memory|Mux7~1_combout\)) # (!\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\ & (\register_file|registers:2:regx|Q\(12))) # 
-- (!\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:0:regx|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:2:regx|Q\(12),
	datad => \register_file|registers:0:regx|Q\(12),
	combout => \aluOp2[12]~41_combout\);

-- Location: LCCOMB_X90_Y54_N30
\aluOp2[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[12]~42_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[12]~41_combout\ & (\register_file|registers:3:regx|Q\(12))) # (!\aluOp2[12]~41_combout\ & ((\register_file|registers:1:regx|Q\(12)))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (\aluOp2[12]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \aluOp2[12]~41_combout\,
	datac => \register_file|registers:3:regx|Q\(12),
	datad => \register_file|registers:1:regx|Q\(12),
	combout => \aluOp2[12]~42_combout\);

-- Location: LCCOMB_X92_Y54_N6
\arith_logic_unity|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~28_combout\ = (\control|aluOp[0]~0_combout\ & (\control|aluControl[2]~4_combout\ $ (((\control|aluSrc~0_combout\ & \aluOp2[12]~42_combout\))))) # (!\control|aluOp[0]~0_combout\ & (((!\aluOp2[12]~42_combout\)) # 
-- (!\control|aluSrc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[0]~0_combout\,
	datab => \control|aluSrc~0_combout\,
	datac => \aluOp2[12]~42_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~28_combout\);

-- Location: LCCOMB_X91_Y54_N12
\arith_logic_unity|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~49_combout\ = ((\arith_logic_unity|Add0~27_combout\ $ (\register_file|mux1|Mux18~1_combout\ $ (!\arith_logic_unity|Add0~48\)))) # (GND)
-- \arith_logic_unity|Add0~50\ = CARRY((\arith_logic_unity|Add0~27_combout\ & ((\register_file|mux1|Mux18~1_combout\) # (!\arith_logic_unity|Add0~48\))) # (!\arith_logic_unity|Add0~27_combout\ & (\register_file|mux1|Mux18~1_combout\ & 
-- !\arith_logic_unity|Add0~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~27_combout\,
	datab => \register_file|mux1|Mux18~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~48\,
	combout => \arith_logic_unity|Add0~49_combout\,
	cout => \arith_logic_unity|Add0~50\);

-- Location: LCCOMB_X88_Y53_N6
\write_data[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[13]~21_combout\ = (\arith_logic_unity|Add0~49_combout\ & (!\PC|Q\(4) & (\instruction_memory|Mux4~0_combout\ & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~49_combout\,
	datab => \PC|Q\(4),
	datac => \instruction_memory|Mux4~0_combout\,
	datad => \PC|Q\(5),
	combout => \write_data[13]~21_combout\);

-- Location: FF_X90_Y53_N11
\register_file|registers:2:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[13]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(13));

-- Location: LCCOMB_X89_Y53_N22
\aluOp2[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[13]~38_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\) # ((\register_file|registers:1:regx|Q\(13))))) # (!\instruction_memory|Mux1~0_combout\ & (!\instruction_memory|Mux7~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:1:regx|Q\(13),
	datad => \register_file|registers:0:regx|Q\(13),
	combout => \aluOp2[13]~38_combout\);

-- Location: LCCOMB_X90_Y53_N0
\aluOp2[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[13]~39_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[13]~38_combout\ & ((\register_file|registers:3:regx|Q\(13)))) # (!\aluOp2[13]~38_combout\ & (\register_file|registers:2:regx|Q\(13))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[13]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(13),
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:3:regx|Q\(13),
	datad => \aluOp2[13]~38_combout\,
	combout => \aluOp2[13]~39_combout\);

-- Location: LCCOMB_X90_Y53_N26
\aluOp2[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[13]~40_combout\ = (\aluOp2[13]~39_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \aluOp2[13]~39_combout\,
	combout => \aluOp2[13]~40_combout\);

-- Location: LCCOMB_X90_Y53_N28
\arith_logic_unity|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~27_combout\ = \aluOp2[13]~40_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[13]~40_combout\,
	datac => \control|aluControl[2]~4_combout\,
	datad => \control|aluOp[0]~0_combout\,
	combout => \arith_logic_unity|Add0~27_combout\);

-- Location: LCCOMB_X91_Y54_N14
\arith_logic_unity|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~51_combout\ = (\arith_logic_unity|Add0~26_combout\ & ((\register_file|mux1|Mux17~1_combout\ & (\arith_logic_unity|Add0~50\ & VCC)) # (!\register_file|mux1|Mux17~1_combout\ & (!\arith_logic_unity|Add0~50\)))) # 
-- (!\arith_logic_unity|Add0~26_combout\ & ((\register_file|mux1|Mux17~1_combout\ & (!\arith_logic_unity|Add0~50\)) # (!\register_file|mux1|Mux17~1_combout\ & ((\arith_logic_unity|Add0~50\) # (GND)))))
-- \arith_logic_unity|Add0~52\ = CARRY((\arith_logic_unity|Add0~26_combout\ & (!\register_file|mux1|Mux17~1_combout\ & !\arith_logic_unity|Add0~50\)) # (!\arith_logic_unity|Add0~26_combout\ & ((!\arith_logic_unity|Add0~50\) # 
-- (!\register_file|mux1|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~26_combout\,
	datab => \register_file|mux1|Mux17~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~50\,
	combout => \arith_logic_unity|Add0~51_combout\,
	cout => \arith_logic_unity|Add0~52\);

-- Location: LCCOMB_X91_Y57_N16
\write_data[14]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[14]~22_combout\ = (\instruction_memory|Mux4~0_combout\ & (!\PC|Q\(4) & (!\PC|Q\(5) & \arith_logic_unity|Add0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \PC|Q\(4),
	datac => \PC|Q\(5),
	datad => \arith_logic_unity|Add0~51_combout\,
	combout => \write_data[14]~22_combout\);

-- Location: FF_X91_Y56_N9
\register_file|registers:1:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[14]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(14));

-- Location: LCCOMB_X90_Y54_N24
\aluOp2[14]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[14]~35_combout\ = (\instruction_memory|Mux1~0_combout\ & (\instruction_memory|Mux7~1_combout\)) # (!\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\ & (\register_file|registers:2:regx|Q\(14))) # 
-- (!\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:0:regx|Q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:2:regx|Q\(14),
	datad => \register_file|registers:0:regx|Q\(14),
	combout => \aluOp2[14]~35_combout\);

-- Location: LCCOMB_X90_Y54_N14
\aluOp2[14]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[14]~36_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[14]~35_combout\ & ((\register_file|registers:3:regx|Q\(14)))) # (!\aluOp2[14]~35_combout\ & (\register_file|registers:1:regx|Q\(14))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (((\aluOp2[14]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:1:regx|Q\(14),
	datac => \register_file|registers:3:regx|Q\(14),
	datad => \aluOp2[14]~35_combout\,
	combout => \aluOp2[14]~36_combout\);

-- Location: LCCOMB_X90_Y54_N18
\aluOp2[14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[14]~37_combout\ = (\aluOp2[14]~36_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \instruction_memory|Mux10~1_combout\,
	datac => \aluOp2[14]~36_combout\,
	datad => \PC|Q\(2),
	combout => \aluOp2[14]~37_combout\);

-- Location: LCCOMB_X90_Y54_N12
\arith_logic_unity|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~26_combout\ = \aluOp2[14]~37_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datab => \aluOp2[14]~37_combout\,
	datad => \control|aluOp[0]~0_combout\,
	combout => \arith_logic_unity|Add0~26_combout\);

-- Location: LCCOMB_X91_Y54_N16
\arith_logic_unity|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~53_combout\ = ((\arith_logic_unity|Add0~25_combout\ $ (\register_file|mux1|Mux16~1_combout\ $ (!\arith_logic_unity|Add0~52\)))) # (GND)
-- \arith_logic_unity|Add0~54\ = CARRY((\arith_logic_unity|Add0~25_combout\ & ((\register_file|mux1|Mux16~1_combout\) # (!\arith_logic_unity|Add0~52\))) # (!\arith_logic_unity|Add0~25_combout\ & (\register_file|mux1|Mux16~1_combout\ & 
-- !\arith_logic_unity|Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~25_combout\,
	datab => \register_file|mux1|Mux16~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~52\,
	combout => \arith_logic_unity|Add0~53_combout\,
	cout => \arith_logic_unity|Add0~54\);

-- Location: LCCOMB_X92_Y54_N12
\write_data[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[15]~23_combout\ = (\arith_logic_unity|Add0~53_combout\ & (!\PC|Q\(5) & (!\PC|Q\(4) & \instruction_memory|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~53_combout\,
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[15]~23_combout\);

-- Location: FF_X90_Y53_N7
\register_file|registers:3:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[15]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(15));

-- Location: LCCOMB_X89_Y53_N10
\aluOp2[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[15]~32_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\) # ((\register_file|registers:1:regx|Q\(15))))) # (!\instruction_memory|Mux1~0_combout\ & (!\instruction_memory|Mux7~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:1:regx|Q\(15),
	datad => \register_file|registers:0:regx|Q\(15),
	combout => \aluOp2[15]~32_combout\);

-- Location: LCCOMB_X90_Y53_N2
\aluOp2[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[15]~33_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[15]~32_combout\ & (\register_file|registers:3:regx|Q\(15))) # (!\aluOp2[15]~32_combout\ & ((\register_file|registers:2:regx|Q\(15)))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[15]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:3:regx|Q\(15),
	datac => \register_file|registers:2:regx|Q\(15),
	datad => \aluOp2[15]~32_combout\,
	combout => \aluOp2[15]~33_combout\);

-- Location: LCCOMB_X90_Y53_N20
\aluOp2[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[15]~34_combout\ = (\aluOp2[15]~33_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \aluOp2[15]~33_combout\,
	combout => \aluOp2[15]~34_combout\);

-- Location: LCCOMB_X90_Y53_N30
\arith_logic_unity|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~25_combout\ = \aluOp2[15]~34_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[0]~0_combout\,
	datab => \aluOp2[15]~34_combout\,
	datac => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~25_combout\);

-- Location: LCCOMB_X91_Y54_N18
\arith_logic_unity|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~55_combout\ = (\arith_logic_unity|Add0~24_combout\ & ((\register_file|mux1|Mux15~1_combout\ & (\arith_logic_unity|Add0~54\ & VCC)) # (!\register_file|mux1|Mux15~1_combout\ & (!\arith_logic_unity|Add0~54\)))) # 
-- (!\arith_logic_unity|Add0~24_combout\ & ((\register_file|mux1|Mux15~1_combout\ & (!\arith_logic_unity|Add0~54\)) # (!\register_file|mux1|Mux15~1_combout\ & ((\arith_logic_unity|Add0~54\) # (GND)))))
-- \arith_logic_unity|Add0~56\ = CARRY((\arith_logic_unity|Add0~24_combout\ & (!\register_file|mux1|Mux15~1_combout\ & !\arith_logic_unity|Add0~54\)) # (!\arith_logic_unity|Add0~24_combout\ & ((!\arith_logic_unity|Add0~54\) # 
-- (!\register_file|mux1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~24_combout\,
	datab => \register_file|mux1|Mux15~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~54\,
	combout => \arith_logic_unity|Add0~55_combout\,
	cout => \arith_logic_unity|Add0~56\);

-- Location: LCCOMB_X92_Y54_N10
\write_data[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[16]~24_combout\ = (\instruction_memory|Mux4~0_combout\ & (\arith_logic_unity|Add0~55_combout\ & (!\PC|Q\(4) & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \arith_logic_unity|Add0~55_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \write_data[16]~24_combout\);

-- Location: FF_X89_Y54_N23
\register_file|registers:1:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[16]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(16));

-- Location: LCCOMB_X89_Y55_N10
\aluOp2[16]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[16]~29_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:2:regx|Q\(16)) # ((\instruction_memory|Mux1~0_combout\)))) # (!\instruction_memory|Mux7~1_combout\ & (((!\instruction_memory|Mux1~0_combout\ & 
-- \register_file|registers:0:regx|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:2:regx|Q\(16),
	datac => \instruction_memory|Mux1~0_combout\,
	datad => \register_file|registers:0:regx|Q\(16),
	combout => \aluOp2[16]~29_combout\);

-- Location: LCCOMB_X89_Y55_N30
\aluOp2[16]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[16]~30_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[16]~29_combout\ & ((\register_file|registers:3:regx|Q\(16)))) # (!\aluOp2[16]~29_combout\ & (\register_file|registers:1:regx|Q\(16))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (((\aluOp2[16]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(16),
	datab => \instruction_memory|Mux1~0_combout\,
	datac => \register_file|registers:3:regx|Q\(16),
	datad => \aluOp2[16]~29_combout\,
	combout => \aluOp2[16]~30_combout\);

-- Location: LCCOMB_X89_Y55_N16
\aluOp2[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[16]~31_combout\ = (\aluOp2[16]~30_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \aluOp2[16]~30_combout\,
	datad => \instruction_memory|Mux10~1_combout\,
	combout => \aluOp2[16]~31_combout\);

-- Location: LCCOMB_X89_Y55_N26
\arith_logic_unity|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~24_combout\ = \aluOp2[16]~31_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluOp2[16]~31_combout\,
	datac => \control|aluControl[2]~4_combout\,
	datad => \control|aluOp[0]~0_combout\,
	combout => \arith_logic_unity|Add0~24_combout\);

-- Location: LCCOMB_X91_Y54_N20
\arith_logic_unity|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~57_combout\ = ((\register_file|mux1|Mux14~1_combout\ $ (\arith_logic_unity|Add0~23_combout\ $ (!\arith_logic_unity|Add0~56\)))) # (GND)
-- \arith_logic_unity|Add0~58\ = CARRY((\register_file|mux1|Mux14~1_combout\ & ((\arith_logic_unity|Add0~23_combout\) # (!\arith_logic_unity|Add0~56\))) # (!\register_file|mux1|Mux14~1_combout\ & (\arith_logic_unity|Add0~23_combout\ & 
-- !\arith_logic_unity|Add0~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux14~1_combout\,
	datab => \arith_logic_unity|Add0~23_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~56\,
	combout => \arith_logic_unity|Add0~57_combout\,
	cout => \arith_logic_unity|Add0~58\);

-- Location: LCCOMB_X88_Y53_N0
\write_data[17]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[17]~25_combout\ = (\arith_logic_unity|Add0~57_combout\ & (!\PC|Q\(4) & (\instruction_memory|Mux4~0_combout\ & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~57_combout\,
	datab => \PC|Q\(4),
	datac => \instruction_memory|Mux4~0_combout\,
	datad => \PC|Q\(5),
	combout => \write_data[17]~25_combout\);

-- Location: LCCOMB_X88_Y53_N20
\register_file|registers:0:regx|Q[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[17]~feeder_combout\ = \write_data[17]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[17]~25_combout\,
	combout => \register_file|registers:0:regx|Q[17]~feeder_combout\);

-- Location: FF_X88_Y53_N21
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

-- Location: LCCOMB_X90_Y53_N4
\register_file|mux1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux14~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(17))) # (!\instruction_memory|Mux6~0_combout\))) # (!\instruction_memory|Mux10~0_combout\ & (\instruction_memory|Mux6~0_combout\ & 
-- ((\register_file|registers:1:regx|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:3:regx|Q\(17),
	datad => \register_file|registers:1:regx|Q\(17),
	combout => \register_file|mux1|Mux14~0_combout\);

-- Location: LCCOMB_X90_Y53_N18
\register_file|mux1|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux14~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|mux1|Mux14~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux14~0_combout\ & ((\register_file|registers:2:regx|Q\(17)))) # 
-- (!\register_file|mux1|Mux14~0_combout\ & (\register_file|registers:0:regx|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(17),
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:2:regx|Q\(17),
	datad => \register_file|mux1|Mux14~0_combout\,
	combout => \register_file|mux1|Mux14~1_combout\);

-- Location: LCCOMB_X91_Y54_N22
\arith_logic_unity|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~59_combout\ = (\register_file|mux1|Mux13~1_combout\ & ((\arith_logic_unity|Add0~22_combout\ & (\arith_logic_unity|Add0~58\ & VCC)) # (!\arith_logic_unity|Add0~22_combout\ & (!\arith_logic_unity|Add0~58\)))) # 
-- (!\register_file|mux1|Mux13~1_combout\ & ((\arith_logic_unity|Add0~22_combout\ & (!\arith_logic_unity|Add0~58\)) # (!\arith_logic_unity|Add0~22_combout\ & ((\arith_logic_unity|Add0~58\) # (GND)))))
-- \arith_logic_unity|Add0~60\ = CARRY((\register_file|mux1|Mux13~1_combout\ & (!\arith_logic_unity|Add0~22_combout\ & !\arith_logic_unity|Add0~58\)) # (!\register_file|mux1|Mux13~1_combout\ & ((!\arith_logic_unity|Add0~58\) # 
-- (!\arith_logic_unity|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux13~1_combout\,
	datab => \arith_logic_unity|Add0~22_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~58\,
	combout => \arith_logic_unity|Add0~59_combout\,
	cout => \arith_logic_unity|Add0~60\);

-- Location: LCCOMB_X88_Y53_N26
\write_data[18]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[18]~26_combout\ = (\arith_logic_unity|Add0~59_combout\ & (!\PC|Q\(5) & (!\PC|Q\(4) & \instruction_memory|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~59_combout\,
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[18]~26_combout\);

-- Location: FF_X89_Y54_N15
\register_file|registers:1:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[18]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(18));

-- Location: LCCOMB_X89_Y54_N14
\register_file|mux1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux13~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (!\instruction_memory|Mux10~0_combout\ & (\register_file|registers:1:regx|Q\(18)))) # (!\instruction_memory|Mux6~0_combout\ & ((\instruction_memory|Mux10~0_combout\) # 
-- ((\register_file|registers:0:regx|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:1:regx|Q\(18),
	datad => \register_file|registers:0:regx|Q\(18),
	combout => \register_file|mux1|Mux13~0_combout\);

-- Location: LCCOMB_X90_Y54_N4
\register_file|mux1|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux13~1_combout\ = (\register_file|mux1|Mux13~0_combout\ & (((\register_file|registers:2:regx|Q\(18))) # (!\instruction_memory|Mux10~0_combout\))) # (!\register_file|mux1|Mux13~0_combout\ & (\instruction_memory|Mux10~0_combout\ & 
-- ((\register_file|registers:3:regx|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux13~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:2:regx|Q\(18),
	datad => \register_file|registers:3:regx|Q\(18),
	combout => \register_file|mux1|Mux13~1_combout\);

-- Location: LCCOMB_X91_Y54_N24
\arith_logic_unity|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~61_combout\ = ((\arith_logic_unity|Add0~21_combout\ $ (\register_file|mux1|Mux12~1_combout\ $ (!\arith_logic_unity|Add0~60\)))) # (GND)
-- \arith_logic_unity|Add0~62\ = CARRY((\arith_logic_unity|Add0~21_combout\ & ((\register_file|mux1|Mux12~1_combout\) # (!\arith_logic_unity|Add0~60\))) # (!\arith_logic_unity|Add0~21_combout\ & (\register_file|mux1|Mux12~1_combout\ & 
-- !\arith_logic_unity|Add0~60\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~21_combout\,
	datab => \register_file|mux1|Mux12~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~60\,
	combout => \arith_logic_unity|Add0~61_combout\,
	cout => \arith_logic_unity|Add0~62\);

-- Location: LCCOMB_X91_Y56_N24
\write_data[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[19]~27_combout\ = (\arith_logic_unity|Add0~61_combout\ & (!\PC|Q\(5) & (!\PC|Q\(4) & \instruction_memory|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~61_combout\,
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[19]~27_combout\);

-- Location: LCCOMB_X89_Y56_N30
\register_file|registers:3:regx|Q[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:3:regx|Q[19]~feeder_combout\ = \write_data[19]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[19]~27_combout\,
	combout => \register_file|registers:3:regx|Q[19]~feeder_combout\);

-- Location: FF_X89_Y56_N31
\register_file|registers:3:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	d => \register_file|registers:3:regx|Q[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(19));

-- Location: LCCOMB_X89_Y56_N8
\aluOp2[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[19]~20_combout\ = (\instruction_memory|Mux1~0_combout\ & (((\instruction_memory|Mux7~1_combout\) # (\register_file|registers:1:regx|Q\(19))))) # (!\instruction_memory|Mux1~0_combout\ & (\register_file|registers:0:regx|Q\(19) & 
-- (!\instruction_memory|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:0:regx|Q\(19),
	datac => \instruction_memory|Mux7~1_combout\,
	datad => \register_file|registers:1:regx|Q\(19),
	combout => \aluOp2[19]~20_combout\);

-- Location: LCCOMB_X89_Y56_N18
\aluOp2[19]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[19]~21_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[19]~20_combout\ & (\register_file|registers:3:regx|Q\(19))) # (!\aluOp2[19]~20_combout\ & ((\register_file|registers:2:regx|Q\(19)))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[19]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:3:regx|Q\(19),
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \aluOp2[19]~20_combout\,
	datad => \register_file|registers:2:regx|Q\(19),
	combout => \aluOp2[19]~21_combout\);

-- Location: LCCOMB_X89_Y56_N4
\aluOp2[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[19]~22_combout\ = (\aluOp2[19]~21_combout\ & ((\PC|Q\(2) $ (\PC|Q\(3))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \aluOp2[19]~21_combout\,
	combout => \aluOp2[19]~22_combout\);

-- Location: LCCOMB_X89_Y56_N22
\arith_logic_unity|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~21_combout\ = \aluOp2[19]~22_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[0]~0_combout\,
	datac => \aluOp2[19]~22_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~21_combout\);

-- Location: LCCOMB_X91_Y54_N26
\arith_logic_unity|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~63_combout\ = (\register_file|mux1|Mux11~1_combout\ & ((\arith_logic_unity|Add0~20_combout\ & (\arith_logic_unity|Add0~62\ & VCC)) # (!\arith_logic_unity|Add0~20_combout\ & (!\arith_logic_unity|Add0~62\)))) # 
-- (!\register_file|mux1|Mux11~1_combout\ & ((\arith_logic_unity|Add0~20_combout\ & (!\arith_logic_unity|Add0~62\)) # (!\arith_logic_unity|Add0~20_combout\ & ((\arith_logic_unity|Add0~62\) # (GND)))))
-- \arith_logic_unity|Add0~64\ = CARRY((\register_file|mux1|Mux11~1_combout\ & (!\arith_logic_unity|Add0~20_combout\ & !\arith_logic_unity|Add0~62\)) # (!\register_file|mux1|Mux11~1_combout\ & ((!\arith_logic_unity|Add0~62\) # 
-- (!\arith_logic_unity|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux11~1_combout\,
	datab => \arith_logic_unity|Add0~20_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~62\,
	combout => \arith_logic_unity|Add0~63_combout\,
	cout => \arith_logic_unity|Add0~64\);

-- Location: LCCOMB_X92_Y54_N20
\write_data[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[20]~28_combout\ = (!\PC|Q\(5) & (\arith_logic_unity|Add0~63_combout\ & (!\PC|Q\(4) & \instruction_memory|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \arith_logic_unity|Add0~63_combout\,
	datac => \PC|Q\(4),
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[20]~28_combout\);

-- Location: FF_X92_Y54_N25
\register_file|registers:3:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[20]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(20));

-- Location: LCCOMB_X89_Y54_N26
\register_file|mux1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux11~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (!\instruction_memory|Mux10~0_combout\ & (\register_file|registers:1:regx|Q\(20)))) # (!\instruction_memory|Mux6~0_combout\ & ((\instruction_memory|Mux10~0_combout\) # 
-- ((\register_file|registers:0:regx|Q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:1:regx|Q\(20),
	datad => \register_file|registers:0:regx|Q\(20),
	combout => \register_file|mux1|Mux11~0_combout\);

-- Location: LCCOMB_X90_Y54_N26
\register_file|mux1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux11~1_combout\ = (\instruction_memory|Mux10~0_combout\ & ((\register_file|mux1|Mux11~0_combout\ & ((\register_file|registers:2:regx|Q\(20)))) # (!\register_file|mux1|Mux11~0_combout\ & (\register_file|registers:3:regx|Q\(20))))) # 
-- (!\instruction_memory|Mux10~0_combout\ & (((\register_file|mux1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:3:regx|Q\(20),
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|mux1|Mux11~0_combout\,
	datad => \register_file|registers:2:regx|Q\(20),
	combout => \register_file|mux1|Mux11~1_combout\);

-- Location: LCCOMB_X91_Y54_N28
\arith_logic_unity|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~74_combout\ = ((\register_file|mux1|Mux10~1_combout\ $ (\arith_logic_unity|Add0~73_combout\ $ (!\arith_logic_unity|Add0~64\)))) # (GND)
-- \arith_logic_unity|Add0~75\ = CARRY((\register_file|mux1|Mux10~1_combout\ & ((\arith_logic_unity|Add0~73_combout\) # (!\arith_logic_unity|Add0~64\))) # (!\register_file|mux1|Mux10~1_combout\ & (\arith_logic_unity|Add0~73_combout\ & 
-- !\arith_logic_unity|Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux10~1_combout\,
	datab => \arith_logic_unity|Add0~73_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~64\,
	combout => \arith_logic_unity|Add0~74_combout\,
	cout => \arith_logic_unity|Add0~75\);

-- Location: LCCOMB_X92_Y52_N26
\write_data[21]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[21]~13_combout\ = (!\PC|Q\(5) & (\instruction_memory|Mux4~0_combout\ & (\arith_logic_unity|Add0~74_combout\ & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \instruction_memory|Mux4~0_combout\,
	datac => \arith_logic_unity|Add0~74_combout\,
	datad => \PC|Q\(4),
	combout => \write_data[21]~13_combout\);

-- Location: LCCOMB_X90_Y52_N10
\register_file|registers:0:regx|Q[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[21]~feeder_combout\ = \write_data[21]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[21]~13_combout\,
	combout => \register_file|registers:0:regx|Q[21]~feeder_combout\);

-- Location: FF_X90_Y52_N11
\register_file|registers:0:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(21));

-- Location: LCCOMB_X89_Y52_N18
\register_file|mux1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux10~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\instruction_memory|Mux10~0_combout\ & (\register_file|registers:3:regx|Q\(21))) # (!\instruction_memory|Mux10~0_combout\ & ((\register_file|registers:1:regx|Q\(21)))))) # 
-- (!\instruction_memory|Mux6~0_combout\ & (\instruction_memory|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:3:regx|Q\(21),
	datad => \register_file|registers:1:regx|Q\(21),
	combout => \register_file|mux1|Mux10~0_combout\);

-- Location: LCCOMB_X90_Y52_N12
\register_file|mux1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux10~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|mux1|Mux10~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux10~0_combout\ & ((\register_file|registers:2:regx|Q\(21)))) # 
-- (!\register_file|mux1|Mux10~0_combout\ & (\register_file|registers:0:regx|Q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(21),
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:2:regx|Q\(21),
	datad => \register_file|mux1|Mux10~0_combout\,
	combout => \register_file|mux1|Mux10~1_combout\);

-- Location: LCCOMB_X91_Y54_N30
\arith_logic_unity|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~76_combout\ = (\register_file|mux1|Mux9~1_combout\ & ((\arith_logic_unity|Add0~72_combout\ & (\arith_logic_unity|Add0~75\ & VCC)) # (!\arith_logic_unity|Add0~72_combout\ & (!\arith_logic_unity|Add0~75\)))) # 
-- (!\register_file|mux1|Mux9~1_combout\ & ((\arith_logic_unity|Add0~72_combout\ & (!\arith_logic_unity|Add0~75\)) # (!\arith_logic_unity|Add0~72_combout\ & ((\arith_logic_unity|Add0~75\) # (GND)))))
-- \arith_logic_unity|Add0~77\ = CARRY((\register_file|mux1|Mux9~1_combout\ & (!\arith_logic_unity|Add0~72_combout\ & !\arith_logic_unity|Add0~75\)) # (!\register_file|mux1|Mux9~1_combout\ & ((!\arith_logic_unity|Add0~75\) # 
-- (!\arith_logic_unity|Add0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux9~1_combout\,
	datab => \arith_logic_unity|Add0~72_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~75\,
	combout => \arith_logic_unity|Add0~76_combout\,
	cout => \arith_logic_unity|Add0~77\);

-- Location: LCCOMB_X92_Y54_N16
\write_data[22]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[22]~14_combout\ = (\instruction_memory|Mux4~0_combout\ & (\arith_logic_unity|Add0~76_combout\ & (!\PC|Q\(4) & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \arith_logic_unity|Add0~76_combout\,
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \write_data[22]~14_combout\);

-- Location: FF_X92_Y53_N1
\register_file|registers:3:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[22]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(22));

-- Location: LCCOMB_X92_Y53_N14
\register_file|mux1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux9~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (!\instruction_memory|Mux6~0_combout\)) # (!\instruction_memory|Mux10~0_combout\ & ((\instruction_memory|Mux6~0_combout\ & (\register_file|registers:1:regx|Q\(22))) # 
-- (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(22),
	datad => \register_file|registers:0:regx|Q\(22),
	combout => \register_file|mux1|Mux9~0_combout\);

-- Location: LCCOMB_X92_Y53_N12
\register_file|mux1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux9~1_combout\ = (\instruction_memory|Mux10~0_combout\ & ((\register_file|mux1|Mux9~0_combout\ & ((\register_file|registers:2:regx|Q\(22)))) # (!\register_file|mux1|Mux9~0_combout\ & (\register_file|registers:3:regx|Q\(22))))) # 
-- (!\instruction_memory|Mux10~0_combout\ & (((\register_file|mux1|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \register_file|registers:3:regx|Q\(22),
	datac => \register_file|mux1|Mux9~0_combout\,
	datad => \register_file|registers:2:regx|Q\(22),
	combout => \register_file|mux1|Mux9~1_combout\);

-- Location: LCCOMB_X91_Y53_N0
\arith_logic_unity|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~78_combout\ = ((\register_file|mux1|Mux8~1_combout\ $ (\arith_logic_unity|Add0~71_combout\ $ (!\arith_logic_unity|Add0~77\)))) # (GND)
-- \arith_logic_unity|Add0~79\ = CARRY((\register_file|mux1|Mux8~1_combout\ & ((\arith_logic_unity|Add0~71_combout\) # (!\arith_logic_unity|Add0~77\))) # (!\register_file|mux1|Mux8~1_combout\ & (\arith_logic_unity|Add0~71_combout\ & 
-- !\arith_logic_unity|Add0~77\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux8~1_combout\,
	datab => \arith_logic_unity|Add0~71_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~77\,
	combout => \arith_logic_unity|Add0~78_combout\,
	cout => \arith_logic_unity|Add0~79\);

-- Location: LCCOMB_X88_Y53_N18
\write_data[23]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[23]~15_combout\ = (!\PC|Q\(5) & (\arith_logic_unity|Add0~78_combout\ & (!\PC|Q\(4) & \instruction_memory|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \arith_logic_unity|Add0~78_combout\,
	datac => \PC|Q\(4),
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[23]~15_combout\);

-- Location: FF_X89_Y53_N19
\register_file|registers:1:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[23]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(23));

-- Location: LCCOMB_X89_Y53_N12
\register_file|mux1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux8~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(23))) # (!\instruction_memory|Mux6~0_combout\))) # (!\instruction_memory|Mux10~0_combout\ & (\instruction_memory|Mux6~0_combout\ & 
-- (\register_file|registers:1:regx|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(23),
	datad => \register_file|registers:3:regx|Q\(23),
	combout => \register_file|mux1|Mux8~0_combout\);

-- Location: LCCOMB_X90_Y52_N18
\register_file|mux1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux8~1_combout\ = (\register_file|mux1|Mux8~0_combout\ & ((\instruction_memory|Mux6~0_combout\) # ((\register_file|registers:2:regx|Q\(23))))) # (!\register_file|mux1|Mux8~0_combout\ & (!\instruction_memory|Mux6~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux8~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:0:regx|Q\(23),
	datad => \register_file|registers:2:regx|Q\(23),
	combout => \register_file|mux1|Mux8~1_combout\);

-- Location: LCCOMB_X91_Y53_N2
\arith_logic_unity|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~80_combout\ = (\arith_logic_unity|Add0~70_combout\ & ((\register_file|mux1|Mux7~1_combout\ & (\arith_logic_unity|Add0~79\ & VCC)) # (!\register_file|mux1|Mux7~1_combout\ & (!\arith_logic_unity|Add0~79\)))) # 
-- (!\arith_logic_unity|Add0~70_combout\ & ((\register_file|mux1|Mux7~1_combout\ & (!\arith_logic_unity|Add0~79\)) # (!\register_file|mux1|Mux7~1_combout\ & ((\arith_logic_unity|Add0~79\) # (GND)))))
-- \arith_logic_unity|Add0~81\ = CARRY((\arith_logic_unity|Add0~70_combout\ & (!\register_file|mux1|Mux7~1_combout\ & !\arith_logic_unity|Add0~79\)) # (!\arith_logic_unity|Add0~70_combout\ & ((!\arith_logic_unity|Add0~79\) # 
-- (!\register_file|mux1|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~70_combout\,
	datab => \register_file|mux1|Mux7~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~79\,
	combout => \arith_logic_unity|Add0~80_combout\,
	cout => \arith_logic_unity|Add0~81\);

-- Location: LCCOMB_X92_Y56_N10
\write_data[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[24]~16_combout\ = (\arith_logic_unity|Add0~80_combout\ & (!\PC|Q\(4) & (\instruction_memory|Mux4~0_combout\ & !\PC|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~80_combout\,
	datab => \PC|Q\(4),
	datac => \instruction_memory|Mux4~0_combout\,
	datad => \PC|Q\(5),
	combout => \write_data[24]~16_combout\);

-- Location: FF_X91_Y56_N7
\register_file|registers:1:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[24]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(24));

-- Location: LCCOMB_X92_Y56_N24
\aluOp2[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[24]~77_combout\ = (\instruction_memory|Mux1~0_combout\ & (\instruction_memory|Mux7~1_combout\)) # (!\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\ & (\register_file|registers:2:regx|Q\(24))) # 
-- (!\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:0:regx|Q\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:2:regx|Q\(24),
	datad => \register_file|registers:0:regx|Q\(24),
	combout => \aluOp2[24]~77_combout\);

-- Location: LCCOMB_X91_Y56_N20
\aluOp2[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[24]~78_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[24]~77_combout\ & ((\register_file|registers:3:regx|Q\(24)))) # (!\aluOp2[24]~77_combout\ & (\register_file|registers:1:regx|Q\(24))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (((\aluOp2[24]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(24),
	datab => \instruction_memory|Mux1~0_combout\,
	datac => \register_file|registers:3:regx|Q\(24),
	datad => \aluOp2[24]~77_combout\,
	combout => \aluOp2[24]~78_combout\);

-- Location: LCCOMB_X91_Y56_N30
\aluOp2[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[24]~79_combout\ = (\aluOp2[24]~78_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \PC|Q\(3),
	datac => \aluOp2[24]~78_combout\,
	datad => \PC|Q\(2),
	combout => \aluOp2[24]~79_combout\);

-- Location: LCCOMB_X91_Y56_N28
\arith_logic_unity|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~70_combout\ = \aluOp2[24]~79_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[24]~79_combout\,
	datab => \control|aluControl[2]~4_combout\,
	datac => \control|aluOp[0]~0_combout\,
	combout => \arith_logic_unity|Add0~70_combout\);

-- Location: LCCOMB_X91_Y53_N4
\arith_logic_unity|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~82_combout\ = ((\arith_logic_unity|Add0~69_combout\ $ (\register_file|mux1|Mux6~1_combout\ $ (!\arith_logic_unity|Add0~81\)))) # (GND)
-- \arith_logic_unity|Add0~83\ = CARRY((\arith_logic_unity|Add0~69_combout\ & ((\register_file|mux1|Mux6~1_combout\) # (!\arith_logic_unity|Add0~81\))) # (!\arith_logic_unity|Add0~69_combout\ & (\register_file|mux1|Mux6~1_combout\ & 
-- !\arith_logic_unity|Add0~81\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~69_combout\,
	datab => \register_file|mux1|Mux6~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~81\,
	combout => \arith_logic_unity|Add0~82_combout\,
	cout => \arith_logic_unity|Add0~83\);

-- Location: LCCOMB_X91_Y53_N30
\arith_logic_unity|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux6~5_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & \arith_logic_unity|Add0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datad => \arith_logic_unity|Add0~82_combout\,
	combout => \arith_logic_unity|Mux6~5_combout\);

-- Location: LCCOMB_X88_Y53_N14
\write_data[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[25]~10_combout\ = (\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux4~0_combout\,
	datad => \arith_logic_unity|Mux6~5_combout\,
	combout => \write_data[25]~10_combout\);

-- Location: FF_X89_Y53_N3
\register_file|registers:1:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[25]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(25));

-- Location: LCCOMB_X89_Y53_N2
\aluOp2[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[25]~74_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\) # ((\register_file|registers:1:regx|Q\(25))))) # (!\instruction_memory|Mux1~0_combout\ & (!\instruction_memory|Mux7~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:1:regx|Q\(25),
	datad => \register_file|registers:0:regx|Q\(25),
	combout => \aluOp2[25]~74_combout\);

-- Location: LCCOMB_X89_Y53_N28
\aluOp2[25]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[25]~75_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[25]~74_combout\ & (\register_file|registers:3:regx|Q\(25))) # (!\aluOp2[25]~74_combout\ & ((\register_file|registers:2:regx|Q\(25)))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (\aluOp2[25]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \aluOp2[25]~74_combout\,
	datac => \register_file|registers:3:regx|Q\(25),
	datad => \register_file|registers:2:regx|Q\(25),
	combout => \aluOp2[25]~75_combout\);

-- Location: LCCOMB_X89_Y53_N8
\aluOp2[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[25]~76_combout\ = (\aluOp2[25]~75_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \instruction_memory|Mux10~1_combout\,
	datac => \PC|Q\(2),
	datad => \aluOp2[25]~75_combout\,
	combout => \aluOp2[25]~76_combout\);

-- Location: LCCOMB_X89_Y53_N14
\arith_logic_unity|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~69_combout\ = \aluOp2[25]~76_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluOp2[25]~76_combout\,
	datac => \control|aluOp[0]~0_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~69_combout\);

-- Location: LCCOMB_X91_Y53_N6
\arith_logic_unity|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~84_combout\ = (\register_file|mux1|Mux5~1_combout\ & ((\arith_logic_unity|Add0~68_combout\ & (\arith_logic_unity|Add0~83\ & VCC)) # (!\arith_logic_unity|Add0~68_combout\ & (!\arith_logic_unity|Add0~83\)))) # 
-- (!\register_file|mux1|Mux5~1_combout\ & ((\arith_logic_unity|Add0~68_combout\ & (!\arith_logic_unity|Add0~83\)) # (!\arith_logic_unity|Add0~68_combout\ & ((\arith_logic_unity|Add0~83\) # (GND)))))
-- \arith_logic_unity|Add0~85\ = CARRY((\register_file|mux1|Mux5~1_combout\ & (!\arith_logic_unity|Add0~68_combout\ & !\arith_logic_unity|Add0~83\)) # (!\register_file|mux1|Mux5~1_combout\ & ((!\arith_logic_unity|Add0~83\) # 
-- (!\arith_logic_unity|Add0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux5~1_combout\,
	datab => \arith_logic_unity|Add0~68_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~83\,
	combout => \arith_logic_unity|Add0~84_combout\,
	cout => \arith_logic_unity|Add0~85\);

-- Location: LCCOMB_X91_Y53_N22
\arith_logic_unity|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux5~5_combout\ = (!\PC|Q\(5) & (!\PC|Q\(4) & \arith_logic_unity|Add0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(5),
	datac => \PC|Q\(4),
	datad => \arith_logic_unity|Add0~84_combout\,
	combout => \arith_logic_unity|Mux5~5_combout\);

-- Location: LCCOMB_X91_Y57_N4
\write_data[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[26]~9_combout\ = (\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datad => \arith_logic_unity|Mux5~5_combout\,
	combout => \write_data[26]~9_combout\);

-- Location: FF_X91_Y53_N27
\register_file|registers:0:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[26]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(26));

-- Location: LCCOMB_X92_Y53_N8
\register_file|mux1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux5~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|registers:1:regx|Q\(26) & !\instruction_memory|Mux10~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|registers:0:regx|Q\(26)) # 
-- ((\instruction_memory|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(26),
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(26),
	datad => \instruction_memory|Mux10~0_combout\,
	combout => \register_file|mux1|Mux5~0_combout\);

-- Location: LCCOMB_X91_Y53_N24
\register_file|mux1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux5~1_combout\ = (\instruction_memory|Mux10~0_combout\ & ((\register_file|mux1|Mux5~0_combout\ & (\register_file|registers:2:regx|Q\(26))) # (!\register_file|mux1|Mux5~0_combout\ & ((\register_file|registers:3:regx|Q\(26)))))) # 
-- (!\instruction_memory|Mux10~0_combout\ & (\register_file|mux1|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \register_file|mux1|Mux5~0_combout\,
	datac => \register_file|registers:2:regx|Q\(26),
	datad => \register_file|registers:3:regx|Q\(26),
	combout => \register_file|mux1|Mux5~1_combout\);

-- Location: LCCOMB_X91_Y53_N8
\arith_logic_unity|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~86_combout\ = ((\arith_logic_unity|Add0~67_combout\ $ (\register_file|mux1|Mux4~1_combout\ $ (!\arith_logic_unity|Add0~85\)))) # (GND)
-- \arith_logic_unity|Add0~87\ = CARRY((\arith_logic_unity|Add0~67_combout\ & ((\register_file|mux1|Mux4~1_combout\) # (!\arith_logic_unity|Add0~85\))) # (!\arith_logic_unity|Add0~67_combout\ & (\register_file|mux1|Mux4~1_combout\ & 
-- !\arith_logic_unity|Add0~85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~67_combout\,
	datab => \register_file|mux1|Mux4~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~85\,
	combout => \arith_logic_unity|Add0~86_combout\,
	cout => \arith_logic_unity|Add0~87\);

-- Location: LCCOMB_X91_Y53_N18
\arith_logic_unity|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux4~5_combout\ = (!\PC|Q\(4) & (\arith_logic_unity|Add0~86_combout\ & !\PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \arith_logic_unity|Add0~86_combout\,
	datad => \PC|Q\(5),
	combout => \arith_logic_unity|Mux4~5_combout\);

-- Location: LCCOMB_X92_Y52_N30
\write_data[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[27]~8_combout\ = (\arith_logic_unity|Mux4~5_combout\ & \instruction_memory|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arith_logic_unity|Mux4~5_combout\,
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[27]~8_combout\);

-- Location: LCCOMB_X92_Y52_N6
\register_file|registers:2:regx|Q[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:2:regx|Q[27]~feeder_combout\ = \write_data[27]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[27]~8_combout\,
	combout => \register_file|registers:2:regx|Q[27]~feeder_combout\);

-- Location: FF_X92_Y52_N7
\register_file|registers:2:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	d => \register_file|registers:2:regx|Q[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(27));

-- Location: LCCOMB_X89_Y52_N0
\aluOp2[27]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[27]~68_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\) # ((\register_file|registers:1:regx|Q\(27))))) # (!\instruction_memory|Mux1~0_combout\ & (!\instruction_memory|Mux7~1_combout\ & 
-- ((\register_file|registers:0:regx|Q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:1:regx|Q\(27),
	datad => \register_file|registers:0:regx|Q\(27),
	combout => \aluOp2[27]~68_combout\);

-- Location: LCCOMB_X89_Y52_N30
\aluOp2[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[27]~69_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[27]~68_combout\ & ((\register_file|registers:3:regx|Q\(27)))) # (!\aluOp2[27]~68_combout\ & (\register_file|registers:2:regx|Q\(27))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[27]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \register_file|registers:2:regx|Q\(27),
	datac => \register_file|registers:3:regx|Q\(27),
	datad => \aluOp2[27]~68_combout\,
	combout => \aluOp2[27]~69_combout\);

-- Location: LCCOMB_X89_Y52_N8
\aluOp2[27]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[27]~70_combout\ = (\aluOp2[27]~69_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \PC|Q\(3),
	datac => \PC|Q\(2),
	datad => \aluOp2[27]~69_combout\,
	combout => \aluOp2[27]~70_combout\);

-- Location: LCCOMB_X90_Y52_N20
\arith_logic_unity|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~67_combout\ = \aluOp2[27]~70_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[27]~70_combout\,
	datab => \control|aluOp[0]~0_combout\,
	datad => \control|aluControl[2]~4_combout\,
	combout => \arith_logic_unity|Add0~67_combout\);

-- Location: LCCOMB_X91_Y53_N10
\arith_logic_unity|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~88_combout\ = (\arith_logic_unity|Add0~66_combout\ & ((\register_file|mux1|Mux3~1_combout\ & (\arith_logic_unity|Add0~87\ & VCC)) # (!\register_file|mux1|Mux3~1_combout\ & (!\arith_logic_unity|Add0~87\)))) # 
-- (!\arith_logic_unity|Add0~66_combout\ & ((\register_file|mux1|Mux3~1_combout\ & (!\arith_logic_unity|Add0~87\)) # (!\register_file|mux1|Mux3~1_combout\ & ((\arith_logic_unity|Add0~87\) # (GND)))))
-- \arith_logic_unity|Add0~89\ = CARRY((\arith_logic_unity|Add0~66_combout\ & (!\register_file|mux1|Mux3~1_combout\ & !\arith_logic_unity|Add0~87\)) # (!\arith_logic_unity|Add0~66_combout\ & ((!\arith_logic_unity|Add0~87\) # 
-- (!\register_file|mux1|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~66_combout\,
	datab => \register_file|mux1|Mux3~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~87\,
	combout => \arith_logic_unity|Add0~88_combout\,
	cout => \arith_logic_unity|Add0~89\);

-- Location: LCCOMB_X91_Y53_N20
\arith_logic_unity|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux3~5_combout\ = (\arith_logic_unity|Add0~88_combout\ & (!\PC|Q\(5) & !\PC|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~88_combout\,
	datab => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \arith_logic_unity|Mux3~5_combout\);

-- Location: LCCOMB_X92_Y53_N0
\write_data[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[28]~7_combout\ = (\arith_logic_unity|Mux3~5_combout\ & \instruction_memory|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux3~5_combout\,
	datab => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[28]~7_combout\);

-- Location: FF_X92_Y53_N31
\register_file|registers:1:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[28]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(28));

-- Location: LCCOMB_X92_Y53_N28
\aluOp2[28]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[28]~65_combout\ = (\instruction_memory|Mux1~0_combout\ & (((\instruction_memory|Mux7~1_combout\)))) # (!\instruction_memory|Mux1~0_combout\ & ((\instruction_memory|Mux7~1_combout\ & ((\register_file|registers:2:regx|Q\(28)))) # 
-- (!\instruction_memory|Mux7~1_combout\ & (\register_file|registers:0:regx|Q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux1~0_combout\,
	datab => \register_file|registers:0:regx|Q\(28),
	datac => \register_file|registers:2:regx|Q\(28),
	datad => \instruction_memory|Mux7~1_combout\,
	combout => \aluOp2[28]~65_combout\);

-- Location: LCCOMB_X92_Y53_N4
\aluOp2[28]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[28]~66_combout\ = (\instruction_memory|Mux1~0_combout\ & ((\aluOp2[28]~65_combout\ & ((\register_file|registers:3:regx|Q\(28)))) # (!\aluOp2[28]~65_combout\ & (\register_file|registers:1:regx|Q\(28))))) # (!\instruction_memory|Mux1~0_combout\ & 
-- (((\aluOp2[28]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(28),
	datab => \instruction_memory|Mux1~0_combout\,
	datac => \register_file|registers:3:regx|Q\(28),
	datad => \aluOp2[28]~65_combout\,
	combout => \aluOp2[28]~66_combout\);

-- Location: LCCOMB_X92_Y53_N22
\aluOp2[28]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[28]~67_combout\ = (\aluOp2[28]~66_combout\ & ((\PC|Q\(2) $ (\PC|Q\(3))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \aluOp2[28]~66_combout\,
	datad => \instruction_memory|Mux10~1_combout\,
	combout => \aluOp2[28]~67_combout\);

-- Location: LCCOMB_X92_Y53_N16
\arith_logic_unity|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~66_combout\ = \aluOp2[28]~67_combout\ $ (((\control|aluControl[2]~4_combout\) # (!\control|aluOp[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~4_combout\,
	datac => \control|aluOp[0]~0_combout\,
	datad => \aluOp2[28]~67_combout\,
	combout => \arith_logic_unity|Add0~66_combout\);

-- Location: LCCOMB_X91_Y53_N12
\arith_logic_unity|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~90_combout\ = ((\register_file|mux1|Mux2~1_combout\ $ (\arith_logic_unity|Add0~65_combout\ $ (!\arith_logic_unity|Add0~89\)))) # (GND)
-- \arith_logic_unity|Add0~91\ = CARRY((\register_file|mux1|Mux2~1_combout\ & ((\arith_logic_unity|Add0~65_combout\) # (!\arith_logic_unity|Add0~89\))) # (!\register_file|mux1|Mux2~1_combout\ & (\arith_logic_unity|Add0~65_combout\ & 
-- !\arith_logic_unity|Add0~89\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux2~1_combout\,
	datab => \arith_logic_unity|Add0~65_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~89\,
	combout => \arith_logic_unity|Add0~90_combout\,
	cout => \arith_logic_unity|Add0~91\);

-- Location: LCCOMB_X92_Y55_N6
\arith_logic_unity|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux2~5_combout\ = (!\PC|Q\(4) & (\arith_logic_unity|Add0~90_combout\ & !\PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datac => \arith_logic_unity|Add0~90_combout\,
	datad => \PC|Q\(5),
	combout => \arith_logic_unity|Mux2~5_combout\);

-- Location: LCCOMB_X92_Y52_N16
\write_data[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[29]~6_combout\ = (\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux4~0_combout\,
	datad => \arith_logic_unity|Mux2~5_combout\,
	combout => \write_data[29]~6_combout\);

-- Location: FF_X92_Y52_N31
\register_file|registers:2:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[29]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(29));

-- Location: LCCOMB_X89_Y52_N10
\register_file|mux1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux2~0_combout\ = (\instruction_memory|Mux6~0_combout\ & ((\instruction_memory|Mux10~0_combout\ & (\register_file|registers:3:regx|Q\(29))) # (!\instruction_memory|Mux10~0_combout\ & ((\register_file|registers:1:regx|Q\(29)))))) # 
-- (!\instruction_memory|Mux6~0_combout\ & (\instruction_memory|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:3:regx|Q\(29),
	datad => \register_file|registers:1:regx|Q\(29),
	combout => \register_file|mux1|Mux2~0_combout\);

-- Location: LCCOMB_X92_Y52_N24
\register_file|mux1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux2~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|mux1|Mux2~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux2~0_combout\ & (\register_file|registers:2:regx|Q\(29))) # 
-- (!\register_file|mux1|Mux2~0_combout\ & ((\register_file|registers:0:regx|Q\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(29),
	datab => \register_file|registers:0:regx|Q\(29),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|mux1|Mux2~0_combout\,
	combout => \register_file|mux1|Mux2~1_combout\);

-- Location: LCCOMB_X91_Y53_N14
\arith_logic_unity|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~93_combout\ = (\register_file|mux1|Mux1~1_combout\ & ((\arith_logic_unity|Add0~92_combout\ & (\arith_logic_unity|Add0~91\ & VCC)) # (!\arith_logic_unity|Add0~92_combout\ & (!\arith_logic_unity|Add0~91\)))) # 
-- (!\register_file|mux1|Mux1~1_combout\ & ((\arith_logic_unity|Add0~92_combout\ & (!\arith_logic_unity|Add0~91\)) # (!\arith_logic_unity|Add0~92_combout\ & ((\arith_logic_unity|Add0~91\) # (GND)))))
-- \arith_logic_unity|Add0~94\ = CARRY((\register_file|mux1|Mux1~1_combout\ & (!\arith_logic_unity|Add0~92_combout\ & !\arith_logic_unity|Add0~91\)) # (!\register_file|mux1|Mux1~1_combout\ & ((!\arith_logic_unity|Add0~91\) # 
-- (!\arith_logic_unity|Add0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux1~1_combout\,
	datab => \arith_logic_unity|Add0~92_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~91\,
	combout => \arith_logic_unity|Add0~93_combout\,
	cout => \arith_logic_unity|Add0~94\);

-- Location: LCCOMB_X91_Y53_N26
\arith_logic_unity|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux1~5_combout\ = (!\PC|Q\(4) & (\arith_logic_unity|Add0~93_combout\ & !\PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \arith_logic_unity|Add0~93_combout\,
	datad => \PC|Q\(5),
	combout => \arith_logic_unity|Mux1~5_combout\);

-- Location: LCCOMB_X92_Y56_N12
\write_data[30]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[30]~11_combout\ = (\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datac => \arith_logic_unity|Mux1~5_combout\,
	combout => \write_data[30]~11_combout\);

-- Location: FF_X91_Y56_N13
\register_file|registers:1:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[30]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(30));

-- Location: LCCOMB_X91_Y56_N12
\register_file|mux1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux1~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (!\instruction_memory|Mux10~0_combout\ & (\register_file|registers:1:regx|Q\(30)))) # (!\instruction_memory|Mux6~0_combout\ & ((\instruction_memory|Mux10~0_combout\) # 
-- ((\register_file|registers:0:regx|Q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:1:regx|Q\(30),
	datad => \register_file|registers:0:regx|Q\(30),
	combout => \register_file|mux1|Mux1~0_combout\);

-- Location: LCCOMB_X91_Y56_N2
\register_file|mux1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux1~1_combout\ = (\instruction_memory|Mux10~0_combout\ & ((\register_file|mux1|Mux1~0_combout\ & (\register_file|registers:2:regx|Q\(30))) # (!\register_file|mux1|Mux1~0_combout\ & ((\register_file|registers:3:regx|Q\(30)))))) # 
-- (!\instruction_memory|Mux10~0_combout\ & (\register_file|mux1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \register_file|mux1|Mux1~0_combout\,
	datac => \register_file|registers:2:regx|Q\(30),
	datad => \register_file|registers:3:regx|Q\(30),
	combout => \register_file|mux1|Mux1~1_combout\);

-- Location: LCCOMB_X91_Y53_N16
\arith_logic_unity|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~96_combout\ = \arith_logic_unity|Add0~95_combout\ $ (\arith_logic_unity|Add0~94\ $ (!\register_file|mux1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~95_combout\,
	datad => \register_file|mux1|Mux0~1_combout\,
	cin => \arith_logic_unity|Add0~94\,
	combout => \arith_logic_unity|Add0~96_combout\);

-- Location: LCCOMB_X92_Y55_N4
\arith_logic_unity|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux0~5_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & \arith_logic_unity|Add0~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datad => \arith_logic_unity|Add0~96_combout\,
	combout => \arith_logic_unity|Mux0~5_combout\);

-- Location: LCCOMB_X88_Y53_N16
\write_data[31]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[31]~12_combout\ = (\arith_logic_unity|Mux0~5_combout\ & \instruction_memory|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arith_logic_unity|Mux0~5_combout\,
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[31]~12_combout\);

-- Location: FF_X88_Y53_N15
\register_file|registers:2:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[2]~clkctrl_outclk\,
	asdata => \write_data[31]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:2:regx|Q\(31));

-- Location: LCCOMB_X89_Y53_N6
\aluOp2[31]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[31]~92_combout\ = (\instruction_memory|Mux7~1_combout\ & (\instruction_memory|Mux1~0_combout\)) # (!\instruction_memory|Mux7~1_combout\ & ((\instruction_memory|Mux1~0_combout\ & (\register_file|registers:1:regx|Q\(31))) # 
-- (!\instruction_memory|Mux1~0_combout\ & ((\register_file|registers:0:regx|Q\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux7~1_combout\,
	datab => \instruction_memory|Mux1~0_combout\,
	datac => \register_file|registers:1:regx|Q\(31),
	datad => \register_file|registers:0:regx|Q\(31),
	combout => \aluOp2[31]~92_combout\);

-- Location: LCCOMB_X89_Y53_N0
\aluOp2[31]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[31]~93_combout\ = (\instruction_memory|Mux7~1_combout\ & ((\aluOp2[31]~92_combout\ & ((\register_file|registers:3:regx|Q\(31)))) # (!\aluOp2[31]~92_combout\ & (\register_file|registers:2:regx|Q\(31))))) # (!\instruction_memory|Mux7~1_combout\ & 
-- (((\aluOp2[31]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:2:regx|Q\(31),
	datab => \instruction_memory|Mux7~1_combout\,
	datac => \register_file|registers:3:regx|Q\(31),
	datad => \aluOp2[31]~92_combout\,
	combout => \aluOp2[31]~93_combout\);

-- Location: LCCOMB_X89_Y53_N26
\aluOp2[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[31]~94_combout\ = (\aluOp2[31]~93_combout\ & ((\PC|Q\(3) $ (\PC|Q\(2))) # (!\instruction_memory|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \instruction_memory|Mux10~1_combout\,
	datac => \aluOp2[31]~93_combout\,
	datad => \PC|Q\(2),
	combout => \aluOp2[31]~94_combout\);

-- Location: LCCOMB_X89_Y54_N0
\aluOp2[12]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[12]~61_combout\ = (\control|aluSrc~0_combout\ & \aluOp2[12]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datad => \aluOp2[12]~42_combout\,
	combout => \aluOp2[12]~61_combout\);

-- Location: LCCOMB_X87_Y55_N30
\aluOp2[5]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluOp2[5]~95_combout\ = (\control|aluSrc~0_combout\ & \aluOp2[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluSrc~0_combout\,
	datad => \aluOp2[5]~10_combout\,
	combout => \aluOp2[5]~95_combout\);

-- Location: LCCOMB_X90_Y56_N0
\arith_logic_unity|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~1_cout\ = CARRY((!\register_file|mux1|Mux31~1_combout\ & \aluOp2[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux31~1_combout\,
	datab => \aluOp2[0]~8_combout\,
	datad => VCC,
	cout => \arith_logic_unity|LessThan0~1_cout\);

-- Location: LCCOMB_X90_Y56_N2
\arith_logic_unity|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~3_cout\ = CARRY((\register_file|mux1|Mux30~1_combout\ & ((!\arith_logic_unity|LessThan0~1_cout\) # (!\aluOp2[1]~5_combout\))) # (!\register_file|mux1|Mux30~1_combout\ & (!\aluOp2[1]~5_combout\ & 
-- !\arith_logic_unity|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux30~1_combout\,
	datab => \aluOp2[1]~5_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~1_cout\,
	cout => \arith_logic_unity|LessThan0~3_cout\);

-- Location: LCCOMB_X90_Y56_N4
\arith_logic_unity|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~5_cout\ = CARRY((\aluOp2[2]~2_combout\ & ((!\arith_logic_unity|LessThan0~3_cout\) # (!\register_file|mux1|Mux29~1_combout\))) # (!\aluOp2[2]~2_combout\ & (!\register_file|mux1|Mux29~1_combout\ & 
-- !\arith_logic_unity|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[2]~2_combout\,
	datab => \register_file|mux1|Mux29~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~3_cout\,
	cout => \arith_logic_unity|LessThan0~5_cout\);

-- Location: LCCOMB_X90_Y56_N6
\arith_logic_unity|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~7_cout\ = CARRY((\aluOp2[3]~16_combout\ & (\register_file|mux1|Mux28~1_combout\ & !\arith_logic_unity|LessThan0~5_cout\)) # (!\aluOp2[3]~16_combout\ & ((\register_file|mux1|Mux28~1_combout\) # 
-- (!\arith_logic_unity|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[3]~16_combout\,
	datab => \register_file|mux1|Mux28~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~5_cout\,
	cout => \arith_logic_unity|LessThan0~7_cout\);

-- Location: LCCOMB_X90_Y56_N8
\arith_logic_unity|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~9_cout\ = CARRY((\aluOp2[4]~13_combout\ & ((!\arith_logic_unity|LessThan0~7_cout\) # (!\register_file|mux1|Mux27~1_combout\))) # (!\aluOp2[4]~13_combout\ & (!\register_file|mux1|Mux27~1_combout\ & 
-- !\arith_logic_unity|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[4]~13_combout\,
	datab => \register_file|mux1|Mux27~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~7_cout\,
	cout => \arith_logic_unity|LessThan0~9_cout\);

-- Location: LCCOMB_X90_Y56_N10
\arith_logic_unity|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~11_cout\ = CARRY((\aluOp2[5]~95_combout\ & (\register_file|mux1|Mux26~1_combout\ & !\arith_logic_unity|LessThan0~9_cout\)) # (!\aluOp2[5]~95_combout\ & ((\register_file|mux1|Mux26~1_combout\) # 
-- (!\arith_logic_unity|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[5]~95_combout\,
	datab => \register_file|mux1|Mux26~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~9_cout\,
	cout => \arith_logic_unity|LessThan0~11_cout\);

-- Location: LCCOMB_X90_Y56_N12
\arith_logic_unity|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~13_cout\ = CARRY((\register_file|mux1|Mux25~1_combout\ & (\aluOp2[6]~60_combout\ & !\arith_logic_unity|LessThan0~11_cout\)) # (!\register_file|mux1|Mux25~1_combout\ & ((\aluOp2[6]~60_combout\) # 
-- (!\arith_logic_unity|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~1_combout\,
	datab => \aluOp2[6]~60_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~11_cout\,
	cout => \arith_logic_unity|LessThan0~13_cout\);

-- Location: LCCOMB_X90_Y56_N14
\arith_logic_unity|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~15_cout\ = CARRY((\register_file|mux1|Mux24~1_combout\ & ((!\arith_logic_unity|LessThan0~13_cout\) # (!\aluOp2[7]~57_combout\))) # (!\register_file|mux1|Mux24~1_combout\ & (!\aluOp2[7]~57_combout\ & 
-- !\arith_logic_unity|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux24~1_combout\,
	datab => \aluOp2[7]~57_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~13_cout\,
	cout => \arith_logic_unity|LessThan0~15_cout\);

-- Location: LCCOMB_X90_Y56_N16
\arith_logic_unity|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~17_cout\ = CARRY((\register_file|mux1|Mux23~1_combout\ & (\aluOp2[8]~54_combout\ & !\arith_logic_unity|LessThan0~15_cout\)) # (!\register_file|mux1|Mux23~1_combout\ & ((\aluOp2[8]~54_combout\) # 
-- (!\arith_logic_unity|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux23~1_combout\,
	datab => \aluOp2[8]~54_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~15_cout\,
	cout => \arith_logic_unity|LessThan0~17_cout\);

-- Location: LCCOMB_X90_Y56_N18
\arith_logic_unity|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~19_cout\ = CARRY((\register_file|mux1|Mux22~1_combout\ & ((!\arith_logic_unity|LessThan0~17_cout\) # (!\aluOp2[9]~51_combout\))) # (!\register_file|mux1|Mux22~1_combout\ & (!\aluOp2[9]~51_combout\ & 
-- !\arith_logic_unity|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux22~1_combout\,
	datab => \aluOp2[9]~51_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~17_cout\,
	cout => \arith_logic_unity|LessThan0~19_cout\);

-- Location: LCCOMB_X90_Y56_N20
\arith_logic_unity|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~21_cout\ = CARRY((\aluOp2[10]~48_combout\ & ((!\arith_logic_unity|LessThan0~19_cout\) # (!\register_file|mux1|Mux21~1_combout\))) # (!\aluOp2[10]~48_combout\ & (!\register_file|mux1|Mux21~1_combout\ & 
-- !\arith_logic_unity|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[10]~48_combout\,
	datab => \register_file|mux1|Mux21~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~19_cout\,
	cout => \arith_logic_unity|LessThan0~21_cout\);

-- Location: LCCOMB_X90_Y56_N22
\arith_logic_unity|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~23_cout\ = CARRY((\aluOp2[11]~45_combout\ & (\register_file|mux1|Mux20~1_combout\ & !\arith_logic_unity|LessThan0~21_cout\)) # (!\aluOp2[11]~45_combout\ & ((\register_file|mux1|Mux20~1_combout\) # 
-- (!\arith_logic_unity|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[11]~45_combout\,
	datab => \register_file|mux1|Mux20~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~21_cout\,
	cout => \arith_logic_unity|LessThan0~23_cout\);

-- Location: LCCOMB_X90_Y56_N24
\arith_logic_unity|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~25_cout\ = CARRY((\aluOp2[12]~61_combout\ & ((!\arith_logic_unity|LessThan0~23_cout\) # (!\register_file|mux1|Mux19~1_combout\))) # (!\aluOp2[12]~61_combout\ & (!\register_file|mux1|Mux19~1_combout\ & 
-- !\arith_logic_unity|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[12]~61_combout\,
	datab => \register_file|mux1|Mux19~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~23_cout\,
	cout => \arith_logic_unity|LessThan0~25_cout\);

-- Location: LCCOMB_X90_Y56_N26
\arith_logic_unity|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~27_cout\ = CARRY((\aluOp2[13]~40_combout\ & (\register_file|mux1|Mux18~1_combout\ & !\arith_logic_unity|LessThan0~25_cout\)) # (!\aluOp2[13]~40_combout\ & ((\register_file|mux1|Mux18~1_combout\) # 
-- (!\arith_logic_unity|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[13]~40_combout\,
	datab => \register_file|mux1|Mux18~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~25_cout\,
	cout => \arith_logic_unity|LessThan0~27_cout\);

-- Location: LCCOMB_X90_Y56_N28
\arith_logic_unity|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~29_cout\ = CARRY((\aluOp2[14]~37_combout\ & ((!\arith_logic_unity|LessThan0~27_cout\) # (!\register_file|mux1|Mux17~1_combout\))) # (!\aluOp2[14]~37_combout\ & (!\register_file|mux1|Mux17~1_combout\ & 
-- !\arith_logic_unity|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[14]~37_combout\,
	datab => \register_file|mux1|Mux17~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~27_cout\,
	cout => \arith_logic_unity|LessThan0~29_cout\);

-- Location: LCCOMB_X90_Y56_N30
\arith_logic_unity|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~31_cout\ = CARRY((\register_file|mux1|Mux16~1_combout\ & ((!\arith_logic_unity|LessThan0~29_cout\) # (!\aluOp2[15]~34_combout\))) # (!\register_file|mux1|Mux16~1_combout\ & (!\aluOp2[15]~34_combout\ & 
-- !\arith_logic_unity|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux16~1_combout\,
	datab => \aluOp2[15]~34_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~29_cout\,
	cout => \arith_logic_unity|LessThan0~31_cout\);

-- Location: LCCOMB_X90_Y55_N0
\arith_logic_unity|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~33_cout\ = CARRY((\aluOp2[16]~31_combout\ & ((!\arith_logic_unity|LessThan0~31_cout\) # (!\register_file|mux1|Mux15~1_combout\))) # (!\aluOp2[16]~31_combout\ & (!\register_file|mux1|Mux15~1_combout\ & 
-- !\arith_logic_unity|LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[16]~31_combout\,
	datab => \register_file|mux1|Mux15~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~31_cout\,
	cout => \arith_logic_unity|LessThan0~33_cout\);

-- Location: LCCOMB_X90_Y55_N2
\arith_logic_unity|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~35_cout\ = CARRY((\aluOp2[17]~28_combout\ & (\register_file|mux1|Mux14~1_combout\ & !\arith_logic_unity|LessThan0~33_cout\)) # (!\aluOp2[17]~28_combout\ & ((\register_file|mux1|Mux14~1_combout\) # 
-- (!\arith_logic_unity|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[17]~28_combout\,
	datab => \register_file|mux1|Mux14~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~33_cout\,
	cout => \arith_logic_unity|LessThan0~35_cout\);

-- Location: LCCOMB_X90_Y55_N4
\arith_logic_unity|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~37_cout\ = CARRY((\register_file|mux1|Mux13~1_combout\ & (\aluOp2[18]~25_combout\ & !\arith_logic_unity|LessThan0~35_cout\)) # (!\register_file|mux1|Mux13~1_combout\ & ((\aluOp2[18]~25_combout\) # 
-- (!\arith_logic_unity|LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux13~1_combout\,
	datab => \aluOp2[18]~25_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~35_cout\,
	cout => \arith_logic_unity|LessThan0~37_cout\);

-- Location: LCCOMB_X90_Y55_N6
\arith_logic_unity|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~39_cout\ = CARRY((\aluOp2[19]~22_combout\ & (\register_file|mux1|Mux12~1_combout\ & !\arith_logic_unity|LessThan0~37_cout\)) # (!\aluOp2[19]~22_combout\ & ((\register_file|mux1|Mux12~1_combout\) # 
-- (!\arith_logic_unity|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[19]~22_combout\,
	datab => \register_file|mux1|Mux12~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~37_cout\,
	cout => \arith_logic_unity|LessThan0~39_cout\);

-- Location: LCCOMB_X90_Y55_N8
\arith_logic_unity|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~41_cout\ = CARRY((\aluOp2[20]~19_combout\ & ((!\arith_logic_unity|LessThan0~39_cout\) # (!\register_file|mux1|Mux11~1_combout\))) # (!\aluOp2[20]~19_combout\ & (!\register_file|mux1|Mux11~1_combout\ & 
-- !\arith_logic_unity|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[20]~19_combout\,
	datab => \register_file|mux1|Mux11~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~39_cout\,
	cout => \arith_logic_unity|LessThan0~41_cout\);

-- Location: LCCOMB_X90_Y55_N10
\arith_logic_unity|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~43_cout\ = CARRY((\aluOp2[21]~88_combout\ & (\register_file|mux1|Mux10~1_combout\ & !\arith_logic_unity|LessThan0~41_cout\)) # (!\aluOp2[21]~88_combout\ & ((\register_file|mux1|Mux10~1_combout\) # 
-- (!\arith_logic_unity|LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[21]~88_combout\,
	datab => \register_file|mux1|Mux10~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~41_cout\,
	cout => \arith_logic_unity|LessThan0~43_cout\);

-- Location: LCCOMB_X90_Y55_N12
\arith_logic_unity|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~45_cout\ = CARRY((\register_file|mux1|Mux9~1_combout\ & (\aluOp2[22]~85_combout\ & !\arith_logic_unity|LessThan0~43_cout\)) # (!\register_file|mux1|Mux9~1_combout\ & ((\aluOp2[22]~85_combout\) # 
-- (!\arith_logic_unity|LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux9~1_combout\,
	datab => \aluOp2[22]~85_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~43_cout\,
	cout => \arith_logic_unity|LessThan0~45_cout\);

-- Location: LCCOMB_X90_Y55_N14
\arith_logic_unity|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~47_cout\ = CARRY((\aluOp2[23]~82_combout\ & (\register_file|mux1|Mux8~1_combout\ & !\arith_logic_unity|LessThan0~45_cout\)) # (!\aluOp2[23]~82_combout\ & ((\register_file|mux1|Mux8~1_combout\) # 
-- (!\arith_logic_unity|LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[23]~82_combout\,
	datab => \register_file|mux1|Mux8~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~45_cout\,
	cout => \arith_logic_unity|LessThan0~47_cout\);

-- Location: LCCOMB_X90_Y55_N16
\arith_logic_unity|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~49_cout\ = CARRY((\aluOp2[24]~79_combout\ & ((!\arith_logic_unity|LessThan0~47_cout\) # (!\register_file|mux1|Mux7~1_combout\))) # (!\aluOp2[24]~79_combout\ & (!\register_file|mux1|Mux7~1_combout\ & 
-- !\arith_logic_unity|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[24]~79_combout\,
	datab => \register_file|mux1|Mux7~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~47_cout\,
	cout => \arith_logic_unity|LessThan0~49_cout\);

-- Location: LCCOMB_X90_Y55_N18
\arith_logic_unity|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~51_cout\ = CARRY((\aluOp2[25]~76_combout\ & (\register_file|mux1|Mux6~1_combout\ & !\arith_logic_unity|LessThan0~49_cout\)) # (!\aluOp2[25]~76_combout\ & ((\register_file|mux1|Mux6~1_combout\) # 
-- (!\arith_logic_unity|LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[25]~76_combout\,
	datab => \register_file|mux1|Mux6~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~49_cout\,
	cout => \arith_logic_unity|LessThan0~51_cout\);

-- Location: LCCOMB_X90_Y55_N20
\arith_logic_unity|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~53_cout\ = CARRY((\register_file|mux1|Mux5~1_combout\ & (\aluOp2[26]~73_combout\ & !\arith_logic_unity|LessThan0~51_cout\)) # (!\register_file|mux1|Mux5~1_combout\ & ((\aluOp2[26]~73_combout\) # 
-- (!\arith_logic_unity|LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux5~1_combout\,
	datab => \aluOp2[26]~73_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~51_cout\,
	cout => \arith_logic_unity|LessThan0~53_cout\);

-- Location: LCCOMB_X90_Y55_N22
\arith_logic_unity|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~55_cout\ = CARRY((\aluOp2[27]~70_combout\ & (\register_file|mux1|Mux4~1_combout\ & !\arith_logic_unity|LessThan0~53_cout\)) # (!\aluOp2[27]~70_combout\ & ((\register_file|mux1|Mux4~1_combout\) # 
-- (!\arith_logic_unity|LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[27]~70_combout\,
	datab => \register_file|mux1|Mux4~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~53_cout\,
	cout => \arith_logic_unity|LessThan0~55_cout\);

-- Location: LCCOMB_X90_Y55_N24
\arith_logic_unity|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~57_cout\ = CARRY((\aluOp2[28]~67_combout\ & ((!\arith_logic_unity|LessThan0~55_cout\) # (!\register_file|mux1|Mux3~1_combout\))) # (!\aluOp2[28]~67_combout\ & (!\register_file|mux1|Mux3~1_combout\ & 
-- !\arith_logic_unity|LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[28]~67_combout\,
	datab => \register_file|mux1|Mux3~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~55_cout\,
	cout => \arith_logic_unity|LessThan0~57_cout\);

-- Location: LCCOMB_X90_Y55_N26
\arith_logic_unity|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~59_cout\ = CARRY((\register_file|mux1|Mux2~1_combout\ & ((!\arith_logic_unity|LessThan0~57_cout\) # (!\aluOp2[29]~64_combout\))) # (!\register_file|mux1|Mux2~1_combout\ & (!\aluOp2[29]~64_combout\ & 
-- !\arith_logic_unity|LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux2~1_combout\,
	datab => \aluOp2[29]~64_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~57_cout\,
	cout => \arith_logic_unity|LessThan0~59_cout\);

-- Location: LCCOMB_X90_Y55_N28
\arith_logic_unity|LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~61_cout\ = CARRY((\aluOp2[30]~91_combout\ & ((!\arith_logic_unity|LessThan0~59_cout\) # (!\register_file|mux1|Mux1~1_combout\))) # (!\aluOp2[30]~91_combout\ & (!\register_file|mux1|Mux1~1_combout\ & 
-- !\arith_logic_unity|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluOp2[30]~91_combout\,
	datab => \register_file|mux1|Mux1~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|LessThan0~59_cout\,
	cout => \arith_logic_unity|LessThan0~61_cout\);

-- Location: LCCOMB_X90_Y55_N30
\arith_logic_unity|LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~62_combout\ = (\aluOp2[31]~94_combout\ & ((\arith_logic_unity|LessThan0~61_cout\) # (!\register_file|mux1|Mux0~1_combout\))) # (!\aluOp2[31]~94_combout\ & (\arith_logic_unity|LessThan0~61_cout\ & 
-- !\register_file|mux1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aluOp2[31]~94_combout\,
	datad => \register_file|mux1|Mux0~1_combout\,
	cin => \arith_logic_unity|LessThan0~61_cout\,
	combout => \arith_logic_unity|LessThan0~62_combout\);

-- Location: LCCOMB_X91_Y55_N10
\arith_logic_unity|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~2_combout\ = (\control|aluControl[1]~2_combout\ & ((\arith_logic_unity|Mux31~3_combout\ & ((\arith_logic_unity|LessThan0~62_combout\))) # (!\arith_logic_unity|Mux31~3_combout\ & (\arith_logic_unity|Add0~5_combout\)))) # 
-- (!\control|aluControl[1]~2_combout\ & (((\arith_logic_unity|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~5_combout\,
	datab => \control|aluControl[1]~2_combout\,
	datac => \arith_logic_unity|Mux31~3_combout\,
	datad => \arith_logic_unity|LessThan0~62_combout\,
	combout => \arith_logic_unity|Mux31~2_combout\);

-- Location: LCCOMB_X91_Y57_N12
\write_data[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[0]~2_combout\ = (\instruction_memory|Mux4~0_combout\ & (((\arith_logic_unity|Mux31~2_combout\)))) # (!\instruction_memory|Mux4~0_combout\ & ((\branch_or_next~88_combout\) # ((!\arith_logic_unity|Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \branch_or_next~88_combout\,
	datac => \arith_logic_unity|Mux31~2_combout\,
	datad => \arith_logic_unity|Mux29~5_combout\,
	combout => \write_data[0]~2_combout\);

-- Location: LCCOMB_X90_Y52_N24
\register_file|registers:0:regx|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:0:regx|Q[0]~feeder_combout\ = \write_data[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[0]~2_combout\,
	combout => \register_file|registers:0:regx|Q[0]~feeder_combout\);

-- Location: FF_X90_Y52_N25
\register_file|registers:0:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	d => \register_file|registers:0:regx|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(0));

-- Location: LCCOMB_X90_Y52_N2
\register_file|mux1|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux31~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(0))) # (!\instruction_memory|Mux6~0_combout\))) # (!\instruction_memory|Mux10~0_combout\ & (\instruction_memory|Mux6~0_combout\ & 
-- (\register_file|registers:1:regx|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:1:regx|Q\(0),
	datad => \register_file|registers:3:regx|Q\(0),
	combout => \register_file|mux1|Mux31~0_combout\);

-- Location: LCCOMB_X90_Y52_N4
\register_file|mux1|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux31~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|mux1|Mux31~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux31~0_combout\ & ((\register_file|registers:2:regx|Q\(0)))) # 
-- (!\register_file|mux1|Mux31~0_combout\ & (\register_file|registers:0:regx|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:0:regx|Q\(0),
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:2:regx|Q\(0),
	datad => \register_file|mux1|Mux31~0_combout\,
	combout => \register_file|mux1|Mux31~1_combout\);

-- Location: LCCOMB_X91_Y55_N20
\arith_logic_unity|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~7_combout\ = ((\register_file|mux1|Mux30~1_combout\ $ (\arith_logic_unity|Add0~1_combout\ $ (!\arith_logic_unity|Add0~6\)))) # (GND)
-- \arith_logic_unity|Add0~8\ = CARRY((\register_file|mux1|Mux30~1_combout\ & ((\arith_logic_unity|Add0~1_combout\) # (!\arith_logic_unity|Add0~6\))) # (!\register_file|mux1|Mux30~1_combout\ & (\arith_logic_unity|Add0~1_combout\ & 
-- !\arith_logic_unity|Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux30~1_combout\,
	datab => \arith_logic_unity|Add0~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~6\,
	combout => \arith_logic_unity|Add0~7_combout\,
	cout => \arith_logic_unity|Add0~8\);

-- Location: LCCOMB_X91_Y57_N28
\arith_logic_unity|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux30~5_combout\ = (\arith_logic_unity|Add0~7_combout\ & (!\PC|Q\(5) & !\PC|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~7_combout\,
	datac => \PC|Q\(5),
	datad => \PC|Q\(4),
	combout => \arith_logic_unity|Mux30~5_combout\);

-- Location: LCCOMB_X91_Y57_N24
\data_memory|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux1~0_combout\ = (\arith_logic_unity|Mux26~5_combout\) # ((\arith_logic_unity|Mux27~5_combout\) # (\arith_logic_unity|Mux28~5_combout\ $ (\arith_logic_unity|Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux28~5_combout\,
	datab => \arith_logic_unity|Mux26~5_combout\,
	datac => \arith_logic_unity|Mux29~5_combout\,
	datad => \arith_logic_unity|Mux27~5_combout\,
	combout => \data_memory|Mux1~0_combout\);

-- Location: LCCOMB_X91_Y57_N22
\write_data[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[1]~1_combout\ = (\instruction_memory|Mux4~0_combout\ & (\arith_logic_unity|Mux30~5_combout\)) # (!\instruction_memory|Mux4~0_combout\ & ((\data_memory|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux30~5_combout\,
	datab => \data_memory|Mux1~0_combout\,
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[1]~1_combout\);

-- Location: FF_X88_Y55_N9
\register_file|registers:0:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(1));

-- Location: LCCOMB_X88_Y55_N16
\register_file|mux1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux30~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(1)) # (!\instruction_memory|Mux6~0_combout\)))) # (!\instruction_memory|Mux10~0_combout\ & (\register_file|registers:1:regx|Q\(1) & 
-- (\instruction_memory|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \register_file|registers:1:regx|Q\(1),
	datac => \instruction_memory|Mux6~0_combout\,
	datad => \register_file|registers:3:regx|Q\(1),
	combout => \register_file|mux1|Mux30~0_combout\);

-- Location: LCCOMB_X87_Y55_N24
\register_file|mux1|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux30~1_combout\ = (\instruction_memory|Mux6~0_combout\ & (((\register_file|mux1|Mux30~0_combout\)))) # (!\instruction_memory|Mux6~0_combout\ & ((\register_file|mux1|Mux30~0_combout\ & ((\register_file|registers:2:regx|Q\(1)))) # 
-- (!\register_file|mux1|Mux30~0_combout\ & (\register_file|registers:0:regx|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \register_file|registers:0:regx|Q\(1),
	datac => \register_file|registers:2:regx|Q\(1),
	datad => \register_file|mux1|Mux30~0_combout\,
	combout => \register_file|mux1|Mux30~1_combout\);

-- Location: LCCOMB_X91_Y55_N22
\arith_logic_unity|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~9_combout\ = (\arith_logic_unity|Add0~0_combout\ & ((\register_file|mux1|Mux29~1_combout\ & (\arith_logic_unity|Add0~8\ & VCC)) # (!\register_file|mux1|Mux29~1_combout\ & (!\arith_logic_unity|Add0~8\)))) # 
-- (!\arith_logic_unity|Add0~0_combout\ & ((\register_file|mux1|Mux29~1_combout\ & (!\arith_logic_unity|Add0~8\)) # (!\register_file|mux1|Mux29~1_combout\ & ((\arith_logic_unity|Add0~8\) # (GND)))))
-- \arith_logic_unity|Add0~10\ = CARRY((\arith_logic_unity|Add0~0_combout\ & (!\register_file|mux1|Mux29~1_combout\ & !\arith_logic_unity|Add0~8\)) # (!\arith_logic_unity|Add0~0_combout\ & ((!\arith_logic_unity|Add0~8\) # 
-- (!\register_file|mux1|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~0_combout\,
	datab => \register_file|mux1|Mux29~1_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~8\,
	combout => \arith_logic_unity|Add0~9_combout\,
	cout => \arith_logic_unity|Add0~10\);

-- Location: LCCOMB_X91_Y55_N24
\arith_logic_unity|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~14_combout\ = ((\register_file|mux1|Mux28~1_combout\ $ (\arith_logic_unity|Add0~13_combout\ $ (!\arith_logic_unity|Add0~10\)))) # (GND)
-- \arith_logic_unity|Add0~15\ = CARRY((\register_file|mux1|Mux28~1_combout\ & ((\arith_logic_unity|Add0~13_combout\) # (!\arith_logic_unity|Add0~10\))) # (!\register_file|mux1|Mux28~1_combout\ & (\arith_logic_unity|Add0~13_combout\ & 
-- !\arith_logic_unity|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux28~1_combout\,
	datab => \arith_logic_unity|Add0~13_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~10\,
	combout => \arith_logic_unity|Add0~14_combout\,
	cout => \arith_logic_unity|Add0~15\);

-- Location: LCCOMB_X91_Y57_N30
\arith_logic_unity|Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux28~5_combout\ = (!\PC|Q\(4) & (\arith_logic_unity|Add0~14_combout\ & !\PC|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \arith_logic_unity|Add0~14_combout\,
	datac => \PC|Q\(5),
	combout => \arith_logic_unity|Mux28~5_combout\);

-- Location: LCCOMB_X91_Y57_N14
\write_data[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[3]~5_combout\ = (\instruction_memory|Mux4~0_combout\ & (((\arith_logic_unity|Mux28~5_combout\)))) # (!\instruction_memory|Mux4~0_combout\ & ((\arith_logic_unity|Mux26~5_combout\) # ((\arith_logic_unity|Mux27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux26~5_combout\,
	datab => \arith_logic_unity|Mux27~5_combout\,
	datac => \arith_logic_unity|Mux28~5_combout\,
	datad => \instruction_memory|Mux4~0_combout\,
	combout => \write_data[3]~5_combout\);

-- Location: LCCOMB_X89_Y55_N18
\register_file|registers:3:regx|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:3:regx|Q[3]~feeder_combout\ = \write_data[3]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[3]~5_combout\,
	combout => \register_file|registers:3:regx|Q[3]~feeder_combout\);

-- Location: FF_X89_Y55_N19
\register_file|registers:3:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	d => \register_file|registers:3:regx|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(3));

-- Location: LCCOMB_X89_Y54_N10
\register_file|mux1|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux28~0_combout\ = (\instruction_memory|Mux6~0_combout\ & (!\instruction_memory|Mux10~0_combout\ & (\register_file|registers:1:regx|Q\(3)))) # (!\instruction_memory|Mux6~0_combout\ & ((\instruction_memory|Mux10~0_combout\) # 
-- ((\register_file|registers:0:regx|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux6~0_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datac => \register_file|registers:1:regx|Q\(3),
	datad => \register_file|registers:0:regx|Q\(3),
	combout => \register_file|mux1|Mux28~0_combout\);

-- Location: LCCOMB_X89_Y55_N22
\register_file|mux1|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux28~1_combout\ = (\instruction_memory|Mux10~0_combout\ & ((\register_file|mux1|Mux28~0_combout\ & ((\register_file|registers:2:regx|Q\(3)))) # (!\register_file|mux1|Mux28~0_combout\ & (\register_file|registers:3:regx|Q\(3))))) # 
-- (!\instruction_memory|Mux10~0_combout\ & (((\register_file|mux1|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \register_file|registers:3:regx|Q\(3),
	datac => \register_file|registers:2:regx|Q\(3),
	datad => \register_file|mux1|Mux28~0_combout\,
	combout => \register_file|mux1|Mux28~1_combout\);

-- Location: LCCOMB_X91_Y55_N26
\arith_logic_unity|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~16_combout\ = (\register_file|mux1|Mux27~1_combout\ & ((\arith_logic_unity|Add0~12_combout\ & (\arith_logic_unity|Add0~15\ & VCC)) # (!\arith_logic_unity|Add0~12_combout\ & (!\arith_logic_unity|Add0~15\)))) # 
-- (!\register_file|mux1|Mux27~1_combout\ & ((\arith_logic_unity|Add0~12_combout\ & (!\arith_logic_unity|Add0~15\)) # (!\arith_logic_unity|Add0~12_combout\ & ((\arith_logic_unity|Add0~15\) # (GND)))))
-- \arith_logic_unity|Add0~17\ = CARRY((\register_file|mux1|Mux27~1_combout\ & (!\arith_logic_unity|Add0~12_combout\ & !\arith_logic_unity|Add0~15\)) # (!\register_file|mux1|Mux27~1_combout\ & ((!\arith_logic_unity|Add0~15\) # 
-- (!\arith_logic_unity|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux27~1_combout\,
	datab => \arith_logic_unity|Add0~12_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~15\,
	combout => \arith_logic_unity|Add0~16_combout\,
	cout => \arith_logic_unity|Add0~17\);

-- Location: LCCOMB_X91_Y57_N6
\arith_logic_unity|Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux27~5_combout\ = (!\PC|Q\(5) & (\arith_logic_unity|Add0~16_combout\ & !\PC|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datac => \arith_logic_unity|Add0~16_combout\,
	datad => \PC|Q\(4),
	combout => \arith_logic_unity|Mux27~5_combout\);

-- Location: LCCOMB_X88_Y55_N8
\write_data[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[4]~4_combout\ = (\instruction_memory|Mux4~0_combout\ & \arith_logic_unity|Mux27~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux4~0_combout\,
	datab => \arith_logic_unity|Mux27~5_combout\,
	combout => \write_data[4]~4_combout\);

-- Location: FF_X89_Y55_N13
\register_file|registers:3:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[3]~clkctrl_outclk\,
	asdata => \write_data[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:3:regx|Q\(4));

-- Location: LCCOMB_X89_Y55_N12
\register_file|mux1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux27~0_combout\ = (\instruction_memory|Mux10~0_combout\ & (((\register_file|registers:3:regx|Q\(4))) # (!\instruction_memory|Mux6~0_combout\))) # (!\instruction_memory|Mux10~0_combout\ & (\instruction_memory|Mux6~0_combout\ & 
-- ((\register_file|registers:1:regx|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:3:regx|Q\(4),
	datad => \register_file|registers:1:regx|Q\(4),
	combout => \register_file|mux1|Mux27~0_combout\);

-- Location: LCCOMB_X89_Y55_N8
\register_file|mux1|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux27~1_combout\ = (\register_file|mux1|Mux27~0_combout\ & ((\instruction_memory|Mux6~0_combout\) # ((\register_file|registers:2:regx|Q\(4))))) # (!\register_file|mux1|Mux27~0_combout\ & (!\instruction_memory|Mux6~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux27~0_combout\,
	datab => \instruction_memory|Mux6~0_combout\,
	datac => \register_file|registers:2:regx|Q\(4),
	datad => \register_file|registers:0:regx|Q\(4),
	combout => \register_file|mux1|Mux27~1_combout\);

-- Location: LCCOMB_X91_Y57_N8
\branch_or_next~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~6_combout\ = (!\arith_logic_unity|Add0~39_combout\ & (!\arith_logic_unity|Add0~9_combout\ & (!\arith_logic_unity|Add0~37_combout\ & !\arith_logic_unity|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~39_combout\,
	datab => \arith_logic_unity|Add0~9_combout\,
	datac => \arith_logic_unity|Add0~37_combout\,
	datad => \arith_logic_unity|Add0~14_combout\,
	combout => \branch_or_next~6_combout\);

-- Location: LCCOMB_X91_Y57_N10
\branch_or_next~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~3_combout\ = (!\arith_logic_unity|Add0~7_combout\ & (!\arith_logic_unity|Add0~16_combout\ & (\branch_or_next~6_combout\ & !\arith_logic_unity|Add0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~7_combout\,
	datab => \arith_logic_unity|Add0~16_combout\,
	datac => \branch_or_next~6_combout\,
	datad => \arith_logic_unity|Add0~63_combout\,
	combout => \branch_or_next~3_combout\);

-- Location: LCCOMB_X91_Y57_N0
\branch_or_next~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~83_combout\ = (\PC|Q\(5)) # ((\PC|Q\(4)) # ((!\arith_logic_unity|Add0~18_combout\ & \branch_or_next~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \arith_logic_unity|Add0~18_combout\,
	datad => \branch_or_next~3_combout\,
	combout => \branch_or_next~83_combout\);

-- Location: LCCOMB_X92_Y54_N18
\branch_or_next~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~25_combout\ = (!\arith_logic_unity|Add0~45_combout\ & (!\arith_logic_unity|Add0~43_combout\ & !\arith_logic_unity|Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arith_logic_unity|Add0~45_combout\,
	datac => \arith_logic_unity|Add0~43_combout\,
	datad => \arith_logic_unity|Add0~47_combout\,
	combout => \branch_or_next~25_combout\);

-- Location: LCCOMB_X92_Y54_N8
\branch_or_next~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~84_combout\ = (\PC|Q\(4)) # ((\PC|Q\(5)) # ((!\arith_logic_unity|Add0~41_combout\ & \branch_or_next~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \arith_logic_unity|Add0~41_combout\,
	datad => \branch_or_next~25_combout\,
	combout => \branch_or_next~84_combout\);

-- Location: LCCOMB_X92_Y54_N26
\branch_or_next~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~37_combout\ = (!\arith_logic_unity|Add0~51_combout\ & (!\arith_logic_unity|Add0~53_combout\ & !\arith_logic_unity|Add0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~51_combout\,
	datac => \arith_logic_unity|Add0~53_combout\,
	datad => \arith_logic_unity|Add0~55_combout\,
	combout => \branch_or_next~37_combout\);

-- Location: LCCOMB_X92_Y54_N4
\branch_or_next~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~85_combout\ = (\PC|Q\(5)) # ((\PC|Q\(4)) # ((\branch_or_next~37_combout\ & !\arith_logic_unity|Add0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \PC|Q\(4),
	datac => \branch_or_next~37_combout\,
	datad => \arith_logic_unity|Add0~49_combout\,
	combout => \branch_or_next~85_combout\);

-- Location: LCCOMB_X91_Y55_N14
\branch_or_next~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~61_combout\ = (!\arith_logic_unity|Add0~35_combout\ & (!\arith_logic_unity|Add0~61_combout\ & !\arith_logic_unity|Add0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~35_combout\,
	datac => \arith_logic_unity|Add0~61_combout\,
	datad => \arith_logic_unity|Add0~59_combout\,
	combout => \branch_or_next~61_combout\);

-- Location: LCCOMB_X92_Y55_N2
\branch_or_next~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~87_combout\ = (\PC|Q\(4)) # ((\PC|Q\(5)) # ((!\arith_logic_unity|Add0~57_combout\ & \branch_or_next~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \arith_logic_unity|Add0~57_combout\,
	datad => \branch_or_next~61_combout\,
	combout => \branch_or_next~87_combout\);

-- Location: LCCOMB_X92_Y55_N8
\branch_or_next~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~78_combout\ = (\instruction_memory|Mux10~1_combout\ & (\PC|Q\(3) & (!\PC|Q\(2) & \branch_or_next~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \PC|Q\(3),
	datac => \PC|Q\(2),
	datad => \branch_or_next~87_combout\,
	combout => \branch_or_next~78_combout\);

-- Location: LCCOMB_X92_Y54_N2
\branch_or_next~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~49_combout\ = (!\arith_logic_unity|Add0~76_combout\ & (!\arith_logic_unity|Add0~78_combout\ & !\arith_logic_unity|Add0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arith_logic_unity|Add0~76_combout\,
	datac => \arith_logic_unity|Add0~78_combout\,
	datad => \arith_logic_unity|Add0~80_combout\,
	combout => \branch_or_next~49_combout\);

-- Location: LCCOMB_X92_Y54_N0
\branch_or_next~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~86_combout\ = (\PC|Q\(5)) # ((\PC|Q\(4)) # ((!\arith_logic_unity|Add0~74_combout\ & \branch_or_next~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(5),
	datab => \arith_logic_unity|Add0~74_combout\,
	datac => \PC|Q\(4),
	datad => \branch_or_next~49_combout\,
	combout => \branch_or_next~86_combout\);

-- Location: LCCOMB_X92_Y55_N10
\branch_or_next~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~79_combout\ = (!\arith_logic_unity|Mux5~5_combout\ & (!\arith_logic_unity|Mux6~5_combout\ & (\branch_or_next~78_combout\ & \branch_or_next~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux5~5_combout\,
	datab => \arith_logic_unity|Mux6~5_combout\,
	datac => \branch_or_next~78_combout\,
	datad => \branch_or_next~86_combout\,
	combout => \branch_or_next~79_combout\);

-- Location: LCCOMB_X92_Y55_N28
\branch_or_next~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~80_combout\ = (!\arith_logic_unity|Mux4~5_combout\ & (!\arith_logic_unity|Mux31~2_combout\ & (!\arith_logic_unity|Mux3~5_combout\ & \branch_or_next~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux4~5_combout\,
	datab => \arith_logic_unity|Mux31~2_combout\,
	datac => \arith_logic_unity|Mux3~5_combout\,
	datad => \branch_or_next~79_combout\,
	combout => \branch_or_next~80_combout\);

-- Location: LCCOMB_X92_Y55_N18
\branch_or_next~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~81_combout\ = (!\arith_logic_unity|Mux2~5_combout\ & (!\arith_logic_unity|Mux1~5_combout\ & (!\arith_logic_unity|Mux0~5_combout\ & \branch_or_next~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux2~5_combout\,
	datab => \arith_logic_unity|Mux1~5_combout\,
	datac => \arith_logic_unity|Mux0~5_combout\,
	datad => \branch_or_next~80_combout\,
	combout => \branch_or_next~81_combout\);

-- Location: LCCOMB_X92_Y55_N24
\branch_or_next~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~82_combout\ = (\branch_or_next~83_combout\ & (\branch_or_next~84_combout\ & (\branch_or_next~85_combout\ & \branch_or_next~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~83_combout\,
	datab => \branch_or_next~84_combout\,
	datac => \branch_or_next~85_combout\,
	datad => \branch_or_next~81_combout\,
	combout => \branch_or_next~82_combout\);

-- Location: LCCOMB_X94_Y55_N22
\PC|Q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q[2]~0_combout\ = (\branch_or_next~82_combout\ & (\branch_address[2]~0_combout\)) # (!\branch_or_next~82_combout\ & ((\pc_incremented[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[2]~0_combout\,
	datab => \pc_incremented[2]~0_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \PC|Q[2]~0_combout\);

-- Location: FF_X94_Y55_N23
\PC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q[2]~0_combout\,
	asdata => \instruction_memory|Mux13~0_combout\,
	sload => \instruction_memory|ALT_INV_Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(2));

-- Location: LCCOMB_X94_Y55_N24
\instruction_memory|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux11~0_combout\ = (\PC|Q\(5)) # ((\PC|Q\(4) & ((\PC|Q\(3)) # (\PC|Q\(2)))) # (!\PC|Q\(4) & (\PC|Q\(3) & \PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(3),
	datad => \PC|Q\(2),
	combout => \instruction_memory|Mux11~0_combout\);

-- Location: LCCOMB_X97_Y56_N4
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

-- Location: LCCOMB_X95_Y56_N4
\branch_address[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[3]~2_combout\ = (\instruction_memory|Mux12~0_combout\ & ((\pc_incremented[3]~2_combout\ & (\branch_address[2]~1\ & VCC)) # (!\pc_incremented[3]~2_combout\ & (!\branch_address[2]~1\)))) # (!\instruction_memory|Mux12~0_combout\ & 
-- ((\pc_incremented[3]~2_combout\ & (!\branch_address[2]~1\)) # (!\pc_incremented[3]~2_combout\ & ((\branch_address[2]~1\) # (GND)))))
-- \branch_address[3]~3\ = CARRY((\instruction_memory|Mux12~0_combout\ & (!\pc_incremented[3]~2_combout\ & !\branch_address[2]~1\)) # (!\instruction_memory|Mux12~0_combout\ & ((!\branch_address[2]~1\) # (!\pc_incremented[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux12~0_combout\,
	datab => \pc_incremented[3]~2_combout\,
	datad => VCC,
	cin => \branch_address[2]~1\,
	combout => \branch_address[3]~2_combout\,
	cout => \branch_address[3]~3\);

-- Location: LCCOMB_X95_Y56_N6
\branch_address[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[4]~4_combout\ = ((\pc_incremented[4]~4_combout\ $ (\instruction_memory|Mux11~0_combout\ $ (!\branch_address[3]~3\)))) # (GND)
-- \branch_address[4]~5\ = CARRY((\pc_incremented[4]~4_combout\ & ((\instruction_memory|Mux11~0_combout\) # (!\branch_address[3]~3\))) # (!\pc_incremented[4]~4_combout\ & (\instruction_memory|Mux11~0_combout\ & !\branch_address[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[4]~4_combout\,
	datab => \instruction_memory|Mux11~0_combout\,
	datad => VCC,
	cin => \branch_address[3]~3\,
	combout => \branch_address[4]~4_combout\,
	cout => \branch_address[4]~5\);

-- Location: LCCOMB_X95_Y56_N8
\branch_address[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[5]~6_combout\ = (\pc_incremented[5]~6_combout\ & (!\branch_address[4]~5\)) # (!\pc_incremented[5]~6_combout\ & ((\branch_address[4]~5\) # (GND)))
-- \branch_address[5]~7\ = CARRY((!\branch_address[4]~5\) # (!\pc_incremented[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[5]~6_combout\,
	datad => VCC,
	cin => \branch_address[4]~5\,
	combout => \branch_address[5]~6_combout\,
	cout => \branch_address[5]~7\);

-- Location: LCCOMB_X94_Y55_N30
\pc_in[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[5]~0_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[5]~6_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[5]~6_combout\,
	datab => \instruction_memory|Mux10~1_combout\,
	datac => \branch_address[5]~6_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[5]~0_combout\);

-- Location: FF_X94_Y55_N31
\PC|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(5));

-- Location: LCCOMB_X94_Y55_N28
\instruction_memory|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux12~0_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & (\PC|Q\(3) $ (\PC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(4),
	datab => \PC|Q\(5),
	datac => \PC|Q\(3),
	datad => \PC|Q\(2),
	combout => \instruction_memory|Mux12~0_combout\);

-- Location: LCCOMB_X94_Y55_N0
\PC|Q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q[3]~1_combout\ = (\branch_or_next~82_combout\ & (\branch_address[3]~2_combout\)) # (!\branch_or_next~82_combout\ & ((\pc_incremented[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[3]~2_combout\,
	datab => \pc_incremented[3]~2_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \PC|Q[3]~1_combout\);

-- Location: FF_X94_Y55_N1
\PC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q[3]~1_combout\,
	asdata => \instruction_memory|Mux12~0_combout\,
	sload => \instruction_memory|ALT_INV_Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(3));

-- Location: LCCOMB_X94_Y55_N12
\PC|Q[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q[4]~2_combout\ = (\branch_or_next~82_combout\ & (\branch_address[4]~4_combout\)) # (!\branch_or_next~82_combout\ & ((\pc_incremented[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[4]~4_combout\,
	datab => \pc_incremented[4]~4_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \PC|Q[4]~2_combout\);

-- Location: FF_X94_Y55_N13
\PC|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q[4]~2_combout\,
	asdata => \instruction_memory|Mux11~0_combout\,
	sload => \instruction_memory|ALT_INV_Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(4));

-- Location: LCCOMB_X91_Y57_N26
\arith_logic_unity|Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux29~5_combout\ = (!\PC|Q\(4) & (!\PC|Q\(5) & \arith_logic_unity|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|Q\(4),
	datac => \PC|Q\(5),
	datad => \arith_logic_unity|Add0~9_combout\,
	combout => \arith_logic_unity|Mux29~5_combout\);

-- Location: LCCOMB_X88_Y55_N0
\data_memory|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|Mux2~0_combout\ = ((\arith_logic_unity|Mux27~5_combout\) # (\arith_logic_unity|Mux26~5_combout\)) # (!\arith_logic_unity|Mux29~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux29~5_combout\,
	datab => \arith_logic_unity|Mux27~5_combout\,
	datad => \arith_logic_unity|Mux26~5_combout\,
	combout => \data_memory|Mux2~0_combout\);

-- Location: LCCOMB_X97_Y56_N10
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

-- Location: LCCOMB_X95_Y56_N10
\branch_address[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[6]~8_combout\ = (\pc_incremented[6]~8_combout\ & (\branch_address[5]~7\ $ (GND))) # (!\pc_incremented[6]~8_combout\ & (!\branch_address[5]~7\ & VCC))
-- \branch_address[6]~9\ = CARRY((\pc_incremented[6]~8_combout\ & !\branch_address[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[6]~8_combout\,
	datad => VCC,
	cin => \branch_address[5]~7\,
	combout => \branch_address[6]~8_combout\,
	cout => \branch_address[6]~9\);

-- Location: LCCOMB_X92_Y55_N20
\pc_in[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[6]~1_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[6]~8_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \pc_incremented[6]~8_combout\,
	datac => \branch_address[6]~8_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[6]~1_combout\);

-- Location: FF_X92_Y55_N21
\PC|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(6));

-- Location: LCCOMB_X97_Y56_N12
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

-- Location: LCCOMB_X95_Y56_N12
\branch_address[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[7]~10_combout\ = (\instruction_memory|Mux10~0_combout\ & ((\pc_incremented[7]~10_combout\ & (\branch_address[6]~9\ & VCC)) # (!\pc_incremented[7]~10_combout\ & (!\branch_address[6]~9\)))) # (!\instruction_memory|Mux10~0_combout\ & 
-- ((\pc_incremented[7]~10_combout\ & (!\branch_address[6]~9\)) # (!\pc_incremented[7]~10_combout\ & ((\branch_address[6]~9\) # (GND)))))
-- \branch_address[7]~11\ = CARRY((\instruction_memory|Mux10~0_combout\ & (!\pc_incremented[7]~10_combout\ & !\branch_address[6]~9\)) # (!\instruction_memory|Mux10~0_combout\ & ((!\branch_address[6]~9\) # (!\pc_incremented[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~0_combout\,
	datab => \pc_incremented[7]~10_combout\,
	datad => VCC,
	cin => \branch_address[6]~9\,
	combout => \branch_address[7]~10_combout\,
	cout => \branch_address[7]~11\);

-- Location: LCCOMB_X96_Y55_N4
\pc_in[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[7]~2_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[7]~10_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[7]~10_combout\,
	datab => \branch_address[7]~10_combout\,
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[7]~2_combout\);

-- Location: FF_X96_Y55_N5
\PC|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(7));

-- Location: LCCOMB_X97_Y56_N14
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

-- Location: LCCOMB_X95_Y56_N14
\branch_address[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[8]~12_combout\ = (\pc_incremented[8]~12_combout\ & (\branch_address[7]~11\ $ (GND))) # (!\pc_incremented[8]~12_combout\ & (!\branch_address[7]~11\ & VCC))
-- \branch_address[8]~13\ = CARRY((\pc_incremented[8]~12_combout\ & !\branch_address[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[8]~12_combout\,
	datad => VCC,
	cin => \branch_address[7]~11\,
	combout => \branch_address[8]~12_combout\,
	cout => \branch_address[8]~13\);

-- Location: LCCOMB_X96_Y55_N22
\pc_in[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[8]~3_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[8]~12_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \pc_incremented[8]~12_combout\,
	datac => \branch_address[8]~12_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[8]~3_combout\);

-- Location: FF_X96_Y55_N23
\PC|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(8));

-- Location: LCCOMB_X97_Y56_N16
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

-- Location: LCCOMB_X95_Y56_N16
\branch_address[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[9]~14_combout\ = (\pc_incremented[9]~14_combout\ & (!\branch_address[8]~13\)) # (!\pc_incremented[9]~14_combout\ & ((\branch_address[8]~13\) # (GND)))
-- \branch_address[9]~15\ = CARRY((!\branch_address[8]~13\) # (!\pc_incremented[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[9]~14_combout\,
	datad => VCC,
	cin => \branch_address[8]~13\,
	combout => \branch_address[9]~14_combout\,
	cout => \branch_address[9]~15\);

-- Location: LCCOMB_X96_Y55_N8
\pc_in[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[9]~4_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & (\branch_address[9]~14_combout\)) # (!\branch_or_next~82_combout\ & ((\pc_incremented[9]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[9]~14_combout\,
	datab => \instruction_memory|Mux10~1_combout\,
	datac => \pc_incremented[9]~14_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[9]~4_combout\);

-- Location: FF_X96_Y55_N9
\PC|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(9));

-- Location: LCCOMB_X97_Y56_N18
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

-- Location: LCCOMB_X95_Y56_N18
\branch_address[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[10]~16_combout\ = (\pc_incremented[10]~16_combout\ & (\branch_address[9]~15\ $ (GND))) # (!\pc_incremented[10]~16_combout\ & (!\branch_address[9]~15\ & VCC))
-- \branch_address[10]~17\ = CARRY((\pc_incremented[10]~16_combout\ & !\branch_address[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[10]~16_combout\,
	datad => VCC,
	cin => \branch_address[9]~15\,
	combout => \branch_address[10]~16_combout\,
	cout => \branch_address[10]~17\);

-- Location: LCCOMB_X96_Y55_N18
\pc_in[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[10]~5_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & (\branch_address[10]~16_combout\)) # (!\branch_or_next~82_combout\ & ((\pc_incremented[10]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[10]~16_combout\,
	datab => \pc_incremented[10]~16_combout\,
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[10]~5_combout\);

-- Location: FF_X96_Y55_N19
\PC|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(10));

-- Location: LCCOMB_X97_Y56_N20
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

-- Location: LCCOMB_X95_Y56_N20
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

-- Location: LCCOMB_X96_Y55_N28
\pc_in[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[11]~6_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & (\branch_address[11]~18_combout\)) # (!\branch_or_next~82_combout\ & ((\pc_incremented[11]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[11]~18_combout\,
	datab => \pc_incremented[11]~18_combout\,
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[11]~6_combout\);

-- Location: FF_X96_Y55_N29
\PC|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(11));

-- Location: LCCOMB_X97_Y56_N22
\pc_incremented[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_incremented[12]~20_combout\ = (\PC|Q\(12) & (\pc_incremented[11]~19\ $ (GND))) # (!\PC|Q\(12) & (!\pc_incremented[11]~19\ & VCC))
-- \pc_incremented[12]~21\ = CARRY((\PC|Q\(12) & !\pc_incremented[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(12),
	datad => VCC,
	cin => \pc_incremented[11]~19\,
	combout => \pc_incremented[12]~20_combout\,
	cout => \pc_incremented[12]~21\);

-- Location: LCCOMB_X95_Y56_N22
\branch_address[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[12]~20_combout\ = (\pc_incremented[12]~20_combout\ & (\branch_address[11]~19\ $ (GND))) # (!\pc_incremented[12]~20_combout\ & (!\branch_address[11]~19\ & VCC))
-- \branch_address[12]~21\ = CARRY((\pc_incremented[12]~20_combout\ & !\branch_address[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[12]~20_combout\,
	datad => VCC,
	cin => \branch_address[11]~19\,
	combout => \branch_address[12]~20_combout\,
	cout => \branch_address[12]~21\);

-- Location: LCCOMB_X96_Y55_N10
\pc_in[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[12]~7_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[12]~20_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[12]~20_combout\,
	datab => \branch_address[12]~20_combout\,
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[12]~7_combout\);

-- Location: FF_X96_Y55_N11
\PC|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(12));

-- Location: LCCOMB_X97_Y56_N24
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

-- Location: LCCOMB_X95_Y56_N24
\branch_address[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[13]~22_combout\ = (\pc_incremented[13]~22_combout\ & (!\branch_address[12]~21\)) # (!\pc_incremented[13]~22_combout\ & ((\branch_address[12]~21\) # (GND)))
-- \branch_address[13]~23\ = CARRY((!\branch_address[12]~21\) # (!\pc_incremented[13]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[13]~22_combout\,
	datad => VCC,
	cin => \branch_address[12]~21\,
	combout => \branch_address[13]~22_combout\,
	cout => \branch_address[13]~23\);

-- Location: LCCOMB_X96_Y55_N0
\pc_in[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[13]~8_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[13]~22_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[13]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[13]~22_combout\,
	datab => \branch_address[13]~22_combout\,
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[13]~8_combout\);

-- Location: FF_X96_Y55_N1
\PC|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[13]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(13));

-- Location: LCCOMB_X97_Y56_N26
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

-- Location: LCCOMB_X95_Y56_N26
\branch_address[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[14]~24_combout\ = ((\pc_incremented[14]~24_combout\ $ (\instruction_memory|Mux10~0_combout\ $ (!\branch_address[13]~23\)))) # (GND)
-- \branch_address[14]~25\ = CARRY((\pc_incremented[14]~24_combout\ & ((\instruction_memory|Mux10~0_combout\) # (!\branch_address[13]~23\))) # (!\pc_incremented[14]~24_combout\ & (\instruction_memory|Mux10~0_combout\ & !\branch_address[13]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[14]~24_combout\,
	datab => \instruction_memory|Mux10~0_combout\,
	datad => VCC,
	cin => \branch_address[13]~23\,
	combout => \branch_address[14]~24_combout\,
	cout => \branch_address[14]~25\);

-- Location: LCCOMB_X92_Y55_N26
\pc_in[14]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[14]~9_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[14]~24_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[14]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \pc_incremented[14]~24_combout\,
	datac => \branch_address[14]~24_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[14]~9_combout\);

-- Location: FF_X92_Y55_N27
\PC|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(14));

-- Location: LCCOMB_X97_Y56_N28
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

-- Location: LCCOMB_X95_Y56_N28
\branch_address[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[15]~26_combout\ = (\pc_incremented[15]~26_combout\ & (!\branch_address[14]~25\)) # (!\pc_incremented[15]~26_combout\ & ((\branch_address[14]~25\) # (GND)))
-- \branch_address[15]~27\ = CARRY((!\branch_address[14]~25\) # (!\pc_incremented[15]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[15]~26_combout\,
	datad => VCC,
	cin => \branch_address[14]~25\,
	combout => \branch_address[15]~26_combout\,
	cout => \branch_address[15]~27\);

-- Location: LCCOMB_X96_Y55_N6
\pc_in[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[15]~10_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & (\branch_address[15]~26_combout\)) # (!\branch_or_next~82_combout\ & ((\pc_incremented[15]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[15]~26_combout\,
	datab => \pc_incremented[15]~26_combout\,
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[15]~10_combout\);

-- Location: FF_X96_Y55_N7
\PC|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[15]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(15));

-- Location: LCCOMB_X97_Y56_N30
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

-- Location: LCCOMB_X95_Y56_N30
\branch_address[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[16]~28_combout\ = (\pc_incremented[16]~28_combout\ & (\branch_address[15]~27\ $ (GND))) # (!\pc_incremented[16]~28_combout\ & (!\branch_address[15]~27\ & VCC))
-- \branch_address[16]~29\ = CARRY((\pc_incremented[16]~28_combout\ & !\branch_address[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[16]~28_combout\,
	datad => VCC,
	cin => \branch_address[15]~27\,
	combout => \branch_address[16]~28_combout\,
	cout => \branch_address[16]~29\);

-- Location: LCCOMB_X96_Y55_N24
\pc_in[16]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[16]~11_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & (\branch_address[16]~28_combout\)) # (!\branch_or_next~82_combout\ & ((\pc_incremented[16]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[16]~28_combout\,
	datab => \pc_incremented[16]~28_combout\,
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[16]~11_combout\);

-- Location: FF_X96_Y55_N25
\PC|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[16]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(16));

-- Location: LCCOMB_X97_Y55_N0
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

-- Location: LCCOMB_X95_Y55_N0
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

-- Location: LCCOMB_X96_Y55_N2
\pc_in[17]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[17]~12_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & (\branch_address[17]~30_combout\)) # (!\branch_or_next~82_combout\ & ((\pc_incremented[17]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[17]~30_combout\,
	datab => \pc_incremented[17]~30_combout\,
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[17]~12_combout\);

-- Location: FF_X96_Y55_N3
\PC|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[17]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(17));

-- Location: LCCOMB_X97_Y55_N2
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

-- Location: LCCOMB_X95_Y55_N2
\branch_address[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[18]~32_combout\ = (\pc_incremented[18]~32_combout\ & (\branch_address[17]~31\ $ (GND))) # (!\pc_incremented[18]~32_combout\ & (!\branch_address[17]~31\ & VCC))
-- \branch_address[18]~33\ = CARRY((\pc_incremented[18]~32_combout\ & !\branch_address[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[18]~32_combout\,
	datad => VCC,
	cin => \branch_address[17]~31\,
	combout => \branch_address[18]~32_combout\,
	cout => \branch_address[18]~33\);

-- Location: LCCOMB_X96_Y55_N20
\pc_in[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[18]~13_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[18]~32_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[18]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[18]~32_combout\,
	datab => \instruction_memory|Mux10~1_combout\,
	datac => \branch_address[18]~32_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[18]~13_combout\);

-- Location: FF_X96_Y55_N21
\PC|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[18]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(18));

-- Location: LCCOMB_X97_Y55_N4
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

-- Location: LCCOMB_X95_Y55_N4
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

-- Location: LCCOMB_X92_Y55_N12
\pc_in[19]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[19]~14_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[19]~34_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[19]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \pc_incremented[19]~34_combout\,
	datac => \branch_address[19]~34_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[19]~14_combout\);

-- Location: FF_X92_Y55_N13
\PC|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(19));

-- Location: LCCOMB_X97_Y55_N6
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

-- Location: LCCOMB_X95_Y55_N6
\branch_address[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[20]~36_combout\ = (\pc_incremented[20]~36_combout\ & (\branch_address[19]~35\ $ (GND))) # (!\pc_incremented[20]~36_combout\ & (!\branch_address[19]~35\ & VCC))
-- \branch_address[20]~37\ = CARRY((\pc_incremented[20]~36_combout\ & !\branch_address[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[20]~36_combout\,
	datad => VCC,
	cin => \branch_address[19]~35\,
	combout => \branch_address[20]~36_combout\,
	cout => \branch_address[20]~37\);

-- Location: LCCOMB_X96_Y55_N26
\pc_in[20]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[20]~15_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[20]~36_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[20]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[20]~36_combout\,
	datab => \branch_address[20]~36_combout\,
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[20]~15_combout\);

-- Location: FF_X96_Y55_N27
\PC|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[20]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(20));

-- Location: LCCOMB_X97_Y55_N8
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

-- Location: LCCOMB_X95_Y55_N8
\branch_address[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[21]~38_combout\ = (\pc_incremented[21]~38_combout\ & (!\branch_address[20]~37\)) # (!\pc_incremented[21]~38_combout\ & ((\branch_address[20]~37\) # (GND)))
-- \branch_address[21]~39\ = CARRY((!\branch_address[20]~37\) # (!\pc_incremented[21]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[21]~38_combout\,
	datad => VCC,
	cin => \branch_address[20]~37\,
	combout => \branch_address[21]~38_combout\,
	cout => \branch_address[21]~39\);

-- Location: LCCOMB_X92_Y55_N14
\pc_in[21]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[21]~16_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[21]~38_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[21]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \pc_incremented[21]~38_combout\,
	datac => \branch_address[21]~38_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[21]~16_combout\);

-- Location: FF_X92_Y55_N15
\PC|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[21]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(21));

-- Location: LCCOMB_X97_Y55_N10
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

-- Location: LCCOMB_X95_Y55_N10
\branch_address[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[22]~40_combout\ = (\pc_incremented[22]~40_combout\ & (\branch_address[21]~39\ $ (GND))) # (!\pc_incremented[22]~40_combout\ & (!\branch_address[21]~39\ & VCC))
-- \branch_address[22]~41\ = CARRY((\pc_incremented[22]~40_combout\ & !\branch_address[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[22]~40_combout\,
	datad => VCC,
	cin => \branch_address[21]~39\,
	combout => \branch_address[22]~40_combout\,
	cout => \branch_address[22]~41\);

-- Location: LCCOMB_X92_Y55_N16
\pc_in[22]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[22]~17_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[22]~40_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[22]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux10~1_combout\,
	datab => \pc_incremented[22]~40_combout\,
	datac => \branch_address[22]~40_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[22]~17_combout\);

-- Location: FF_X92_Y55_N17
\PC|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[22]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(22));

-- Location: LCCOMB_X97_Y55_N12
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

-- Location: LCCOMB_X95_Y55_N12
\branch_address[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[23]~42_combout\ = (\pc_incremented[23]~42_combout\ & (!\branch_address[22]~41\)) # (!\pc_incremented[23]~42_combout\ & ((\branch_address[22]~41\) # (GND)))
-- \branch_address[23]~43\ = CARRY((!\branch_address[22]~41\) # (!\pc_incremented[23]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[23]~42_combout\,
	datad => VCC,
	cin => \branch_address[22]~41\,
	combout => \branch_address[23]~42_combout\,
	cout => \branch_address[23]~43\);

-- Location: LCCOMB_X95_Y55_N30
\PC|Q[23]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|Q[23]~3_combout\ = (\branch_or_next~82_combout\ & ((\branch_address[23]~42_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[23]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[23]~42_combout\,
	datab => \branch_address[23]~42_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \PC|Q[23]~3_combout\);

-- Location: FF_X95_Y55_N31
\PC|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PC|Q[23]~3_combout\,
	asdata => \instruction_memory|Mux6~0_combout\,
	sload => \instruction_memory|ALT_INV_Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(23));

-- Location: LCCOMB_X97_Y55_N14
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

-- Location: LCCOMB_X95_Y55_N14
\branch_address[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[24]~44_combout\ = (\pc_incremented[24]~44_combout\ & (\branch_address[23]~43\ $ (GND))) # (!\pc_incremented[24]~44_combout\ & (!\branch_address[23]~43\ & VCC))
-- \branch_address[24]~45\ = CARRY((\pc_incremented[24]~44_combout\ & !\branch_address[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[24]~44_combout\,
	datad => VCC,
	cin => \branch_address[23]~43\,
	combout => \branch_address[24]~44_combout\,
	cout => \branch_address[24]~45\);

-- Location: LCCOMB_X92_Y55_N22
\pc_in[24]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[24]~18_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & (\branch_address[24]~44_combout\)) # (!\branch_or_next~82_combout\ & ((\pc_incremented[24]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[24]~44_combout\,
	datab => \pc_incremented[24]~44_combout\,
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[24]~18_combout\);

-- Location: FF_X92_Y55_N23
\PC|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[24]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(24));

-- Location: LCCOMB_X97_Y55_N16
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

-- Location: LCCOMB_X95_Y55_N16
\branch_address[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[25]~46_combout\ = (\pc_incremented[25]~46_combout\ & (!\branch_address[24]~45\)) # (!\pc_incremented[25]~46_combout\ & ((\branch_address[24]~45\) # (GND)))
-- \branch_address[25]~47\ = CARRY((!\branch_address[24]~45\) # (!\pc_incremented[25]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[25]~46_combout\,
	datad => VCC,
	cin => \branch_address[24]~45\,
	combout => \branch_address[25]~46_combout\,
	cout => \branch_address[25]~47\);

-- Location: LCCOMB_X96_Y55_N16
\pc_in[25]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[25]~19_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & (\branch_address[25]~46_combout\)) # (!\branch_or_next~82_combout\ & ((\pc_incremented[25]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[25]~46_combout\,
	datab => \pc_incremented[25]~46_combout\,
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[25]~19_combout\);

-- Location: FF_X96_Y55_N17
\PC|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[25]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(25));

-- Location: LCCOMB_X97_Y55_N18
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

-- Location: LCCOMB_X95_Y55_N18
\branch_address[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[26]~48_combout\ = (\pc_incremented[26]~48_combout\ & (\branch_address[25]~47\ $ (GND))) # (!\pc_incremented[26]~48_combout\ & (!\branch_address[25]~47\ & VCC))
-- \branch_address[26]~49\ = CARRY((\pc_incremented[26]~48_combout\ & !\branch_address[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[26]~48_combout\,
	datad => VCC,
	cin => \branch_address[25]~47\,
	combout => \branch_address[26]~48_combout\,
	cout => \branch_address[26]~49\);

-- Location: LCCOMB_X96_Y55_N30
\pc_in[26]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[26]~20_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[26]~48_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[26]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[26]~48_combout\,
	datab => \branch_address[26]~48_combout\,
	datac => \instruction_memory|Mux10~1_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[26]~20_combout\);

-- Location: FF_X96_Y55_N31
\PC|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[26]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(26));

-- Location: LCCOMB_X97_Y55_N20
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

-- Location: LCCOMB_X95_Y55_N20
\branch_address[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[27]~50_combout\ = (\pc_incremented[27]~50_combout\ & (!\branch_address[26]~49\)) # (!\pc_incremented[27]~50_combout\ & ((\branch_address[26]~49\) # (GND)))
-- \branch_address[27]~51\ = CARRY((!\branch_address[26]~49\) # (!\pc_incremented[27]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[27]~50_combout\,
	datad => VCC,
	cin => \branch_address[26]~49\,
	combout => \branch_address[27]~50_combout\,
	cout => \branch_address[27]~51\);

-- Location: LCCOMB_X97_Y55_N30
\pc_in[27]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[27]~21_combout\ = (\instruction_memory|Mux10~1_combout\ & ((\branch_or_next~82_combout\ & ((\branch_address[27]~50_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[27]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[27]~50_combout\,
	datab => \instruction_memory|Mux10~1_combout\,
	datac => \branch_address[27]~50_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \pc_in[27]~21_combout\);

-- Location: FF_X97_Y55_N31
\PC|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \pc_in[27]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(27));

-- Location: LCCOMB_X97_Y55_N22
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

-- Location: LCCOMB_X95_Y55_N22
\branch_address[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[28]~52_combout\ = (\pc_incremented[28]~52_combout\ & (\branch_address[27]~51\ $ (GND))) # (!\pc_incremented[28]~52_combout\ & (!\branch_address[27]~51\ & VCC))
-- \branch_address[28]~53\ = CARRY((\pc_incremented[28]~52_combout\ & !\branch_address[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[28]~52_combout\,
	datad => VCC,
	cin => \branch_address[27]~51\,
	combout => \branch_address[28]~52_combout\,
	cout => \branch_address[28]~53\);

-- Location: LCCOMB_X96_Y55_N12
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\branch_or_next~82_combout\ & (\branch_address[28]~52_combout\)) # (!\branch_or_next~82_combout\ & ((\pc_incremented[28]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \branch_address[28]~52_combout\,
	datac => \pc_incremented[28]~52_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \Add1~0_combout\);

-- Location: FF_X96_Y55_N13
\PC|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add1~0_combout\,
	ena => \instruction_memory|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(28));

-- Location: LCCOMB_X97_Y55_N24
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

-- Location: LCCOMB_X95_Y55_N24
\branch_address[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[29]~54_combout\ = (\pc_incremented[29]~54_combout\ & (!\branch_address[28]~53\)) # (!\pc_incremented[29]~54_combout\ & ((\branch_address[28]~53\) # (GND)))
-- \branch_address[29]~55\ = CARRY((!\branch_address[28]~53\) # (!\pc_incremented[29]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[29]~54_combout\,
	datad => VCC,
	cin => \branch_address[28]~53\,
	combout => \branch_address[29]~54_combout\,
	cout => \branch_address[29]~55\);

-- Location: LCCOMB_X92_Y55_N0
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\branch_or_next~82_combout\ & ((\branch_address[29]~54_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[29]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[29]~54_combout\,
	datac => \branch_address[29]~54_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \Add1~1_combout\);

-- Location: FF_X92_Y55_N1
\PC|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add1~1_combout\,
	ena => \instruction_memory|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(29));

-- Location: LCCOMB_X97_Y55_N26
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

-- Location: LCCOMB_X95_Y55_N26
\branch_address[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[30]~56_combout\ = (\pc_incremented[30]~56_combout\ & (\branch_address[29]~55\ $ (GND))) # (!\pc_incremented[30]~56_combout\ & (!\branch_address[29]~55\ & VCC))
-- \branch_address[30]~57\ = CARRY((\pc_incremented[30]~56_combout\ & !\branch_address[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[30]~56_combout\,
	datad => VCC,
	cin => \branch_address[29]~55\,
	combout => \branch_address[30]~56_combout\,
	cout => \branch_address[30]~57\);

-- Location: LCCOMB_X92_Y55_N30
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\branch_or_next~82_combout\ & ((\branch_address[30]~56_combout\))) # (!\branch_or_next~82_combout\ & (\pc_incremented[30]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[30]~56_combout\,
	datac => \branch_address[30]~56_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \Add1~2_combout\);

-- Location: FF_X92_Y55_N31
\PC|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add1~2_combout\,
	ena => \instruction_memory|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(30));

-- Location: LCCOMB_X97_Y55_N28
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

-- Location: LCCOMB_X95_Y55_N28
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

-- Location: LCCOMB_X96_Y55_N14
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\branch_or_next~82_combout\ & (\branch_address[31]~58_combout\)) # (!\branch_or_next~82_combout\ & ((\pc_incremented[31]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \branch_address[31]~58_combout\,
	datac => \pc_incremented[31]~58_combout\,
	datad => \branch_or_next~82_combout\,
	combout => \Add1~3_combout\);

-- Location: FF_X96_Y55_N15
\PC|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add1~3_combout\,
	ena => \instruction_memory|Mux10~1_combout\,
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


