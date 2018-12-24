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

-- DATE "12/24/2018 12:35:56"

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
	CLK_50M : IN std_logic;
	data_memory_output : BUFFER std_logic_vector(31 DOWNTO 0);
	instruction_addr : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END microprocessor;

-- Design Ports Information
-- data_memory_output[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[5]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[6]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[8]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[9]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[10]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[11]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[12]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[13]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[14]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[15]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[16]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[17]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[18]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[19]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[20]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[21]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[22]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[23]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[24]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[25]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[26]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[27]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[28]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[29]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[30]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_memory_output[31]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[4]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[8]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[10]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[11]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[12]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[13]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[14]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[15]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[16]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[17]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[18]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[19]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[20]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[21]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[22]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[23]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[24]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[25]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[26]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[27]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[28]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[29]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[30]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_addr[31]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50M	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_CLK_50M : std_logic;
SIGNAL ww_data_memory_output : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instruction_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL \CLK_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_file|registers_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK_50M~input_o\ : std_logic;
SIGNAL \CLK_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~75_combout\ : std_logic;
SIGNAL \count[1]~25_combout\ : std_logic;
SIGNAL \count[1]~26\ : std_logic;
SIGNAL \count[2]~27_combout\ : std_logic;
SIGNAL \count[2]~28\ : std_logic;
SIGNAL \count[3]~29_combout\ : std_logic;
SIGNAL \count[3]~30\ : std_logic;
SIGNAL \count[4]~31_combout\ : std_logic;
SIGNAL \count[4]~32\ : std_logic;
SIGNAL \count[5]~33_combout\ : std_logic;
SIGNAL \count[5]~34\ : std_logic;
SIGNAL \count[6]~35_combout\ : std_logic;
SIGNAL \count[6]~36\ : std_logic;
SIGNAL \count[7]~37_combout\ : std_logic;
SIGNAL \count[7]~38\ : std_logic;
SIGNAL \count[8]~39_combout\ : std_logic;
SIGNAL \count[8]~40\ : std_logic;
SIGNAL \count[9]~41_combout\ : std_logic;
SIGNAL \count[9]~42\ : std_logic;
SIGNAL \count[10]~43_combout\ : std_logic;
SIGNAL \count[10]~44\ : std_logic;
SIGNAL \count[11]~45_combout\ : std_logic;
SIGNAL \count[11]~46\ : std_logic;
SIGNAL \count[12]~47_combout\ : std_logic;
SIGNAL \count[12]~48\ : std_logic;
SIGNAL \count[13]~49_combout\ : std_logic;
SIGNAL \count[13]~50\ : std_logic;
SIGNAL \count[14]~51_combout\ : std_logic;
SIGNAL \count[14]~52\ : std_logic;
SIGNAL \count[15]~53_combout\ : std_logic;
SIGNAL \count[15]~54\ : std_logic;
SIGNAL \count[16]~55_combout\ : std_logic;
SIGNAL \count[16]~56\ : std_logic;
SIGNAL \count[17]~57_combout\ : std_logic;
SIGNAL \count[17]~58\ : std_logic;
SIGNAL \count[18]~59_combout\ : std_logic;
SIGNAL \count[18]~60\ : std_logic;
SIGNAL \count[19]~61_combout\ : std_logic;
SIGNAL \count[19]~62\ : std_logic;
SIGNAL \count[20]~63_combout\ : std_logic;
SIGNAL \count[20]~64\ : std_logic;
SIGNAL \count[21]~65_combout\ : std_logic;
SIGNAL \count[21]~66\ : std_logic;
SIGNAL \count[22]~67_combout\ : std_logic;
SIGNAL \count[22]~68\ : std_logic;
SIGNAL \count[23]~69_combout\ : std_logic;
SIGNAL \count[23]~70\ : std_logic;
SIGNAL \count[24]~71_combout\ : std_logic;
SIGNAL \count[24]~72\ : std_logic;
SIGNAL \count[25]~73_combout\ : std_logic;
SIGNAL \pc_incremented[2]~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux3~0_combout\ : std_logic;
SIGNAL \pc_incremented[2]~1\ : std_logic;
SIGNAL \pc_incremented[3]~3\ : std_logic;
SIGNAL \pc_incremented[4]~5\ : std_logic;
SIGNAL \pc_incremented[5]~6_combout\ : std_logic;
SIGNAL \pc_incremented[4]~4_combout\ : std_logic;
SIGNAL \pc_incremented[3]~2_combout\ : std_logic;
SIGNAL \branch_address[3]~1\ : std_logic;
SIGNAL \branch_address[4]~3\ : std_logic;
SIGNAL \branch_address[5]~4_combout\ : std_logic;
SIGNAL \pc_in[3]~1_combout\ : std_logic;
SIGNAL \register_file|registers_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \control|aluOp[1]~0_combout\ : std_logic;
SIGNAL \write_data[25]~15_combout\ : std_logic;
SIGNAL \register_file|registers_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \register_file|mux1|Mux6~0_combout\ : std_logic;
SIGNAL \control|aluControl[2]~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~3_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~2_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~1_combout\ : std_logic;
SIGNAL \write_data[1]~7_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux30~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~1\ : std_logic;
SIGNAL \arith_logic_unity|Add1~3_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~5_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~2\ : std_logic;
SIGNAL \arith_logic_unity|Add0~4_combout\ : std_logic;
SIGNAL \write_data[2]~8_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux29~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~4\ : std_logic;
SIGNAL \arith_logic_unity|Add1~6_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~14_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~5\ : std_logic;
SIGNAL \arith_logic_unity|Add0~6_combout\ : std_logic;
SIGNAL \write_data[3]~4_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux28~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~7\ : std_logic;
SIGNAL \arith_logic_unity|Add1~8_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~13_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~7\ : std_logic;
SIGNAL \arith_logic_unity|Add0~8_combout\ : std_logic;
SIGNAL \write_data[4]~6_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux27~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~9\ : std_logic;
SIGNAL \arith_logic_unity|Add1~10_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~12_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~9\ : std_logic;
SIGNAL \arith_logic_unity|Add0~10_combout\ : std_logic;
SIGNAL \write_data[5]~5_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux26~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~11\ : std_logic;
SIGNAL \arith_logic_unity|Add1~15_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~23_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~11\ : std_logic;
SIGNAL \arith_logic_unity|Add0~12_combout\ : std_logic;
SIGNAL \write_data[6]~3_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux25~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~16\ : std_logic;
SIGNAL \arith_logic_unity|Add1~17_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~22_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~13\ : std_logic;
SIGNAL \arith_logic_unity|Add0~14_combout\ : std_logic;
SIGNAL \write_data[7]~2_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux24~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~18\ : std_logic;
SIGNAL \arith_logic_unity|Add1~19_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~21_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~15\ : std_logic;
SIGNAL \arith_logic_unity|Add0~16_combout\ : std_logic;
SIGNAL \write_data[8]~1_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux23~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~20\ : std_logic;
SIGNAL \arith_logic_unity|Add1~24_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~26_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~17\ : std_logic;
SIGNAL \arith_logic_unity|Add0~18_combout\ : std_logic;
SIGNAL \write_data[9]~0_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux22~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~25\ : std_logic;
SIGNAL \arith_logic_unity|Add1~27_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~29_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~19\ : std_logic;
SIGNAL \arith_logic_unity|Add0~20_combout\ : std_logic;
SIGNAL \write_data[10]~30_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[10]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux21~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~28\ : std_logic;
SIGNAL \arith_logic_unity|Add1~30_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~35_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~21\ : std_logic;
SIGNAL \arith_logic_unity|Add0~22_combout\ : std_logic;
SIGNAL \write_data[11]~29_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[11]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux20~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~31\ : std_logic;
SIGNAL \arith_logic_unity|Add1~32_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~34_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~23\ : std_logic;
SIGNAL \arith_logic_unity|Add0~24_combout\ : std_logic;
SIGNAL \write_data[12]~28_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[12]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux19~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~33\ : std_logic;
SIGNAL \arith_logic_unity|Add1~36_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~44_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~25\ : std_logic;
SIGNAL \arith_logic_unity|Add0~26_combout\ : std_logic;
SIGNAL \write_data[13]~27_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[13]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux18~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~37\ : std_logic;
SIGNAL \arith_logic_unity|Add1~38_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~43_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~27\ : std_logic;
SIGNAL \arith_logic_unity|Add0~28_combout\ : std_logic;
SIGNAL \write_data[14]~26_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux17~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~39\ : std_logic;
SIGNAL \arith_logic_unity|Add1~40_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~42_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~29\ : std_logic;
SIGNAL \arith_logic_unity|Add0~30_combout\ : std_logic;
SIGNAL \write_data[15]~25_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux16~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~41\ : std_logic;
SIGNAL \arith_logic_unity|Add1~45_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~47_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~31\ : std_logic;
SIGNAL \arith_logic_unity|Add0~32_combout\ : std_logic;
SIGNAL \write_data[16]~24_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux15~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~46\ : std_logic;
SIGNAL \arith_logic_unity|Add1~48_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~50_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~33\ : std_logic;
SIGNAL \arith_logic_unity|Add0~34_combout\ : std_logic;
SIGNAL \write_data[17]~23_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux14~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~49\ : std_logic;
SIGNAL \arith_logic_unity|Add1~51_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~53_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~35\ : std_logic;
SIGNAL \arith_logic_unity|Add0~36_combout\ : std_logic;
SIGNAL \write_data[18]~22_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux13~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~52\ : std_logic;
SIGNAL \arith_logic_unity|Add1~54_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~56_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~37\ : std_logic;
SIGNAL \arith_logic_unity|Add0~38_combout\ : std_logic;
SIGNAL \write_data[19]~21_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux12~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~55\ : std_logic;
SIGNAL \arith_logic_unity|Add1~57_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~59_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~39\ : std_logic;
SIGNAL \arith_logic_unity|Add0~40_combout\ : std_logic;
SIGNAL \write_data[20]~20_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux11~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~58\ : std_logic;
SIGNAL \arith_logic_unity|Add1~60_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~62_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~41\ : std_logic;
SIGNAL \arith_logic_unity|Add0~42_combout\ : std_logic;
SIGNAL \write_data[21]~19_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux10~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~61\ : std_logic;
SIGNAL \arith_logic_unity|Add1~63_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~65_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~43\ : std_logic;
SIGNAL \arith_logic_unity|Add0~44_combout\ : std_logic;
SIGNAL \write_data[22]~18_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux9~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~64\ : std_logic;
SIGNAL \arith_logic_unity|Add1~66_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~68_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~45\ : std_logic;
SIGNAL \arith_logic_unity|Add0~46_combout\ : std_logic;
SIGNAL \write_data[23]~17_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[23]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux8~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~67\ : std_logic;
SIGNAL \arith_logic_unity|Add1~69_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~71_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~47\ : std_logic;
SIGNAL \arith_logic_unity|Add0~48_combout\ : std_logic;
SIGNAL \write_data[24]~16_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux7~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~70\ : std_logic;
SIGNAL \arith_logic_unity|Add1~72_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~74_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~49\ : std_logic;
SIGNAL \arith_logic_unity|Add0~50_combout\ : std_logic;
SIGNAL \write_data[31]~9_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[31]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux0~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~73\ : std_logic;
SIGNAL \arith_logic_unity|Add1~75_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~86_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~51\ : std_logic;
SIGNAL \arith_logic_unity|Add0~52_combout\ : std_logic;
SIGNAL \write_data[26]~14_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[26]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux5~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~76\ : std_logic;
SIGNAL \arith_logic_unity|Add1~77_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~85_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~53\ : std_logic;
SIGNAL \arith_logic_unity|Add0~54_combout\ : std_logic;
SIGNAL \write_data[27]~13_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[27]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux4~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~78\ : std_logic;
SIGNAL \arith_logic_unity|Add1~79_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~84_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~55\ : std_logic;
SIGNAL \arith_logic_unity|Add0~56_combout\ : std_logic;
SIGNAL \write_data[28]~12_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[28]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux3~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~80\ : std_logic;
SIGNAL \arith_logic_unity|Add1~81_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~83_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~57\ : std_logic;
SIGNAL \arith_logic_unity|Add0~58_combout\ : std_logic;
SIGNAL \write_data[29]~11_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[29]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux2~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~82\ : std_logic;
SIGNAL \arith_logic_unity|Add1~87_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~92_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~59\ : std_logic;
SIGNAL \arith_logic_unity|Add0~60_combout\ : std_logic;
SIGNAL \write_data[30]~10_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[30]~feeder_combout\ : std_logic;
SIGNAL \register_file|mux1|Mux1~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~88\ : std_logic;
SIGNAL \arith_logic_unity|Add1~89_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add1~91_combout\ : std_logic;
SIGNAL \arith_logic_unity|Add0~61\ : std_logic;
SIGNAL \arith_logic_unity|Add0~62_combout\ : std_logic;
SIGNAL \branch_or_next~12_combout\ : std_logic;
SIGNAL \branch_or_next~13_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~7_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~4_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~6_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~5_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~8_combout\ : std_logic;
SIGNAL \arith_logic_unity|LessThan0~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~2_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~3_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~9_combout\ : std_logic;
SIGNAL \write_data[0]~31_combout\ : std_logic;
SIGNAL \register_file|registers:1:regx|Q[0]~feeder_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~10_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~0_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~1_combout\ : std_logic;
SIGNAL \arith_logic_unity|Mux31~11_combout\ : std_logic;
SIGNAL \branch_or_next~3_combout\ : std_logic;
SIGNAL \branch_or_next~2_combout\ : std_logic;
SIGNAL \branch_or_next~4_combout\ : std_logic;
SIGNAL \branch_or_next~10_combout\ : std_logic;
SIGNAL \branch_or_next~15_combout\ : std_logic;
SIGNAL \branch_or_next~8_combout\ : std_logic;
SIGNAL \branch_or_next~5_combout\ : std_logic;
SIGNAL \branch_or_next~6_combout\ : std_logic;
SIGNAL \branch_or_next~7_combout\ : std_logic;
SIGNAL \branch_or_next~9_combout\ : std_logic;
SIGNAL \branch_or_next~11_combout\ : std_logic;
SIGNAL \branch_or_next~14_combout\ : std_logic;
SIGNAL \pc_in[5]~5_combout\ : std_logic;
SIGNAL \instruction_memory|Mux8~0_combout\ : std_logic;
SIGNAL \branch_address[4]~2_combout\ : std_logic;
SIGNAL \pc_in[4]~3_combout\ : std_logic;
SIGNAL \pc_in[4]~4_combout\ : std_logic;
SIGNAL \instruction_memory|Mux5~0_combout\ : std_logic;
SIGNAL \control|Equal1~0_combout\ : std_logic;
SIGNAL \pc_in[2]~0_combout\ : std_logic;
SIGNAL \instruction_memory|Mux9~0_combout\ : std_logic;
SIGNAL \branch_address[3]~0_combout\ : std_logic;
SIGNAL \pc_in[3]~2_combout\ : std_logic;
SIGNAL \control|Equal3~0_combout\ : std_logic;
SIGNAL \count[25]~clkctrl_outclk\ : std_logic;
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
SIGNAL count : std_logic_vector(25 DOWNTO 0);
SIGNAL \register_file|registers:0:regx|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers_clk\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_file|registers:1:regx|Q\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK_50M <= CLK_50M;
data_memory_output <= ww_data_memory_output;
instruction_addr <= ww_instruction_addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50M~input_o\);

\register_file|registers_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \register_file|registers_clk\(0));

\count[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & count(25));

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
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
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
	i => \control|Equal3~0_combout\,
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
	i => \control|Equal3~0_combout\,
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
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[3]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\data_memory_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[4]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\data_memory_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[5]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\data_memory_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[6]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\data_memory_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[7]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\data_memory_output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[8]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\data_memory_output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[9]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\data_memory_output[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[10]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\data_memory_output[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[11]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\data_memory_output[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[12]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\data_memory_output[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[13]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\data_memory_output[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[14]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\data_memory_output[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[15]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\data_memory_output[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[16]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\data_memory_output[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[17]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\data_memory_output[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[18]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\data_memory_output[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[19]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\data_memory_output[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[20]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\data_memory_output[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[21]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\data_memory_output[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[22]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\data_memory_output[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[23]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\data_memory_output[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[24]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\data_memory_output[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[25]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\data_memory_output[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[26]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\data_memory_output[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[27]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\data_memory_output[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[28]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\data_memory_output[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
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
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[30]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\data_memory_output[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \control|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \data_memory_output[31]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X7_Y73_N23
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

-- Location: IOOBUF_X62_Y73_N23
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

-- Location: IOOBUF_X58_Y73_N2
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

-- Location: IOOBUF_X58_Y73_N23
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

-- Location: IOOBUF_X62_Y73_N16
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

-- Location: IOOBUF_X58_Y73_N16
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

-- Location: IOOBUF_X47_Y73_N16
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

-- Location: IOOBUF_X52_Y73_N23
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

-- Location: IOOBUF_X60_Y73_N16
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

-- Location: IOOBUF_X54_Y73_N2
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

-- Location: IOOBUF_X45_Y73_N9
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

-- Location: IOOBUF_X52_Y73_N9
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

-- Location: IOOBUF_X52_Y73_N16
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

-- Location: IOOBUF_X45_Y73_N2
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

-- Location: IOOBUF_X60_Y73_N9
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

-- Location: IOOBUF_X54_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X58_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N2
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

-- Location: IOOBUF_X52_Y73_N2
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

-- Location: IOOBUF_X65_Y73_N23
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

-- Location: IOOBUF_X49_Y73_N16
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

-- Location: IOOBUF_X42_Y73_N2
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

-- Location: IOOBUF_X49_Y73_N23
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

-- Location: IOOBUF_X47_Y73_N2
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

-- Location: IOIBUF_X0_Y36_N15
\CLK_50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50M,
	o => \CLK_50M~input_o\);

-- Location: CLKCTRL_G4
\CLK_50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X56_Y64_N4
\count[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~75_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~75_combout\);

-- Location: FF_X56_Y64_N5
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X56_Y64_N8
\count[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~25_combout\ = (count(0) & (count(1) $ (VCC))) # (!count(0) & (count(1) & VCC))
-- \count[1]~26\ = CARRY((count(0) & count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datad => VCC,
	combout => \count[1]~25_combout\,
	cout => \count[1]~26\);

-- Location: FF_X56_Y64_N9
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X56_Y64_N10
\count[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~27_combout\ = (count(2) & (!\count[1]~26\)) # (!count(2) & ((\count[1]~26\) # (GND)))
-- \count[2]~28\ = CARRY((!\count[1]~26\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~26\,
	combout => \count[2]~27_combout\,
	cout => \count[2]~28\);

-- Location: FF_X56_Y64_N11
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X56_Y64_N12
\count[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~29_combout\ = (count(3) & (\count[2]~28\ $ (GND))) # (!count(3) & (!\count[2]~28\ & VCC))
-- \count[3]~30\ = CARRY((count(3) & !\count[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~28\,
	combout => \count[3]~29_combout\,
	cout => \count[3]~30\);

-- Location: FF_X56_Y64_N13
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X56_Y64_N14
\count[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~31_combout\ = (count(4) & (!\count[3]~30\)) # (!count(4) & ((\count[3]~30\) # (GND)))
-- \count[4]~32\ = CARRY((!\count[3]~30\) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~30\,
	combout => \count[4]~31_combout\,
	cout => \count[4]~32\);

-- Location: FF_X56_Y64_N15
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X56_Y64_N16
\count[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~33_combout\ = (count(5) & (\count[4]~32\ $ (GND))) # (!count(5) & (!\count[4]~32\ & VCC))
-- \count[5]~34\ = CARRY((count(5) & !\count[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~32\,
	combout => \count[5]~33_combout\,
	cout => \count[5]~34\);

-- Location: FF_X56_Y64_N17
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X56_Y64_N18
\count[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~35_combout\ = (count(6) & (!\count[5]~34\)) # (!count(6) & ((\count[5]~34\) # (GND)))
-- \count[6]~36\ = CARRY((!\count[5]~34\) # (!count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~34\,
	combout => \count[6]~35_combout\,
	cout => \count[6]~36\);

-- Location: FF_X56_Y64_N19
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X56_Y64_N20
\count[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~37_combout\ = (count(7) & (\count[6]~36\ $ (GND))) # (!count(7) & (!\count[6]~36\ & VCC))
-- \count[7]~38\ = CARRY((count(7) & !\count[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~36\,
	combout => \count[7]~37_combout\,
	cout => \count[7]~38\);

-- Location: FF_X56_Y64_N21
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X56_Y64_N22
\count[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~39_combout\ = (count(8) & (!\count[7]~38\)) # (!count(8) & ((\count[7]~38\) # (GND)))
-- \count[8]~40\ = CARRY((!\count[7]~38\) # (!count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \count[7]~38\,
	combout => \count[8]~39_combout\,
	cout => \count[8]~40\);

-- Location: FF_X56_Y64_N23
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[8]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X56_Y64_N24
\count[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~41_combout\ = (count(9) & (\count[8]~40\ $ (GND))) # (!count(9) & (!\count[8]~40\ & VCC))
-- \count[9]~42\ = CARRY((count(9) & !\count[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~40\,
	combout => \count[9]~41_combout\,
	cout => \count[9]~42\);

-- Location: FF_X56_Y64_N25
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X56_Y64_N26
\count[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~43_combout\ = (count(10) & (!\count[9]~42\)) # (!count(10) & ((\count[9]~42\) # (GND)))
-- \count[10]~44\ = CARRY((!\count[9]~42\) # (!count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \count[9]~42\,
	combout => \count[10]~43_combout\,
	cout => \count[10]~44\);

-- Location: FF_X56_Y64_N27
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X56_Y64_N28
\count[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~45_combout\ = (count(11) & (\count[10]~44\ $ (GND))) # (!count(11) & (!\count[10]~44\ & VCC))
-- \count[11]~46\ = CARRY((count(11) & !\count[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~44\,
	combout => \count[11]~45_combout\,
	cout => \count[11]~46\);

-- Location: FF_X56_Y64_N29
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X56_Y64_N30
\count[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~47_combout\ = (count(12) & (!\count[11]~46\)) # (!count(12) & ((\count[11]~46\) # (GND)))
-- \count[12]~48\ = CARRY((!\count[11]~46\) # (!count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \count[11]~46\,
	combout => \count[12]~47_combout\,
	cout => \count[12]~48\);

-- Location: FF_X56_Y64_N31
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X56_Y63_N0
\count[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~49_combout\ = (count(13) & (\count[12]~48\ $ (GND))) # (!count(13) & (!\count[12]~48\ & VCC))
-- \count[13]~50\ = CARRY((count(13) & !\count[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~48\,
	combout => \count[13]~49_combout\,
	cout => \count[13]~50\);

-- Location: FF_X56_Y63_N1
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X56_Y63_N2
\count[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~51_combout\ = (count(14) & (!\count[13]~50\)) # (!count(14) & ((\count[13]~50\) # (GND)))
-- \count[14]~52\ = CARRY((!\count[13]~50\) # (!count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~50\,
	combout => \count[14]~51_combout\,
	cout => \count[14]~52\);

-- Location: FF_X56_Y63_N3
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[14]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X56_Y63_N4
\count[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~53_combout\ = (count(15) & (\count[14]~52\ $ (GND))) # (!count(15) & (!\count[14]~52\ & VCC))
-- \count[15]~54\ = CARRY((count(15) & !\count[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~52\,
	combout => \count[15]~53_combout\,
	cout => \count[15]~54\);

-- Location: FF_X56_Y63_N5
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[15]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X56_Y63_N6
\count[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~55_combout\ = (count(16) & (!\count[15]~54\)) # (!count(16) & ((\count[15]~54\) # (GND)))
-- \count[16]~56\ = CARRY((!\count[15]~54\) # (!count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \count[15]~54\,
	combout => \count[16]~55_combout\,
	cout => \count[16]~56\);

-- Location: FF_X56_Y63_N7
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[16]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X56_Y63_N8
\count[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~57_combout\ = (count(17) & (\count[16]~56\ $ (GND))) # (!count(17) & (!\count[16]~56\ & VCC))
-- \count[17]~58\ = CARRY((count(17) & !\count[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~56\,
	combout => \count[17]~57_combout\,
	cout => \count[17]~58\);

-- Location: FF_X56_Y63_N9
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[17]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X56_Y63_N10
\count[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~59_combout\ = (count(18) & (!\count[17]~58\)) # (!count(18) & ((\count[17]~58\) # (GND)))
-- \count[18]~60\ = CARRY((!\count[17]~58\) # (!count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~58\,
	combout => \count[18]~59_combout\,
	cout => \count[18]~60\);

-- Location: FF_X56_Y63_N11
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[18]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X56_Y63_N12
\count[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~61_combout\ = (count(19) & (\count[18]~60\ $ (GND))) # (!count(19) & (!\count[18]~60\ & VCC))
-- \count[19]~62\ = CARRY((count(19) & !\count[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~60\,
	combout => \count[19]~61_combout\,
	cout => \count[19]~62\);

-- Location: FF_X56_Y63_N13
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[19]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X56_Y63_N14
\count[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~63_combout\ = (count(20) & (!\count[19]~62\)) # (!count(20) & ((\count[19]~62\) # (GND)))
-- \count[20]~64\ = CARRY((!\count[19]~62\) # (!count(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~62\,
	combout => \count[20]~63_combout\,
	cout => \count[20]~64\);

-- Location: FF_X56_Y63_N15
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[20]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X56_Y63_N16
\count[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~65_combout\ = (count(21) & (\count[20]~64\ $ (GND))) # (!count(21) & (!\count[20]~64\ & VCC))
-- \count[21]~66\ = CARRY((count(21) & !\count[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \count[20]~64\,
	combout => \count[21]~65_combout\,
	cout => \count[21]~66\);

-- Location: FF_X56_Y63_N17
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[21]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X56_Y63_N18
\count[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~67_combout\ = (count(22) & (!\count[21]~66\)) # (!count(22) & ((\count[21]~66\) # (GND)))
-- \count[22]~68\ = CARRY((!\count[21]~66\) # (!count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \count[21]~66\,
	combout => \count[22]~67_combout\,
	cout => \count[22]~68\);

-- Location: FF_X56_Y63_N19
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[22]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X56_Y63_N20
\count[23]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~69_combout\ = (count(23) & (\count[22]~68\ $ (GND))) # (!count(23) & (!\count[22]~68\ & VCC))
-- \count[23]~70\ = CARRY((count(23) & !\count[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~68\,
	combout => \count[23]~69_combout\,
	cout => \count[23]~70\);

-- Location: FF_X56_Y63_N21
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X56_Y63_N22
\count[24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~71_combout\ = (count(24) & (!\count[23]~70\)) # (!count(24) & ((\count[23]~70\) # (GND)))
-- \count[24]~72\ = CARRY((!\count[23]~70\) # (!count(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datad => VCC,
	cin => \count[23]~70\,
	combout => \count[24]~71_combout\,
	cout => \count[24]~72\);

-- Location: FF_X56_Y63_N23
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[24]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X56_Y63_N24
\count[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[25]~73_combout\ = count(25) $ (!\count[24]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	cin => \count[24]~72\,
	combout => \count[25]~73_combout\);

-- Location: FF_X56_Y63_N25
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \count[25]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X54_Y63_N2
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

-- Location: LCCOMB_X54_Y59_N8
\instruction_memory|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux3~0_combout\ = (\PC|Q\(3) & (\PC|Q\(2))) # (!\PC|Q\(3) & ((!\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datad => \PC|Q\(2),
	combout => \instruction_memory|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y63_N4
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

-- Location: LCCOMB_X54_Y63_N6
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

-- Location: LCCOMB_X54_Y63_N8
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

-- Location: LCCOMB_X55_Y63_N4
\branch_address[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[3]~0_combout\ = (\instruction_memory|Mux9~0_combout\ & (\pc_incremented[3]~2_combout\ $ (VCC))) # (!\instruction_memory|Mux9~0_combout\ & (\pc_incremented[3]~2_combout\ & VCC))
-- \branch_address[3]~1\ = CARRY((\instruction_memory|Mux9~0_combout\ & \pc_incremented[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \pc_incremented[3]~2_combout\,
	datad => VCC,
	combout => \branch_address[3]~0_combout\,
	cout => \branch_address[3]~1\);

-- Location: LCCOMB_X55_Y63_N6
\branch_address[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[4]~2_combout\ = (\instruction_memory|Mux8~0_combout\ & ((\pc_incremented[4]~4_combout\ & (\branch_address[3]~1\ & VCC)) # (!\pc_incremented[4]~4_combout\ & (!\branch_address[3]~1\)))) # (!\instruction_memory|Mux8~0_combout\ & 
-- ((\pc_incremented[4]~4_combout\ & (!\branch_address[3]~1\)) # (!\pc_incremented[4]~4_combout\ & ((\branch_address[3]~1\) # (GND)))))
-- \branch_address[4]~3\ = CARRY((\instruction_memory|Mux8~0_combout\ & (!\pc_incremented[4]~4_combout\ & !\branch_address[3]~1\)) # (!\instruction_memory|Mux8~0_combout\ & ((!\branch_address[3]~1\) # (!\pc_incremented[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux8~0_combout\,
	datab => \pc_incremented[4]~4_combout\,
	datad => VCC,
	cin => \branch_address[3]~1\,
	combout => \branch_address[4]~2_combout\,
	cout => \branch_address[4]~3\);

-- Location: LCCOMB_X55_Y63_N8
\branch_address[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[5]~4_combout\ = (\pc_incremented[5]~6_combout\ & (\branch_address[4]~3\ $ (GND))) # (!\pc_incremented[5]~6_combout\ & (!\branch_address[4]~3\ & VCC))
-- \branch_address[5]~5\ = CARRY((\pc_incremented[5]~6_combout\ & !\branch_address[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[5]~6_combout\,
	datad => VCC,
	cin => \branch_address[4]~3\,
	combout => \branch_address[5]~4_combout\,
	cout => \branch_address[5]~5\);

-- Location: LCCOMB_X56_Y59_N16
\pc_in[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[3]~1_combout\ = (\instruction_memory|Mux5~0_combout\ & (((!\instruction_memory|Mux3~0_combout\) # (!\PC|Q\(2))) # (!\PC|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \instruction_memory|Mux3~0_combout\,
	combout => \pc_in[3]~1_combout\);

-- Location: LCCOMB_X56_Y59_N6
\register_file|registers_clk[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(0) = LCELL((!count(25) & ((\PC|Q\(2) $ (!\PC|Q\(3))) # (!\instruction_memory|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => count(25),
	datad => \PC|Q\(3),
	combout => \register_file|registers_clk\(0));

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X54_Y59_N24
\control|aluOp[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluOp[1]~0_combout\ = ((\PC|Q\(2) & ((\instruction_memory|Mux3~0_combout\) # (\PC|Q\(3)))) # (!\PC|Q\(2) & (\instruction_memory|Mux3~0_combout\ $ (!\PC|Q\(3))))) # (!\instruction_memory|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux3~0_combout\,
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \PC|Q\(3),
	combout => \control|aluOp[1]~0_combout\);

-- Location: LCCOMB_X54_Y60_N24
\write_data[25]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[25]~15_combout\ = (!\control|aluOp[1]~0_combout\ & (\control|Equal3~0_combout\ & \arith_logic_unity|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluOp[1]~0_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \arith_logic_unity|Add0~50_combout\,
	combout => \write_data[25]~15_combout\);

-- Location: FF_X54_Y60_N13
\register_file|registers:0:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[25]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(25));

-- Location: LCCOMB_X54_Y59_N4
\register_file|registers_clk[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers_clk\(1) = LCELL((!count(25) & (\instruction_memory|Mux5~0_combout\ & (\PC|Q\(3) & !\PC|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \PC|Q\(3),
	datad => \PC|Q\(2),
	combout => \register_file|registers_clk\(1));

-- Location: CLKCTRL_G12
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

-- Location: FF_X54_Y60_N3
\register_file|registers:1:regx|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[25]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(25));

-- Location: LCCOMB_X54_Y60_N12
\register_file|mux1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux6~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(25))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(25)))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(25),
	datad => \register_file|registers:1:regx|Q\(25),
	combout => \register_file|mux1|Mux6~0_combout\);

-- Location: LCCOMB_X54_Y59_N22
\control|aluControl[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|aluControl[2]~0_combout\ = (\PC|Q\(2)) # ((\PC|Q\(3) $ (!\instruction_memory|Mux3~0_combout\)) # (!\instruction_memory|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \PC|Q\(3),
	datac => \instruction_memory|Mux3~0_combout\,
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \control|aluControl[2]~0_combout\);

-- Location: LCCOMB_X54_Y61_N10
\arith_logic_unity|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~3_combout\ = (!\control|aluControl[2]~0_combout\ & \register_file|mux1|Mux29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux1|Mux29~0_combout\,
	combout => \arith_logic_unity|Add0~3_combout\);

-- Location: LCCOMB_X57_Y61_N2
\arith_logic_unity|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~0_combout\ = (\instruction_memory|Mux9~0_combout\ & (\register_file|mux1|Mux30~0_combout\ & VCC)) # (!\instruction_memory|Mux9~0_combout\ & (\register_file|mux1|Mux30~0_combout\ $ (VCC)))
-- \arith_logic_unity|Add1~1\ = CARRY((!\instruction_memory|Mux9~0_combout\ & \register_file|mux1|Mux30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \register_file|mux1|Mux30~0_combout\,
	datad => VCC,
	combout => \arith_logic_unity|Add1~0_combout\,
	cout => \arith_logic_unity|Add1~1\);

-- Location: LCCOMB_X56_Y61_N18
\arith_logic_unity|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~2_combout\ = (\control|aluControl[2]~0_combout\ & \arith_logic_unity|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datad => \arith_logic_unity|Add1~0_combout\,
	combout => \arith_logic_unity|Add1~2_combout\);

-- Location: LCCOMB_X56_Y61_N14
\arith_logic_unity|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~0_combout\ = (\register_file|mux1|Mux30~0_combout\) # (\control|aluControl[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux30~0_combout\,
	datad => \control|aluControl[2]~0_combout\,
	combout => \arith_logic_unity|Add0~0_combout\);

-- Location: LCCOMB_X55_Y61_N2
\arith_logic_unity|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~1_combout\ = (\arith_logic_unity|Add1~2_combout\ & (\arith_logic_unity|Add0~0_combout\ $ (VCC))) # (!\arith_logic_unity|Add1~2_combout\ & (\arith_logic_unity|Add0~0_combout\ & VCC))
-- \arith_logic_unity|Add0~2\ = CARRY((\arith_logic_unity|Add1~2_combout\ & \arith_logic_unity|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~2_combout\,
	datab => \arith_logic_unity|Add0~0_combout\,
	datad => VCC,
	combout => \arith_logic_unity|Add0~1_combout\,
	cout => \arith_logic_unity|Add0~2\);

-- Location: LCCOMB_X54_Y61_N6
\write_data[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[1]~7_combout\ = (\arith_logic_unity|Add0~1_combout\ & (\control|Equal3~0_combout\ & !\control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~1_combout\,
	datab => \control|Equal3~0_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[1]~7_combout\);

-- Location: FF_X57_Y61_N1
\register_file|registers:0:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[1]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(1));

-- Location: FF_X57_Y61_N9
\register_file|registers:1:regx|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[1]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(1));

-- Location: LCCOMB_X57_Y61_N0
\register_file|mux1|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux30~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(1))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(1)))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(1),
	datad => \register_file|registers:1:regx|Q\(1),
	combout => \register_file|mux1|Mux30~0_combout\);

-- Location: LCCOMB_X57_Y61_N4
\arith_logic_unity|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~3_combout\ = (\register_file|mux1|Mux29~0_combout\ & ((\instruction_memory|Mux8~0_combout\ & (!\arith_logic_unity|Add1~1\)) # (!\instruction_memory|Mux8~0_combout\ & (\arith_logic_unity|Add1~1\ & VCC)))) # 
-- (!\register_file|mux1|Mux29~0_combout\ & ((\instruction_memory|Mux8~0_combout\ & ((\arith_logic_unity|Add1~1\) # (GND))) # (!\instruction_memory|Mux8~0_combout\ & (!\arith_logic_unity|Add1~1\))))
-- \arith_logic_unity|Add1~4\ = CARRY((\register_file|mux1|Mux29~0_combout\ & (\instruction_memory|Mux8~0_combout\ & !\arith_logic_unity|Add1~1\)) # (!\register_file|mux1|Mux29~0_combout\ & ((\instruction_memory|Mux8~0_combout\) # 
-- (!\arith_logic_unity|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux29~0_combout\,
	datab => \instruction_memory|Mux8~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~1\,
	combout => \arith_logic_unity|Add1~3_combout\,
	cout => \arith_logic_unity|Add1~4\);

-- Location: LCCOMB_X56_Y61_N26
\arith_logic_unity|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~5_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~3_combout\))) # (!\control|aluControl[2]~0_combout\ & (\instruction_memory|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_memory|Mux8~0_combout\,
	datac => \control|aluControl[2]~0_combout\,
	datad => \arith_logic_unity|Add1~3_combout\,
	combout => \arith_logic_unity|Add1~5_combout\);

-- Location: LCCOMB_X55_Y61_N4
\arith_logic_unity|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~4_combout\ = (\arith_logic_unity|Add0~3_combout\ & ((\arith_logic_unity|Add1~5_combout\ & (\arith_logic_unity|Add0~2\ & VCC)) # (!\arith_logic_unity|Add1~5_combout\ & (!\arith_logic_unity|Add0~2\)))) # 
-- (!\arith_logic_unity|Add0~3_combout\ & ((\arith_logic_unity|Add1~5_combout\ & (!\arith_logic_unity|Add0~2\)) # (!\arith_logic_unity|Add1~5_combout\ & ((\arith_logic_unity|Add0~2\) # (GND)))))
-- \arith_logic_unity|Add0~5\ = CARRY((\arith_logic_unity|Add0~3_combout\ & (!\arith_logic_unity|Add1~5_combout\ & !\arith_logic_unity|Add0~2\)) # (!\arith_logic_unity|Add0~3_combout\ & ((!\arith_logic_unity|Add0~2\) # 
-- (!\arith_logic_unity|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~3_combout\,
	datab => \arith_logic_unity|Add1~5_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~2\,
	combout => \arith_logic_unity|Add0~4_combout\,
	cout => \arith_logic_unity|Add0~5\);

-- Location: LCCOMB_X54_Y61_N18
\write_data[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[2]~8_combout\ = (\arith_logic_unity|Add0~4_combout\ & (\control|Equal3~0_combout\ & !\control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~4_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[2]~8_combout\);

-- Location: FF_X54_Y61_N29
\register_file|registers:0:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[2]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(2));

-- Location: FF_X54_Y61_N7
\register_file|registers:1:regx|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[2]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(2));

-- Location: LCCOMB_X54_Y61_N28
\register_file|mux1|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux29~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(2))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(2)))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(2),
	datad => \register_file|registers:1:regx|Q\(2),
	combout => \register_file|mux1|Mux29~0_combout\);

-- Location: LCCOMB_X57_Y61_N6
\arith_logic_unity|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~6_combout\ = (\register_file|mux1|Mux28~0_combout\ & (\arith_logic_unity|Add1~4\ $ (GND))) # (!\register_file|mux1|Mux28~0_combout\ & (!\arith_logic_unity|Add1~4\ & VCC))
-- \arith_logic_unity|Add1~7\ = CARRY((\register_file|mux1|Mux28~0_combout\ & !\arith_logic_unity|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux28~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~4\,
	combout => \arith_logic_unity|Add1~6_combout\,
	cout => \arith_logic_unity|Add1~7\);

-- Location: LCCOMB_X58_Y61_N8
\arith_logic_unity|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~14_combout\ = (\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~6_combout\)) # (!\control|aluControl[2]~0_combout\ & ((\register_file|mux1|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datac => \arith_logic_unity|Add1~6_combout\,
	datad => \register_file|mux1|Mux28~0_combout\,
	combout => \arith_logic_unity|Add1~14_combout\);

-- Location: LCCOMB_X55_Y61_N6
\arith_logic_unity|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~6_combout\ = ((\control|aluControl[2]~0_combout\ $ (\arith_logic_unity|Add1~14_combout\ $ (!\arith_logic_unity|Add0~5\)))) # (GND)
-- \arith_logic_unity|Add0~7\ = CARRY((\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~14_combout\) # (!\arith_logic_unity|Add0~5\))) # (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~14_combout\ & !\arith_logic_unity|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~14_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~5\,
	combout => \arith_logic_unity|Add0~6_combout\,
	cout => \arith_logic_unity|Add0~7\);

-- Location: LCCOMB_X58_Y61_N28
\write_data[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[3]~4_combout\ = (\control|Equal3~0_combout\ & (\arith_logic_unity|Add0~6_combout\ & !\control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \arith_logic_unity|Add0~6_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[3]~4_combout\);

-- Location: FF_X58_Y61_N7
\register_file|registers:0:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(3));

-- Location: FF_X58_Y61_N25
\register_file|registers:1:regx|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(3));

-- Location: LCCOMB_X58_Y61_N6
\register_file|mux1|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux28~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(3))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(3)))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(3),
	datad => \register_file|registers:1:regx|Q\(3),
	combout => \register_file|mux1|Mux28~0_combout\);

-- Location: LCCOMB_X57_Y61_N8
\arith_logic_unity|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~8_combout\ = (\register_file|mux1|Mux27~0_combout\ & (!\arith_logic_unity|Add1~7\)) # (!\register_file|mux1|Mux27~0_combout\ & ((\arith_logic_unity|Add1~7\) # (GND)))
-- \arith_logic_unity|Add1~9\ = CARRY((!\arith_logic_unity|Add1~7\) # (!\register_file|mux1|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux27~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~7\,
	combout => \arith_logic_unity|Add1~8_combout\,
	cout => \arith_logic_unity|Add1~9\);

-- Location: LCCOMB_X58_Y61_N14
\arith_logic_unity|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~13_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~8_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux27~0_combout\,
	datac => \control|aluControl[2]~0_combout\,
	datad => \arith_logic_unity|Add1~8_combout\,
	combout => \arith_logic_unity|Add1~13_combout\);

-- Location: LCCOMB_X55_Y61_N8
\arith_logic_unity|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~8_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~13_combout\ & (\arith_logic_unity|Add0~7\ & VCC)) # (!\arith_logic_unity|Add1~13_combout\ & (!\arith_logic_unity|Add0~7\)))) # 
-- (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~13_combout\ & (!\arith_logic_unity|Add0~7\)) # (!\arith_logic_unity|Add1~13_combout\ & ((\arith_logic_unity|Add0~7\) # (GND)))))
-- \arith_logic_unity|Add0~9\ = CARRY((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add1~13_combout\ & !\arith_logic_unity|Add0~7\)) # (!\control|aluControl[2]~0_combout\ & ((!\arith_logic_unity|Add0~7\) # 
-- (!\arith_logic_unity|Add1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~13_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~7\,
	combout => \arith_logic_unity|Add0~8_combout\,
	cout => \arith_logic_unity|Add0~9\);

-- Location: LCCOMB_X58_Y61_N24
\write_data[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[4]~6_combout\ = (\control|Equal3~0_combout\ & (!\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~8_combout\,
	combout => \write_data[4]~6_combout\);

-- Location: FF_X58_Y61_N3
\register_file|registers:0:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[4]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(4));

-- Location: FF_X58_Y61_N29
\register_file|registers:1:regx|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[4]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(4));

-- Location: LCCOMB_X58_Y61_N2
\register_file|mux1|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux27~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(4))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(4)))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(4),
	datad => \register_file|registers:1:regx|Q\(4),
	combout => \register_file|mux1|Mux27~0_combout\);

-- Location: LCCOMB_X57_Y61_N10
\arith_logic_unity|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~10_combout\ = (\register_file|mux1|Mux26~0_combout\ & (\arith_logic_unity|Add1~9\ $ (GND))) # (!\register_file|mux1|Mux26~0_combout\ & (!\arith_logic_unity|Add1~9\ & VCC))
-- \arith_logic_unity|Add1~11\ = CARRY((\register_file|mux1|Mux26~0_combout\ & !\arith_logic_unity|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux26~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~9\,
	combout => \arith_logic_unity|Add1~10_combout\,
	cout => \arith_logic_unity|Add1~11\);

-- Location: LCCOMB_X58_Y61_N16
\arith_logic_unity|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~12_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~10_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux26~0_combout\,
	datac => \control|aluControl[2]~0_combout\,
	datad => \arith_logic_unity|Add1~10_combout\,
	combout => \arith_logic_unity|Add1~12_combout\);

-- Location: LCCOMB_X55_Y61_N10
\arith_logic_unity|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~10_combout\ = ((\arith_logic_unity|Add1~12_combout\ $ (\control|aluControl[2]~0_combout\ $ (!\arith_logic_unity|Add0~9\)))) # (GND)
-- \arith_logic_unity|Add0~11\ = CARRY((\arith_logic_unity|Add1~12_combout\ & ((\control|aluControl[2]~0_combout\) # (!\arith_logic_unity|Add0~9\))) # (!\arith_logic_unity|Add1~12_combout\ & (\control|aluControl[2]~0_combout\ & !\arith_logic_unity|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~12_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~9\,
	combout => \arith_logic_unity|Add0~10_combout\,
	cout => \arith_logic_unity|Add0~11\);

-- Location: LCCOMB_X58_Y61_N18
\write_data[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[5]~5_combout\ = (\control|Equal3~0_combout\ & (!\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~10_combout\,
	combout => \write_data[5]~5_combout\);

-- Location: FF_X58_Y61_N31
\register_file|registers:0:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(5));

-- Location: FF_X58_Y61_N1
\register_file|registers:1:regx|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(5));

-- Location: LCCOMB_X58_Y61_N30
\register_file|mux1|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux26~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(5))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(5)))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(5),
	datad => \register_file|registers:1:regx|Q\(5),
	combout => \register_file|mux1|Mux26~0_combout\);

-- Location: LCCOMB_X57_Y61_N12
\arith_logic_unity|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~15_combout\ = (\register_file|mux1|Mux25~0_combout\ & (!\arith_logic_unity|Add1~11\)) # (!\register_file|mux1|Mux25~0_combout\ & ((\arith_logic_unity|Add1~11\) # (GND)))
-- \arith_logic_unity|Add1~16\ = CARRY((!\arith_logic_unity|Add1~11\) # (!\register_file|mux1|Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux25~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~11\,
	combout => \arith_logic_unity|Add1~15_combout\,
	cout => \arith_logic_unity|Add1~16\);

-- Location: LCCOMB_X58_Y61_N22
\arith_logic_unity|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~23_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~15_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~0_combout\,
	datac => \control|aluControl[2]~0_combout\,
	datad => \arith_logic_unity|Add1~15_combout\,
	combout => \arith_logic_unity|Add1~23_combout\);

-- Location: LCCOMB_X55_Y61_N12
\arith_logic_unity|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~12_combout\ = (\arith_logic_unity|Add1~23_combout\ & ((\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add0~11\ & VCC)) # (!\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~11\)))) # 
-- (!\arith_logic_unity|Add1~23_combout\ & ((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~11\)) # (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add0~11\) # (GND)))))
-- \arith_logic_unity|Add0~13\ = CARRY((\arith_logic_unity|Add1~23_combout\ & (!\control|aluControl[2]~0_combout\ & !\arith_logic_unity|Add0~11\)) # (!\arith_logic_unity|Add1~23_combout\ & ((!\arith_logic_unity|Add0~11\) # 
-- (!\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~23_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~11\,
	combout => \arith_logic_unity|Add0~12_combout\,
	cout => \arith_logic_unity|Add0~13\);

-- Location: LCCOMB_X58_Y61_N0
\write_data[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[6]~3_combout\ = (\control|Equal3~0_combout\ & (\arith_logic_unity|Add0~12_combout\ & !\control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \arith_logic_unity|Add0~12_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[6]~3_combout\);

-- Location: FF_X58_Y61_N13
\register_file|registers:0:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[6]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(6));

-- Location: FF_X58_Y61_N11
\register_file|registers:1:regx|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[6]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(6));

-- Location: LCCOMB_X58_Y61_N12
\register_file|mux1|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux25~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(6))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(6)))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(6),
	datad => \register_file|registers:1:regx|Q\(6),
	combout => \register_file|mux1|Mux25~0_combout\);

-- Location: LCCOMB_X57_Y61_N14
\arith_logic_unity|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~17_combout\ = (\register_file|mux1|Mux24~0_combout\ & (\arith_logic_unity|Add1~16\ $ (GND))) # (!\register_file|mux1|Mux24~0_combout\ & (!\arith_logic_unity|Add1~16\ & VCC))
-- \arith_logic_unity|Add1~18\ = CARRY((\register_file|mux1|Mux24~0_combout\ & !\arith_logic_unity|Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux24~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~16\,
	combout => \arith_logic_unity|Add1~17_combout\,
	cout => \arith_logic_unity|Add1~18\);

-- Location: LCCOMB_X56_Y61_N4
\arith_logic_unity|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~22_combout\ = (\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~17_combout\)) # (!\control|aluControl[2]~0_combout\ & ((\register_file|mux1|Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datac => \arith_logic_unity|Add1~17_combout\,
	datad => \register_file|mux1|Mux24~0_combout\,
	combout => \arith_logic_unity|Add1~22_combout\);

-- Location: LCCOMB_X55_Y61_N14
\arith_logic_unity|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~14_combout\ = ((\arith_logic_unity|Add1~22_combout\ $ (\control|aluControl[2]~0_combout\ $ (!\arith_logic_unity|Add0~13\)))) # (GND)
-- \arith_logic_unity|Add0~15\ = CARRY((\arith_logic_unity|Add1~22_combout\ & ((\control|aluControl[2]~0_combout\) # (!\arith_logic_unity|Add0~13\))) # (!\arith_logic_unity|Add1~22_combout\ & (\control|aluControl[2]~0_combout\ & 
-- !\arith_logic_unity|Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~22_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~13\,
	combout => \arith_logic_unity|Add0~14_combout\,
	cout => \arith_logic_unity|Add0~15\);

-- Location: LCCOMB_X58_Y61_N10
\write_data[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[7]~2_combout\ = (\control|Equal3~0_combout\ & (!\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~14_combout\,
	combout => \write_data[7]~2_combout\);

-- Location: FF_X58_Y61_N21
\register_file|registers:0:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[7]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(7));

-- Location: FF_X58_Y61_N19
\register_file|registers:1:regx|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[7]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(7));

-- Location: LCCOMB_X58_Y61_N20
\register_file|mux1|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux24~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(7))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(7)))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(7),
	datad => \register_file|registers:1:regx|Q\(7),
	combout => \register_file|mux1|Mux24~0_combout\);

-- Location: LCCOMB_X57_Y61_N16
\arith_logic_unity|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~19_combout\ = (\register_file|mux1|Mux23~0_combout\ & (!\arith_logic_unity|Add1~18\)) # (!\register_file|mux1|Mux23~0_combout\ & ((\arith_logic_unity|Add1~18\) # (GND)))
-- \arith_logic_unity|Add1~20\ = CARRY((!\arith_logic_unity|Add1~18\) # (!\register_file|mux1|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux23~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~18\,
	combout => \arith_logic_unity|Add1~19_combout\,
	cout => \arith_logic_unity|Add1~20\);

-- Location: LCCOMB_X56_Y61_N6
\arith_logic_unity|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~21_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~19_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \register_file|mux1|Mux23~0_combout\,
	datad => \arith_logic_unity|Add1~19_combout\,
	combout => \arith_logic_unity|Add1~21_combout\);

-- Location: LCCOMB_X55_Y61_N16
\arith_logic_unity|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~16_combout\ = (\arith_logic_unity|Add1~21_combout\ & ((\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add0~15\ & VCC)) # (!\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~15\)))) # 
-- (!\arith_logic_unity|Add1~21_combout\ & ((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~15\)) # (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add0~15\) # (GND)))))
-- \arith_logic_unity|Add0~17\ = CARRY((\arith_logic_unity|Add1~21_combout\ & (!\control|aluControl[2]~0_combout\ & !\arith_logic_unity|Add0~15\)) # (!\arith_logic_unity|Add1~21_combout\ & ((!\arith_logic_unity|Add0~15\) # 
-- (!\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~21_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~15\,
	combout => \arith_logic_unity|Add0~16_combout\,
	cout => \arith_logic_unity|Add0~17\);

-- Location: LCCOMB_X53_Y61_N14
\write_data[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[8]~1_combout\ = (\control|Equal3~0_combout\ & (!\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal3~0_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~16_combout\,
	combout => \write_data[8]~1_combout\);

-- Location: FF_X56_Y61_N1
\register_file|registers:0:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[8]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(8));

-- Location: FF_X56_Y61_N7
\register_file|registers:1:regx|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[8]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(8));

-- Location: LCCOMB_X56_Y61_N0
\register_file|mux1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux23~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(8))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(8)))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(8),
	datad => \register_file|registers:1:regx|Q\(8),
	combout => \register_file|mux1|Mux23~0_combout\);

-- Location: LCCOMB_X57_Y61_N18
\arith_logic_unity|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~24_combout\ = (\register_file|mux1|Mux22~0_combout\ & (\arith_logic_unity|Add1~20\ $ (GND))) # (!\register_file|mux1|Mux22~0_combout\ & (!\arith_logic_unity|Add1~20\ & VCC))
-- \arith_logic_unity|Add1~25\ = CARRY((\register_file|mux1|Mux22~0_combout\ & !\arith_logic_unity|Add1~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux22~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~20\,
	combout => \arith_logic_unity|Add1~24_combout\,
	cout => \arith_logic_unity|Add1~25\);

-- Location: LCCOMB_X56_Y61_N2
\arith_logic_unity|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~26_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~24_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \register_file|mux1|Mux22~0_combout\,
	datad => \arith_logic_unity|Add1~24_combout\,
	combout => \arith_logic_unity|Add1~26_combout\);

-- Location: LCCOMB_X55_Y61_N18
\arith_logic_unity|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~18_combout\ = ((\arith_logic_unity|Add1~26_combout\ $ (\control|aluControl[2]~0_combout\ $ (!\arith_logic_unity|Add0~17\)))) # (GND)
-- \arith_logic_unity|Add0~19\ = CARRY((\arith_logic_unity|Add1~26_combout\ & ((\control|aluControl[2]~0_combout\) # (!\arith_logic_unity|Add0~17\))) # (!\arith_logic_unity|Add1~26_combout\ & (\control|aluControl[2]~0_combout\ & 
-- !\arith_logic_unity|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~26_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~17\,
	combout => \arith_logic_unity|Add0~18_combout\,
	cout => \arith_logic_unity|Add0~19\);

-- Location: LCCOMB_X56_Y62_N24
\write_data[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[9]~0_combout\ = (!\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~18_combout\ & \control|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Add0~18_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \write_data[9]~0_combout\);

-- Location: FF_X56_Y61_N13
\register_file|registers:0:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[9]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(9));

-- Location: FF_X56_Y61_N3
\register_file|registers:1:regx|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[9]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(9));

-- Location: LCCOMB_X56_Y61_N12
\register_file|mux1|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux22~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(9))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(9)))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(9),
	datad => \register_file|registers:1:regx|Q\(9),
	combout => \register_file|mux1|Mux22~0_combout\);

-- Location: LCCOMB_X57_Y61_N20
\arith_logic_unity|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~27_combout\ = (\register_file|mux1|Mux21~0_combout\ & (!\arith_logic_unity|Add1~25\)) # (!\register_file|mux1|Mux21~0_combout\ & ((\arith_logic_unity|Add1~25\) # (GND)))
-- \arith_logic_unity|Add1~28\ = CARRY((!\arith_logic_unity|Add1~25\) # (!\register_file|mux1|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux21~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~25\,
	combout => \arith_logic_unity|Add1~27_combout\,
	cout => \arith_logic_unity|Add1~28\);

-- Location: LCCOMB_X54_Y61_N2
\arith_logic_unity|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~29_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~27_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datac => \register_file|mux1|Mux21~0_combout\,
	datad => \arith_logic_unity|Add1~27_combout\,
	combout => \arith_logic_unity|Add1~29_combout\);

-- Location: LCCOMB_X55_Y61_N20
\arith_logic_unity|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~20_combout\ = (\arith_logic_unity|Add1~29_combout\ & ((\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add0~19\ & VCC)) # (!\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~19\)))) # 
-- (!\arith_logic_unity|Add1~29_combout\ & ((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~19\)) # (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add0~19\) # (GND)))))
-- \arith_logic_unity|Add0~21\ = CARRY((\arith_logic_unity|Add1~29_combout\ & (!\control|aluControl[2]~0_combout\ & !\arith_logic_unity|Add0~19\)) # (!\arith_logic_unity|Add1~29_combout\ & ((!\arith_logic_unity|Add0~19\) # 
-- (!\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~29_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~19\,
	combout => \arith_logic_unity|Add0~20_combout\,
	cout => \arith_logic_unity|Add0~21\);

-- Location: LCCOMB_X53_Y61_N12
\write_data[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[10]~30_combout\ = (\control|Equal3~0_combout\ & (!\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal3~0_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~20_combout\,
	combout => \write_data[10]~30_combout\);

-- Location: FF_X53_Y61_N5
\register_file|registers:0:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[10]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(10));

-- Location: LCCOMB_X53_Y61_N18
\register_file|registers:1:regx|Q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[10]~feeder_combout\ = \write_data[10]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[10]~30_combout\,
	combout => \register_file|registers:1:regx|Q[10]~feeder_combout\);

-- Location: FF_X53_Y61_N19
\register_file|registers:1:regx|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(10));

-- Location: LCCOMB_X53_Y61_N4
\register_file|mux1|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux21~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(10))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(10)))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(10),
	datad => \register_file|registers:1:regx|Q\(10),
	combout => \register_file|mux1|Mux21~0_combout\);

-- Location: LCCOMB_X57_Y61_N22
\arith_logic_unity|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~30_combout\ = (\register_file|mux1|Mux20~0_combout\ & (\arith_logic_unity|Add1~28\ $ (GND))) # (!\register_file|mux1|Mux20~0_combout\ & (!\arith_logic_unity|Add1~28\ & VCC))
-- \arith_logic_unity|Add1~31\ = CARRY((\register_file|mux1|Mux20~0_combout\ & !\arith_logic_unity|Add1~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux20~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~28\,
	combout => \arith_logic_unity|Add1~30_combout\,
	cout => \arith_logic_unity|Add1~31\);

-- Location: LCCOMB_X54_Y61_N22
\arith_logic_unity|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~35_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~30_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datac => \register_file|mux1|Mux20~0_combout\,
	datad => \arith_logic_unity|Add1~30_combout\,
	combout => \arith_logic_unity|Add1~35_combout\);

-- Location: LCCOMB_X55_Y61_N22
\arith_logic_unity|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~22_combout\ = ((\control|aluControl[2]~0_combout\ $ (\arith_logic_unity|Add1~35_combout\ $ (!\arith_logic_unity|Add0~21\)))) # (GND)
-- \arith_logic_unity|Add0~23\ = CARRY((\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~35_combout\) # (!\arith_logic_unity|Add0~21\))) # (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~35_combout\ & 
-- !\arith_logic_unity|Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~35_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~21\,
	combout => \arith_logic_unity|Add0~22_combout\,
	cout => \arith_logic_unity|Add0~23\);

-- Location: LCCOMB_X53_Y61_N22
\write_data[11]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[11]~29_combout\ = (\arith_logic_unity|Add0~22_combout\ & (\control|Equal3~0_combout\ & !\control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~22_combout\,
	datab => \control|Equal3~0_combout\,
	datac => \control|aluOp[1]~0_combout\,
	combout => \write_data[11]~29_combout\);

-- Location: FF_X53_Y61_N1
\register_file|registers:0:regx|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[11]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(11));

-- Location: LCCOMB_X53_Y61_N2
\register_file|registers:1:regx|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[11]~feeder_combout\ = \write_data[11]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[11]~29_combout\,
	combout => \register_file|registers:1:regx|Q[11]~feeder_combout\);

-- Location: FF_X53_Y61_N3
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

-- Location: LCCOMB_X53_Y61_N0
\register_file|mux1|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux20~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(11))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(11)))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(11),
	datad => \register_file|registers:1:regx|Q\(11),
	combout => \register_file|mux1|Mux20~0_combout\);

-- Location: LCCOMB_X57_Y61_N24
\arith_logic_unity|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~32_combout\ = (\register_file|mux1|Mux19~0_combout\ & (!\arith_logic_unity|Add1~31\)) # (!\register_file|mux1|Mux19~0_combout\ & ((\arith_logic_unity|Add1~31\) # (GND)))
-- \arith_logic_unity|Add1~33\ = CARRY((!\arith_logic_unity|Add1~31\) # (!\register_file|mux1|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux19~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~31\,
	combout => \arith_logic_unity|Add1~32_combout\,
	cout => \arith_logic_unity|Add1~33\);

-- Location: LCCOMB_X54_Y61_N16
\arith_logic_unity|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~34_combout\ = (\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~32_combout\)) # (!\control|aluControl[2]~0_combout\ & ((\register_file|mux1|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datac => \arith_logic_unity|Add1~32_combout\,
	datad => \register_file|mux1|Mux19~0_combout\,
	combout => \arith_logic_unity|Add1~34_combout\);

-- Location: LCCOMB_X55_Y61_N24
\arith_logic_unity|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~24_combout\ = (\arith_logic_unity|Add1~34_combout\ & ((\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add0~23\ & VCC)) # (!\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~23\)))) # 
-- (!\arith_logic_unity|Add1~34_combout\ & ((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~23\)) # (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add0~23\) # (GND)))))
-- \arith_logic_unity|Add0~25\ = CARRY((\arith_logic_unity|Add1~34_combout\ & (!\control|aluControl[2]~0_combout\ & !\arith_logic_unity|Add0~23\)) # (!\arith_logic_unity|Add1~34_combout\ & ((!\arith_logic_unity|Add0~23\) # 
-- (!\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~34_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~23\,
	combout => \arith_logic_unity|Add0~24_combout\,
	cout => \arith_logic_unity|Add0~25\);

-- Location: LCCOMB_X53_Y61_N28
\write_data[12]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[12]~28_combout\ = (\control|Equal3~0_combout\ & (!\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal3~0_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~24_combout\,
	combout => \write_data[12]~28_combout\);

-- Location: FF_X53_Y61_N9
\register_file|registers:0:regx|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[12]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(12));

-- Location: LCCOMB_X53_Y61_N6
\register_file|registers:1:regx|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[12]~feeder_combout\ = \write_data[12]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_data[12]~28_combout\,
	combout => \register_file|registers:1:regx|Q[12]~feeder_combout\);

-- Location: FF_X53_Y61_N7
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

-- Location: LCCOMB_X53_Y61_N8
\register_file|mux1|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux19~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(12))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(12)))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(12),
	datad => \register_file|registers:1:regx|Q\(12),
	combout => \register_file|mux1|Mux19~0_combout\);

-- Location: LCCOMB_X57_Y61_N26
\arith_logic_unity|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~36_combout\ = (\register_file|mux1|Mux18~0_combout\ & (\arith_logic_unity|Add1~33\ $ (GND))) # (!\register_file|mux1|Mux18~0_combout\ & (!\arith_logic_unity|Add1~33\ & VCC))
-- \arith_logic_unity|Add1~37\ = CARRY((\register_file|mux1|Mux18~0_combout\ & !\arith_logic_unity|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux18~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~33\,
	combout => \arith_logic_unity|Add1~36_combout\,
	cout => \arith_logic_unity|Add1~37\);

-- Location: LCCOMB_X54_Y61_N24
\arith_logic_unity|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~44_combout\ = (\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~36_combout\)) # (!\control|aluControl[2]~0_combout\ & ((\register_file|mux1|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datac => \arith_logic_unity|Add1~36_combout\,
	datad => \register_file|mux1|Mux18~0_combout\,
	combout => \arith_logic_unity|Add1~44_combout\);

-- Location: LCCOMB_X55_Y61_N26
\arith_logic_unity|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~26_combout\ = ((\control|aluControl[2]~0_combout\ $ (\arith_logic_unity|Add1~44_combout\ $ (!\arith_logic_unity|Add0~25\)))) # (GND)
-- \arith_logic_unity|Add0~27\ = CARRY((\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~44_combout\) # (!\arith_logic_unity|Add0~25\))) # (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~44_combout\ & 
-- !\arith_logic_unity|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~44_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~25\,
	combout => \arith_logic_unity|Add0~26_combout\,
	cout => \arith_logic_unity|Add0~27\);

-- Location: LCCOMB_X53_Y61_N30
\write_data[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[13]~27_combout\ = (\control|Equal3~0_combout\ & (!\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal3~0_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~26_combout\,
	combout => \write_data[13]~27_combout\);

-- Location: FF_X53_Y61_N25
\register_file|registers:0:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[13]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(13));

-- Location: LCCOMB_X53_Y61_N10
\register_file|registers:1:regx|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[13]~feeder_combout\ = \write_data[13]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[13]~27_combout\,
	combout => \register_file|registers:1:regx|Q[13]~feeder_combout\);

-- Location: FF_X53_Y61_N11
\register_file|registers:1:regx|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(13));

-- Location: LCCOMB_X53_Y61_N24
\register_file|mux1|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux18~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(13))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(13)))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(13),
	datad => \register_file|registers:1:regx|Q\(13),
	combout => \register_file|mux1|Mux18~0_combout\);

-- Location: LCCOMB_X57_Y61_N28
\arith_logic_unity|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~38_combout\ = (\register_file|mux1|Mux17~0_combout\ & (!\arith_logic_unity|Add1~37\)) # (!\register_file|mux1|Mux17~0_combout\ & ((\arith_logic_unity|Add1~37\) # (GND)))
-- \arith_logic_unity|Add1~39\ = CARRY((!\arith_logic_unity|Add1~37\) # (!\register_file|mux1|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux17~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~37\,
	combout => \arith_logic_unity|Add1~38_combout\,
	cout => \arith_logic_unity|Add1~39\);

-- Location: LCCOMB_X56_Y61_N22
\arith_logic_unity|Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~43_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~38_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \register_file|mux1|Mux17~0_combout\,
	datad => \arith_logic_unity|Add1~38_combout\,
	combout => \arith_logic_unity|Add1~43_combout\);

-- Location: LCCOMB_X55_Y61_N28
\arith_logic_unity|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~28_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~43_combout\ & (\arith_logic_unity|Add0~27\ & VCC)) # (!\arith_logic_unity|Add1~43_combout\ & (!\arith_logic_unity|Add0~27\)))) # 
-- (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~43_combout\ & (!\arith_logic_unity|Add0~27\)) # (!\arith_logic_unity|Add1~43_combout\ & ((\arith_logic_unity|Add0~27\) # (GND)))))
-- \arith_logic_unity|Add0~29\ = CARRY((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add1~43_combout\ & !\arith_logic_unity|Add0~27\)) # (!\control|aluControl[2]~0_combout\ & ((!\arith_logic_unity|Add0~27\) # 
-- (!\arith_logic_unity|Add1~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~43_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~27\,
	combout => \arith_logic_unity|Add0~28_combout\,
	cout => \arith_logic_unity|Add0~29\);

-- Location: LCCOMB_X56_Y62_N30
\write_data[14]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[14]~26_combout\ = (\control|Equal3~0_combout\ & (!\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~28_combout\,
	combout => \write_data[14]~26_combout\);

-- Location: FF_X56_Y61_N25
\register_file|registers:0:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[14]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(14));

-- Location: FF_X56_Y61_N31
\register_file|registers:1:regx|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[14]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(14));

-- Location: LCCOMB_X56_Y61_N24
\register_file|mux1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux17~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(14))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(14)))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(14),
	datad => \register_file|registers:1:regx|Q\(14),
	combout => \register_file|mux1|Mux17~0_combout\);

-- Location: LCCOMB_X57_Y61_N30
\arith_logic_unity|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~40_combout\ = (\register_file|mux1|Mux16~0_combout\ & (\arith_logic_unity|Add1~39\ $ (GND))) # (!\register_file|mux1|Mux16~0_combout\ & (!\arith_logic_unity|Add1~39\ & VCC))
-- \arith_logic_unity|Add1~41\ = CARRY((\register_file|mux1|Mux16~0_combout\ & !\arith_logic_unity|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux16~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~39\,
	combout => \arith_logic_unity|Add1~40_combout\,
	cout => \arith_logic_unity|Add1~41\);

-- Location: LCCOMB_X56_Y61_N10
\arith_logic_unity|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~42_combout\ = (\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~40_combout\)) # (!\control|aluControl[2]~0_combout\ & ((\register_file|mux1|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~40_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => \register_file|mux1|Mux16~0_combout\,
	combout => \arith_logic_unity|Add1~42_combout\);

-- Location: LCCOMB_X55_Y61_N30
\arith_logic_unity|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~30_combout\ = ((\control|aluControl[2]~0_combout\ $ (\arith_logic_unity|Add1~42_combout\ $ (!\arith_logic_unity|Add0~29\)))) # (GND)
-- \arith_logic_unity|Add0~31\ = CARRY((\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~42_combout\) # (!\arith_logic_unity|Add0~29\))) # (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~42_combout\ & 
-- !\arith_logic_unity|Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~42_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~29\,
	combout => \arith_logic_unity|Add0~30_combout\,
	cout => \arith_logic_unity|Add0~31\);

-- Location: LCCOMB_X53_Y61_N20
\write_data[15]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[15]~25_combout\ = (!\control|aluOp[1]~0_combout\ & (\control|Equal3~0_combout\ & \arith_logic_unity|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \arith_logic_unity|Add0~30_combout\,
	combout => \write_data[15]~25_combout\);

-- Location: FF_X56_Y61_N11
\register_file|registers:1:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[15]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(15));

-- Location: FF_X56_Y61_N21
\register_file|registers:0:regx|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[15]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(15));

-- Location: LCCOMB_X56_Y61_N20
\register_file|mux1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux16~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(15))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(15))) # (!\instruction_memory|Mux5~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(15),
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(15),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \register_file|mux1|Mux16~0_combout\);

-- Location: LCCOMB_X57_Y60_N0
\arith_logic_unity|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~45_combout\ = (\register_file|mux1|Mux15~0_combout\ & (!\arith_logic_unity|Add1~41\)) # (!\register_file|mux1|Mux15~0_combout\ & ((\arith_logic_unity|Add1~41\) # (GND)))
-- \arith_logic_unity|Add1~46\ = CARRY((!\arith_logic_unity|Add1~41\) # (!\register_file|mux1|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux15~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~41\,
	combout => \arith_logic_unity|Add1~45_combout\,
	cout => \arith_logic_unity|Add1~46\);

-- Location: LCCOMB_X56_Y61_N30
\arith_logic_unity|Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~47_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~45_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \register_file|mux1|Mux15~0_combout\,
	datad => \arith_logic_unity|Add1~45_combout\,
	combout => \arith_logic_unity|Add1~47_combout\);

-- Location: LCCOMB_X55_Y60_N0
\arith_logic_unity|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~32_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~47_combout\ & (\arith_logic_unity|Add0~31\ & VCC)) # (!\arith_logic_unity|Add1~47_combout\ & (!\arith_logic_unity|Add0~31\)))) # 
-- (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~47_combout\ & (!\arith_logic_unity|Add0~31\)) # (!\arith_logic_unity|Add1~47_combout\ & ((\arith_logic_unity|Add0~31\) # (GND)))))
-- \arith_logic_unity|Add0~33\ = CARRY((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add1~47_combout\ & !\arith_logic_unity|Add0~31\)) # (!\control|aluControl[2]~0_combout\ & ((!\arith_logic_unity|Add0~31\) # 
-- (!\arith_logic_unity|Add1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~47_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~31\,
	combout => \arith_logic_unity|Add0~32_combout\,
	cout => \arith_logic_unity|Add0~33\);

-- Location: LCCOMB_X56_Y59_N26
\write_data[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[16]~24_combout\ = (\control|Equal3~0_combout\ & (\arith_logic_unity|Add0~32_combout\ & !\control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal3~0_combout\,
	datac => \arith_logic_unity|Add0~32_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[16]~24_combout\);

-- Location: FF_X56_Y61_N15
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

-- Location: FF_X56_Y61_N29
\register_file|registers:0:regx|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[16]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(16));

-- Location: LCCOMB_X56_Y61_N28
\register_file|mux1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux15~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(16))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(16))) # (!\instruction_memory|Mux5~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \register_file|registers:1:regx|Q\(16),
	datac => \register_file|registers:0:regx|Q\(16),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \register_file|mux1|Mux15~0_combout\);

-- Location: LCCOMB_X57_Y60_N2
\arith_logic_unity|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~48_combout\ = (\register_file|mux1|Mux14~0_combout\ & (\arith_logic_unity|Add1~46\ $ (GND))) # (!\register_file|mux1|Mux14~0_combout\ & (!\arith_logic_unity|Add1~46\ & VCC))
-- \arith_logic_unity|Add1~49\ = CARRY((\register_file|mux1|Mux14~0_combout\ & !\arith_logic_unity|Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux14~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~46\,
	combout => \arith_logic_unity|Add1~48_combout\,
	cout => \arith_logic_unity|Add1~49\);

-- Location: LCCOMB_X56_Y60_N10
\arith_logic_unity|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~50_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~48_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux14~0_combout\,
	datac => \control|aluControl[2]~0_combout\,
	datad => \arith_logic_unity|Add1~48_combout\,
	combout => \arith_logic_unity|Add1~50_combout\);

-- Location: LCCOMB_X55_Y60_N2
\arith_logic_unity|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~34_combout\ = ((\control|aluControl[2]~0_combout\ $ (\arith_logic_unity|Add1~50_combout\ $ (!\arith_logic_unity|Add0~33\)))) # (GND)
-- \arith_logic_unity|Add0~35\ = CARRY((\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~50_combout\) # (!\arith_logic_unity|Add0~33\))) # (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~50_combout\ & 
-- !\arith_logic_unity|Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~50_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~33\,
	combout => \arith_logic_unity|Add0~34_combout\,
	cout => \arith_logic_unity|Add0~35\);

-- Location: LCCOMB_X56_Y59_N18
\write_data[17]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[17]~23_combout\ = (\control|Equal3~0_combout\ & (!\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal3~0_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~34_combout\,
	combout => \write_data[17]~23_combout\);

-- Location: FF_X56_Y61_N9
\register_file|registers:0:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[17]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(17));

-- Location: FF_X56_Y61_N19
\register_file|registers:1:regx|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[17]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(17));

-- Location: LCCOMB_X56_Y61_N8
\register_file|mux1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux14~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(17))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(17)))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(17),
	datad => \register_file|registers:1:regx|Q\(17),
	combout => \register_file|mux1|Mux14~0_combout\);

-- Location: LCCOMB_X57_Y60_N4
\arith_logic_unity|Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~51_combout\ = (\register_file|mux1|Mux13~0_combout\ & (!\arith_logic_unity|Add1~49\)) # (!\register_file|mux1|Mux13~0_combout\ & ((\arith_logic_unity|Add1~49\) # (GND)))
-- \arith_logic_unity|Add1~52\ = CARRY((!\arith_logic_unity|Add1~49\) # (!\register_file|mux1|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux13~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~49\,
	combout => \arith_logic_unity|Add1~51_combout\,
	cout => \arith_logic_unity|Add1~52\);

-- Location: LCCOMB_X56_Y60_N14
\arith_logic_unity|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~53_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~51_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \register_file|mux1|Mux13~0_combout\,
	datad => \arith_logic_unity|Add1~51_combout\,
	combout => \arith_logic_unity|Add1~53_combout\);

-- Location: LCCOMB_X55_Y60_N4
\arith_logic_unity|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~36_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~53_combout\ & (\arith_logic_unity|Add0~35\ & VCC)) # (!\arith_logic_unity|Add1~53_combout\ & (!\arith_logic_unity|Add0~35\)))) # 
-- (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~53_combout\ & (!\arith_logic_unity|Add0~35\)) # (!\arith_logic_unity|Add1~53_combout\ & ((\arith_logic_unity|Add0~35\) # (GND)))))
-- \arith_logic_unity|Add0~37\ = CARRY((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add1~53_combout\ & !\arith_logic_unity|Add0~35\)) # (!\control|aluControl[2]~0_combout\ & ((!\arith_logic_unity|Add0~35\) # 
-- (!\arith_logic_unity|Add1~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~53_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~35\,
	combout => \arith_logic_unity|Add0~36_combout\,
	cout => \arith_logic_unity|Add0~37\);

-- Location: LCCOMB_X56_Y59_N10
\write_data[18]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[18]~22_combout\ = (\control|Equal3~0_combout\ & (\arith_logic_unity|Add0~36_combout\ & !\control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal3~0_combout\,
	datac => \arith_logic_unity|Add0~36_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[18]~22_combout\);

-- Location: FF_X56_Y60_N23
\register_file|registers:1:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[18]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(18));

-- Location: FF_X56_Y60_N9
\register_file|registers:0:regx|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[18]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(18));

-- Location: LCCOMB_X56_Y60_N8
\register_file|mux1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux13~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & ((\register_file|registers:0:regx|Q\(18)))) # (!\PC|Q\(2) & (\register_file|registers:1:regx|Q\(18))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(18),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(18),
	datad => \PC|Q\(2),
	combout => \register_file|mux1|Mux13~0_combout\);

-- Location: LCCOMB_X57_Y60_N6
\arith_logic_unity|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~54_combout\ = (\register_file|mux1|Mux12~0_combout\ & (\arith_logic_unity|Add1~52\ $ (GND))) # (!\register_file|mux1|Mux12~0_combout\ & (!\arith_logic_unity|Add1~52\ & VCC))
-- \arith_logic_unity|Add1~55\ = CARRY((\register_file|mux1|Mux12~0_combout\ & !\arith_logic_unity|Add1~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux12~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~52\,
	combout => \arith_logic_unity|Add1~54_combout\,
	cout => \arith_logic_unity|Add1~55\);

-- Location: LCCOMB_X56_Y60_N0
\arith_logic_unity|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~56_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~54_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux12~0_combout\,
	datac => \control|aluControl[2]~0_combout\,
	datad => \arith_logic_unity|Add1~54_combout\,
	combout => \arith_logic_unity|Add1~56_combout\);

-- Location: LCCOMB_X55_Y60_N6
\arith_logic_unity|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~38_combout\ = ((\control|aluControl[2]~0_combout\ $ (\arith_logic_unity|Add1~56_combout\ $ (!\arith_logic_unity|Add0~37\)))) # (GND)
-- \arith_logic_unity|Add0~39\ = CARRY((\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~56_combout\) # (!\arith_logic_unity|Add0~37\))) # (!\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~56_combout\ & 
-- !\arith_logic_unity|Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~56_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~37\,
	combout => \arith_logic_unity|Add0~38_combout\,
	cout => \arith_logic_unity|Add0~39\);

-- Location: LCCOMB_X56_Y59_N8
\write_data[19]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[19]~21_combout\ = (\control|Equal3~0_combout\ & (!\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Equal3~0_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~38_combout\,
	combout => \write_data[19]~21_combout\);

-- Location: FF_X56_Y60_N13
\register_file|registers:0:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[19]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(19));

-- Location: FF_X56_Y60_N3
\register_file|registers:1:regx|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[19]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(19));

-- Location: LCCOMB_X56_Y60_N12
\register_file|mux1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux12~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(19))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(19)))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(19),
	datad => \register_file|registers:1:regx|Q\(19),
	combout => \register_file|mux1|Mux12~0_combout\);

-- Location: LCCOMB_X57_Y60_N8
\arith_logic_unity|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~57_combout\ = (\register_file|mux1|Mux11~0_combout\ & (!\arith_logic_unity|Add1~55\)) # (!\register_file|mux1|Mux11~0_combout\ & ((\arith_logic_unity|Add1~55\) # (GND)))
-- \arith_logic_unity|Add1~58\ = CARRY((!\arith_logic_unity|Add1~55\) # (!\register_file|mux1|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux11~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~55\,
	combout => \arith_logic_unity|Add1~57_combout\,
	cout => \arith_logic_unity|Add1~58\);

-- Location: LCCOMB_X56_Y60_N18
\arith_logic_unity|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~59_combout\ = (\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~57_combout\)) # (!\control|aluControl[2]~0_combout\ & ((\register_file|mux1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~57_combout\,
	datad => \register_file|mux1|Mux11~0_combout\,
	combout => \arith_logic_unity|Add1~59_combout\);

-- Location: LCCOMB_X55_Y60_N8
\arith_logic_unity|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~40_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~59_combout\ & (\arith_logic_unity|Add0~39\ & VCC)) # (!\arith_logic_unity|Add1~59_combout\ & (!\arith_logic_unity|Add0~39\)))) # 
-- (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~59_combout\ & (!\arith_logic_unity|Add0~39\)) # (!\arith_logic_unity|Add1~59_combout\ & ((\arith_logic_unity|Add0~39\) # (GND)))))
-- \arith_logic_unity|Add0~41\ = CARRY((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add1~59_combout\ & !\arith_logic_unity|Add0~39\)) # (!\control|aluControl[2]~0_combout\ & ((!\arith_logic_unity|Add0~39\) # 
-- (!\arith_logic_unity|Add1~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~59_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~39\,
	combout => \arith_logic_unity|Add0~40_combout\,
	cout => \arith_logic_unity|Add0~41\);

-- Location: LCCOMB_X56_Y59_N24
\write_data[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[20]~20_combout\ = (!\control|aluOp[1]~0_combout\ & (\control|Equal3~0_combout\ & \arith_logic_unity|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \control|Equal3~0_combout\,
	datac => \arith_logic_unity|Add0~40_combout\,
	combout => \write_data[20]~20_combout\);

-- Location: FF_X56_Y60_N19
\register_file|registers:1:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[20]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(20));

-- Location: FF_X56_Y60_N25
\register_file|registers:0:regx|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[20]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(20));

-- Location: LCCOMB_X56_Y60_N24
\register_file|mux1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux11~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(20))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(20))) # (!\instruction_memory|Mux5~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \register_file|registers:1:regx|Q\(20),
	datac => \register_file|registers:0:regx|Q\(20),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \register_file|mux1|Mux11~0_combout\);

-- Location: LCCOMB_X57_Y60_N10
\arith_logic_unity|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~60_combout\ = (\register_file|mux1|Mux10~0_combout\ & (\arith_logic_unity|Add1~58\ $ (GND))) # (!\register_file|mux1|Mux10~0_combout\ & (!\arith_logic_unity|Add1~58\ & VCC))
-- \arith_logic_unity|Add1~61\ = CARRY((\register_file|mux1|Mux10~0_combout\ & !\arith_logic_unity|Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux10~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~58\,
	combout => \arith_logic_unity|Add1~60_combout\,
	cout => \arith_logic_unity|Add1~61\);

-- Location: LCCOMB_X56_Y60_N2
\arith_logic_unity|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~62_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~60_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \register_file|mux1|Mux10~0_combout\,
	datad => \arith_logic_unity|Add1~60_combout\,
	combout => \arith_logic_unity|Add1~62_combout\);

-- Location: LCCOMB_X55_Y60_N10
\arith_logic_unity|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~42_combout\ = ((\arith_logic_unity|Add1~62_combout\ $ (\control|aluControl[2]~0_combout\ $ (!\arith_logic_unity|Add0~41\)))) # (GND)
-- \arith_logic_unity|Add0~43\ = CARRY((\arith_logic_unity|Add1~62_combout\ & ((\control|aluControl[2]~0_combout\) # (!\arith_logic_unity|Add0~41\))) # (!\arith_logic_unity|Add1~62_combout\ & (\control|aluControl[2]~0_combout\ & 
-- !\arith_logic_unity|Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~62_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~41\,
	combout => \arith_logic_unity|Add0~42_combout\,
	cout => \arith_logic_unity|Add0~43\);

-- Location: LCCOMB_X54_Y60_N22
\write_data[21]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[21]~19_combout\ = (\control|Equal3~0_combout\ & (\arith_logic_unity|Add0~42_combout\ & !\control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \arith_logic_unity|Add0~42_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[21]~19_combout\);

-- Location: FF_X56_Y60_N15
\register_file|registers:1:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[21]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(21));

-- Location: FF_X56_Y60_N17
\register_file|registers:0:regx|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[21]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(21));

-- Location: LCCOMB_X56_Y60_N16
\register_file|mux1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux10~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(21))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & (\register_file|registers:1:regx|Q\(21))) # (!\instruction_memory|Mux5~0_combout\ & 
-- ((\register_file|registers:0:regx|Q\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \register_file|registers:1:regx|Q\(21),
	datac => \register_file|registers:0:regx|Q\(21),
	datad => \instruction_memory|Mux5~0_combout\,
	combout => \register_file|mux1|Mux10~0_combout\);

-- Location: LCCOMB_X57_Y60_N12
\arith_logic_unity|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~63_combout\ = (\register_file|mux1|Mux9~0_combout\ & (!\arith_logic_unity|Add1~61\)) # (!\register_file|mux1|Mux9~0_combout\ & ((\arith_logic_unity|Add1~61\) # (GND)))
-- \arith_logic_unity|Add1~64\ = CARRY((!\arith_logic_unity|Add1~61\) # (!\register_file|mux1|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux9~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~61\,
	combout => \arith_logic_unity|Add1~63_combout\,
	cout => \arith_logic_unity|Add1~64\);

-- Location: LCCOMB_X54_Y60_N30
\arith_logic_unity|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~65_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~63_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datac => \register_file|mux1|Mux9~0_combout\,
	datad => \arith_logic_unity|Add1~63_combout\,
	combout => \arith_logic_unity|Add1~65_combout\);

-- Location: LCCOMB_X55_Y60_N12
\arith_logic_unity|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~44_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~65_combout\ & (\arith_logic_unity|Add0~43\ & VCC)) # (!\arith_logic_unity|Add1~65_combout\ & (!\arith_logic_unity|Add0~43\)))) # 
-- (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~65_combout\ & (!\arith_logic_unity|Add0~43\)) # (!\arith_logic_unity|Add1~65_combout\ & ((\arith_logic_unity|Add0~43\) # (GND)))))
-- \arith_logic_unity|Add0~45\ = CARRY((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add1~65_combout\ & !\arith_logic_unity|Add0~43\)) # (!\control|aluControl[2]~0_combout\ & ((!\arith_logic_unity|Add0~43\) # 
-- (!\arith_logic_unity|Add1~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~65_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~43\,
	combout => \arith_logic_unity|Add0~44_combout\,
	cout => \arith_logic_unity|Add0~45\);

-- Location: LCCOMB_X54_Y60_N2
\write_data[22]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[22]~18_combout\ = (\control|Equal3~0_combout\ & (\arith_logic_unity|Add0~44_combout\ & !\control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \arith_logic_unity|Add0~44_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[22]~18_combout\);

-- Location: FF_X54_Y60_N5
\register_file|registers:0:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[22]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(22));

-- Location: FF_X54_Y60_N7
\register_file|registers:1:regx|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	asdata => \write_data[22]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(22));

-- Location: LCCOMB_X54_Y60_N4
\register_file|mux1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux9~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(22))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(22)))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(22),
	datad => \register_file|registers:1:regx|Q\(22),
	combout => \register_file|mux1|Mux9~0_combout\);

-- Location: LCCOMB_X57_Y60_N14
\arith_logic_unity|Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~66_combout\ = (\register_file|mux1|Mux8~0_combout\ & (\arith_logic_unity|Add1~64\ $ (GND))) # (!\register_file|mux1|Mux8~0_combout\ & (!\arith_logic_unity|Add1~64\ & VCC))
-- \arith_logic_unity|Add1~67\ = CARRY((\register_file|mux1|Mux8~0_combout\ & !\arith_logic_unity|Add1~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux8~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~64\,
	combout => \arith_logic_unity|Add1~66_combout\,
	cout => \arith_logic_unity|Add1~67\);

-- Location: LCCOMB_X54_Y60_N16
\arith_logic_unity|Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~68_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~66_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux8~0_combout\,
	datac => \arith_logic_unity|Add1~66_combout\,
	datad => \control|aluControl[2]~0_combout\,
	combout => \arith_logic_unity|Add1~68_combout\);

-- Location: LCCOMB_X55_Y60_N14
\arith_logic_unity|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~46_combout\ = ((\arith_logic_unity|Add1~68_combout\ $ (\control|aluControl[2]~0_combout\ $ (!\arith_logic_unity|Add0~45\)))) # (GND)
-- \arith_logic_unity|Add0~47\ = CARRY((\arith_logic_unity|Add1~68_combout\ & ((\control|aluControl[2]~0_combout\) # (!\arith_logic_unity|Add0~45\))) # (!\arith_logic_unity|Add1~68_combout\ & (\control|aluControl[2]~0_combout\ & 
-- !\arith_logic_unity|Add0~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~68_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~45\,
	combout => \arith_logic_unity|Add0~46_combout\,
	cout => \arith_logic_unity|Add0~47\);

-- Location: LCCOMB_X54_Y60_N6
\write_data[23]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[23]~17_combout\ = (\control|Equal3~0_combout\ & (\arith_logic_unity|Add0~46_combout\ & !\control|aluOp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datab => \arith_logic_unity|Add0~46_combout\,
	datad => \control|aluOp[1]~0_combout\,
	combout => \write_data[23]~17_combout\);

-- Location: FF_X54_Y60_N21
\register_file|registers:0:regx|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[23]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(23));

-- Location: LCCOMB_X54_Y60_N10
\register_file|registers:1:regx|Q[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[23]~feeder_combout\ = \write_data[23]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[23]~17_combout\,
	combout => \register_file|registers:1:regx|Q[23]~feeder_combout\);

-- Location: FF_X54_Y60_N11
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

-- Location: LCCOMB_X54_Y60_N20
\register_file|mux1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux8~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(23))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(23)))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(23),
	datad => \register_file|registers:1:regx|Q\(23),
	combout => \register_file|mux1|Mux8~0_combout\);

-- Location: LCCOMB_X57_Y60_N16
\arith_logic_unity|Add1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~69_combout\ = (\register_file|mux1|Mux7~0_combout\ & (!\arith_logic_unity|Add1~67\)) # (!\register_file|mux1|Mux7~0_combout\ & ((\arith_logic_unity|Add1~67\) # (GND)))
-- \arith_logic_unity|Add1~70\ = CARRY((!\arith_logic_unity|Add1~67\) # (!\register_file|mux1|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux7~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~67\,
	combout => \arith_logic_unity|Add1~69_combout\,
	cout => \arith_logic_unity|Add1~70\);

-- Location: LCCOMB_X54_Y60_N14
\arith_logic_unity|Add1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~71_combout\ = (\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~69_combout\)) # (!\control|aluControl[2]~0_combout\ & ((\register_file|mux1|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datac => \arith_logic_unity|Add1~69_combout\,
	datad => \register_file|mux1|Mux7~0_combout\,
	combout => \arith_logic_unity|Add1~71_combout\);

-- Location: LCCOMB_X55_Y60_N16
\arith_logic_unity|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~48_combout\ = (\arith_logic_unity|Add1~71_combout\ & ((\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add0~47\ & VCC)) # (!\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~47\)))) # 
-- (!\arith_logic_unity|Add1~71_combout\ & ((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~47\)) # (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add0~47\) # (GND)))))
-- \arith_logic_unity|Add0~49\ = CARRY((\arith_logic_unity|Add1~71_combout\ & (!\control|aluControl[2]~0_combout\ & !\arith_logic_unity|Add0~47\)) # (!\arith_logic_unity|Add1~71_combout\ & ((!\arith_logic_unity|Add0~47\) # 
-- (!\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~71_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~47\,
	combout => \arith_logic_unity|Add0~48_combout\,
	cout => \arith_logic_unity|Add0~49\);

-- Location: LCCOMB_X54_Y60_N18
\write_data[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[24]~16_combout\ = (!\control|aluOp[1]~0_combout\ & (\control|Equal3~0_combout\ & \arith_logic_unity|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluOp[1]~0_combout\,
	datac => \control|Equal3~0_combout\,
	datad => \arith_logic_unity|Add0~48_combout\,
	combout => \write_data[24]~16_combout\);

-- Location: FF_X54_Y60_N23
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

-- Location: FF_X54_Y60_N29
\register_file|registers:0:regx|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[24]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(24));

-- Location: LCCOMB_X54_Y60_N28
\register_file|mux1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux7~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & ((\register_file|registers:0:regx|Q\(24)))) # (!\PC|Q\(2) & (\register_file|registers:1:regx|Q\(24))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|registers:1:regx|Q\(24),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(24),
	datad => \PC|Q\(2),
	combout => \register_file|mux1|Mux7~0_combout\);

-- Location: LCCOMB_X57_Y60_N18
\arith_logic_unity|Add1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~72_combout\ = (\register_file|mux1|Mux6~0_combout\ & (\arith_logic_unity|Add1~70\ $ (GND))) # (!\register_file|mux1|Mux6~0_combout\ & (!\arith_logic_unity|Add1~70\ & VCC))
-- \arith_logic_unity|Add1~73\ = CARRY((\register_file|mux1|Mux6~0_combout\ & !\arith_logic_unity|Add1~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux6~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~70\,
	combout => \arith_logic_unity|Add1~72_combout\,
	cout => \arith_logic_unity|Add1~73\);

-- Location: LCCOMB_X54_Y60_N26
\arith_logic_unity|Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~74_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~72_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux6~0_combout\,
	datac => \control|aluControl[2]~0_combout\,
	datad => \arith_logic_unity|Add1~72_combout\,
	combout => \arith_logic_unity|Add1~74_combout\);

-- Location: LCCOMB_X55_Y60_N18
\arith_logic_unity|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~50_combout\ = ((\arith_logic_unity|Add1~74_combout\ $ (\control|aluControl[2]~0_combout\ $ (!\arith_logic_unity|Add0~49\)))) # (GND)
-- \arith_logic_unity|Add0~51\ = CARRY((\arith_logic_unity|Add1~74_combout\ & ((\control|aluControl[2]~0_combout\) # (!\arith_logic_unity|Add0~49\))) # (!\arith_logic_unity|Add1~74_combout\ & (\control|aluControl[2]~0_combout\ & 
-- !\arith_logic_unity|Add0~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~74_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~49\,
	combout => \arith_logic_unity|Add0~50_combout\,
	cout => \arith_logic_unity|Add0~51\);

-- Location: LCCOMB_X56_Y62_N14
\write_data[31]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[31]~9_combout\ = (\control|Equal3~0_combout\ & (!\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~62_combout\,
	combout => \write_data[31]~9_combout\);

-- Location: FF_X56_Y62_N21
\register_file|registers:0:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[31]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(31));

-- Location: LCCOMB_X56_Y62_N18
\register_file|registers:1:regx|Q[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[31]~feeder_combout\ = \write_data[31]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[31]~9_combout\,
	combout => \register_file|registers:1:regx|Q[31]~feeder_combout\);

-- Location: FF_X56_Y62_N19
\register_file|registers:1:regx|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(31));

-- Location: LCCOMB_X56_Y62_N20
\register_file|mux1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux0~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(31))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(31)))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(31),
	datad => \register_file|registers:1:regx|Q\(31),
	combout => \register_file|mux1|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y60_N20
\arith_logic_unity|Add1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~75_combout\ = (\register_file|mux1|Mux5~0_combout\ & (!\arith_logic_unity|Add1~73\)) # (!\register_file|mux1|Mux5~0_combout\ & ((\arith_logic_unity|Add1~73\) # (GND)))
-- \arith_logic_unity|Add1~76\ = CARRY((!\arith_logic_unity|Add1~73\) # (!\register_file|mux1|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux5~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~73\,
	combout => \arith_logic_unity|Add1~75_combout\,
	cout => \arith_logic_unity|Add1~76\);

-- Location: LCCOMB_X56_Y60_N20
\arith_logic_unity|Add1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~86_combout\ = (\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add1~75_combout\)) # (!\control|aluControl[2]~0_combout\ & ((\register_file|mux1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datac => \arith_logic_unity|Add1~75_combout\,
	datad => \register_file|mux1|Mux5~0_combout\,
	combout => \arith_logic_unity|Add1~86_combout\);

-- Location: LCCOMB_X55_Y60_N20
\arith_logic_unity|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~52_combout\ = (\arith_logic_unity|Add1~86_combout\ & ((\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add0~51\ & VCC)) # (!\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~51\)))) # 
-- (!\arith_logic_unity|Add1~86_combout\ & ((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~51\)) # (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add0~51\) # (GND)))))
-- \arith_logic_unity|Add0~53\ = CARRY((\arith_logic_unity|Add1~86_combout\ & (!\control|aluControl[2]~0_combout\ & !\arith_logic_unity|Add0~51\)) # (!\arith_logic_unity|Add1~86_combout\ & ((!\arith_logic_unity|Add0~51\) # 
-- (!\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~86_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~51\,
	combout => \arith_logic_unity|Add0~52_combout\,
	cout => \arith_logic_unity|Add0~53\);

-- Location: LCCOMB_X58_Y60_N24
\write_data[26]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[26]~14_combout\ = (!\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~52_combout\ & \control|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Add0~52_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \write_data[26]~14_combout\);

-- Location: FF_X58_Y60_N13
\register_file|registers:0:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[26]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(26));

-- Location: LCCOMB_X58_Y60_N10
\register_file|registers:1:regx|Q[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[26]~feeder_combout\ = \write_data[26]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \write_data[26]~14_combout\,
	combout => \register_file|registers:1:regx|Q[26]~feeder_combout\);

-- Location: FF_X58_Y60_N11
\register_file|registers:1:regx|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(26));

-- Location: LCCOMB_X58_Y60_N12
\register_file|mux1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux5~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(26))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(26)))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(26),
	datad => \register_file|registers:1:regx|Q\(26),
	combout => \register_file|mux1|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y60_N22
\arith_logic_unity|Add1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~77_combout\ = (\register_file|mux1|Mux4~0_combout\ & (\arith_logic_unity|Add1~76\ $ (GND))) # (!\register_file|mux1|Mux4~0_combout\ & (!\arith_logic_unity|Add1~76\ & VCC))
-- \arith_logic_unity|Add1~78\ = CARRY((\register_file|mux1|Mux4~0_combout\ & !\arith_logic_unity|Add1~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux4~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~76\,
	combout => \arith_logic_unity|Add1~77_combout\,
	cout => \arith_logic_unity|Add1~78\);

-- Location: LCCOMB_X56_Y60_N6
\arith_logic_unity|Add1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~85_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~77_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datac => \register_file|mux1|Mux4~0_combout\,
	datad => \arith_logic_unity|Add1~77_combout\,
	combout => \arith_logic_unity|Add1~85_combout\);

-- Location: LCCOMB_X55_Y60_N22
\arith_logic_unity|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~54_combout\ = ((\arith_logic_unity|Add1~85_combout\ $ (\control|aluControl[2]~0_combout\ $ (!\arith_logic_unity|Add0~53\)))) # (GND)
-- \arith_logic_unity|Add0~55\ = CARRY((\arith_logic_unity|Add1~85_combout\ & ((\control|aluControl[2]~0_combout\) # (!\arith_logic_unity|Add0~53\))) # (!\arith_logic_unity|Add1~85_combout\ & (\control|aluControl[2]~0_combout\ & 
-- !\arith_logic_unity|Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~85_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~53\,
	combout => \arith_logic_unity|Add0~54_combout\,
	cout => \arith_logic_unity|Add0~55\);

-- Location: LCCOMB_X58_Y60_N22
\write_data[27]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[27]~13_combout\ = (!\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~54_combout\ & \control|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Add0~54_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \write_data[27]~13_combout\);

-- Location: FF_X58_Y60_N5
\register_file|registers:0:regx|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[27]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(27));

-- Location: LCCOMB_X58_Y60_N2
\register_file|registers:1:regx|Q[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[27]~feeder_combout\ = \write_data[27]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[27]~13_combout\,
	combout => \register_file|registers:1:regx|Q[27]~feeder_combout\);

-- Location: FF_X58_Y60_N3
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

-- Location: LCCOMB_X58_Y60_N4
\register_file|mux1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux4~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(27))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(27)))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(27),
	datad => \register_file|registers:1:regx|Q\(27),
	combout => \register_file|mux1|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y60_N24
\arith_logic_unity|Add1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~79_combout\ = (\register_file|mux1|Mux3~0_combout\ & (!\arith_logic_unity|Add1~78\)) # (!\register_file|mux1|Mux3~0_combout\ & ((\arith_logic_unity|Add1~78\) # (GND)))
-- \arith_logic_unity|Add1~80\ = CARRY((!\arith_logic_unity|Add1~78\) # (!\register_file|mux1|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \register_file|mux1|Mux3~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~78\,
	combout => \arith_logic_unity|Add1~79_combout\,
	cout => \arith_logic_unity|Add1~80\);

-- Location: LCCOMB_X56_Y60_N4
\arith_logic_unity|Add1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~84_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~79_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datac => \register_file|mux1|Mux3~0_combout\,
	datad => \arith_logic_unity|Add1~79_combout\,
	combout => \arith_logic_unity|Add1~84_combout\);

-- Location: LCCOMB_X55_Y60_N24
\arith_logic_unity|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~56_combout\ = (\arith_logic_unity|Add1~84_combout\ & ((\control|aluControl[2]~0_combout\ & (\arith_logic_unity|Add0~55\ & VCC)) # (!\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~55\)))) # 
-- (!\arith_logic_unity|Add1~84_combout\ & ((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add0~55\)) # (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add0~55\) # (GND)))))
-- \arith_logic_unity|Add0~57\ = CARRY((\arith_logic_unity|Add1~84_combout\ & (!\control|aluControl[2]~0_combout\ & !\arith_logic_unity|Add0~55\)) # (!\arith_logic_unity|Add1~84_combout\ & ((!\arith_logic_unity|Add0~55\) # 
-- (!\control|aluControl[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~84_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~55\,
	combout => \arith_logic_unity|Add0~56_combout\,
	cout => \arith_logic_unity|Add0~57\);

-- Location: LCCOMB_X58_Y60_N8
\write_data[28]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[28]~12_combout\ = (!\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~56_combout\ & \control|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Add0~56_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \write_data[28]~12_combout\);

-- Location: FF_X58_Y60_N29
\register_file|registers:0:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[28]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(28));

-- Location: LCCOMB_X58_Y60_N6
\register_file|registers:1:regx|Q[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[28]~feeder_combout\ = \write_data[28]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[28]~12_combout\,
	combout => \register_file|registers:1:regx|Q[28]~feeder_combout\);

-- Location: FF_X58_Y60_N7
\register_file|registers:1:regx|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(28));

-- Location: LCCOMB_X58_Y60_N28
\register_file|mux1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux3~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(28))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(28)))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(28),
	datad => \register_file|registers:1:regx|Q\(28),
	combout => \register_file|mux1|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y60_N26
\arith_logic_unity|Add1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~81_combout\ = (\register_file|mux1|Mux2~0_combout\ & (\arith_logic_unity|Add1~80\ $ (GND))) # (!\register_file|mux1|Mux2~0_combout\ & (!\arith_logic_unity|Add1~80\ & VCC))
-- \arith_logic_unity|Add1~82\ = CARRY((\register_file|mux1|Mux2~0_combout\ & !\arith_logic_unity|Add1~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux2~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~80\,
	combout => \arith_logic_unity|Add1~81_combout\,
	cout => \arith_logic_unity|Add1~82\);

-- Location: LCCOMB_X56_Y60_N30
\arith_logic_unity|Add1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~83_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~81_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datac => \register_file|mux1|Mux2~0_combout\,
	datad => \arith_logic_unity|Add1~81_combout\,
	combout => \arith_logic_unity|Add1~83_combout\);

-- Location: LCCOMB_X55_Y60_N26
\arith_logic_unity|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~58_combout\ = ((\arith_logic_unity|Add1~83_combout\ $ (\control|aluControl[2]~0_combout\ $ (!\arith_logic_unity|Add0~57\)))) # (GND)
-- \arith_logic_unity|Add0~59\ = CARRY((\arith_logic_unity|Add1~83_combout\ & ((\control|aluControl[2]~0_combout\) # (!\arith_logic_unity|Add0~57\))) # (!\arith_logic_unity|Add1~83_combout\ & (\control|aluControl[2]~0_combout\ & 
-- !\arith_logic_unity|Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add1~83_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~57\,
	combout => \arith_logic_unity|Add0~58_combout\,
	cout => \arith_logic_unity|Add0~59\);

-- Location: LCCOMB_X58_Y60_N14
\write_data[29]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[29]~11_combout\ = (!\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Add0~58_combout\ & \control|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Add0~58_combout\,
	datad => \control|Equal3~0_combout\,
	combout => \write_data[29]~11_combout\);

-- Location: FF_X58_Y60_N21
\register_file|registers:0:regx|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[29]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(29));

-- Location: LCCOMB_X58_Y60_N18
\register_file|registers:1:regx|Q[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[29]~feeder_combout\ = \write_data[29]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[29]~11_combout\,
	combout => \register_file|registers:1:regx|Q[29]~feeder_combout\);

-- Location: FF_X58_Y60_N19
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

-- Location: LCCOMB_X58_Y60_N20
\register_file|mux1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux2~0_combout\ = (\PC|Q\(2) & (((\register_file|registers:0:regx|Q\(29))))) # (!\PC|Q\(2) & ((\instruction_memory|Mux5~0_combout\ & ((\register_file|registers:1:regx|Q\(29)))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (\register_file|registers:0:regx|Q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux5~0_combout\,
	datac => \register_file|registers:0:regx|Q\(29),
	datad => \register_file|registers:1:regx|Q\(29),
	combout => \register_file|mux1|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y60_N28
\arith_logic_unity|Add1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~87_combout\ = (\register_file|mux1|Mux1~0_combout\ & (!\arith_logic_unity|Add1~82\)) # (!\register_file|mux1|Mux1~0_combout\ & ((\arith_logic_unity|Add1~82\) # (GND)))
-- \arith_logic_unity|Add1~88\ = CARRY((!\arith_logic_unity|Add1~82\) # (!\register_file|mux1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux1~0_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add1~82\,
	combout => \arith_logic_unity|Add1~87_combout\,
	cout => \arith_logic_unity|Add1~88\);

-- Location: LCCOMB_X56_Y60_N26
\arith_logic_unity|Add1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~92_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~87_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datac => \register_file|mux1|Mux1~0_combout\,
	datad => \arith_logic_unity|Add1~87_combout\,
	combout => \arith_logic_unity|Add1~92_combout\);

-- Location: LCCOMB_X55_Y60_N28
\arith_logic_unity|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~60_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~92_combout\ & (\arith_logic_unity|Add0~59\ & VCC)) # (!\arith_logic_unity|Add1~92_combout\ & (!\arith_logic_unity|Add0~59\)))) # 
-- (!\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~92_combout\ & (!\arith_logic_unity|Add0~59\)) # (!\arith_logic_unity|Add1~92_combout\ & ((\arith_logic_unity|Add0~59\) # (GND)))))
-- \arith_logic_unity|Add0~61\ = CARRY((\control|aluControl[2]~0_combout\ & (!\arith_logic_unity|Add1~92_combout\ & !\arith_logic_unity|Add0~59\)) # (!\control|aluControl[2]~0_combout\ & ((!\arith_logic_unity|Add0~59\) # 
-- (!\arith_logic_unity|Add1~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluControl[2]~0_combout\,
	datab => \arith_logic_unity|Add1~92_combout\,
	datad => VCC,
	cin => \arith_logic_unity|Add0~59\,
	combout => \arith_logic_unity|Add0~60_combout\,
	cout => \arith_logic_unity|Add0~61\);

-- Location: LCCOMB_X56_Y62_N4
\write_data[30]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[30]~10_combout\ = (\control|Equal3~0_combout\ & (!\control|aluOp[1]~0_combout\ & \arith_logic_unity|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Equal3~0_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \arith_logic_unity|Add0~60_combout\,
	combout => \write_data[30]~10_combout\);

-- Location: FF_X56_Y62_N29
\register_file|registers:0:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[30]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(30));

-- Location: LCCOMB_X56_Y62_N6
\register_file|registers:1:regx|Q[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[30]~feeder_combout\ = \write_data[30]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[30]~10_combout\,
	combout => \register_file|registers:1:regx|Q[30]~feeder_combout\);

-- Location: FF_X56_Y62_N7
\register_file|registers:1:regx|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[1]~clkctrl_outclk\,
	d => \register_file|registers:1:regx|Q[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:1:regx|Q\(30));

-- Location: LCCOMB_X56_Y62_N28
\register_file|mux1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|mux1|Mux1~0_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(30))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(30)))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(30),
	datad => \register_file|registers:1:regx|Q\(30),
	combout => \register_file|mux1|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y60_N30
\arith_logic_unity|Add1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~89_combout\ = \arith_logic_unity|Add1~88\ $ (!\register_file|mux1|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \register_file|mux1|Mux0~0_combout\,
	cin => \arith_logic_unity|Add1~88\,
	combout => \arith_logic_unity|Add1~89_combout\);

-- Location: LCCOMB_X56_Y60_N22
\arith_logic_unity|Add1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add1~91_combout\ = (\control|aluControl[2]~0_combout\ & ((\arith_logic_unity|Add1~89_combout\))) # (!\control|aluControl[2]~0_combout\ & (\register_file|mux1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux0~0_combout\,
	datab => \control|aluControl[2]~0_combout\,
	datad => \arith_logic_unity|Add1~89_combout\,
	combout => \arith_logic_unity|Add1~91_combout\);

-- Location: LCCOMB_X55_Y60_N30
\arith_logic_unity|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Add0~62_combout\ = \control|aluControl[2]~0_combout\ $ (\arith_logic_unity|Add0~61\ $ (!\arith_logic_unity|Add1~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control|aluControl[2]~0_combout\,
	datad => \arith_logic_unity|Add1~91_combout\,
	cin => \arith_logic_unity|Add0~61\,
	combout => \arith_logic_unity|Add0~62_combout\);

-- Location: LCCOMB_X55_Y59_N30
\branch_or_next~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~12_combout\ = (\arith_logic_unity|Add0~50_combout\) # ((\arith_logic_unity|Add0~62_combout\) # (\arith_logic_unity|Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arith_logic_unity|Add0~50_combout\,
	datac => \arith_logic_unity|Add0~62_combout\,
	datad => \arith_logic_unity|Add0~58_combout\,
	combout => \branch_or_next~12_combout\);

-- Location: LCCOMB_X55_Y59_N22
\branch_or_next~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~13_combout\ = (\arith_logic_unity|Add0~56_combout\) # ((\arith_logic_unity|Add0~52_combout\) # ((\arith_logic_unity|Add0~60_combout\) # (\arith_logic_unity|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~56_combout\,
	datab => \arith_logic_unity|Add0~52_combout\,
	datac => \arith_logic_unity|Add0~60_combout\,
	datad => \arith_logic_unity|Add0~54_combout\,
	combout => \branch_or_next~13_combout\);

-- Location: LCCOMB_X53_Y61_N16
\arith_logic_unity|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~7_combout\ = (!\register_file|mux1|Mux19~0_combout\ & (!\register_file|mux1|Mux20~0_combout\ & (!\register_file|mux1|Mux21~0_combout\ & !\register_file|mux1|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux19~0_combout\,
	datab => \register_file|mux1|Mux20~0_combout\,
	datac => \register_file|mux1|Mux21~0_combout\,
	datad => \register_file|mux1|Mux18~0_combout\,
	combout => \arith_logic_unity|Mux31~7_combout\);

-- Location: LCCOMB_X54_Y60_N0
\arith_logic_unity|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~4_combout\ = (!\register_file|mux1|Mux6~0_combout\ & (!\register_file|mux1|Mux7~0_combout\ & (!\register_file|mux1|Mux9~0_combout\ & !\register_file|mux1|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux6~0_combout\,
	datab => \register_file|mux1|Mux7~0_combout\,
	datac => \register_file|mux1|Mux9~0_combout\,
	datad => \register_file|mux1|Mux8~0_combout\,
	combout => \arith_logic_unity|Mux31~4_combout\);

-- Location: LCCOMB_X56_Y61_N16
\arith_logic_unity|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~6_combout\ = (!\register_file|mux1|Mux15~0_combout\ & (!\register_file|mux1|Mux16~0_combout\ & (!\register_file|mux1|Mux17~0_combout\ & !\register_file|mux1|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux15~0_combout\,
	datab => \register_file|mux1|Mux16~0_combout\,
	datac => \register_file|mux1|Mux17~0_combout\,
	datad => \register_file|mux1|Mux14~0_combout\,
	combout => \arith_logic_unity|Mux31~6_combout\);

-- Location: LCCOMB_X56_Y60_N28
\arith_logic_unity|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~5_combout\ = (!\register_file|mux1|Mux12~0_combout\ & (!\register_file|mux1|Mux11~0_combout\ & (!\register_file|mux1|Mux13~0_combout\ & !\register_file|mux1|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux12~0_combout\,
	datab => \register_file|mux1|Mux11~0_combout\,
	datac => \register_file|mux1|Mux13~0_combout\,
	datad => \register_file|mux1|Mux10~0_combout\,
	combout => \arith_logic_unity|Mux31~5_combout\);

-- Location: LCCOMB_X54_Y61_N12
\arith_logic_unity|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~8_combout\ = (\arith_logic_unity|Mux31~7_combout\ & (\arith_logic_unity|Mux31~4_combout\ & (\arith_logic_unity|Mux31~6_combout\ & \arith_logic_unity|Mux31~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~7_combout\,
	datab => \arith_logic_unity|Mux31~4_combout\,
	datac => \arith_logic_unity|Mux31~6_combout\,
	datad => \arith_logic_unity|Mux31~5_combout\,
	combout => \arith_logic_unity|Mux31~8_combout\);

-- Location: LCCOMB_X54_Y61_N0
\arith_logic_unity|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|LessThan0~0_combout\ = (\instruction_memory|Mux8~0_combout\ & (((!\register_file|mux1|Mux30~0_combout\ & \instruction_memory|Mux9~0_combout\)) # (!\register_file|mux1|Mux29~0_combout\))) # (!\instruction_memory|Mux8~0_combout\ & 
-- (!\register_file|mux1|Mux29~0_combout\ & (!\register_file|mux1|Mux30~0_combout\ & \instruction_memory|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux8~0_combout\,
	datab => \register_file|mux1|Mux29~0_combout\,
	datac => \register_file|mux1|Mux30~0_combout\,
	datad => \instruction_memory|Mux9~0_combout\,
	combout => \arith_logic_unity|LessThan0~0_combout\);

-- Location: LCCOMB_X54_Y61_N30
\arith_logic_unity|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~2_combout\ = (!\register_file|mux1|Mux0~0_combout\ & (!\register_file|mux1|Mux1~0_combout\ & \arith_logic_unity|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux0~0_combout\,
	datab => \register_file|mux1|Mux1~0_combout\,
	datad => \arith_logic_unity|LessThan0~0_combout\,
	combout => \arith_logic_unity|Mux31~2_combout\);

-- Location: LCCOMB_X58_Y60_N16
\arith_logic_unity|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~3_combout\ = (!\register_file|mux1|Mux5~0_combout\ & (!\register_file|mux1|Mux2~0_combout\ & (!\register_file|mux1|Mux4~0_combout\ & !\register_file|mux1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux5~0_combout\,
	datab => \register_file|mux1|Mux2~0_combout\,
	datac => \register_file|mux1|Mux4~0_combout\,
	datad => \register_file|mux1|Mux3~0_combout\,
	combout => \arith_logic_unity|Mux31~3_combout\);

-- Location: LCCOMB_X54_Y61_N26
\arith_logic_unity|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~9_combout\ = (\arith_logic_unity|Mux31~8_combout\ & (\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Mux31~2_combout\ & \arith_logic_unity|Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~8_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Mux31~2_combout\,
	datad => \arith_logic_unity|Mux31~3_combout\,
	combout => \arith_logic_unity|Mux31~9_combout\);

-- Location: LCCOMB_X53_Y61_N26
\write_data[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_data[0]~31_combout\ = (\arith_logic_unity|Mux31~11_combout\ & \control|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arith_logic_unity|Mux31~11_combout\,
	datac => \control|Equal3~0_combout\,
	combout => \write_data[0]~31_combout\);

-- Location: FF_X56_Y58_N5
\register_file|registers:0:regx|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \register_file|registers_clk[0]~clkctrl_outclk\,
	asdata => \write_data[0]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|registers:0:regx|Q\(0));

-- Location: LCCOMB_X56_Y58_N18
\register_file|registers:1:regx|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|registers:1:regx|Q[0]~feeder_combout\ = \write_data[0]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_data[0]~31_combout\,
	combout => \register_file|registers:1:regx|Q[0]~feeder_combout\);

-- Location: FF_X56_Y58_N19
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

-- Location: LCCOMB_X56_Y58_N4
\arith_logic_unity|Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~10_combout\ = (\instruction_memory|Mux5~0_combout\ & ((\PC|Q\(2) & (\register_file|registers:0:regx|Q\(0))) # (!\PC|Q\(2) & ((\register_file|registers:1:regx|Q\(0)))))) # (!\instruction_memory|Mux5~0_combout\ & 
-- (((\register_file|registers:0:regx|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux5~0_combout\,
	datab => \PC|Q\(2),
	datac => \register_file|registers:0:regx|Q\(0),
	datad => \register_file|registers:1:regx|Q\(0),
	combout => \arith_logic_unity|Mux31~10_combout\);

-- Location: LCCOMB_X58_Y61_N4
\arith_logic_unity|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~0_combout\ = (!\register_file|mux1|Mux25~0_combout\ & (!\register_file|mux1|Mux23~0_combout\ & (!\register_file|mux1|Mux22~0_combout\ & !\register_file|mux1|Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux25~0_combout\,
	datab => \register_file|mux1|Mux23~0_combout\,
	datac => \register_file|mux1|Mux22~0_combout\,
	datad => \register_file|mux1|Mux24~0_combout\,
	combout => \arith_logic_unity|Mux31~0_combout\);

-- Location: LCCOMB_X58_Y61_N26
\arith_logic_unity|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~1_combout\ = (!\register_file|mux1|Mux26~0_combout\ & (!\register_file|mux1|Mux27~0_combout\ & (\arith_logic_unity|Mux31~0_combout\ & !\register_file|mux1|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|mux1|Mux26~0_combout\,
	datab => \register_file|mux1|Mux27~0_combout\,
	datac => \arith_logic_unity|Mux31~0_combout\,
	datad => \register_file|mux1|Mux28~0_combout\,
	combout => \arith_logic_unity|Mux31~1_combout\);

-- Location: LCCOMB_X54_Y61_N8
\arith_logic_unity|Mux31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arith_logic_unity|Mux31~11_combout\ = (\arith_logic_unity|Mux31~9_combout\ & ((\arith_logic_unity|Mux31~1_combout\) # ((!\control|aluOp[1]~0_combout\ & \arith_logic_unity|Mux31~10_combout\)))) # (!\arith_logic_unity|Mux31~9_combout\ & 
-- (!\control|aluOp[1]~0_combout\ & (\arith_logic_unity|Mux31~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Mux31~9_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datac => \arith_logic_unity|Mux31~10_combout\,
	datad => \arith_logic_unity|Mux31~1_combout\,
	combout => \arith_logic_unity|Mux31~11_combout\);

-- Location: LCCOMB_X54_Y61_N14
\branch_or_next~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~3_combout\ = (\arith_logic_unity|Add0~6_combout\) # ((\arith_logic_unity|Add0~8_combout\) # ((\arith_logic_unity|Add0~14_combout\) # (\arith_logic_unity|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~6_combout\,
	datab => \arith_logic_unity|Add0~8_combout\,
	datac => \arith_logic_unity|Add0~14_combout\,
	datad => \arith_logic_unity|Add0~12_combout\,
	combout => \branch_or_next~3_combout\);

-- Location: LCCOMB_X54_Y61_N20
\branch_or_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~2_combout\ = (\arith_logic_unity|Add0~1_combout\) # ((\arith_logic_unity|Add0~16_combout\) # ((\arith_logic_unity|Add0~10_combout\) # (\arith_logic_unity|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~1_combout\,
	datab => \arith_logic_unity|Add0~16_combout\,
	datac => \arith_logic_unity|Add0~10_combout\,
	datad => \arith_logic_unity|Add0~4_combout\,
	combout => \branch_or_next~2_combout\);

-- Location: LCCOMB_X54_Y61_N4
\branch_or_next~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~4_combout\ = (!\arith_logic_unity|Mux31~11_combout\ & ((\control|aluOp[1]~0_combout\) # ((!\branch_or_next~3_combout\ & !\branch_or_next~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|aluOp[1]~0_combout\,
	datab => \arith_logic_unity|Mux31~11_combout\,
	datac => \branch_or_next~3_combout\,
	datad => \branch_or_next~2_combout\,
	combout => \branch_or_next~4_combout\);

-- Location: LCCOMB_X54_Y60_N8
\branch_or_next~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~10_combout\ = (\arith_logic_unity|Add0~44_combout\) # ((\arith_logic_unity|Add0~42_combout\) # ((\arith_logic_unity|Add0~46_combout\) # (\arith_logic_unity|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~44_combout\,
	datab => \arith_logic_unity|Add0~42_combout\,
	datac => \arith_logic_unity|Add0~46_combout\,
	datad => \arith_logic_unity|Add0~48_combout\,
	combout => \branch_or_next~10_combout\);

-- Location: LCCOMB_X54_Y59_N0
\branch_or_next~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~15_combout\ = (\instruction_memory|Mux9~0_combout\ & (!\PC|Q\(5) & (!\instruction_memory|Mux3~0_combout\ & !\PC|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux9~0_combout\,
	datab => \PC|Q\(5),
	datac => \instruction_memory|Mux3~0_combout\,
	datad => \PC|Q\(4),
	combout => \branch_or_next~15_combout\);

-- Location: LCCOMB_X56_Y59_N4
\branch_or_next~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~8_combout\ = (\arith_logic_unity|Add0~36_combout\) # ((\arith_logic_unity|Add0~38_combout\) # ((\arith_logic_unity|Add0~40_combout\) # (\arith_logic_unity|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~36_combout\,
	datab => \arith_logic_unity|Add0~38_combout\,
	datac => \arith_logic_unity|Add0~40_combout\,
	datad => \arith_logic_unity|Add0~34_combout\,
	combout => \branch_or_next~8_combout\);

-- Location: LCCOMB_X55_Y61_N0
\branch_or_next~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~5_combout\ = (\arith_logic_unity|Add0~20_combout\) # ((\arith_logic_unity|Add0~30_combout\) # (\arith_logic_unity|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arith_logic_unity|Add0~20_combout\,
	datac => \arith_logic_unity|Add0~30_combout\,
	datad => \arith_logic_unity|Add0~24_combout\,
	combout => \branch_or_next~5_combout\);

-- Location: LCCOMB_X56_Y59_N0
\branch_or_next~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~6_combout\ = (\arith_logic_unity|Add0~28_combout\) # ((\arith_logic_unity|Add0~26_combout\) # ((\arith_logic_unity|Add0~32_combout\) # (\arith_logic_unity|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arith_logic_unity|Add0~28_combout\,
	datab => \arith_logic_unity|Add0~26_combout\,
	datac => \arith_logic_unity|Add0~32_combout\,
	datad => \arith_logic_unity|Add0~22_combout\,
	combout => \branch_or_next~6_combout\);

-- Location: LCCOMB_X56_Y59_N12
\branch_or_next~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~7_combout\ = (\control|aluOp[1]~0_combout\) # ((!\branch_or_next~5_combout\ & (!\arith_logic_unity|Add0~18_combout\ & !\branch_or_next~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~5_combout\,
	datab => \arith_logic_unity|Add0~18_combout\,
	datac => \control|aluOp[1]~0_combout\,
	datad => \branch_or_next~6_combout\,
	combout => \branch_or_next~7_combout\);

-- Location: LCCOMB_X56_Y59_N28
\branch_or_next~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~9_combout\ = (\branch_or_next~15_combout\ & (\branch_or_next~7_combout\ & ((\control|aluOp[1]~0_combout\) # (!\branch_or_next~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~15_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datac => \branch_or_next~8_combout\,
	datad => \branch_or_next~7_combout\,
	combout => \branch_or_next~9_combout\);

-- Location: LCCOMB_X55_Y59_N6
\branch_or_next~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~11_combout\ = (\branch_or_next~4_combout\ & (\branch_or_next~9_combout\ & ((\control|aluOp[1]~0_combout\) # (!\branch_or_next~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~4_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datac => \branch_or_next~10_combout\,
	datad => \branch_or_next~9_combout\,
	combout => \branch_or_next~11_combout\);

-- Location: LCCOMB_X55_Y59_N2
\branch_or_next~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_or_next~14_combout\ = (\branch_or_next~11_combout\ & ((\control|aluOp[1]~0_combout\) # ((!\branch_or_next~12_combout\ & !\branch_or_next~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~12_combout\,
	datab => \control|aluOp[1]~0_combout\,
	datac => \branch_or_next~13_combout\,
	datad => \branch_or_next~11_combout\,
	combout => \branch_or_next~14_combout\);

-- Location: LCCOMB_X55_Y59_N18
\pc_in[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[5]~5_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & (\branch_address[5]~4_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[5]~4_combout\,
	datab => \pc_in[3]~1_combout\,
	datac => \pc_incremented[5]~6_combout\,
	datad => \branch_or_next~14_combout\,
	combout => \pc_in[5]~5_combout\);

-- Location: FF_X55_Y59_N19
\PC|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => count(25),
	d => \pc_in[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(5));

-- Location: LCCOMB_X54_Y59_N10
\instruction_memory|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux8~0_combout\ = (\PC|Q\(4)) # ((\PC|Q\(5)) # ((!\PC|Q\(2) & \PC|Q\(3))))

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
	combout => \instruction_memory|Mux8~0_combout\);

-- Location: LCCOMB_X54_Y59_N28
\pc_in[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[4]~3_combout\ = (\branch_or_next~14_combout\ & (\branch_address[4]~2_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \branch_address[4]~2_combout\,
	datac => \pc_incremented[4]~4_combout\,
	datad => \branch_or_next~14_combout\,
	combout => \pc_in[4]~3_combout\);

-- Location: LCCOMB_X54_Y59_N14
\pc_in[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[4]~4_combout\ = (\control|Equal1~0_combout\ & ((\pc_in[4]~3_combout\))) # (!\control|Equal1~0_combout\ & (\instruction_memory|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory|Mux8~0_combout\,
	datac => \control|Equal1~0_combout\,
	datad => \pc_in[4]~3_combout\,
	combout => \pc_in[4]~4_combout\);

-- Location: FF_X54_Y59_N15
\PC|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => count(25),
	d => \pc_in[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(4));

-- Location: LCCOMB_X54_Y59_N2
\instruction_memory|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux5~0_combout\ = (!\PC|Q\(4) & !\PC|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|Q\(4),
	datad => \PC|Q\(5),
	combout => \instruction_memory|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y59_N30
\control|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Equal1~0_combout\ = (\instruction_memory|Mux5~0_combout\ & (((!\PC|Q\(3)) # (!\instruction_memory|Mux3~0_combout\)) # (!\PC|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(2),
	datab => \instruction_memory|Mux3~0_combout\,
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \PC|Q\(3),
	combout => \control|Equal1~0_combout\);

-- Location: LCCOMB_X54_Y59_N12
\pc_in[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[2]~0_combout\ = (\pc_incremented[2]~0_combout\ & \control|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc_incremented[2]~0_combout\,
	datad => \control|Equal1~0_combout\,
	combout => \pc_in[2]~0_combout\);

-- Location: FF_X54_Y59_N13
\PC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => count(25),
	d => \pc_in[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(2));

-- Location: LCCOMB_X54_Y59_N20
\instruction_memory|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory|Mux9~0_combout\ = (\PC|Q\(2) & (!\PC|Q\(4) & (!\PC|Q\(3) & !\PC|Q\(5))))

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
	combout => \instruction_memory|Mux9~0_combout\);

-- Location: LCCOMB_X55_Y59_N14
\pc_in[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[3]~2_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & (\branch_address[3]~0_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[3]~0_combout\,
	datab => \pc_in[3]~1_combout\,
	datac => \pc_incremented[3]~2_combout\,
	datad => \branch_or_next~14_combout\,
	combout => \pc_in[3]~2_combout\);

-- Location: FF_X55_Y59_N15
\PC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => count(25),
	d => \pc_in[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(3));

-- Location: LCCOMB_X56_Y59_N14
\control|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Equal3~0_combout\ = (\PC|Q\(3)) # ((\PC|Q\(2)) # ((!\instruction_memory|Mux3~0_combout\) # (!\instruction_memory|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Q\(3),
	datab => \PC|Q\(2),
	datac => \instruction_memory|Mux5~0_combout\,
	datad => \instruction_memory|Mux3~0_combout\,
	combout => \control|Equal3~0_combout\);

-- Location: CLKCTRL_G13
\count[25]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count[25]~clkctrl_outclk\);

-- Location: LCCOMB_X54_Y63_N10
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

-- Location: LCCOMB_X55_Y63_N10
\branch_address[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[6]~6_combout\ = (\pc_incremented[6]~8_combout\ & (!\branch_address[5]~5\)) # (!\pc_incremented[6]~8_combout\ & ((\branch_address[5]~5\) # (GND)))
-- \branch_address[6]~7\ = CARRY((!\branch_address[5]~5\) # (!\pc_incremented[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[6]~8_combout\,
	datad => VCC,
	cin => \branch_address[5]~5\,
	combout => \branch_address[6]~6_combout\,
	cout => \branch_address[6]~7\);

-- Location: LCCOMB_X55_Y59_N10
\pc_in[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[6]~6_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & ((\branch_address[6]~6_combout\))) # (!\branch_or_next~14_combout\ & (\pc_incremented[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_or_next~14_combout\,
	datac => \pc_incremented[6]~8_combout\,
	datad => \branch_address[6]~6_combout\,
	combout => \pc_in[6]~6_combout\);

-- Location: FF_X55_Y59_N11
\PC|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(6));

-- Location: LCCOMB_X54_Y63_N12
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

-- Location: LCCOMB_X55_Y63_N12
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

-- Location: LCCOMB_X55_Y59_N16
\pc_in[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[7]~7_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & (\branch_address[7]~8_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[7]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_or_next~14_combout\,
	datac => \branch_address[7]~8_combout\,
	datad => \pc_incremented[7]~10_combout\,
	combout => \pc_in[7]~7_combout\);

-- Location: FF_X55_Y59_N17
\PC|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(7));

-- Location: LCCOMB_X54_Y63_N14
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

-- Location: LCCOMB_X55_Y63_N14
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

-- Location: LCCOMB_X55_Y59_N24
\pc_in[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[8]~8_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & (\branch_address[8]~10_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_or_next~14_combout\,
	datac => \branch_address[8]~10_combout\,
	datad => \pc_incremented[8]~12_combout\,
	combout => \pc_in[8]~8_combout\);

-- Location: FF_X55_Y59_N25
\PC|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(8));

-- Location: LCCOMB_X54_Y63_N16
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

-- Location: LCCOMB_X55_Y63_N16
\branch_address[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[9]~12_combout\ = (\pc_incremented[9]~14_combout\ & (\branch_address[8]~11\ $ (GND))) # (!\pc_incremented[9]~14_combout\ & (!\branch_address[8]~11\ & VCC))
-- \branch_address[9]~13\ = CARRY((\pc_incremented[9]~14_combout\ & !\branch_address[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[9]~14_combout\,
	datad => VCC,
	cin => \branch_address[8]~11\,
	combout => \branch_address[9]~12_combout\,
	cout => \branch_address[9]~13\);

-- Location: LCCOMB_X56_Y59_N2
\pc_in[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[9]~9_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & ((\branch_address[9]~12_combout\))) # (!\branch_or_next~14_combout\ & (\pc_incremented[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~14_combout\,
	datab => \pc_incremented[9]~14_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \branch_address[9]~12_combout\,
	combout => \pc_in[9]~9_combout\);

-- Location: FF_X56_Y59_N3
\PC|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(9));

-- Location: LCCOMB_X54_Y63_N18
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

-- Location: LCCOMB_X55_Y63_N18
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

-- Location: LCCOMB_X55_Y63_N0
\pc_in[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[10]~10_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & ((\branch_address[10]~14_combout\))) # (!\branch_or_next~14_combout\ & (\pc_incremented[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \pc_incremented[10]~16_combout\,
	datac => \branch_address[10]~14_combout\,
	datad => \branch_or_next~14_combout\,
	combout => \pc_in[10]~10_combout\);

-- Location: FF_X55_Y63_N1
\PC|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(10));

-- Location: LCCOMB_X54_Y63_N20
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

-- Location: LCCOMB_X55_Y63_N20
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

-- Location: LCCOMB_X55_Y59_N4
\pc_in[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[11]~11_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & (\branch_address[11]~16_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[11]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_or_next~14_combout\,
	datac => \branch_address[11]~16_combout\,
	datad => \pc_incremented[11]~18_combout\,
	combout => \pc_in[11]~11_combout\);

-- Location: FF_X55_Y59_N5
\PC|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(11));

-- Location: LCCOMB_X54_Y63_N22
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

-- Location: LCCOMB_X55_Y63_N22
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

-- Location: LCCOMB_X54_Y63_N0
\pc_in[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[12]~12_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & ((\branch_address[12]~18_combout\))) # (!\branch_or_next~14_combout\ & (\pc_incremented[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[12]~20_combout\,
	datab => \pc_in[3]~1_combout\,
	datac => \branch_address[12]~18_combout\,
	datad => \branch_or_next~14_combout\,
	combout => \pc_in[12]~12_combout\);

-- Location: FF_X54_Y63_N1
\PC|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(12));

-- Location: LCCOMB_X54_Y63_N24
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

-- Location: LCCOMB_X55_Y63_N24
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

-- Location: LCCOMB_X53_Y59_N16
\pc_in[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[13]~13_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & ((\branch_address[13]~20_combout\))) # (!\branch_or_next~14_combout\ & (\pc_incremented[13]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[13]~22_combout\,
	datab => \branch_address[13]~20_combout\,
	datac => \branch_or_next~14_combout\,
	datad => \pc_in[3]~1_combout\,
	combout => \pc_in[13]~13_combout\);

-- Location: FF_X53_Y59_N17
\PC|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(13));

-- Location: LCCOMB_X54_Y63_N26
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

-- Location: LCCOMB_X55_Y63_N26
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

-- Location: LCCOMB_X55_Y59_N0
\pc_in[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[14]~14_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & ((\branch_address[14]~22_combout\))) # (!\branch_or_next~14_combout\ & (\pc_incremented[14]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_or_next~14_combout\,
	datac => \pc_incremented[14]~24_combout\,
	datad => \branch_address[14]~22_combout\,
	combout => \pc_in[14]~14_combout\);

-- Location: FF_X55_Y59_N1
\PC|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(14));

-- Location: LCCOMB_X54_Y63_N28
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

-- Location: LCCOMB_X55_Y63_N28
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

-- Location: LCCOMB_X56_Y59_N20
\pc_in[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[15]~15_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & (\branch_address[15]~24_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[15]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~14_combout\,
	datab => \branch_address[15]~24_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \pc_incremented[15]~26_combout\,
	combout => \pc_in[15]~15_combout\);

-- Location: FF_X56_Y59_N21
\PC|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(15));

-- Location: LCCOMB_X54_Y63_N30
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

-- Location: LCCOMB_X55_Y63_N30
\branch_address[16]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[16]~26_combout\ = (\pc_incremented[16]~28_combout\ & (!\branch_address[15]~25\)) # (!\pc_incremented[16]~28_combout\ & ((\branch_address[15]~25\) # (GND)))
-- \branch_address[16]~27\ = CARRY((!\branch_address[15]~25\) # (!\pc_incremented[16]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[16]~28_combout\,
	datad => VCC,
	cin => \branch_address[15]~25\,
	combout => \branch_address[16]~26_combout\,
	cout => \branch_address[16]~27\);

-- Location: LCCOMB_X55_Y63_N2
\pc_in[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[16]~16_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & (\branch_address[16]~26_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[16]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[16]~26_combout\,
	datab => \pc_incremented[16]~28_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \branch_or_next~14_combout\,
	combout => \pc_in[16]~16_combout\);

-- Location: FF_X55_Y63_N3
\PC|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(16));

-- Location: LCCOMB_X54_Y62_N0
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

-- Location: LCCOMB_X55_Y62_N0
\branch_address[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[17]~28_combout\ = (\pc_incremented[17]~30_combout\ & (\branch_address[16]~27\ $ (GND))) # (!\pc_incremented[17]~30_combout\ & (!\branch_address[16]~27\ & VCC))
-- \branch_address[17]~29\ = CARRY((\pc_incremented[17]~30_combout\ & !\branch_address[16]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[17]~30_combout\,
	datad => VCC,
	cin => \branch_address[16]~27\,
	combout => \branch_address[17]~28_combout\,
	cout => \branch_address[17]~29\);

-- Location: LCCOMB_X53_Y59_N6
\pc_in[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[17]~17_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & ((\branch_address[17]~28_combout\))) # (!\branch_or_next~14_combout\ & (\pc_incremented[17]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \pc_incremented[17]~30_combout\,
	datac => \branch_or_next~14_combout\,
	datad => \branch_address[17]~28_combout\,
	combout => \pc_in[17]~17_combout\);

-- Location: FF_X53_Y59_N7
\PC|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(17));

-- Location: LCCOMB_X54_Y62_N2
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

-- Location: LCCOMB_X55_Y62_N2
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

-- Location: LCCOMB_X53_Y59_N12
\pc_in[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[18]~18_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & ((\branch_address[18]~30_combout\))) # (!\branch_or_next~14_combout\ & (\pc_incremented[18]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[18]~32_combout\,
	datab => \branch_address[18]~30_combout\,
	datac => \branch_or_next~14_combout\,
	datad => \pc_in[3]~1_combout\,
	combout => \pc_in[18]~18_combout\);

-- Location: FF_X53_Y59_N13
\PC|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(18));

-- Location: LCCOMB_X54_Y62_N4
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

-- Location: LCCOMB_X55_Y62_N4
\branch_address[19]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[19]~32_combout\ = (\pc_incremented[19]~34_combout\ & (\branch_address[18]~31\ $ (GND))) # (!\pc_incremented[19]~34_combout\ & (!\branch_address[18]~31\ & VCC))
-- \branch_address[19]~33\ = CARRY((\pc_incremented[19]~34_combout\ & !\branch_address[18]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[19]~34_combout\,
	datad => VCC,
	cin => \branch_address[18]~31\,
	combout => \branch_address[19]~32_combout\,
	cout => \branch_address[19]~33\);

-- Location: LCCOMB_X55_Y59_N20
\pc_in[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[19]~19_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & (\branch_address[19]~32_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[19]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_or_next~14_combout\,
	datac => \branch_address[19]~32_combout\,
	datad => \pc_incremented[19]~34_combout\,
	combout => \pc_in[19]~19_combout\);

-- Location: FF_X55_Y59_N21
\PC|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(19));

-- Location: LCCOMB_X54_Y62_N6
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

-- Location: LCCOMB_X55_Y62_N6
\branch_address[20]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[20]~34_combout\ = (\pc_incremented[20]~36_combout\ & (!\branch_address[19]~33\)) # (!\pc_incremented[20]~36_combout\ & ((\branch_address[19]~33\) # (GND)))
-- \branch_address[20]~35\ = CARRY((!\branch_address[19]~33\) # (!\pc_incremented[20]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[20]~36_combout\,
	datad => VCC,
	cin => \branch_address[19]~33\,
	combout => \branch_address[20]~34_combout\,
	cout => \branch_address[20]~35\);

-- Location: LCCOMB_X53_Y59_N10
\pc_in[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[20]~20_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & ((\branch_address[20]~34_combout\))) # (!\branch_or_next~14_combout\ & (\pc_incremented[20]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[20]~36_combout\,
	datab => \branch_address[20]~34_combout\,
	datac => \branch_or_next~14_combout\,
	datad => \pc_in[3]~1_combout\,
	combout => \pc_in[20]~20_combout\);

-- Location: FF_X53_Y59_N11
\PC|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(20));

-- Location: LCCOMB_X54_Y62_N8
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

-- Location: LCCOMB_X55_Y62_N8
\branch_address[21]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[21]~36_combout\ = (\pc_incremented[21]~38_combout\ & (\branch_address[20]~35\ $ (GND))) # (!\pc_incremented[21]~38_combout\ & (!\branch_address[20]~35\ & VCC))
-- \branch_address[21]~37\ = CARRY((\pc_incremented[21]~38_combout\ & !\branch_address[20]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[21]~38_combout\,
	datad => VCC,
	cin => \branch_address[20]~35\,
	combout => \branch_address[21]~36_combout\,
	cout => \branch_address[21]~37\);

-- Location: LCCOMB_X55_Y59_N28
\pc_in[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[21]~21_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & (\branch_address[21]~36_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[21]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_or_next~14_combout\,
	datac => \branch_address[21]~36_combout\,
	datad => \pc_incremented[21]~38_combout\,
	combout => \pc_in[21]~21_combout\);

-- Location: FF_X55_Y59_N29
\PC|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(21));

-- Location: LCCOMB_X54_Y62_N10
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

-- Location: LCCOMB_X55_Y62_N10
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

-- Location: LCCOMB_X55_Y62_N30
\pc_in[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[22]~22_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & ((\branch_address[22]~38_combout\))) # (!\branch_or_next~14_combout\ & (\pc_incremented[22]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[22]~40_combout\,
	datab => \pc_in[3]~1_combout\,
	datac => \branch_address[22]~38_combout\,
	datad => \branch_or_next~14_combout\,
	combout => \pc_in[22]~22_combout\);

-- Location: FF_X55_Y62_N31
\PC|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(22));

-- Location: LCCOMB_X54_Y62_N12
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

-- Location: LCCOMB_X55_Y62_N12
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

-- Location: LCCOMB_X55_Y59_N8
\pc_in[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[23]~23_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & (\branch_address[23]~40_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[23]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_or_next~14_combout\,
	datac => \branch_address[23]~40_combout\,
	datad => \pc_incremented[23]~42_combout\,
	combout => \pc_in[23]~23_combout\);

-- Location: FF_X55_Y59_N9
\PC|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(23));

-- Location: LCCOMB_X54_Y62_N14
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

-- Location: LCCOMB_X55_Y62_N14
\branch_address[24]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[24]~42_combout\ = (\pc_incremented[24]~44_combout\ & (!\branch_address[23]~41\)) # (!\pc_incremented[24]~44_combout\ & ((\branch_address[23]~41\) # (GND)))
-- \branch_address[24]~43\ = CARRY((!\branch_address[23]~41\) # (!\pc_incremented[24]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[24]~44_combout\,
	datad => VCC,
	cin => \branch_address[23]~41\,
	combout => \branch_address[24]~42_combout\,
	cout => \branch_address[24]~43\);

-- Location: LCCOMB_X56_Y59_N30
\pc_in[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[24]~24_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & ((\branch_address[24]~42_combout\))) # (!\branch_or_next~14_combout\ & (\pc_incremented[24]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~14_combout\,
	datab => \pc_incremented[24]~44_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \branch_address[24]~42_combout\,
	combout => \pc_in[24]~24_combout\);

-- Location: FF_X56_Y59_N31
\PC|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(24));

-- Location: LCCOMB_X54_Y62_N16
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

-- Location: LCCOMB_X55_Y62_N16
\branch_address[25]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[25]~44_combout\ = (\pc_incremented[25]~46_combout\ & (\branch_address[24]~43\ $ (GND))) # (!\pc_incremented[25]~46_combout\ & (!\branch_address[24]~43\ & VCC))
-- \branch_address[25]~45\ = CARRY((\pc_incremented[25]~46_combout\ & !\branch_address[24]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[25]~46_combout\,
	datad => VCC,
	cin => \branch_address[24]~43\,
	combout => \branch_address[25]~44_combout\,
	cout => \branch_address[25]~45\);

-- Location: LCCOMB_X55_Y59_N26
\pc_in[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[25]~25_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & ((\branch_address[25]~44_combout\))) # (!\branch_or_next~14_combout\ & (\pc_incremented[25]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_in[3]~1_combout\,
	datab => \branch_or_next~14_combout\,
	datac => \pc_incremented[25]~46_combout\,
	datad => \branch_address[25]~44_combout\,
	combout => \pc_in[25]~25_combout\);

-- Location: FF_X55_Y59_N27
\PC|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(25));

-- Location: LCCOMB_X54_Y62_N18
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

-- Location: LCCOMB_X55_Y62_N18
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

-- Location: LCCOMB_X54_Y62_N30
\pc_in[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[26]~26_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & (\branch_address[26]~46_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[26]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[26]~46_combout\,
	datab => \pc_in[3]~1_combout\,
	datac => \pc_incremented[26]~48_combout\,
	datad => \branch_or_next~14_combout\,
	combout => \pc_in[26]~26_combout\);

-- Location: FF_X54_Y62_N31
\PC|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(26));

-- Location: LCCOMB_X54_Y62_N20
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

-- Location: LCCOMB_X55_Y62_N20
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

-- Location: LCCOMB_X56_Y59_N22
\pc_in[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_in[27]~27_combout\ = (\pc_in[3]~1_combout\ & ((\branch_or_next~14_combout\ & (\branch_address[27]~48_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[27]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~14_combout\,
	datab => \branch_address[27]~48_combout\,
	datac => \pc_in[3]~1_combout\,
	datad => \pc_incremented[27]~50_combout\,
	combout => \pc_in[27]~27_combout\);

-- Location: FF_X56_Y59_N23
\PC|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \pc_in[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(27));

-- Location: LCCOMB_X54_Y62_N22
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

-- Location: LCCOMB_X55_Y62_N22
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

-- Location: LCCOMB_X54_Y59_N18
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\branch_or_next~14_combout\ & (\branch_address[28]~50_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[28]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_address[28]~50_combout\,
	datab => \pc_incremented[28]~52_combout\,
	datad => \branch_or_next~14_combout\,
	combout => \Add1~0_combout\);

-- Location: FF_X54_Y59_N19
\PC|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \Add1~0_combout\,
	ena => \control|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(28));

-- Location: LCCOMB_X54_Y62_N24
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

-- Location: LCCOMB_X55_Y62_N24
\branch_address[29]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[29]~52_combout\ = (\pc_incremented[29]~54_combout\ & (\branch_address[28]~51\ $ (GND))) # (!\pc_incremented[29]~54_combout\ & (!\branch_address[28]~51\ & VCC))
-- \branch_address[29]~53\ = CARRY((\pc_incremented[29]~54_combout\ & !\branch_address[28]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_incremented[29]~54_combout\,
	datad => VCC,
	cin => \branch_address[28]~51\,
	combout => \branch_address[29]~52_combout\,
	cout => \branch_address[29]~53\);

-- Location: LCCOMB_X54_Y59_N26
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\branch_or_next~14_combout\ & (\branch_address[29]~52_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[29]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \branch_or_next~14_combout\,
	datab => \branch_address[29]~52_combout\,
	datad => \pc_incremented[29]~54_combout\,
	combout => \Add1~1_combout\);

-- Location: FF_X54_Y59_N27
\PC|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \Add1~1_combout\,
	ena => \control|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(29));

-- Location: LCCOMB_X54_Y62_N26
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

-- Location: LCCOMB_X55_Y62_N26
\branch_address[30]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[30]~54_combout\ = (\pc_incremented[30]~56_combout\ & (!\branch_address[29]~53\)) # (!\pc_incremented[30]~56_combout\ & ((\branch_address[29]~53\) # (GND)))
-- \branch_address[30]~55\ = CARRY((!\branch_address[29]~53\) # (!\pc_incremented[30]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[30]~56_combout\,
	datad => VCC,
	cin => \branch_address[29]~53\,
	combout => \branch_address[30]~54_combout\,
	cout => \branch_address[30]~55\);

-- Location: LCCOMB_X54_Y59_N16
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\branch_or_next~14_combout\ & (\branch_address[30]~54_combout\)) # (!\branch_or_next~14_combout\ & ((\pc_incremented[30]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \branch_address[30]~54_combout\,
	datac => \pc_incremented[30]~56_combout\,
	datad => \branch_or_next~14_combout\,
	combout => \Add1~2_combout\);

-- Location: FF_X54_Y59_N17
\PC|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
	d => \Add1~2_combout\,
	ena => \control|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|Q\(30));

-- Location: LCCOMB_X54_Y62_N28
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

-- Location: LCCOMB_X55_Y62_N28
\branch_address[31]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_address[31]~56_combout\ = \branch_address[30]~55\ $ (!\pc_incremented[31]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pc_incremented[31]~58_combout\,
	cin => \branch_address[30]~55\,
	combout => \branch_address[31]~56_combout\);

-- Location: LCCOMB_X54_Y59_N6
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\branch_or_next~14_combout\ & ((\branch_address[31]~56_combout\))) # (!\branch_or_next~14_combout\ & (\pc_incremented[31]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_incremented[31]~58_combout\,
	datab => \branch_address[31]~56_combout\,
	datad => \branch_or_next~14_combout\,
	combout => \Add1~3_combout\);

-- Location: FF_X54_Y59_N7
\PC|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count[25]~clkctrl_outclk\,
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


