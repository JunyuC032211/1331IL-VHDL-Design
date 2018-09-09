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

-- DATE "10/09/2017 15:22:17"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RegisterFile IS
    PORT (
	clk : IN std_logic;
	data_in : IN std_logic_vector(3 DOWNTO 0);
	data_out_1 : BUFFER std_logic_vector(3 DOWNTO 0);
	data_out_0 : BUFFER std_logic_vector(3 DOWNTO 0);
	sel_in : IN std_logic_vector(1 DOWNTO 0);
	sel_out_1 : IN std_logic_vector(1 DOWNTO 0);
	sel_out_0 : IN std_logic_vector(1 DOWNTO 0);
	rw_reg : IN std_logic
	);
END RegisterFile;

-- Design Ports Information
-- data_out_1[0]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[2]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_1[3]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_0[0]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_0[1]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_0[2]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_0[3]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out_1[1]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out_1[0]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw_reg	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out_0[1]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out_0[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_in[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_in[0]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RegisterFile IS
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
SIGNAL ww_data_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data_out_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data_out_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel_in : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sel_out_1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sel_out_0 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_rw_reg : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out_1[0]~output_o\ : std_logic;
SIGNAL \data_out_1[1]~output_o\ : std_logic;
SIGNAL \data_out_1[2]~output_o\ : std_logic;
SIGNAL \data_out_1[3]~output_o\ : std_logic;
SIGNAL \data_out_0[0]~output_o\ : std_logic;
SIGNAL \data_out_0[1]~output_o\ : std_logic;
SIGNAL \data_out_0[2]~output_o\ : std_logic;
SIGNAL \data_out_0[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sel_out_1[1]~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \savedData_3[0]~feeder_combout\ : std_logic;
SIGNAL \sel_in[1]~input_o\ : std_logic;
SIGNAL \sel_in[0]~input_o\ : std_logic;
SIGNAL \rw_reg~input_o\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \savedData_2[0]~feeder_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \sel_out_1[0]~input_o\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \savedData_0[0]~feeder_combout\ : std_logic;
SIGNAL \savedData_0[0]~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \data_out_1[0]~reg0_q\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \data_out_1[1]~reg0_q\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \savedData_3[2]~feeder_combout\ : std_logic;
SIGNAL \savedData_2[2]~feeder_combout\ : std_logic;
SIGNAL \savedData_0[2]~feeder_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \data_out_1[2]~reg0_q\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \savedData_1[3]~feeder_combout\ : std_logic;
SIGNAL \savedData_3[3]~feeder_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \data_out_1[3]~reg0_q\ : std_logic;
SIGNAL \sel_out_0[1]~input_o\ : std_logic;
SIGNAL \sel_out_0[0]~input_o\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \data_out_0[0]~reg0_q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \data_out_0[1]~reg0_q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \data_out_0[2]~reg0_q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \data_out_0[3]~reg0_q\ : std_logic;
SIGNAL savedData_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL savedData_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL savedData_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL savedData_0 : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_data_in <= data_in;
data_out_1 <= ww_data_out_1;
data_out_0 <= ww_data_out_0;
ww_sel_in <= sel_in;
ww_sel_out_1 <= sel_out_1;
ww_sel_out_0 <= sel_out_0;
ww_rw_reg <= rw_reg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X72_Y0_N2
\data_out_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_1[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\data_out_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_1[1]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\data_out_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_1[2]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\data_out_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_1[3]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\data_out_0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_0[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_0[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\data_out_0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_0[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_0[1]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\data_out_0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_0[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_0[2]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\data_out_0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out_0[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out_0[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X74_Y0_N1
\sel_out_1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_out_1(1),
	o => \sel_out_1[1]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X75_Y1_N12
\savedData_3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \savedData_3[0]~feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \savedData_3[0]~feeder_combout\);

-- Location: IOIBUF_X67_Y0_N15
\sel_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_in(1),
	o => \sel_in[1]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\sel_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_in(0),
	o => \sel_in[0]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\rw_reg~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rw_reg,
	o => \rw_reg~input_o\);

-- Location: LCCOMB_X74_Y1_N6
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\sel_in[1]~input_o\ & (\sel_in[0]~input_o\ & !\rw_reg~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_in[1]~input_o\,
	datab => \sel_in[0]~input_o\,
	datac => \rw_reg~input_o\,
	combout => \Mux11~2_combout\);

-- Location: FF_X75_Y1_N13
\savedData_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \savedData_3[0]~feeder_combout\,
	ena => \Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_3(0));

-- Location: LCCOMB_X73_Y1_N16
\savedData_2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \savedData_2[0]~feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \savedData_2[0]~feeder_combout\);

-- Location: LCCOMB_X74_Y1_N4
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\rw_reg~input_o\ & (!\sel_in[0]~input_o\ & \sel_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw_reg~input_o\,
	datab => \sel_in[0]~input_o\,
	datad => \sel_in[1]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: FF_X73_Y1_N17
\savedData_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \savedData_2[0]~feeder_combout\,
	ena => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_2(0));

-- Location: IOIBUF_X74_Y0_N8
\sel_out_1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_out_1(0),
	o => \sel_out_1[0]~input_o\);

-- Location: LCCOMB_X74_Y1_N8
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (!\rw_reg~input_o\ & (\sel_in[0]~input_o\ & !\sel_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw_reg~input_o\,
	datab => \sel_in[0]~input_o\,
	datad => \sel_in[1]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: FF_X74_Y1_N5
\savedData_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_1(0));

-- Location: LCCOMB_X73_Y1_N14
\savedData_0[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \savedData_0[0]~feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \savedData_0[0]~feeder_combout\);

-- Location: LCCOMB_X74_Y1_N16
\savedData_0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \savedData_0[0]~0_combout\ = (!\sel_in[1]~input_o\ & (!\sel_in[0]~input_o\ & !\rw_reg~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_in[1]~input_o\,
	datab => \sel_in[0]~input_o\,
	datac => \rw_reg~input_o\,
	combout => \savedData_0[0]~0_combout\);

-- Location: FF_X73_Y1_N15
\savedData_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \savedData_0[0]~feeder_combout\,
	ena => \savedData_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_0(0));

-- Location: LCCOMB_X74_Y1_N2
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\sel_out_1[1]~input_o\ & (\sel_out_1[0]~input_o\)) # (!\sel_out_1[1]~input_o\ & ((\sel_out_1[0]~input_o\ & (savedData_1(0))) # (!\sel_out_1[0]~input_o\ & ((savedData_0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_1[1]~input_o\,
	datab => \sel_out_1[0]~input_o\,
	datac => savedData_1(0),
	datad => savedData_0(0),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X74_Y1_N20
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\sel_out_1[1]~input_o\ & ((\Mux23~0_combout\ & (savedData_3(0))) # (!\Mux23~0_combout\ & ((savedData_2(0)))))) # (!\sel_out_1[1]~input_o\ & (((\Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_1[1]~input_o\,
	datab => savedData_3(0),
	datac => savedData_2(0),
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: FF_X74_Y1_N21
\data_out_1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux23~1_combout\,
	ena => \rw_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[0]~reg0_q\);

-- Location: IOIBUF_X67_Y0_N1
\data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: FF_X75_Y1_N11
\savedData_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_1(1));

-- Location: FF_X75_Y1_N1
\savedData_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_3(1));

-- Location: FF_X73_Y1_N27
\savedData_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \savedData_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_0(1));

-- Location: FF_X73_Y1_N25
\savedData_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_2(1));

-- Location: LCCOMB_X73_Y1_N12
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\sel_out_1[1]~input_o\ & ((\sel_out_1[0]~input_o\) # ((savedData_2(1))))) # (!\sel_out_1[1]~input_o\ & (!\sel_out_1[0]~input_o\ & (savedData_0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_1[1]~input_o\,
	datab => \sel_out_1[0]~input_o\,
	datac => savedData_0(1),
	datad => savedData_2(1),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X74_Y1_N14
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\sel_out_1[0]~input_o\ & ((\Mux22~0_combout\ & ((savedData_3(1)))) # (!\Mux22~0_combout\ & (savedData_1(1))))) # (!\sel_out_1[0]~input_o\ & (((\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_1[0]~input_o\,
	datab => savedData_1(1),
	datac => savedData_3(1),
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: FF_X74_Y1_N15
\data_out_1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux22~1_combout\,
	ena => \rw_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[1]~reg0_q\);

-- Location: IOIBUF_X79_Y0_N22
\data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X75_Y1_N22
\savedData_3[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \savedData_3[2]~feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \savedData_3[2]~feeder_combout\);

-- Location: FF_X75_Y1_N23
\savedData_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \savedData_3[2]~feeder_combout\,
	ena => \Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_3(2));

-- Location: LCCOMB_X73_Y1_N6
\savedData_2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \savedData_2[2]~feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \savedData_2[2]~feeder_combout\);

-- Location: FF_X73_Y1_N7
\savedData_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \savedData_2[2]~feeder_combout\,
	ena => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_2(2));

-- Location: FF_X74_Y1_N9
\savedData_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_1(2));

-- Location: LCCOMB_X73_Y1_N28
\savedData_0[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \savedData_0[2]~feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \savedData_0[2]~feeder_combout\);

-- Location: FF_X73_Y1_N29
\savedData_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \savedData_0[2]~feeder_combout\,
	ena => \savedData_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_0(2));

-- Location: LCCOMB_X74_Y1_N18
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\sel_out_1[1]~input_o\ & (\sel_out_1[0]~input_o\)) # (!\sel_out_1[1]~input_o\ & ((\sel_out_1[0]~input_o\ & (savedData_1(2))) # (!\sel_out_1[0]~input_o\ & ((savedData_0(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_1[1]~input_o\,
	datab => \sel_out_1[0]~input_o\,
	datac => savedData_1(2),
	datad => savedData_0(2),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X74_Y1_N24
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\sel_out_1[1]~input_o\ & ((\Mux21~0_combout\ & (savedData_3(2))) # (!\Mux21~0_combout\ & ((savedData_2(2)))))) # (!\sel_out_1[1]~input_o\ & (((\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_1[1]~input_o\,
	datab => savedData_3(2),
	datac => savedData_2(2),
	datad => \Mux21~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: FF_X74_Y1_N25
\data_out_1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux21~1_combout\,
	ena => \rw_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[2]~reg0_q\);

-- Location: IOIBUF_X79_Y0_N1
\data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X75_Y1_N8
\savedData_1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \savedData_1[3]~feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \savedData_1[3]~feeder_combout\);

-- Location: FF_X75_Y1_N9
\savedData_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \savedData_1[3]~feeder_combout\,
	ena => \Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_1(3));

-- Location: LCCOMB_X75_Y1_N14
\savedData_3[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \savedData_3[3]~feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \savedData_3[3]~feeder_combout\);

-- Location: FF_X75_Y1_N15
\savedData_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \savedData_3[3]~feeder_combout\,
	ena => \Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_3(3));

-- Location: FF_X73_Y1_N5
\savedData_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \savedData_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_0(3));

-- Location: FF_X73_Y1_N19
\savedData_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => savedData_2(3));

-- Location: LCCOMB_X73_Y1_N30
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\sel_out_1[1]~input_o\ & ((\sel_out_1[0]~input_o\) # ((savedData_2(3))))) # (!\sel_out_1[1]~input_o\ & (!\sel_out_1[0]~input_o\ & (savedData_0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_1[1]~input_o\,
	datab => \sel_out_1[0]~input_o\,
	datac => savedData_0(3),
	datad => savedData_2(3),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X74_Y1_N22
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\sel_out_1[0]~input_o\ & ((\Mux20~0_combout\ & ((savedData_3(3)))) # (!\Mux20~0_combout\ & (savedData_1(3))))) # (!\sel_out_1[0]~input_o\ & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_1[0]~input_o\,
	datab => savedData_1(3),
	datac => savedData_3(3),
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: FF_X74_Y1_N23
\data_out_1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux20~1_combout\,
	ena => \rw_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_1[3]~reg0_q\);

-- Location: IOIBUF_X74_Y0_N22
\sel_out_0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_out_0(1),
	o => \sel_out_0[1]~input_o\);

-- Location: IOIBUF_X74_Y0_N15
\sel_out_0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_out_0(0),
	o => \sel_out_0[0]~input_o\);

-- Location: LCCOMB_X74_Y1_N12
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\sel_out_0[0]~input_o\ & ((\sel_out_0[1]~input_o\) # ((savedData_1(0))))) # (!\sel_out_0[0]~input_o\ & (!\sel_out_0[1]~input_o\ & ((savedData_0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_0[0]~input_o\,
	datab => \sel_out_0[1]~input_o\,
	datac => savedData_1(0),
	datad => savedData_0(0),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X74_Y1_N0
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\sel_out_0[1]~input_o\ & ((\Mux19~0_combout\ & ((savedData_3(0)))) # (!\Mux19~0_combout\ & (savedData_2(0))))) # (!\sel_out_0[1]~input_o\ & (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => savedData_2(0),
	datab => \sel_out_0[1]~input_o\,
	datac => savedData_3(0),
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: FF_X74_Y1_N1
\data_out_0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux19~1_combout\,
	ena => \rw_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_0[0]~reg0_q\);

-- Location: LCCOMB_X73_Y1_N8
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\sel_out_0[0]~input_o\ & (\sel_out_0[1]~input_o\)) # (!\sel_out_0[0]~input_o\ & ((\sel_out_0[1]~input_o\ & ((savedData_2(1)))) # (!\sel_out_0[1]~input_o\ & (savedData_0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_0[0]~input_o\,
	datab => \sel_out_0[1]~input_o\,
	datac => savedData_0(1),
	datad => savedData_2(1),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X74_Y1_N26
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\sel_out_0[0]~input_o\ & ((\Mux18~0_combout\ & ((savedData_3(1)))) # (!\Mux18~0_combout\ & (savedData_1(1))))) # (!\sel_out_0[0]~input_o\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_0[0]~input_o\,
	datab => savedData_1(1),
	datac => savedData_3(1),
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: FF_X74_Y1_N27
\data_out_0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux18~1_combout\,
	ena => \rw_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_0[1]~reg0_q\);

-- Location: LCCOMB_X74_Y1_N10
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\sel_out_0[0]~input_o\ & ((\sel_out_0[1]~input_o\) # ((savedData_1(2))))) # (!\sel_out_0[0]~input_o\ & (!\sel_out_0[1]~input_o\ & ((savedData_0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_0[0]~input_o\,
	datab => \sel_out_0[1]~input_o\,
	datac => savedData_1(2),
	datad => savedData_0(2),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X74_Y1_N28
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\sel_out_0[1]~input_o\ & ((\Mux17~0_combout\ & (savedData_3(2))) # (!\Mux17~0_combout\ & ((savedData_2(2)))))) # (!\sel_out_0[1]~input_o\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_0[1]~input_o\,
	datab => savedData_3(2),
	datac => savedData_2(2),
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: FF_X74_Y1_N29
\data_out_0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux17~1_combout\,
	ena => \rw_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_0[2]~reg0_q\);

-- Location: LCCOMB_X73_Y1_N10
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\sel_out_0[0]~input_o\ & (\sel_out_0[1]~input_o\)) # (!\sel_out_0[0]~input_o\ & ((\sel_out_0[1]~input_o\ & ((savedData_2(3)))) # (!\sel_out_0[1]~input_o\ & (savedData_0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_0[0]~input_o\,
	datab => \sel_out_0[1]~input_o\,
	datac => savedData_0(3),
	datad => savedData_2(3),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X74_Y1_N30
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\sel_out_0[0]~input_o\ & ((\Mux16~0_combout\ & (savedData_3(3))) # (!\Mux16~0_combout\ & ((savedData_1(3)))))) # (!\sel_out_0[0]~input_o\ & (((\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_out_0[0]~input_o\,
	datab => savedData_3(3),
	datac => savedData_1(3),
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: FF_X74_Y1_N31
\data_out_0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux16~1_combout\,
	ena => \rw_reg~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out_0[3]~reg0_q\);

ww_data_out_1(0) <= \data_out_1[0]~output_o\;

ww_data_out_1(1) <= \data_out_1[1]~output_o\;

ww_data_out_1(2) <= \data_out_1[2]~output_o\;

ww_data_out_1(3) <= \data_out_1[3]~output_o\;

ww_data_out_0(0) <= \data_out_0[0]~output_o\;

ww_data_out_0(1) <= \data_out_0[1]~output_o\;

ww_data_out_0(2) <= \data_out_0[2]~output_o\;

ww_data_out_0(3) <= \data_out_0[3]~output_o\;
END structure;


