-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "10/18/2017 13:02:12"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	Counter IS
    PORT (
	clk : IN std_logic;
	step : IN std_logic;
	counts : OUT STD.STANDARD.integer;
	hex : INOUT std_logic_vector(6 DOWNTO 0)
	);
END Counter;

-- Design Ports Information
-- clk	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[0]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[1]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[2]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[3]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[5]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[6]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[7]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[8]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[9]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[10]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[11]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[12]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[13]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[14]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[15]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[16]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[17]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[18]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[19]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[20]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[21]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[22]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[23]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[24]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[25]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[26]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[27]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[28]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[29]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[30]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counts[31]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[6]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_step : std_logic;
SIGNAL ww_counts : std_logic_vector(31 DOWNTO 0);
SIGNAL \process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \hex[0]~input_o\ : std_logic;
SIGNAL \hex[1]~input_o\ : std_logic;
SIGNAL \hex[2]~input_o\ : std_logic;
SIGNAL \hex[3]~input_o\ : std_logic;
SIGNAL \hex[4]~input_o\ : std_logic;
SIGNAL \hex[5]~input_o\ : std_logic;
SIGNAL \hex[6]~input_o\ : std_logic;
SIGNAL \hex[0]~output_o\ : std_logic;
SIGNAL \hex[1]~output_o\ : std_logic;
SIGNAL \hex[2]~output_o\ : std_logic;
SIGNAL \hex[3]~output_o\ : std_logic;
SIGNAL \hex[4]~output_o\ : std_logic;
SIGNAL \hex[5]~output_o\ : std_logic;
SIGNAL \hex[6]~output_o\ : std_logic;
SIGNAL \counts[0]~output_o\ : std_logic;
SIGNAL \counts[1]~output_o\ : std_logic;
SIGNAL \counts[2]~output_o\ : std_logic;
SIGNAL \counts[3]~output_o\ : std_logic;
SIGNAL \counts[4]~output_o\ : std_logic;
SIGNAL \counts[5]~output_o\ : std_logic;
SIGNAL \counts[6]~output_o\ : std_logic;
SIGNAL \counts[7]~output_o\ : std_logic;
SIGNAL \counts[8]~output_o\ : std_logic;
SIGNAL \counts[9]~output_o\ : std_logic;
SIGNAL \counts[10]~output_o\ : std_logic;
SIGNAL \counts[11]~output_o\ : std_logic;
SIGNAL \counts[12]~output_o\ : std_logic;
SIGNAL \counts[13]~output_o\ : std_logic;
SIGNAL \counts[14]~output_o\ : std_logic;
SIGNAL \counts[15]~output_o\ : std_logic;
SIGNAL \counts[16]~output_o\ : std_logic;
SIGNAL \counts[17]~output_o\ : std_logic;
SIGNAL \counts[18]~output_o\ : std_logic;
SIGNAL \counts[19]~output_o\ : std_logic;
SIGNAL \counts[20]~output_o\ : std_logic;
SIGNAL \counts[21]~output_o\ : std_logic;
SIGNAL \counts[22]~output_o\ : std_logic;
SIGNAL \counts[23]~output_o\ : std_logic;
SIGNAL \counts[24]~output_o\ : std_logic;
SIGNAL \counts[25]~output_o\ : std_logic;
SIGNAL \counts[26]~output_o\ : std_logic;
SIGNAL \counts[27]~output_o\ : std_logic;
SIGNAL \counts[28]~output_o\ : std_logic;
SIGNAL \counts[29]~output_o\ : std_logic;
SIGNAL \counts[30]~output_o\ : std_logic;
SIGNAL \counts[31]~output_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \step~input_o\ : std_logic;
SIGNAL \prev_step~combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~76\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Add0~88\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \WideOr6~1_combout\ : std_logic;
SIGNAL \WideOr6~2_combout\ : std_logic;
SIGNAL \hex[0]$latch~combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr5~1_combout\ : std_logic;
SIGNAL \hex[1]$latch~combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \hex[2]$latch~combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \hex[3]$latch~combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \hex[4]$latch~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \hex[5]$latch~combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \hex[6]$latch~combout\ : std_logic;
SIGNAL \counts[0]$latch~combout\ : std_logic;
SIGNAL \counts[1]$latch~combout\ : std_logic;
SIGNAL \counts[2]$latch~combout\ : std_logic;
SIGNAL \counts[3]$latch~combout\ : std_logic;
SIGNAL \counts[4]$latch~combout\ : std_logic;
SIGNAL \counts[5]$latch~combout\ : std_logic;
SIGNAL \counts[6]$latch~combout\ : std_logic;
SIGNAL \counts[7]$latch~combout\ : std_logic;
SIGNAL \counts[8]$latch~combout\ : std_logic;
SIGNAL \counts[9]$latch~combout\ : std_logic;
SIGNAL \counts[10]$latch~combout\ : std_logic;
SIGNAL \counts[11]$latch~combout\ : std_logic;
SIGNAL \counts[12]$latch~combout\ : std_logic;
SIGNAL \counts[13]$latch~combout\ : std_logic;
SIGNAL \counts[14]$latch~combout\ : std_logic;
SIGNAL \counts[15]$latch~combout\ : std_logic;
SIGNAL \counts[16]$latch~combout\ : std_logic;
SIGNAL \counts[17]$latch~combout\ : std_logic;
SIGNAL \counts[18]$latch~combout\ : std_logic;
SIGNAL \counts[19]$latch~combout\ : std_logic;
SIGNAL \counts[20]$latch~combout\ : std_logic;
SIGNAL \counts[21]$latch~combout\ : std_logic;
SIGNAL \counts[22]$latch~combout\ : std_logic;
SIGNAL \counts[23]$latch~combout\ : std_logic;
SIGNAL \counts[24]$latch~combout\ : std_logic;
SIGNAL \counts[25]$latch~combout\ : std_logic;
SIGNAL \counts[26]$latch~combout\ : std_logic;
SIGNAL \counts[27]$latch~combout\ : std_logic;
SIGNAL \counts[28]$latch~combout\ : std_logic;
SIGNAL \counts[29]$latch~combout\ : std_logic;
SIGNAL \counts[30]$latch~combout\ : std_logic;
SIGNAL \counts[31]$latch~combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_step <= step;
counts <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_counts));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_0~0_combout\);

-- Location: IOOBUF_X69_Y73_N23
\hex[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex[0]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hex[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\hex[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex[1]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hex[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\hex[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex[2]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hex[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\hex[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex[3]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hex[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\hex[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex[4]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hex[4]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\hex[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex[5]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hex[5]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\hex[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex[6]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hex[6]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\counts[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[0]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[0]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\counts[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[1]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[1]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\counts[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[2]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[2]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\counts[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[3]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[3]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\counts[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[4]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[4]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\counts[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[5]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[5]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\counts[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[6]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[6]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\counts[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[7]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[7]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\counts[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[8]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[8]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\counts[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[9]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[9]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\counts[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[10]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[10]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\counts[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[11]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[11]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\counts[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[12]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[12]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\counts[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[13]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[13]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\counts[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[14]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[14]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\counts[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[15]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[15]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\counts[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[16]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[16]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\counts[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[17]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[17]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\counts[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[18]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[18]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\counts[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[19]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[19]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\counts[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[20]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[20]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\counts[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[21]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[21]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\counts[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[22]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[22]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\counts[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[23]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[23]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\counts[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[24]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[24]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\counts[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[25]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[25]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\counts[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[26]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[26]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\counts[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[27]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[27]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\counts[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[28]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[28]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\counts[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[29]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[29]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\counts[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[30]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[30]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\counts[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counts[31]$latch~combout\,
	devoe => ww_devoe,
	o => \counts[31]~output_o\);

-- Location: LCCOMB_X111_Y53_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X0_Y35_N15
\step~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_step,
	o => \step~input_o\);

-- Location: LCCOMB_X1_Y35_N18
prev_step : cycloneive_lcell_comb
-- Equation(s):
-- \prev_step~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (\step~input_o\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\prev_step~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \step~input_o\,
	datac => \process_0~0clkctrl_outclk\,
	datad => \prev_step~combout\,
	combout => \prev_step~combout\);

-- Location: LCCOMB_X1_Y35_N0
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = \prev_step~combout\ $ (\step~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prev_step~combout\,
	datad => \step~input_o\,
	combout => \process_0~0_combout\);

-- Location: CLKCTRL_G4
\process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X111_Y53_N2
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~4\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X111_Y53_N4
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(2) & (\Add0~4\ $ (GND))) # (!count(2) & (!\Add0~4\ & VCC))
-- \Add0~7\ = CARRY((count(2) & !\Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X112_Y52_N2
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\Add0~6_combout\ & ((count(31)) # ((\Equal0~8_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => count(31),
	datac => \Equal0~8_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X112_Y52_N22
\count[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(2) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~8_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => count(2),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(2));

-- Location: LCCOMB_X111_Y53_N6
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (count(3) & (!\Add0~7\)) # (!count(3) & ((\Add0~7\) # (GND)))
-- \Add0~10\ = CARRY((!\Add0~7\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X112_Y53_N8
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~9_combout\ & ((count(31)) # ((\Equal0~8_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => count(31),
	datac => \Add0~9_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X112_Y53_N2
\count[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(3) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~11_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~11_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => count(3),
	combout => count(3));

-- Location: LCCOMB_X111_Y53_N8
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(4) & (\Add0~10\ $ (GND))) # (!count(4) & (!\Add0~10\ & VCC))
-- \Add0~13\ = CARRY((count(4) & !\Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X109_Y53_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~12_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Add0~12_combout\,
	datac => count(31),
	datad => \Equal0~8_combout\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X110_Y53_N4
\count[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(4) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~14_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datac => count(4),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(4));

-- Location: LCCOMB_X111_Y53_N10
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (count(5) & (!\Add0~13\)) # (!count(5) & ((\Add0~13\) # (GND)))
-- \Add0~16\ = CARRY((!\Add0~13\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X109_Y53_N0
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~15_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Equal0~8_combout\,
	datac => count(31),
	datad => \Add0~15_combout\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X110_Y53_N14
\count[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(5) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~17_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datac => count(5),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(5));

-- Location: LCCOMB_X111_Y53_N12
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(6) & (\Add0~16\ $ (GND))) # (!count(6) & (!\Add0~16\ & VCC))
-- \Add0~19\ = CARRY((count(6) & !\Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X109_Y53_N6
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\Add0~18_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Add0~18_combout\,
	datac => count(31),
	datad => \Equal0~8_combout\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X110_Y53_N12
\count[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(6) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~20_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~20_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => count(6),
	combout => count(6));

-- Location: LCCOMB_X111_Y53_N14
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (count(7) & (!\Add0~19\)) # (!count(7) & ((\Add0~19\) # (GND)))
-- \Add0~22\ = CARRY((!\Add0~19\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X109_Y53_N16
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Add0~21_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Add0~21_combout\,
	datac => count(31),
	datad => \Equal0~8_combout\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X110_Y53_N6
\count[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(7) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~23_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => count(7),
	combout => count(7));

-- Location: LCCOMB_X111_Y53_N16
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(8) & (\Add0~22\ $ (GND))) # (!count(8) & (!\Add0~22\ & VCC))
-- \Add0~25\ = CARRY((count(8) & !\Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X113_Y53_N12
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\Add0~24_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Equal0~8_combout\,
	datac => count(31),
	datad => \Add0~24_combout\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X112_Y53_N12
\count[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(8) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~26_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~26_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => count(8),
	combout => count(8));

-- Location: LCCOMB_X111_Y53_N18
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (count(9) & (!\Add0~25\)) # (!count(9) & ((\Add0~25\) # (GND)))
-- \Add0~28\ = CARRY((!\Add0~25\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X112_Y53_N14
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~27_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \LessThan0~0_combout\,
	datac => \Equal0~8_combout\,
	datad => \Add0~27_combout\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X112_Y53_N6
\count[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(9) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~29_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~29_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => count(9),
	combout => count(9));

-- Location: LCCOMB_X111_Y53_N20
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(10) & (\Add0~28\ $ (GND))) # (!count(10) & (!\Add0~28\ & VCC))
-- \Add0~31\ = CARRY((count(10) & !\Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X113_Y53_N30
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\Add0~30_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => count(31),
	datac => \Add0~30_combout\,
	datad => \Equal0~8_combout\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X112_Y53_N24
\count[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(10) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~32_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => count(10),
	combout => count(10));

-- Location: LCCOMB_X111_Y53_N22
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (count(11) & (!\Add0~31\)) # (!count(11) & ((\Add0~31\) # (GND)))
-- \Add0~34\ = CARRY((!\Add0~31\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X112_Y53_N4
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\Add0~33_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \LessThan0~0_combout\,
	datac => \Equal0~8_combout\,
	datad => \Add0~33_combout\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X112_Y53_N18
\count[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(11) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~35_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~35_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => count(11),
	combout => count(11));

-- Location: LCCOMB_X111_Y53_N24
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(12) & (\Add0~34\ $ (GND))) # (!count(12) & (!\Add0~34\ & VCC))
-- \Add0~37\ = CARRY((count(12) & !\Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X110_Y53_N0
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\Add0~36_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \LessThan0~0_combout\,
	datac => count(31),
	datad => \Equal0~8_combout\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X110_Y53_N24
\count[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(12) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~38_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~38_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => count(12),
	combout => count(12));

-- Location: LCCOMB_X111_Y53_N26
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (count(13) & (!\Add0~37\)) # (!count(13) & ((\Add0~37\) # (GND)))
-- \Add0~40\ = CARRY((!\Add0~37\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X110_Y53_N2
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\Add0~39_combout\ & ((count(31)) # ((\Equal0~8_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~8_combout\,
	datac => \LessThan0~0_combout\,
	datad => \Add0~39_combout\,
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X110_Y53_N26
\count[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(13) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~41_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~41_combout\,
	datac => count(13),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(13));

-- Location: LCCOMB_X111_Y53_N28
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(14) & (\Add0~40\ $ (GND))) # (!count(14) & (!\Add0~40\ & VCC))
-- \Add0~43\ = CARRY((count(14) & !\Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X110_Y53_N8
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\Add0~42_combout\ & ((count(31)) # ((\Equal0~8_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~8_combout\,
	datac => \LessThan0~0_combout\,
	datad => \Add0~42_combout\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X110_Y53_N16
\count[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(14) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~44_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~44_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => count(14),
	combout => count(14));

-- Location: LCCOMB_X111_Y53_N30
\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (count(15) & (!\Add0~43\)) # (!count(15) & ((\Add0~43\) # (GND)))
-- \Add0~46\ = CARRY((!\Add0~43\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X110_Y53_N18
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\Add0~45_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~45_combout\,
	datab => count(31),
	datac => \LessThan0~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \Add0~47_combout\);

-- Location: LCCOMB_X110_Y53_N10
\count[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(15) = (GLOBAL(\process_0~0clkctrl_outclk\) & ((\Add0~47_combout\))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => \Add0~47_combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => count(15));

-- Location: LCCOMB_X111_Y52_N0
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(16) & (\Add0~46\ $ (GND))) # (!count(16) & (!\Add0~46\ & VCC))
-- \Add0~49\ = CARRY((count(16) & !\Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X110_Y53_N28
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\Add0~48_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \LessThan0~0_combout\,
	datac => count(31),
	datad => \Equal0~8_combout\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X110_Y53_N20
\count[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(16) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~50_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~50_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => count(16),
	combout => count(16));

-- Location: LCCOMB_X111_Y52_N2
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (count(17) & (!\Add0~49\)) # (!count(17) & ((\Add0~49\) # (GND)))
-- \Add0~52\ = CARRY((!\Add0~49\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X112_Y53_N22
\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\Add0~51_combout\ & ((count(31)) # ((\Equal0~8_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => count(31),
	datac => \Add0~51_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add0~53_combout\);

-- Location: LCCOMB_X112_Y53_N20
\count[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(17) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~53_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~53_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => count(17),
	combout => count(17));

-- Location: LCCOMB_X111_Y52_N4
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count(18) & (\Add0~52\ $ (GND))) # (!count(18) & (!\Add0~52\ & VCC))
-- \Add0~55\ = CARRY((count(18) & !\Add0~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X110_Y53_N30
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\Add0~54_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \LessThan0~0_combout\,
	datac => \Add0~54_combout\,
	datad => \Equal0~8_combout\,
	combout => \Add0~56_combout\);

-- Location: LCCOMB_X110_Y53_N22
\count[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(18) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~56_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datac => count(18),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(18));

-- Location: LCCOMB_X111_Y52_N6
\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (count(19) & (!\Add0~55\)) # (!count(19) & ((\Add0~55\) # (GND)))
-- \Add0~58\ = CARRY((!\Add0~55\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X112_Y53_N16
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\Add0~57_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \LessThan0~0_combout\,
	datac => \Equal0~8_combout\,
	datad => \Add0~57_combout\,
	combout => \Add0~59_combout\);

-- Location: LCCOMB_X112_Y53_N10
\count[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(19) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~59_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~59_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => count(19),
	combout => count(19));

-- Location: LCCOMB_X111_Y52_N8
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count(20) & (\Add0~58\ $ (GND))) # (!count(20) & (!\Add0~58\ & VCC))
-- \Add0~61\ = CARRY((count(20) & !\Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X111_Y54_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (\Add0~60_combout\ & ((count(31)) # ((\Equal0~8_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~8_combout\,
	datac => \LessThan0~0_combout\,
	datad => \Add0~60_combout\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X111_Y54_N8
\count[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(20) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~62_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datac => count(20),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(20));

-- Location: LCCOMB_X111_Y52_N10
\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (count(21) & (!\Add0~61\)) # (!count(21) & ((\Add0~61\) # (GND)))
-- \Add0~64\ = CARRY((!\Add0~61\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X111_Y52_N12
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (count(22) & (\Add0~64\ $ (GND))) # (!count(22) & (!\Add0~64\ & VCC))
-- \Add0~67\ = CARRY((count(22) & !\Add0~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X111_Y54_N6
\Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (\Add0~66_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Equal0~8_combout\,
	datac => \Add0~66_combout\,
	datad => count(31),
	combout => \Add0~68_combout\);

-- Location: LCCOMB_X111_Y54_N4
\count[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(22) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~68_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~68_combout\,
	datac => count(22),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(22));

-- Location: LCCOMB_X111_Y52_N14
\Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (count(23) & (!\Add0~67\)) # (!count(23) & ((\Add0~67\) # (GND)))
-- \Add0~70\ = CARRY((!\Add0~67\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: LCCOMB_X111_Y54_N12
\Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (\Add0~69_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Equal0~8_combout\,
	datac => \Add0~69_combout\,
	datad => count(31),
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X111_Y54_N22
\count[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(23) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~71_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~71_combout\,
	datac => count(23),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(23));

-- Location: LCCOMB_X111_Y52_N16
\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (count(24) & (\Add0~70\ $ (GND))) # (!count(24) & (!\Add0~70\ & VCC))
-- \Add0~73\ = CARRY((count(24) & !\Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \Add0~70\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X112_Y52_N0
\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (\Add0~72_combout\ & ((count(31)) # ((\Equal0~8_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~8_combout\,
	datac => \Add0~72_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add0~74_combout\);

-- Location: LCCOMB_X112_Y52_N8
\count[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(24) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~74_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~74_combout\,
	datac => count(24),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(24));

-- Location: LCCOMB_X111_Y52_N18
\Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (count(25) & (!\Add0~73\)) # (!count(25) & ((\Add0~73\) # (GND)))
-- \Add0~76\ = CARRY((!\Add0~73\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~75_combout\,
	cout => \Add0~76\);

-- Location: LCCOMB_X112_Y52_N10
\Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (\Add0~75_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \LessThan0~0_combout\,
	datac => \Equal0~8_combout\,
	datad => \Add0~75_combout\,
	combout => \Add0~77_combout\);

-- Location: LCCOMB_X112_Y52_N14
\count[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(25) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~77_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~77_combout\,
	datac => count(25),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(25));

-- Location: LCCOMB_X111_Y52_N20
\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (count(26) & (\Add0~76\ $ (GND))) # (!count(26) & (!\Add0~76\ & VCC))
-- \Add0~79\ = CARRY((count(26) & !\Add0~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datad => VCC,
	cin => \Add0~76\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X112_Y52_N24
\Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (\Add0~78_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \LessThan0~0_combout\,
	datac => \Equal0~8_combout\,
	datad => \Add0~78_combout\,
	combout => \Add0~80_combout\);

-- Location: LCCOMB_X112_Y52_N4
\count[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(26) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~80_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~80_combout\,
	datac => count(26),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(26));

-- Location: LCCOMB_X111_Y52_N22
\Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (count(27) & (!\Add0~79\)) # (!count(27) & ((\Add0~79\) # (GND)))
-- \Add0~82\ = CARRY((!\Add0~79\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(27),
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~81_combout\,
	cout => \Add0~82\);

-- Location: LCCOMB_X112_Y52_N6
\Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (\Add0~81_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \LessThan0~0_combout\,
	datac => \Equal0~8_combout\,
	datad => \Add0~81_combout\,
	combout => \Add0~83_combout\);

-- Location: LCCOMB_X112_Y52_N26
\count[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(27) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~83_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~83_combout\,
	datac => count(27),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(27));

-- Location: LCCOMB_X111_Y52_N24
\Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (count(28) & (\Add0~82\ $ (GND))) # (!count(28) & (!\Add0~82\ & VCC))
-- \Add0~85\ = CARRY((count(28) & !\Add0~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datad => VCC,
	cin => \Add0~82\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X110_Y52_N14
\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (\Add0~84_combout\ & ((count(31)) # ((\Equal0~8_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~8_combout\,
	datac => \LessThan0~0_combout\,
	datad => \Add0~84_combout\,
	combout => \Add0~86_combout\);

-- Location: LCCOMB_X110_Y52_N8
\count[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(28) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~86_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~86_combout\,
	datac => count(28),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(28));

-- Location: LCCOMB_X111_Y52_N26
\Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (count(29) & (!\Add0~85\)) # (!count(29) & ((\Add0~85\) # (GND)))
-- \Add0~88\ = CARRY((!\Add0~85\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~87_combout\,
	cout => \Add0~88\);

-- Location: LCCOMB_X110_Y52_N4
\Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (\Add0~87_combout\ & ((count(31)) # ((\Equal0~8_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~8_combout\,
	datac => \LessThan0~0_combout\,
	datad => \Add0~87_combout\,
	combout => \Add0~89_combout\);

-- Location: LCCOMB_X110_Y52_N6
\count[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(29) = (GLOBAL(\process_0~0clkctrl_outclk\) & ((\Add0~89_combout\))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datac => \Add0~89_combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => count(29));

-- Location: LCCOMB_X110_Y52_N26
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(29) & (!count(30) & !count(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => count(30),
	datac => count(28),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X112_Y52_N12
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(27) & (!count(24) & (!count(25) & !count(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datab => count(24),
	datac => count(25),
	datad => count(26),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X110_Y52_N18
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~7_combout\ & \Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X109_Y53_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(7) & (!count(5) & (!count(6) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(5),
	datac => count(6),
	datad => count(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X109_Y53_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(14) & (!count(13) & (!count(15) & !count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(13),
	datac => count(15),
	datad => count(12),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X109_Y53_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(16) & (!count(18) & (!count(19) & !count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(18),
	datac => count(19),
	datad => count(17),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X113_Y53_N20
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(8) & (!count(9) & (!count(10) & !count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(9),
	datac => count(10),
	datad => count(11),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X110_Y52_N24
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X110_Y52_N20
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (count(31)) # ((\Equal0~9_combout\ & (\LessThan0~0_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~9_combout\,
	datac => \LessThan0~0_combout\,
	datad => \Equal0~4_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X111_Y52_N28
\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (count(30) & (\Add0~88\ $ (GND))) # (!count(30) & (!\Add0~88\ & VCC))
-- \Add0~91\ = CARRY((count(30) & !\Add0~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datad => VCC,
	cin => \Add0~88\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X110_Y52_N22
\Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (\LessThan0~1_combout\ & \Add0~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~1_combout\,
	datad => \Add0~90_combout\,
	combout => \Add0~92_combout\);

-- Location: LCCOMB_X110_Y52_N16
\count[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(30) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~92_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~92_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => count(30),
	combout => count(30));

-- Location: LCCOMB_X111_Y52_N30
\Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = \Add0~91\ $ (count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(31),
	cin => \Add0~91\,
	combout => \Add0~93_combout\);

-- Location: LCCOMB_X110_Y52_N12
\Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\Add0~93_combout\ & \LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~93_combout\,
	datad => \LessThan0~1_combout\,
	combout => \Add0~95_combout\);

-- Location: LCCOMB_X110_Y52_N10
\count[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(31) = (GLOBAL(\process_0~0clkctrl_outclk\) & ((\Add0~95_combout\))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (count(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datac => \process_0~0clkctrl_outclk\,
	datad => \Add0~95_combout\,
	combout => count(31));

-- Location: LCCOMB_X113_Y53_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Add0~0_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Add0~0_combout\,
	datac => count(31),
	datad => \Equal0~8_combout\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X112_Y53_N30
\count[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(0) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~2_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datac => count(0),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(0));

-- Location: LCCOMB_X112_Y53_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!count(3)) # (!count(2))) # (!count(1))) # (!count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(2),
	datad => count(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X111_Y54_N20
\Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (\Add0~63_combout\ & ((count(31)) # ((\LessThan0~0_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Equal0~8_combout\,
	datac => \Add0~63_combout\,
	datad => count(31),
	combout => \Add0~65_combout\);

-- Location: LCCOMB_X111_Y54_N26
\count[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(21) = (GLOBAL(\process_0~0clkctrl_outclk\) & (\Add0~65_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~65_combout\,
	datac => count(21),
	datad => \process_0~0clkctrl_outclk\,
	combout => count(21));

-- Location: LCCOMB_X111_Y54_N16
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(21) & (!count(22) & (!count(20) & !count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => count(20),
	datad => count(23),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X110_Y52_N0
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X112_Y53_N26
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~3_combout\ & ((count(31)) # ((\Equal0~8_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \LessThan0~0_combout\,
	datac => count(31),
	datad => \Add0~3_combout\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X112_Y53_N28
\count[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(1) = (GLOBAL(\process_0~0clkctrl_outclk\) & ((\Add0~5_combout\))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datac => \Add0~5_combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => count(1));

-- Location: LCCOMB_X110_Y52_N30
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!count(31) & (\Equal0~9_combout\ & (count(0) & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~9_combout\,
	datac => count(0),
	datad => \Equal0~4_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X110_Y51_N16
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!count(2) & (!count(1) & (\Equal1~0_combout\ & !count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => \Equal1~0_combout\,
	datad => count(3),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X110_Y52_N2
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!count(31) & (\Equal0~9_combout\ & (!count(0) & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~9_combout\,
	datac => count(0),
	datad => \Equal0~4_combout\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X110_Y51_N8
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\Equal1~0_combout\) # ((!count(1) & \Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datac => \Equal1~0_combout\,
	datad => \Equal9~0_combout\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X110_Y52_N28
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!count(31) & (\Equal0~9_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X110_Y51_N2
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!count(0) & (!count(3) & \Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(3),
	datad => \Equal1~2_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X110_Y51_N18
\WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~1_combout\ = (count(1) & (count(3) & (\WideOr6~0_combout\))) # (!count(1) & ((\Equal0~10_combout\) # ((count(3) & \WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(3),
	datac => \WideOr6~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \WideOr6~1_combout\);

-- Location: LCCOMB_X110_Y51_N28
\WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~2_combout\ = (\Equal1~1_combout\) # ((\WideOr6~1_combout\ & (count(1) $ (count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \Equal1~1_combout\,
	datac => count(2),
	datad => \WideOr6~1_combout\,
	combout => \WideOr6~2_combout\);

-- Location: LCCOMB_X110_Y51_N30
\hex[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex[0]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (!\WideOr6~2_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\hex[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr6~2_combout\,
	datac => \hex[0]$latch~combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => \hex[0]$latch~combout\);

-- Location: LCCOMB_X111_Y51_N22
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (count(1) & count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(1),
	datad => count(2),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X111_Y51_N0
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\Equal1~0_combout\ & ((count(3) & (!count(2) & count(1))) # (!count(3) & (count(2) & !count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => \Equal1~0_combout\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X111_Y51_N4
\Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (count(3) & count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(3),
	datad => count(2),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X111_Y51_N26
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (((!count(1) & count(0))) # (!\Equal1~2_combout\)) # (!\Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \Equal11~0_combout\,
	datac => \Equal1~2_combout\,
	datad => count(0),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X111_Y51_N20
\WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~1_combout\ = (\WideOr5~0_combout\) # (((\Equal6~0_combout\ & \Equal0~10_combout\)) # (!\WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \WideOr5~0_combout\,
	datac => \WideOr4~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \WideOr5~1_combout\);

-- Location: LCCOMB_X111_Y51_N28
\hex[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex[1]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (!\WideOr5~1_combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\hex[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr5~1_combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => \hex[1]$latch~combout\,
	combout => \hex[1]$latch~combout\);

-- Location: LCCOMB_X111_Y51_N2
WideOr4 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = ((count(1) & (!count(2) & \Equal0~10_combout\))) # (!\WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(2),
	datac => \WideOr4~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X111_Y51_N6
\hex[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex[2]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (!\WideOr4~combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\hex[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr4~combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => \hex[2]$latch~combout\,
	combout => \hex[2]$latch~combout\);

-- Location: LCCOMB_X110_Y51_N10
\Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (\Equal11~0_combout\ & (count(1) & (count(0) & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => count(1),
	datac => count(0),
	datad => \Equal1~2_combout\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X111_Y51_N12
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (count(3) & (count(1) & !count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datac => count(1),
	datad => count(2),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X110_Y51_N22
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!count(0) & (!count(3) & (!count(1) & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(3),
	datac => count(1),
	datad => \Equal1~2_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X110_Y51_N0
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = ((count(2) & ((count(3)) # (!count(1)))) # (!count(2) & ((count(1)) # (!count(3))))) # (!\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => \Equal1~0_combout\,
	datad => count(3),
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X110_Y51_N20
\WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (!\Equal1~1_combout\ & (\WideOr2~0_combout\ & ((!\Equal0~11_combout\) # (!count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \Equal1~1_combout\,
	datac => \Equal0~11_combout\,
	datad => \WideOr2~0_combout\,
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X110_Y51_N26
WideOr3 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\Equal14~0_combout\) # (((\Equal9~0_combout\ & \Equal10~0_combout\)) # (!\WideOr2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~0_combout\,
	datab => \Equal9~0_combout\,
	datac => \Equal10~0_combout\,
	datad => \WideOr2~1_combout\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X110_Y51_N12
\hex[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex[3]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & ((!\WideOr3~combout\))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (\hex[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex[3]$latch~combout\,
	datac => \WideOr3~combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => \hex[3]$latch~combout\);

-- Location: LCCOMB_X110_Y51_N24
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (count(2) & (!count(1) & (\Equal1~0_combout\ & !count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => \Equal1~0_combout\,
	datad => count(3),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X110_Y51_N14
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!count(2) & (count(1) & (\Equal1~0_combout\ & !count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => \Equal1~0_combout\,
	datad => count(3),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X110_Y51_N4
WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\Equal5~0_combout\) # ((\Equal3~0_combout\) # (!\WideOr2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \WideOr2~1_combout\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X110_Y51_N6
\hex[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex[4]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & ((!\WideOr2~combout\))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (\hex[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex[4]$latch~combout\,
	datac => \WideOr2~combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => \hex[4]$latch~combout\);

-- Location: LCCOMB_X111_Y51_N14
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\Equal9~0_combout\ & ((count(1) & (!count(3) & !count(2))) # (!count(1) & (count(3) & count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(3),
	datac => \Equal9~0_combout\,
	datad => count(2),
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X111_Y51_N24
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ((count(3) & ((count(1)) # (!count(2)))) # (!count(3) & (count(2) $ (count(1))))) # (!\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(1),
	datad => \Equal1~0_combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X111_Y51_N30
WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\Equal3~0_combout\) # ((\WideOr1~0_combout\) # (!\WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datac => \WideOr1~0_combout\,
	datad => \WideOr0~0_combout\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X111_Y51_N16
\hex[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex[5]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (!\WideOr1~combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\hex[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => \hex[5]$latch~combout\,
	combout => \hex[5]$latch~combout\);

-- Location: LCCOMB_X111_Y51_N8
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ((\Equal0~10_combout\ & (count(2) $ (!count(1))))) # (!\WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => count(2),
	datac => count(1),
	datad => \WideOr0~0_combout\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X111_Y51_N18
\hex[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex[6]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (!\WideOr0~combout\)) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\hex[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr0~combout\,
	datac => \process_0~0clkctrl_outclk\,
	datad => \hex[6]$latch~combout\,
	combout => \hex[6]$latch~combout\);

-- Location: LCCOMB_X111_Y51_N10
\counts[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[0]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(0))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[0]$latch~combout\,
	combout => \counts[0]$latch~combout\);

-- Location: LCCOMB_X114_Y53_N20
\counts[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[1]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(1))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[1]$latch~combout\,
	combout => \counts[1]$latch~combout\);

-- Location: LCCOMB_X112_Y52_N16
\counts[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[2]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & ((count(2)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (\counts[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counts[2]$latch~combout\,
	datac => count(2),
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[2]$latch~combout\);

-- Location: LCCOMB_X112_Y51_N24
\counts[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[3]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(3))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[3]$latch~combout\,
	combout => \counts[3]$latch~combout\);

-- Location: LCCOMB_X114_Y53_N18
\counts[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[4]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(4))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[4]$latch~combout\,
	combout => \counts[4]$latch~combout\);

-- Location: LCCOMB_X109_Y53_N10
\counts[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[5]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(5))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[5]$latch~combout\,
	combout => \counts[5]$latch~combout\);

-- Location: LCCOMB_X109_Y53_N20
\counts[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[6]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(6))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[6]$latch~combout\,
	combout => \counts[6]$latch~combout\);

-- Location: LCCOMB_X109_Y53_N22
\counts[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[7]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(7))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datac => \counts[7]$latch~combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[7]$latch~combout\);

-- Location: LCCOMB_X114_Y53_N16
\counts[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[8]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(8))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[8]$latch~combout\,
	combout => \counts[8]$latch~combout\);

-- Location: LCCOMB_X114_Y53_N6
\counts[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[9]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(9))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[9]$latch~combout\,
	combout => \counts[9]$latch~combout\);

-- Location: LCCOMB_X114_Y53_N24
\counts[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[10]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(10))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[10]$latch~combout\,
	combout => \counts[10]$latch~combout\);

-- Location: LCCOMB_X114_Y53_N10
\counts[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[11]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(11))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[11]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[11]$latch~combout\,
	combout => \counts[11]$latch~combout\);

-- Location: LCCOMB_X109_Y53_N8
\counts[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[12]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(12))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[12]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datac => \counts[12]$latch~combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[12]$latch~combout\);

-- Location: LCCOMB_X114_Y53_N28
\counts[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[13]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(13))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[13]$latch~combout\,
	combout => \counts[13]$latch~combout\);

-- Location: LCCOMB_X109_Y53_N18
\counts[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[14]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(14))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[14]$latch~combout\,
	combout => \counts[14]$latch~combout\);

-- Location: LCCOMB_X114_Y53_N22
\counts[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[15]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(15))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[15]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datac => \counts[15]$latch~combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[15]$latch~combout\);

-- Location: LCCOMB_X109_Y53_N4
\counts[16]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[16]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(16))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[16]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datac => \counts[16]$latch~combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[16]$latch~combout\);

-- Location: LCCOMB_X114_Y53_N4
\counts[17]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[17]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(17))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[17]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datac => \counts[17]$latch~combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[17]$latch~combout\);

-- Location: LCCOMB_X109_Y53_N26
\counts[18]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[18]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(18))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[18]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datac => \counts[18]$latch~combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[18]$latch~combout\);

-- Location: LCCOMB_X112_Y54_N28
\counts[19]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[19]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(19))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[19]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[19]$latch~combout\,
	combout => \counts[19]$latch~combout\);

-- Location: LCCOMB_X111_Y54_N14
\counts[20]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[20]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & ((count(20)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (\counts[20]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counts[20]$latch~combout\,
	datac => count(20),
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[20]$latch~combout\);

-- Location: LCCOMB_X111_Y54_N28
\counts[21]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[21]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & ((count(21)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (\counts[21]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counts[21]$latch~combout\,
	datac => count(21),
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[21]$latch~combout\);

-- Location: LCCOMB_X111_Y54_N10
\counts[22]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[22]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & ((count(22)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (\counts[22]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counts[22]$latch~combout\,
	datac => count(22),
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[22]$latch~combout\);

-- Location: LCCOMB_X111_Y54_N24
\counts[23]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[23]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & ((count(23)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (\counts[23]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counts[23]$latch~combout\,
	datac => count(23),
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[23]$latch~combout\);

-- Location: LCCOMB_X112_Y52_N18
\counts[24]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[24]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & ((count(24)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (\counts[24]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counts[24]$latch~combout\,
	datac => count(24),
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[24]$latch~combout\);

-- Location: LCCOMB_X112_Y52_N28
\counts[25]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[25]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & ((count(25)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (\counts[25]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counts[25]$latch~combout\,
	datac => count(25),
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[25]$latch~combout\);

-- Location: LCCOMB_X112_Y52_N30
\counts[26]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[26]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & ((count(26)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (\counts[26]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counts[26]$latch~combout\,
	datac => count(26),
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[26]$latch~combout\);

-- Location: LCCOMB_X112_Y52_N20
\counts[27]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[27]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & ((count(27)))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & (\counts[27]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counts[27]$latch~combout\,
	datac => count(27),
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[27]$latch~combout\);

-- Location: LCCOMB_X114_Y52_N16
\counts[28]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[28]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(28))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[28]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[28]$latch~combout\,
	combout => \counts[28]$latch~combout\);

-- Location: LCCOMB_X114_Y52_N2
\counts[29]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[29]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(29))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[29]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(29),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[29]$latch~combout\,
	combout => \counts[29]$latch~combout\);

-- Location: LCCOMB_X114_Y52_N24
\counts[30]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[30]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(30))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[30]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datac => \process_0~0clkctrl_outclk\,
	datad => \counts[30]$latch~combout\,
	combout => \counts[30]$latch~combout\);

-- Location: LCCOMB_X111_Y54_N18
\counts[31]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \counts[31]$latch~combout\ = (GLOBAL(\process_0~0clkctrl_outclk\) & (count(31))) # (!GLOBAL(\process_0~0clkctrl_outclk\) & ((\counts[31]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => \counts[31]$latch~combout\,
	datad => \process_0~0clkctrl_outclk\,
	combout => \counts[31]$latch~combout\);

-- Location: IOIBUF_X49_Y0_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\hex[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hex(0),
	o => \hex[0]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\hex[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hex(1),
	o => \hex[1]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\hex[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hex(2),
	o => \hex[2]~input_o\);

-- Location: IOIBUF_X115_Y50_N1
\hex[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hex(3),
	o => \hex[3]~input_o\);

-- Location: IOIBUF_X115_Y54_N15
\hex[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hex(4),
	o => \hex[4]~input_o\);

-- Location: IOIBUF_X115_Y51_N1
\hex[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hex(5),
	o => \hex[5]~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\hex[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hex(6),
	o => \hex[6]~input_o\);

ww_counts(0) <= \counts[0]~output_o\;

ww_counts(1) <= \counts[1]~output_o\;

ww_counts(2) <= \counts[2]~output_o\;

ww_counts(3) <= \counts[3]~output_o\;

ww_counts(4) <= \counts[4]~output_o\;

ww_counts(5) <= \counts[5]~output_o\;

ww_counts(6) <= \counts[6]~output_o\;

ww_counts(7) <= \counts[7]~output_o\;

ww_counts(8) <= \counts[8]~output_o\;

ww_counts(9) <= \counts[9]~output_o\;

ww_counts(10) <= \counts[10]~output_o\;

ww_counts(11) <= \counts[11]~output_o\;

ww_counts(12) <= \counts[12]~output_o\;

ww_counts(13) <= \counts[13]~output_o\;

ww_counts(14) <= \counts[14]~output_o\;

ww_counts(15) <= \counts[15]~output_o\;

ww_counts(16) <= \counts[16]~output_o\;

ww_counts(17) <= \counts[17]~output_o\;

ww_counts(18) <= \counts[18]~output_o\;

ww_counts(19) <= \counts[19]~output_o\;

ww_counts(20) <= \counts[20]~output_o\;

ww_counts(21) <= \counts[21]~output_o\;

ww_counts(22) <= \counts[22]~output_o\;

ww_counts(23) <= \counts[23]~output_o\;

ww_counts(24) <= \counts[24]~output_o\;

ww_counts(25) <= \counts[25]~output_o\;

ww_counts(26) <= \counts[26]~output_o\;

ww_counts(27) <= \counts[27]~output_o\;

ww_counts(28) <= \counts[28]~output_o\;

ww_counts(29) <= \counts[29]~output_o\;

ww_counts(30) <= \counts[30]~output_o\;

ww_counts(31) <= \counts[31]~output_o\;

hex(0) <= \hex[0]~output_o\;

hex(1) <= \hex[1]~output_o\;

hex(2) <= \hex[2]~output_o\;

hex(3) <= \hex[3]~output_o\;

hex(4) <= \hex[4]~output_o\;

hex(5) <= \hex[5]~output_o\;

hex(6) <= \hex[6]~output_o\;
END structure;


