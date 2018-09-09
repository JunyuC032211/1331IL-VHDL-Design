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

-- DATE "10/13/2017 13:58:12"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Controller IS
    PORT (
	adr : OUT std_logic_vector(3 DOWNTO 0);
	data : IN std_logic_vector(9 DOWNTO 0);
	w_RWM : OUT std_logic;
	RWM_en : OUT std_logic;
	ROM_en : OUT std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	rw_reg : OUT std_logic;
	sel_op_1 : OUT std_logic_vector(1 DOWNTO 0);
	sel_op_0 : OUT std_logic_vector(1 DOWNTO 0);
	sel_in : OUT std_logic_vector(1 DOWNTO 0);
	sel_mux : OUT std_logic_vector(1 DOWNTO 0);
	alu_op : OUT std_logic_vector(2 DOWNTO 0);
	alu_en : OUT std_logic;
	z_flag : IN std_logic;
	n_flag : IN std_logic;
	o_flag : IN std_logic;
	out_en : OUT std_logic;
	data_imm : OUT std_logic_vector(3 DOWNTO 0);
	STOP : IN std_logic
	);
END Controller;

-- Design Ports Information
-- adr[0]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adr[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adr[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adr[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_RWM	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RWM_en	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_en	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw_reg	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_op_1[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_op_1[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_op_0[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_op_0[1]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_in[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_in[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_en	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_en	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_imm[0]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_imm[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_imm[2]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_imm[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STOP	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_flag	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_flag	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_flag	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_adr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_w_RWM : std_logic;
SIGNAL ww_RWM_en : std_logic;
SIGNAL ww_ROM_en : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_rw_reg : std_logic;
SIGNAL ww_sel_op_1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sel_op_0 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sel_in : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sel_mux : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_alu_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_alu_en : std_logic;
SIGNAL ww_z_flag : std_logic;
SIGNAL ww_n_flag : std_logic;
SIGNAL ww_o_flag : std_logic;
SIGNAL ww_out_en : std_logic;
SIGNAL ww_data_imm : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_STOP : std_logic;
SIGNAL \STOP~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adr[0]~output_o\ : std_logic;
SIGNAL \adr[1]~output_o\ : std_logic;
SIGNAL \adr[2]~output_o\ : std_logic;
SIGNAL \adr[3]~output_o\ : std_logic;
SIGNAL \sel_op_1[0]~output_o\ : std_logic;
SIGNAL \sel_op_1[1]~output_o\ : std_logic;
SIGNAL \sel_op_0[0]~output_o\ : std_logic;
SIGNAL \sel_op_0[1]~output_o\ : std_logic;
SIGNAL \sel_in[0]~output_o\ : std_logic;
SIGNAL \sel_in[1]~output_o\ : std_logic;
SIGNAL \sel_mux[0]~output_o\ : std_logic;
SIGNAL \sel_mux[1]~output_o\ : std_logic;
SIGNAL \data_imm[0]~output_o\ : std_logic;
SIGNAL \data_imm[1]~output_o\ : std_logic;
SIGNAL \data_imm[2]~output_o\ : std_logic;
SIGNAL \data_imm[3]~output_o\ : std_logic;
SIGNAL \w_RWM~output_o\ : std_logic;
SIGNAL \RWM_en~output_o\ : std_logic;
SIGNAL \ROM_en~output_o\ : std_logic;
SIGNAL \rw_reg~output_o\ : std_logic;
SIGNAL \alu_op[0]~output_o\ : std_logic;
SIGNAL \alu_op[1]~output_o\ : std_logic;
SIGNAL \alu_op[2]~output_o\ : std_logic;
SIGNAL \alu_en~output_o\ : std_logic;
SIGNAL \out_en~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \STOP~input_o\ : std_logic;
SIGNAL \STOP~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \next_state.s3~q\ : std_logic;
SIGNAL \current_state.s3_851~combout\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \next_state.s7~q\ : std_logic;
SIGNAL \current_state.s7_835~combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \next_state~11_combout\ : std_logic;
SIGNAL \next_state.s6~q\ : std_logic;
SIGNAL \current_state.s6_839~combout\ : std_logic;
SIGNAL \next_state~12_combout\ : std_logic;
SIGNAL \next_state.s5~q\ : std_logic;
SIGNAL \current_state.s5_843~combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \next_state.s4~q\ : std_logic;
SIGNAL \current_state.s4_847~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \next_state.s1~q\ : std_logic;
SIGNAL \current_state.s1_859~combout\ : std_logic;
SIGNAL \next_state.s2~q\ : std_logic;
SIGNAL \current_state.s2_855~combout\ : std_logic;
SIGNAL \PC[0]~2_combout\ : std_logic;
SIGNAL \next_state~13_combout\ : std_logic;
SIGNAL \next_state.s0~q\ : std_logic;
SIGNAL \current_state.s0_863~combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \z_flag~input_o\ : std_logic;
SIGNAL \PC[0]~3_combout\ : std_logic;
SIGNAL \o_flag~input_o\ : std_logic;
SIGNAL \n_flag~input_o\ : std_logic;
SIGNAL \PC[0]~4_combout\ : std_logic;
SIGNAL \PC[0]~5_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \WideOr2~2_combout\ : std_logic;
SIGNAL \PC[0]~6_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \adr[0]~reg0_q\ : std_logic;
SIGNAL \adr[0]~4_combout\ : std_logic;
SIGNAL \adr[0]~en_q\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \adr[1]~reg0_q\ : std_logic;
SIGNAL \adr[1]~5_combout\ : std_logic;
SIGNAL \adr[1]~en_q\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \adr[2]~reg0_q\ : std_logic;
SIGNAL \adr[2]~6_combout\ : std_logic;
SIGNAL \adr[2]~en_q\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \IR[3]~feeder_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \adr[3]~reg0_q\ : std_logic;
SIGNAL \adr[3]~7_combout\ : std_logic;
SIGNAL \adr[3]~en_q\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \IR[4]~feeder_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \sel_op_1[0]~reg0_q\ : std_logic;
SIGNAL \sel_op_1[0]~2_combout\ : std_logic;
SIGNAL \sel_op_1[0]~en_q\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \IR[5]~feeder_combout\ : std_logic;
SIGNAL \sel_op_1[1]~reg0_q\ : std_logic;
SIGNAL \sel_op_1[1]~3_combout\ : std_logic;
SIGNAL \sel_op_1[1]~en_q\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \sel_op_0[0]~reg0_q\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \sel_op_0[0]~enfeeder_combout\ : std_logic;
SIGNAL \sel_op_0[0]~en_q\ : std_logic;
SIGNAL \sel_op_0[1]~reg0feeder_combout\ : std_logic;
SIGNAL \sel_op_0[1]~reg0_q\ : std_logic;
SIGNAL \sel_op_0[1]~en_q\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \sel_in[0]~reg0_q\ : std_logic;
SIGNAL \sel_in[0]~2_combout\ : std_logic;
SIGNAL \sel_in[0]~en_q\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \sel_in[1]~reg0_q\ : std_logic;
SIGNAL \sel_in[1]~3_combout\ : std_logic;
SIGNAL \sel_in[1]~en_q\ : std_logic;
SIGNAL \sel_mux[0]~reg0_q\ : std_logic;
SIGNAL \sel_mux[0]~2_combout\ : std_logic;
SIGNAL \sel_mux[0]~en_q\ : std_logic;
SIGNAL \sel_mux[1]~reg0_q\ : std_logic;
SIGNAL \sel_mux[1]~3_combout\ : std_logic;
SIGNAL \sel_mux[1]~en_q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \data_imm[0]~reg0_q\ : std_logic;
SIGNAL \data_imm[0]~4_combout\ : std_logic;
SIGNAL \data_imm[0]~en_q\ : std_logic;
SIGNAL \data_imm[1]~reg0feeder_combout\ : std_logic;
SIGNAL \data_imm[1]~reg0_q\ : std_logic;
SIGNAL \data_imm[1]~5_combout\ : std_logic;
SIGNAL \data_imm[1]~en_q\ : std_logic;
SIGNAL \data_imm[2]~reg0feeder_combout\ : std_logic;
SIGNAL \data_imm[2]~reg0_q\ : std_logic;
SIGNAL \data_imm[2]~6_combout\ : std_logic;
SIGNAL \data_imm[2]~en_q\ : std_logic;
SIGNAL \data_imm[3]~reg0_q\ : std_logic;
SIGNAL \data_imm[3]~7_combout\ : std_logic;
SIGNAL \data_imm[3]~en_q\ : std_logic;
SIGNAL \next_state~10_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \RWM_en~reg0_q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \ROM_en~reg0_q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \rw_reg~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \alu_op[0]~reg0_q\ : std_logic;
SIGNAL \alu_op[1]~reg0feeder_combout\ : std_logic;
SIGNAL \alu_op[1]~reg0_q\ : std_logic;
SIGNAL \alu_op[2]~reg0feeder_combout\ : std_logic;
SIGNAL \alu_op[2]~reg0_q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \alu_en~reg0_q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \out_en~reg0_q\ : std_logic;
SIGNAL PC : std_logic_vector(3 DOWNTO 0);
SIGNAL IR : std_logic_vector(9 DOWNTO 0);
SIGNAL ALT_INV_IR : std_logic_vector(8 DOWNTO 8);

BEGIN

adr <= ww_adr;
ww_data <= data;
w_RWM <= ww_w_RWM;
RWM_en <= ww_RWM_en;
ROM_en <= ww_ROM_en;
ww_clk <= clk;
ww_reset <= reset;
rw_reg <= ww_rw_reg;
sel_op_1 <= ww_sel_op_1;
sel_op_0 <= ww_sel_op_0;
sel_in <= ww_sel_in;
sel_mux <= ww_sel_mux;
alu_op <= ww_alu_op;
alu_en <= ww_alu_en;
ww_z_flag <= z_flag;
ww_n_flag <= n_flag;
ww_o_flag <= o_flag;
out_en <= ww_out_en;
data_imm <= ww_data_imm;
ww_STOP <= STOP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\STOP~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \STOP~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
ALT_INV_IR(8) <= NOT IR(8);

-- Location: IOOBUF_X43_Y0_N2
\adr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adr[0]~reg0_q\,
	oe => \adr[0]~en_q\,
	devoe => ww_devoe,
	o => \adr[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\adr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adr[1]~reg0_q\,
	oe => \adr[1]~en_q\,
	devoe => ww_devoe,
	o => \adr[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\adr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adr[2]~reg0_q\,
	oe => \adr[2]~en_q\,
	devoe => ww_devoe,
	o => \adr[2]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\adr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adr[3]~reg0_q\,
	oe => \adr[3]~en_q\,
	devoe => ww_devoe,
	o => \adr[3]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\sel_op_1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_op_1[0]~reg0_q\,
	oe => \sel_op_1[0]~en_q\,
	devoe => ww_devoe,
	o => \sel_op_1[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\sel_op_1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_op_1[1]~reg0_q\,
	oe => \sel_op_1[1]~en_q\,
	devoe => ww_devoe,
	o => \sel_op_1[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\sel_op_0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_op_0[0]~reg0_q\,
	oe => \sel_op_0[0]~en_q\,
	devoe => ww_devoe,
	o => \sel_op_0[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\sel_op_0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_op_0[1]~reg0_q\,
	oe => \sel_op_0[1]~en_q\,
	devoe => ww_devoe,
	o => \sel_op_0[1]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\sel_in[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_in[0]~reg0_q\,
	oe => \sel_in[0]~en_q\,
	devoe => ww_devoe,
	o => \sel_in[0]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\sel_in[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_in[1]~reg0_q\,
	oe => \sel_in[1]~en_q\,
	devoe => ww_devoe,
	o => \sel_in[1]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\sel_mux[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_mux[0]~reg0_q\,
	oe => \sel_mux[0]~en_q\,
	devoe => ww_devoe,
	o => \sel_mux[0]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\sel_mux[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_mux[1]~reg0_q\,
	oe => \sel_mux[1]~en_q\,
	devoe => ww_devoe,
	o => \sel_mux[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\data_imm[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_imm[0]~reg0_q\,
	oe => \data_imm[0]~en_q\,
	devoe => ww_devoe,
	o => \data_imm[0]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\data_imm[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_imm[1]~reg0_q\,
	oe => \data_imm[1]~en_q\,
	devoe => ww_devoe,
	o => \data_imm[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\data_imm[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_imm[2]~reg0_q\,
	oe => \data_imm[2]~en_q\,
	devoe => ww_devoe,
	o => \data_imm[2]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\data_imm[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_imm[3]~reg0_q\,
	oe => \data_imm[3]~en_q\,
	devoe => ww_devoe,
	o => \data_imm[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\w_RWM~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RWM_en~reg0_q\,
	devoe => ww_devoe,
	o => \w_RWM~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\RWM_en~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RWM_en~reg0_q\,
	devoe => ww_devoe,
	o => \RWM_en~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\ROM_en~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_en~reg0_q\,
	devoe => ww_devoe,
	o => \ROM_en~output_o\);

-- Location: IOOBUF_X52_Y10_N9
\rw_reg~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rw_reg~reg0_q\,
	devoe => ww_devoe,
	o => \rw_reg~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\alu_op[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_op[0]~reg0_q\,
	devoe => ww_devoe,
	o => \alu_op[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\alu_op[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_op[1]~reg0_q\,
	devoe => ww_devoe,
	o => \alu_op[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\alu_op[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_op[2]~reg0_q\,
	devoe => ww_devoe,
	o => \alu_op[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\alu_en~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_en~reg0_q\,
	devoe => ww_devoe,
	o => \alu_en~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\out_en~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_en~reg0_q\,
	devoe => ww_devoe,
	o => \out_en~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X52_Y21_N8
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\STOP~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STOP,
	o => \STOP~input_o\);

-- Location: CLKCTRL_G19
\STOP~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \STOP~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \STOP~inputclkctrl_outclk\);

-- Location: IOIBUF_X52_Y12_N1
\data[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: FF_X41_Y1_N15
\next_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \current_state.s2_855~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.s3~q\);

-- Location: LCCOMB_X41_Y1_N14
\current_state.s3_851\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.s3_851~combout\ = (!\reset~input_o\ & ((GLOBAL(\STOP~inputclkctrl_outclk\) & (\current_state.s3_851~combout\)) # (!GLOBAL(\STOP~inputclkctrl_outclk\) & ((\next_state.s3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \current_state.s3_851~combout\,
	datac => \next_state.s3~q\,
	datad => \STOP~inputclkctrl_outclk\,
	combout => \current_state.s3_851~combout\);

-- Location: IOIBUF_X52_Y21_N1
\data[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: FF_X41_Y1_N21
\IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[9]~input_o\,
	sload => VCC,
	ena => \current_state.s2_855~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(9));

-- Location: IOIBUF_X52_Y11_N8
\data[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: FF_X41_Y1_N9
\IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[7]~input_o\,
	sload => VCC,
	ena => \current_state.s2_855~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(7));

-- Location: LCCOMB_X42_Y1_N8
\Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (IR(9) & IR(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(9),
	datad => IR(7),
	combout => \Mux22~0_combout\);

-- Location: IOIBUF_X48_Y0_N8
\data[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: FF_X41_Y1_N31
\IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[8]~input_o\,
	sload => VCC,
	ena => \current_state.s2_855~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(8));

-- Location: LCCOMB_X44_Y1_N20
\Selector15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (!IR(6) & (\current_state.s3_851~combout\ & (\Mux22~0_combout\ & !IR(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => \current_state.s3_851~combout\,
	datac => \Mux22~0_combout\,
	datad => IR(8),
	combout => \Selector15~2_combout\);

-- Location: FF_X44_Y1_N21
\next_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.s7~q\);

-- Location: LCCOMB_X44_Y1_N24
\current_state.s7_835\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.s7_835~combout\ = (!\reset~input_o\ & ((GLOBAL(\STOP~inputclkctrl_outclk\) & (\current_state.s7_835~combout\)) # (!GLOBAL(\STOP~inputclkctrl_outclk\) & ((\next_state.s7~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \current_state.s7_835~combout\,
	datac => \STOP~inputclkctrl_outclk\,
	datad => \next_state.s7~q\,
	combout => \current_state.s7_835~combout\);

-- Location: LCCOMB_X42_Y1_N20
\Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!IR(7) & IR(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datad => IR(9),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X44_Y1_N2
\next_state~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~11_combout\ = (IR(6) & (\current_state.s3_851~combout\ & (\Mux21~0_combout\ & !IR(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => \current_state.s3_851~combout\,
	datac => \Mux21~0_combout\,
	datad => IR(8),
	combout => \next_state~11_combout\);

-- Location: FF_X44_Y1_N3
\next_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.s6~q\);

-- Location: LCCOMB_X44_Y1_N26
\current_state.s6_839\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.s6_839~combout\ = (!\reset~input_o\ & ((GLOBAL(\STOP~inputclkctrl_outclk\) & (\current_state.s6_839~combout\)) # (!GLOBAL(\STOP~inputclkctrl_outclk\) & ((\next_state.s6~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s6_839~combout\,
	datab => \reset~input_o\,
	datac => \STOP~inputclkctrl_outclk\,
	datad => \next_state.s6~q\,
	combout => \current_state.s6_839~combout\);

-- Location: LCCOMB_X44_Y1_N6
\next_state~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~12_combout\ = (!IR(6) & (\current_state.s3_851~combout\ & (\Mux21~0_combout\ & !IR(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => \current_state.s3_851~combout\,
	datac => \Mux21~0_combout\,
	datad => IR(8),
	combout => \next_state~12_combout\);

-- Location: FF_X44_Y1_N7
\next_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.s5~q\);

-- Location: LCCOMB_X44_Y1_N30
\current_state.s5_843\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.s5_843~combout\ = (!\reset~input_o\ & ((GLOBAL(\STOP~inputclkctrl_outclk\) & (\current_state.s5_843~combout\)) # (!GLOBAL(\STOP~inputclkctrl_outclk\) & ((\next_state.s5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s5_843~combout\,
	datab => \reset~input_o\,
	datac => \STOP~inputclkctrl_outclk\,
	datad => \next_state.s5~q\,
	combout => \current_state.s5_843~combout\);

-- Location: LCCOMB_X41_Y1_N26
\Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\current_state.s7_835~combout\) # ((\current_state.s0_863~combout\) # ((\current_state.s6_839~combout\) # (\current_state.s5_843~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s7_835~combout\,
	datab => \current_state.s0_863~combout\,
	datac => \current_state.s6_839~combout\,
	datad => \current_state.s5_843~combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X39_Y1_N24
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (IR(9)) # ((IR(6) & (IR(7) & IR(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => IR(7),
	datac => IR(9),
	datad => IR(8),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X44_Y1_N18
\Selector27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\current_state.s3_851~combout\ & !\Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s3_851~combout\,
	datad => \Mux3~0_combout\,
	combout => \Selector27~1_combout\);

-- Location: FF_X44_Y1_N19
\next_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.s4~q\);

-- Location: LCCOMB_X44_Y1_N4
\current_state.s4_847\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.s4_847~combout\ = (!\reset~input_o\ & ((GLOBAL(\STOP~inputclkctrl_outclk\) & (\current_state.s4_847~combout\)) # (!GLOBAL(\STOP~inputclkctrl_outclk\) & ((\next_state.s4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \current_state.s4_847~combout\,
	datac => \STOP~inputclkctrl_outclk\,
	datad => \next_state.s4~q\,
	combout => \current_state.s4_847~combout\);

-- Location: LCCOMB_X41_Y1_N30
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (IR(9) & ((IR(8)) # ((IR(7) & IR(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(6),
	datac => IR(8),
	datad => IR(9),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X41_Y1_N2
\Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\current_state.s4_847~combout\) # ((\current_state.s3_851~combout\ & \Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \current_state.s3_851~combout\,
	datac => \current_state.s4_847~combout\,
	datad => \Mux5~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X41_Y1_N3
\next_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.s1~q\);

-- Location: LCCOMB_X41_Y1_N22
\current_state.s1_859\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.s1_859~combout\ = (!\reset~input_o\ & ((GLOBAL(\STOP~inputclkctrl_outclk\) & (\current_state.s1_859~combout\)) # (!GLOBAL(\STOP~inputclkctrl_outclk\) & ((\next_state.s1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s1_859~combout\,
	datab => \reset~input_o\,
	datac => \STOP~inputclkctrl_outclk\,
	datad => \next_state.s1~q\,
	combout => \current_state.s1_859~combout\);

-- Location: FF_X44_Y1_N29
\next_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \current_state.s1_859~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.s2~q\);

-- Location: LCCOMB_X44_Y1_N28
\current_state.s2_855\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.s2_855~combout\ = (!\reset~input_o\ & ((GLOBAL(\STOP~inputclkctrl_outclk\) & (\current_state.s2_855~combout\)) # (!GLOBAL(\STOP~inputclkctrl_outclk\) & ((\next_state.s2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \current_state.s2_855~combout\,
	datac => \next_state.s2~q\,
	datad => \STOP~inputclkctrl_outclk\,
	combout => \current_state.s2_855~combout\);

-- Location: FF_X41_Y1_N17
\IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	ena => \current_state.s2_855~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(6));

-- Location: LCCOMB_X41_Y1_N18
\PC[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[0]~2_combout\ = (\current_state.s3_851~combout\ & !IR(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s3_851~combout\,
	datad => IR(9),
	combout => \PC[0]~2_combout\);

-- Location: LCCOMB_X41_Y1_N0
\next_state~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~13_combout\ = (((!IR(7)) # (!IR(8))) # (!\PC[0]~2_combout\)) # (!IR(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => \PC[0]~2_combout\,
	datac => IR(8),
	datad => IR(7),
	combout => \next_state~13_combout\);

-- Location: FF_X41_Y1_N1
\next_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.s0~q\);

-- Location: LCCOMB_X41_Y1_N24
\current_state.s0_863\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.s0_863~combout\ = (\reset~input_o\) # ((GLOBAL(\STOP~inputclkctrl_outclk\) & (\current_state.s0_863~combout\)) # (!GLOBAL(\STOP~inputclkctrl_outclk\) & ((!\next_state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \current_state.s0_863~combout\,
	datac => \STOP~inputclkctrl_outclk\,
	datad => \next_state.s0~q\,
	combout => \current_state.s0_863~combout\);

-- Location: IOIBUF_X52_Y10_N1
\data[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: FF_X44_Y1_N15
\IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[0]~input_o\,
	sload => VCC,
	ena => \current_state.s2_855~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(0));

-- Location: IOIBUF_X34_Y0_N1
\z_flag~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z_flag,
	o => \z_flag~input_o\);

-- Location: LCCOMB_X41_Y1_N20
\PC[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[0]~3_combout\ = (\z_flag~input_o\ & (!IR(7) & !IR(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z_flag~input_o\,
	datab => IR(7),
	datad => IR(6),
	combout => \PC[0]~3_combout\);

-- Location: IOIBUF_X52_Y11_N1
\o_flag~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_o_flag,
	o => \o_flag~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\n_flag~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_flag,
	o => \n_flag~input_o\);

-- Location: LCCOMB_X41_Y1_N8
\PC[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[0]~4_combout\ = (IR(7) & ((\o_flag~input_o\) # ((IR(6))))) # (!IR(7) & (((\n_flag~input_o\ & IR(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_flag~input_o\,
	datab => \n_flag~input_o\,
	datac => IR(7),
	datad => IR(6),
	combout => \PC[0]~4_combout\);

-- Location: LCCOMB_X41_Y1_N6
\PC[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[0]~5_combout\ = (IR(8) & (\current_state.s3_851~combout\ & ((\PC[0]~3_combout\) # (\PC[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(8),
	datab => \current_state.s3_851~combout\,
	datac => \PC[0]~3_combout\,
	datad => \PC[0]~4_combout\,
	combout => \PC[0]~5_combout\);

-- Location: LCCOMB_X43_Y1_N24
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\PC[0]~5_combout\ & (((IR(0))))) # (!\PC[0]~5_combout\ & (!\current_state.s0_863~combout\ & ((!PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s0_863~combout\,
	datab => IR(0),
	datac => PC(0),
	datad => \PC[0]~5_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X44_Y1_N22
\WideOr2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr2~2_combout\ = (!\current_state.s6_839~combout\ & (!\current_state.s7_835~combout\ & (!\current_state.s5_843~combout\ & !\current_state.s2_855~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s6_839~combout\,
	datab => \current_state.s7_835~combout\,
	datac => \current_state.s5_843~combout\,
	datad => \current_state.s2_855~combout\,
	combout => \WideOr2~2_combout\);

-- Location: LCCOMB_X43_Y1_N22
\PC[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[0]~6_combout\ = (!\current_state.s1_859~combout\ & (\WideOr2~2_combout\ & ((IR(9)) # (!\current_state.s3_851~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s3_851~combout\,
	datab => IR(9),
	datac => \current_state.s1_859~combout\,
	datad => \WideOr2~2_combout\,
	combout => \PC[0]~6_combout\);

-- Location: FF_X43_Y1_N25
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \PC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X43_Y1_N28
\Selector29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\current_state.s3_851~combout\ & ((IR(0)))) # (!\current_state.s3_851~combout\ & (PC(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(0),
	datac => \current_state.s3_851~combout\,
	datad => IR(0),
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X44_Y1_N10
\WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\current_state.s5_843~combout\ & !\current_state.s7_835~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s5_843~combout\,
	datad => \current_state.s7_835~combout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X44_Y1_N8
\WideOr2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (!\current_state.s6_839~combout\ & (!\current_state.s2_855~combout\ & (!\current_state.s4_847~combout\ & \WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s6_839~combout\,
	datab => \current_state.s2_855~combout\,
	datac => \current_state.s4_847~combout\,
	datad => \WideOr2~0_combout\,
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X43_Y1_N14
\Selector33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\WideOr2~1_combout\ & (((!IR(8) & \Mux21~0_combout\)) # (!\current_state.s3_851~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s3_851~combout\,
	datab => IR(8),
	datac => \WideOr2~1_combout\,
	datad => \Mux21~0_combout\,
	combout => \Selector33~0_combout\);

-- Location: FF_X43_Y1_N29
\adr[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector29~0_combout\,
	ena => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adr[0]~reg0_q\);

-- Location: LCCOMB_X43_Y1_N30
\adr[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adr[0]~4_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s0_863~combout\,
	combout => \adr[0]~4_combout\);

-- Location: FF_X43_Y1_N31
\adr[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adr[0]~4_combout\,
	ena => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adr[0]~en_q\);

-- Location: IOIBUF_X34_Y0_N8
\data[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: FF_X41_Y1_N29
\IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	ena => \current_state.s2_855~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(1));

-- Location: LCCOMB_X43_Y1_N2
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = PC(1) $ (PC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(1),
	datad => PC(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X43_Y1_N8
\Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\PC[0]~5_combout\ & (IR(1))) # (!\PC[0]~5_combout\ & (((\Add0~0_combout\ & !\current_state.s0_863~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => \Add0~0_combout\,
	datac => \current_state.s0_863~combout\,
	datad => \PC[0]~5_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X43_Y1_N9
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \PC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X43_Y1_N0
\Selector31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\current_state.s3_851~combout\ & (IR(1))) # (!\current_state.s3_851~combout\ & ((PC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => PC(1),
	datac => \current_state.s3_851~combout\,
	combout => \Selector31~0_combout\);

-- Location: FF_X43_Y1_N1
\adr[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector31~0_combout\,
	ena => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adr[1]~reg0_q\);

-- Location: LCCOMB_X43_Y1_N26
\adr[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adr[1]~5_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s0_863~combout\,
	combout => \adr[1]~5_combout\);

-- Location: FF_X43_Y1_N27
\adr[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adr[1]~5_combout\,
	ena => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adr[1]~en_q\);

-- Location: LCCOMB_X43_Y1_N12
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = PC(2) $ (((PC(1) & PC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \Add0~1_combout\);

-- Location: IOIBUF_X52_Y9_N8
\data[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: FF_X44_Y1_N13
\IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	ena => \current_state.s2_855~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(2));

-- Location: LCCOMB_X43_Y1_N18
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\PC[0]~5_combout\ & (((IR(2))))) # (!\PC[0]~5_combout\ & (\Add0~1_combout\ & ((!\current_state.s0_863~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => IR(2),
	datac => \current_state.s0_863~combout\,
	datad => \PC[0]~5_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X43_Y1_N19
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \PC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X43_Y1_N16
\Selector32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\current_state.s3_851~combout\ & ((IR(2)))) # (!\current_state.s3_851~combout\ & (PC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s3_851~combout\,
	datab => PC(2),
	datac => IR(2),
	combout => \Selector32~0_combout\);

-- Location: FF_X43_Y1_N17
\adr[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	ena => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adr[2]~reg0_q\);

-- Location: LCCOMB_X43_Y1_N6
\adr[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adr[2]~6_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s0_863~combout\,
	combout => \adr[2]~6_combout\);

-- Location: FF_X43_Y1_N7
\adr[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adr[2]~6_combout\,
	ena => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adr[2]~en_q\);

-- Location: IOIBUF_X31_Y0_N15
\data[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: LCCOMB_X38_Y1_N4
\IR[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[3]~feeder_combout\ = \data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[3]~input_o\,
	combout => \IR[3]~feeder_combout\);

-- Location: FF_X38_Y1_N5
\IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR[3]~feeder_combout\,
	ena => \current_state.s2_855~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(3));

-- Location: LCCOMB_X41_Y1_N4
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = PC(3) $ (((PC(0) & (PC(1) & PC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(1),
	datac => PC(3),
	datad => PC(2),
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X43_Y1_N4
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\PC[0]~5_combout\ & (((IR(3))))) # (!\PC[0]~5_combout\ & (!\current_state.s0_863~combout\ & (\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s0_863~combout\,
	datab => \Add0~2_combout\,
	datac => IR(3),
	datad => \PC[0]~5_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X43_Y1_N5
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \PC[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X43_Y1_N20
\Selector34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\current_state.s3_851~combout\ & (IR(3))) # (!\current_state.s3_851~combout\ & ((PC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datab => PC(3),
	datac => \current_state.s3_851~combout\,
	combout => \Selector34~0_combout\);

-- Location: FF_X43_Y1_N21
\adr[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	ena => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adr[3]~reg0_q\);

-- Location: LCCOMB_X43_Y1_N10
\adr[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \adr[3]~7_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s0_863~combout\,
	combout => \adr[3]~7_combout\);

-- Location: FF_X43_Y1_N11
\adr[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \adr[3]~7_combout\,
	ena => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adr[3]~en_q\);

-- Location: IOIBUF_X31_Y0_N22
\data[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: LCCOMB_X38_Y1_N30
\IR[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[4]~feeder_combout\ = \data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[4]~input_o\,
	combout => \IR[4]~feeder_combout\);

-- Location: FF_X38_Y1_N31
\IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR[4]~feeder_combout\,
	ena => \current_state.s2_855~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(4));

-- Location: LCCOMB_X38_Y1_N12
\Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (IR(9) & ((IR(7)) # ((IR(8)) # (!IR(6))))) # (!IR(9) & (IR(7) & (IR(6) & IR(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(9),
	datab => IR(7),
	datac => IR(6),
	datad => IR(8),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X38_Y1_N20
\Selector23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\current_state.s0_863~combout\) # ((\current_state.s3_851~combout\ & !\Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s3_851~combout\,
	datab => \current_state.s0_863~combout\,
	datad => \Mux28~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X38_Y1_N29
\sel_op_1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => IR(4),
	sload => VCC,
	ena => \Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_op_1[0]~reg0_q\);

-- Location: LCCOMB_X38_Y1_N10
\sel_op_1[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sel_op_1[0]~2_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.s0_863~combout\,
	combout => \sel_op_1[0]~2_combout\);

-- Location: FF_X38_Y1_N11
\sel_op_1[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel_op_1[0]~2_combout\,
	ena => \Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_op_1[0]~en_q\);

-- Location: IOIBUF_X31_Y0_N8
\data[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: LCCOMB_X38_Y1_N22
\IR[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[5]~feeder_combout\ = \data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[5]~input_o\,
	combout => \IR[5]~feeder_combout\);

-- Location: FF_X38_Y1_N23
\IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR[5]~feeder_combout\,
	ena => \current_state.s2_855~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(5));

-- Location: FF_X38_Y1_N21
\sel_op_1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => IR(5),
	sload => VCC,
	ena => \Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_op_1[1]~reg0_q\);

-- Location: LCCOMB_X38_Y1_N26
\sel_op_1[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sel_op_1[1]~3_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.s0_863~combout\,
	combout => \sel_op_1[1]~3_combout\);

-- Location: FF_X38_Y1_N27
\sel_op_1[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel_op_1[1]~3_combout\,
	ena => \Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_op_1[1]~en_q\);

-- Location: LCCOMB_X39_Y1_N28
\Selector27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\current_state.s0_863~combout\) # ((\current_state.s3_851~combout\ & !\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s3_851~combout\,
	datab => \current_state.s0_863~combout\,
	datad => \Mux3~0_combout\,
	combout => \Selector27~0_combout\);

-- Location: FF_X39_Y1_N29
\sel_op_0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => IR(2),
	sload => VCC,
	ena => \Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_op_0[0]~reg0_q\);

-- Location: LCCOMB_X39_Y1_N4
\Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (IR(8) & (!IR(9) & (IR(6) $ (IR(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => IR(8),
	datac => IR(7),
	datad => IR(9),
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X39_Y1_N6
\Selector26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\current_state.s1_859~combout\) # (((\current_state.s3_851~combout\ & !\Mux30~0_combout\)) # (!\WideOr2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s3_851~combout\,
	datab => \current_state.s1_859~combout\,
	datac => \Mux30~0_combout\,
	datad => \WideOr2~1_combout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X39_Y1_N18
\sel_op_0[0]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sel_op_0[0]~enfeeder_combout\ = \Selector26~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector26~0_combout\,
	combout => \sel_op_0[0]~enfeeder_combout\);

-- Location: FF_X39_Y1_N19
\sel_op_0[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel_op_0[0]~enfeeder_combout\,
	ena => \Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_op_0[0]~en_q\);

-- Location: LCCOMB_X39_Y1_N8
\sel_op_0[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sel_op_0[1]~reg0feeder_combout\ = IR(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(3),
	combout => \sel_op_0[1]~reg0feeder_combout\);

-- Location: FF_X39_Y1_N9
\sel_op_0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel_op_0[1]~reg0feeder_combout\,
	ena => \Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_op_0[1]~reg0_q\);

-- Location: FF_X39_Y1_N7
\sel_op_0[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	ena => \Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_op_0[1]~en_q\);

-- Location: LCCOMB_X42_Y1_N24
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (IR(9) & (IR(4))) # (!IR(9) & ((IR(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => IR(9),
	datac => IR(0),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X41_Y1_N12
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (IR(8) & ((IR(9)) # ((IR(7) & IR(6))))) # (!IR(8) & (IR(9) & ((IR(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(8),
	datab => IR(9),
	datac => IR(7),
	datad => IR(6),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X42_Y1_N4
\Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\current_state.s0_863~combout\) # ((\current_state.s3_851~combout\ & !\Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s0_863~combout\,
	datab => \current_state.s3_851~combout\,
	datad => \Mux25~0_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X42_Y1_N25
\sel_in[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux23~0_combout\,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_in[0]~reg0_q\);

-- Location: LCCOMB_X42_Y1_N30
\sel_in[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sel_in[0]~2_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s0_863~combout\,
	combout => \sel_in[0]~2_combout\);

-- Location: FF_X42_Y1_N31
\sel_in[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel_in[0]~2_combout\,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_in[0]~en_q\);

-- Location: LCCOMB_X42_Y1_N0
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (IR(9) & (IR(5))) # (!IR(9) & ((IR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(5),
	datab => IR(1),
	datad => IR(9),
	combout => \Mux24~0_combout\);

-- Location: FF_X42_Y1_N1
\sel_in[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux24~0_combout\,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_in[1]~reg0_q\);

-- Location: LCCOMB_X42_Y1_N14
\sel_in[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sel_in[1]~3_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s0_863~combout\,
	combout => \sel_in[1]~3_combout\);

-- Location: FF_X42_Y1_N15
\sel_in[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel_in[1]~3_combout\,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_in[1]~en_q\);

-- Location: FF_X42_Y1_N21
\sel_mux[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux21~0_combout\,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_mux[0]~reg0_q\);

-- Location: LCCOMB_X42_Y1_N26
\sel_mux[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sel_mux[0]~2_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s0_863~combout\,
	combout => \sel_mux[0]~2_combout\);

-- Location: FF_X42_Y1_N27
\sel_mux[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel_mux[0]~2_combout\,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_mux[0]~en_q\);

-- Location: FF_X42_Y1_N13
\sel_mux[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux22~0_combout\,
	sload => VCC,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_mux[1]~reg0_q\);

-- Location: LCCOMB_X42_Y1_N10
\sel_mux[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sel_mux[1]~3_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s0_863~combout\,
	combout => \sel_mux[1]~3_combout\);

-- Location: FF_X42_Y1_N11
\sel_mux[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sel_mux[1]~3_combout\,
	ena => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_mux[1]~en_q\);

-- Location: LCCOMB_X41_Y1_N28
\Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\current_state.s3_851~combout\ & !IR(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.s3_851~combout\,
	datad => IR(6),
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X42_Y1_N12
\Selector15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\current_state.s0_863~combout\) # ((!IR(8) & (\Mux22~0_combout\ & \Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(8),
	datab => \current_state.s0_863~combout\,
	datac => \Mux22~0_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: FF_X42_Y1_N5
\data_imm[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => IR(0),
	sload => VCC,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_imm[0]~reg0_q\);

-- Location: LCCOMB_X42_Y1_N18
\data_imm[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_imm[0]~4_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s0_863~combout\,
	combout => \data_imm[0]~4_combout\);

-- Location: FF_X42_Y1_N19
\data_imm[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_imm[0]~4_combout\,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_imm[0]~en_q\);

-- Location: LCCOMB_X42_Y1_N16
\data_imm[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_imm[1]~reg0feeder_combout\ = IR(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => IR(1),
	combout => \data_imm[1]~reg0feeder_combout\);

-- Location: FF_X42_Y1_N17
\data_imm[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_imm[1]~reg0feeder_combout\,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_imm[1]~reg0_q\);

-- Location: LCCOMB_X42_Y1_N2
\data_imm[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_imm[1]~5_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s0_863~combout\,
	combout => \data_imm[1]~5_combout\);

-- Location: FF_X42_Y1_N3
\data_imm[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_imm[1]~5_combout\,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_imm[1]~en_q\);

-- Location: LCCOMB_X42_Y1_N28
\data_imm[2]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_imm[2]~reg0feeder_combout\ = IR(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => IR(2),
	combout => \data_imm[2]~reg0feeder_combout\);

-- Location: FF_X42_Y1_N29
\data_imm[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_imm[2]~reg0feeder_combout\,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_imm[2]~reg0_q\);

-- Location: LCCOMB_X42_Y1_N6
\data_imm[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_imm[2]~6_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s0_863~combout\,
	combout => \data_imm[2]~6_combout\);

-- Location: FF_X42_Y1_N7
\data_imm[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_imm[2]~6_combout\,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_imm[2]~en_q\);

-- Location: FF_X42_Y1_N9
\data_imm[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => IR(3),
	sload => VCC,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_imm[3]~reg0_q\);

-- Location: LCCOMB_X42_Y1_N22
\data_imm[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_imm[3]~7_combout\ = !\current_state.s0_863~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.s0_863~combout\,
	combout => \data_imm[3]~7_combout\);

-- Location: FF_X42_Y1_N23
\data_imm[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_imm[3]~7_combout\,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_imm[3]~en_q\);

-- Location: LCCOMB_X39_Y1_N20
\next_state~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state~10_combout\ = (\current_state.s3_851~combout\ & (!IR(8) & (!IR(7) & IR(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s3_851~combout\,
	datab => IR(8),
	datac => IR(7),
	datad => IR(9),
	combout => \next_state~10_combout\);

-- Location: LCCOMB_X39_Y1_N12
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\current_state.s3_851~combout\ & (!\next_state~10_combout\ & (\RWM_en~reg0_q\))) # (!\current_state.s3_851~combout\ & ((\WideOr2~1_combout\) # ((!\next_state~10_combout\ & \RWM_en~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s3_851~combout\,
	datab => \next_state~10_combout\,
	datac => \RWM_en~reg0_q\,
	datad => \WideOr2~1_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X39_Y1_N13
\RWM_en~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RWM_en~reg0_q\);

-- Location: LCCOMB_X39_Y1_N2
\Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\current_state.s5_843~combout\) # ((\current_state.s1_859~combout\) # ((\current_state.s6_839~combout\) # (\current_state.s4_847~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s5_843~combout\,
	datab => \current_state.s1_859~combout\,
	datac => \current_state.s6_839~combout\,
	datad => \current_state.s4_847~combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X39_Y1_N26
\Selector7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\current_state.s0_863~combout\) # ((\ROM_en~reg0_q\ & ((\current_state.s7_835~combout\) # (\Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s7_835~combout\,
	datab => \current_state.s0_863~combout\,
	datac => \ROM_en~reg0_q\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X39_Y1_N27
\ROM_en~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ROM_en~reg0_q\);

-- Location: LCCOMB_X41_Y1_N16
\Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\PC[0]~2_combout\ & (((!IR(6)) # (!IR(7))) # (!IR(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(8),
	datab => IR(7),
	datac => IR(6),
	datad => \PC[0]~2_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X41_Y1_N10
\Selector8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (IR(8) & (((\rw_reg~reg0_q\)))) # (!IR(8) & (IR(6) & ((\rw_reg~reg0_q\) # (!IR(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(8),
	datab => IR(6),
	datac => IR(7),
	datad => \rw_reg~reg0_q\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X44_Y1_N16
\Selector8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\current_state.s1_859~combout\) # ((\current_state.s0_863~combout\) # ((\current_state.s3_851~combout\ & \Selector8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s3_851~combout\,
	datab => \current_state.s1_859~combout\,
	datac => \current_state.s0_863~combout\,
	datad => \Selector8~1_combout\,
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X44_Y1_N0
\Selector8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = (\Selector8~0_combout\) # ((\Selector8~2_combout\) # ((!\WideOr2~2_combout\ & \rw_reg~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \WideOr2~2_combout\,
	datac => \rw_reg~reg0_q\,
	datad => \Selector8~2_combout\,
	combout => \Selector8~3_combout\);

-- Location: FF_X44_Y1_N1
\rw_reg~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rw_reg~reg0_q\);

-- Location: LCCOMB_X37_Y1_N16
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!IR(7) & IR(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(7),
	datac => IR(6),
	combout => \Mux2~0_combout\);

-- Location: FF_X37_Y1_N17
\alu_op[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	asdata => IR(6),
	sload => ALT_INV_IR(8),
	ena => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_op[0]~reg0_q\);

-- Location: LCCOMB_X37_Y1_N14
\alu_op[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_op[1]~reg0feeder_combout\ = IR(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(7),
	combout => \alu_op[1]~reg0feeder_combout\);

-- Location: FF_X37_Y1_N15
\alu_op[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu_op[1]~reg0feeder_combout\,
	ena => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_op[1]~reg0_q\);

-- Location: LCCOMB_X37_Y1_N4
\alu_op[2]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_op[2]~reg0feeder_combout\ = IR(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(8),
	combout => \alu_op[2]~reg0feeder_combout\);

-- Location: FF_X37_Y1_N5
\alu_op[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alu_op[2]~reg0feeder_combout\,
	ena => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_op[2]~reg0_q\);

-- Location: LCCOMB_X39_Y1_N0
\Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\current_state.s3_851~combout\ & (((\alu_en~reg0_q\)) # (!\Mux3~0_combout\))) # (!\current_state.s3_851~combout\ & (((\alu_en~reg0_q\ & !\WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s3_851~combout\,
	datab => \Mux3~0_combout\,
	datac => \alu_en~reg0_q\,
	datad => \WideOr2~1_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X39_Y1_N1
\alu_en~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_en~reg0_q\);

-- Location: LCCOMB_X39_Y1_N10
\Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\out_en~reg0_q\) # ((!IR(8) & (IR(6) & \Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_en~reg0_q\,
	datab => IR(8),
	datac => IR(6),
	datad => \Mux21~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X39_Y1_N30
\Selector10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\current_state.s3_851~combout\ & ((\Selector10~0_combout\) # ((!\WideOr2~1_combout\ & \out_en~reg0_q\)))) # (!\current_state.s3_851~combout\ & (!\WideOr2~1_combout\ & (\out_en~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.s3_851~combout\,
	datab => \WideOr2~1_combout\,
	datac => \out_en~reg0_q\,
	datad => \Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X39_Y1_N31
\out_en~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_en~reg0_q\);

ww_adr(0) <= \adr[0]~output_o\;

ww_adr(1) <= \adr[1]~output_o\;

ww_adr(2) <= \adr[2]~output_o\;

ww_adr(3) <= \adr[3]~output_o\;

ww_w_RWM <= \w_RWM~output_o\;

ww_RWM_en <= \RWM_en~output_o\;

ww_ROM_en <= \ROM_en~output_o\;

ww_rw_reg <= \rw_reg~output_o\;

ww_sel_op_1(0) <= \sel_op_1[0]~output_o\;

ww_sel_op_1(1) <= \sel_op_1[1]~output_o\;

ww_sel_op_0(0) <= \sel_op_0[0]~output_o\;

ww_sel_op_0(1) <= \sel_op_0[1]~output_o\;

ww_sel_in(0) <= \sel_in[0]~output_o\;

ww_sel_in(1) <= \sel_in[1]~output_o\;

ww_sel_mux(0) <= \sel_mux[0]~output_o\;

ww_sel_mux(1) <= \sel_mux[1]~output_o\;

ww_alu_op(0) <= \alu_op[0]~output_o\;

ww_alu_op(1) <= \alu_op[1]~output_o\;

ww_alu_op(2) <= \alu_op[2]~output_o\;

ww_alu_en <= \alu_en~output_o\;

ww_out_en <= \out_en~output_o\;

ww_data_imm(0) <= \data_imm[0]~output_o\;

ww_data_imm(1) <= \data_imm[1]~output_o\;

ww_data_imm(2) <= \data_imm[2]~output_o\;

ww_data_imm(3) <= \data_imm[3]~output_o\;
END structure;


