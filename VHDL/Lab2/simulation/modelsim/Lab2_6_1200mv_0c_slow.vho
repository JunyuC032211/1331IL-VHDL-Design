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

-- DATE "09/25/2017 14:22:54"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
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

ENTITY 	ALU IS
    PORT (
	Op : IN std_logic_vector(2 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	En : IN std_logic;
	clk : IN std_logic;
	y : OUT std_logic_vector(3 DOWNTO 0);
	n_flag : OUT std_logic;
	z_flag : OUT std_logic;
	o_flag : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- y[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_flag	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_flag	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_flag	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[2]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_En : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n_flag : std_logic;
SIGNAL ww_z_flag : std_logic;
SIGNAL ww_o_flag : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \n_flag~output_o\ : std_logic;
SIGNAL \z_flag~output_o\ : std_logic;
SIGNAL \o_flag~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Op[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Op[2]~input_o\ : std_logic;
SIGNAL \Op[0]~input_o\ : std_logic;
SIGNAL \tempy~3_combout\ : std_logic;
SIGNAL \tempy~2_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \tempy~1_combout\ : std_logic;
SIGNAL \tempy[0]~feeder_combout\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \tempy~0_combout\ : std_logic;
SIGNAL \tempy~4_combout\ : std_logic;
SIGNAL \y[0]~reg0_q\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \tempy~7_combout\ : std_logic;
SIGNAL \tempy~6_combout\ : std_logic;
SIGNAL \tempy~8_combout\ : std_logic;
SIGNAL \tempy~9_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \tempy[1]~feeder_combout\ : std_logic;
SIGNAL \tempy~5_combout\ : std_logic;
SIGNAL \tempy~10_combout\ : std_logic;
SIGNAL \y[1]~reg0_q\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \tempy~12_combout\ : std_logic;
SIGNAL \tempy~13_combout\ : std_logic;
SIGNAL \tempy~15_combout\ : std_logic;
SIGNAL \tempy~14_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \tempy[2]~feeder_combout\ : std_logic;
SIGNAL \tempy~11_combout\ : std_logic;
SIGNAL \tempy~16_combout\ : std_logic;
SIGNAL \y[2]~reg0_q\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \tempy~17_combout\ : std_logic;
SIGNAL \tempy~18_combout\ : std_logic;
SIGNAL \tempy~20_combout\ : std_logic;
SIGNAL \tempy[3]~feeder_combout\ : std_logic;
SIGNAL \tempy~19_combout\ : std_logic;
SIGNAL \tempy~21_combout\ : std_logic;
SIGNAL \y[3]~reg0_q\ : std_logic;
SIGNAL \n_flag~reg0feeder_combout\ : std_logic;
SIGNAL \n_flag~reg0_q\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \z_flag~reg0_q\ : std_logic;
SIGNAL \o_flag~1_combout\ : std_logic;
SIGNAL \o_flag~2_combout\ : std_logic;
SIGNAL \o_flag~0_combout\ : std_logic;
SIGNAL \o_flag~reg0_q\ : std_logic;
SIGNAL tempy : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_Op <= Op;
ww_A <= A;
ww_B <= B;
ww_En <= En;
ww_clk <= clk;
y <= ww_y;
n_flag <= ww_n_flag;
z_flag <= ww_z_flag;
o_flag <= ww_o_flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X26_Y0_N2
\y[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0]~reg0_q\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\y[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1]~reg0_q\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\y[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2]~reg0_q\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\y[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3]~reg0_q\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\n_flag~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_flag~reg0_q\,
	devoe => ww_devoe,
	o => \n_flag~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\z_flag~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z_flag~reg0_q\,
	devoe => ww_devoe,
	o => \z_flag~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\o_flag~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_flag~reg0_q\,
	devoe => ww_devoe,
	o => \o_flag~output_o\);

-- Location: IOIBUF_X16_Y0_N15
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

-- Location: IOIBUF_X24_Y0_N1
\Op[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(1),
	o => \Op[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\Op[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(2),
	o => \Op[2]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\Op[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(0),
	o => \Op[0]~input_o\);

-- Location: LCCOMB_X30_Y3_N30
\tempy~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~3_combout\ = (\A[0]~input_o\ & (\Op[1]~input_o\)) # (!\A[0]~input_o\ & (\Op[0]~input_o\ & ((\Op[1]~input_o\) # (\Op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Op[2]~input_o\,
	datad => \Op[0]~input_o\,
	combout => \tempy~3_combout\);

-- Location: LCCOMB_X30_Y3_N16
\tempy~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~2_combout\ = (\Op[1]~input_o\ & (\Op[0]~input_o\ $ (((\Op[2]~input_o\) # (!\A[0]~input_o\))))) # (!\Op[1]~input_o\ & (((\Op[2]~input_o\ & \Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Op[2]~input_o\,
	datad => \Op[0]~input_o\,
	combout => \tempy~2_combout\);

-- Location: IOIBUF_X16_Y0_N8
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X29_Y3_N6
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[0]~input_o\) # (GND)))
-- \Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X29_Y3_N16
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X29_Y3_N24
\tempy~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~1_combout\ = (\Op[0]~input_o\ & (\Add1~0_combout\)) # (!\Op[0]~input_o\ & ((\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add0~0_combout\,
	datad => \Op[0]~input_o\,
	combout => \tempy~1_combout\);

-- Location: LCCOMB_X30_Y3_N28
\tempy[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy[0]~feeder_combout\ = \tempy~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tempy~4_combout\,
	combout => \tempy[0]~feeder_combout\);

-- Location: IOIBUF_X31_Y0_N8
\En~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

-- Location: FF_X30_Y3_N29
\tempy[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tempy[0]~feeder_combout\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempy(0));

-- Location: LCCOMB_X30_Y3_N18
\tempy~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~0_combout\ = (\Op[2]~input_o\ & ((tempy(0)))) # (!\Op[2]~input_o\ & (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Op[2]~input_o\,
	datad => tempy(0),
	combout => \tempy~0_combout\);

-- Location: LCCOMB_X30_Y3_N12
\tempy~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~4_combout\ = (\tempy~3_combout\ & ((\tempy~2_combout\) # ((\tempy~0_combout\)))) # (!\tempy~3_combout\ & (!\tempy~2_combout\ & (\tempy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempy~3_combout\,
	datab => \tempy~2_combout\,
	datac => \tempy~1_combout\,
	datad => \tempy~0_combout\,
	combout => \tempy~4_combout\);

-- Location: FF_X30_Y3_N13
\y[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tempy~4_combout\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[0]~reg0_q\);

-- Location: IOIBUF_X29_Y0_N1
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X29_Y3_N8
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add1~1\)) # (!\A[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add1~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\B[1]~input_o\ & ((!\Add1~1\) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X30_Y3_N20
\tempy~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~7_combout\ = (\Op[1]~input_o\ & (\Op[0]~input_o\ & ((\B[1]~input_o\) # (\Op[2]~input_o\)))) # (!\Op[1]~input_o\ & ((\Op[0]~input_o\) # ((\B[1]~input_o\ & \Op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Op[2]~input_o\,
	datad => \Op[0]~input_o\,
	combout => \tempy~7_combout\);

-- Location: LCCOMB_X29_Y3_N14
\tempy~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~6_combout\ = (\Op[2]~input_o\ & ((\Op[1]~input_o\) # ((!\B[1]~input_o\ & !\Op[0]~input_o\)))) # (!\Op[2]~input_o\ & (\Op[0]~input_o\ $ (((\B[1]~input_o\ & \Op[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Op[1]~input_o\,
	datac => \Op[2]~input_o\,
	datad => \Op[0]~input_o\,
	combout => \tempy~6_combout\);

-- Location: LCCOMB_X29_Y3_N28
\tempy~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~8_combout\ = (\tempy~7_combout\ & (!\Op[1]~input_o\ & ((\tempy~6_combout\) # (\A[1]~input_o\)))) # (!\tempy~7_combout\ & ((\tempy~6_combout\ & ((!\A[1]~input_o\))) # (!\tempy~6_combout\ & (\Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempy~7_combout\,
	datab => \Op[1]~input_o\,
	datac => \tempy~6_combout\,
	datad => \A[1]~input_o\,
	combout => \tempy~8_combout\);

-- Location: LCCOMB_X29_Y3_N26
\tempy~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~9_combout\ = (\tempy~7_combout\ & ((\Op[1]~input_o\ & (!\tempy~6_combout\)) # (!\Op[1]~input_o\ & ((\tempy~6_combout\) # (!\A[1]~input_o\))))) # (!\tempy~7_combout\ & (((\tempy~6_combout\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempy~7_combout\,
	datab => \Op[1]~input_o\,
	datac => \tempy~6_combout\,
	datad => \A[1]~input_o\,
	combout => \tempy~9_combout\);

-- Location: LCCOMB_X29_Y3_N18
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add0~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add0~1\)) # (!\A[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add0~1\)) # (!\B[1]~input_o\ & ((!\Add0~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X30_Y3_N0
\tempy[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy[1]~feeder_combout\ = \tempy~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempy~10_combout\,
	combout => \tempy[1]~feeder_combout\);

-- Location: FF_X30_Y3_N1
\tempy[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tempy[1]~feeder_combout\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempy(1));

-- Location: LCCOMB_X30_Y3_N10
\tempy~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~5_combout\ = (\Op[0]~input_o\ & ((tempy(1)))) # (!\Op[0]~input_o\ & (\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[0]~input_o\,
	datab => \Add0~2_combout\,
	datad => tempy(1),
	combout => \tempy~5_combout\);

-- Location: LCCOMB_X30_Y3_N14
\tempy~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~10_combout\ = (\tempy~8_combout\ & (\Add1~2_combout\ & (\tempy~9_combout\))) # (!\tempy~8_combout\ & (((\tempy~9_combout\) # (\tempy~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \tempy~8_combout\,
	datac => \tempy~9_combout\,
	datad => \tempy~5_combout\,
	combout => \tempy~10_combout\);

-- Location: FF_X30_Y3_N7
\y[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tempy~10_combout\,
	sload => VCC,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[1]~reg0_q\);

-- Location: IOIBUF_X20_Y0_N1
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X29_Y3_N10
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\B[2]~input_o\ & (\A[2]~input_o\ & !\Add1~3\)) # (!\B[2]~input_o\ & ((\A[2]~input_o\) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X29_Y3_N0
\tempy~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~12_combout\ = (\Op[2]~input_o\ & ((\Op[1]~input_o\) # ((!\B[2]~input_o\ & !\Op[0]~input_o\)))) # (!\Op[2]~input_o\ & (\Op[0]~input_o\ $ (((\Op[1]~input_o\ & \B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[2]~input_o\,
	datab => \Op[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Op[0]~input_o\,
	combout => \tempy~12_combout\);

-- Location: LCCOMB_X29_Y3_N2
\tempy~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~13_combout\ = (\Op[2]~input_o\ & ((\Op[0]~input_o\) # ((!\Op[1]~input_o\ & \B[2]~input_o\)))) # (!\Op[2]~input_o\ & (\Op[0]~input_o\ & ((\B[2]~input_o\) # (!\Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[2]~input_o\,
	datab => \Op[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Op[0]~input_o\,
	combout => \tempy~13_combout\);

-- Location: LCCOMB_X29_Y3_N30
\tempy~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~15_combout\ = (\tempy~12_combout\ & ((\tempy~13_combout\ & ((!\Op[1]~input_o\))) # (!\tempy~13_combout\ & (\A[2]~input_o\)))) # (!\tempy~12_combout\ & (\tempy~13_combout\ & ((\Op[1]~input_o\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempy~12_combout\,
	datab => \tempy~13_combout\,
	datac => \A[2]~input_o\,
	datad => \Op[1]~input_o\,
	combout => \tempy~15_combout\);

-- Location: LCCOMB_X29_Y3_N4
\tempy~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~14_combout\ = (\tempy~13_combout\ & (!\Op[1]~input_o\ & ((\tempy~12_combout\) # (\A[2]~input_o\)))) # (!\tempy~13_combout\ & ((\tempy~12_combout\ & (!\A[2]~input_o\)) # (!\tempy~12_combout\ & ((\Op[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempy~12_combout\,
	datab => \tempy~13_combout\,
	datac => \A[2]~input_o\,
	datad => \Op[1]~input_o\,
	combout => \tempy~14_combout\);

-- Location: LCCOMB_X29_Y3_N20
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\B[2]~input_o\ & ((\A[2]~input_o\) # (!\Add0~3\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X30_Y3_N24
\tempy[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy[2]~feeder_combout\ = \tempy~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempy~16_combout\,
	combout => \tempy[2]~feeder_combout\);

-- Location: FF_X30_Y3_N25
\tempy[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tempy[2]~feeder_combout\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempy(2));

-- Location: LCCOMB_X30_Y3_N6
\tempy~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~11_combout\ = (\Op[0]~input_o\ & ((tempy(2)))) # (!\Op[0]~input_o\ & (\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[0]~input_o\,
	datab => \Add0~4_combout\,
	datad => tempy(2),
	combout => \tempy~11_combout\);

-- Location: LCCOMB_X30_Y3_N4
\tempy~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~16_combout\ = (\tempy~15_combout\ & ((\Add1~4_combout\) # ((!\tempy~14_combout\)))) # (!\tempy~15_combout\ & (((!\tempy~14_combout\ & \tempy~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \tempy~15_combout\,
	datac => \tempy~14_combout\,
	datad => \tempy~11_combout\,
	combout => \tempy~16_combout\);

-- Location: FF_X30_Y3_N5
\y[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tempy~16_combout\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[2]~reg0_q\);

-- Location: IOIBUF_X24_Y0_N8
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X29_Y3_N22
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \B[3]~input_o\ $ (\Add0~5\ $ (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	cin => \Add0~5\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X29_Y3_N12
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = \B[3]~input_o\ $ (\Add1~5\ $ (!\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	cin => \Add1~5\,
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X31_Y3_N26
\tempy~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~17_combout\ = (\Op[1]~input_o\ & (((\Op[0]~input_o\)))) # (!\Op[1]~input_o\ & ((\Op[0]~input_o\ & ((\Add1~6_combout\))) # (!\Op[0]~input_o\ & (\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Op[1]~input_o\,
	datac => \Add1~6_combout\,
	datad => \Op[0]~input_o\,
	combout => \tempy~17_combout\);

-- Location: LCCOMB_X31_Y3_N20
\tempy~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~18_combout\ = (\tempy~17_combout\ & ((\A[3]~input_o\) # ((\B[3]~input_o\) # (!\Op[1]~input_o\)))) # (!\tempy~17_combout\ & (\A[3]~input_o\ & (\B[3]~input_o\ & \Op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempy~17_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Op[1]~input_o\,
	combout => \tempy~18_combout\);

-- Location: LCCOMB_X31_Y3_N22
\tempy~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~20_combout\ = (!\Op[0]~input_o\ & (\A[3]~input_o\ $ (((\B[3]~input_o\ & !\Op[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Op[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Op[0]~input_o\,
	combout => \tempy~20_combout\);

-- Location: LCCOMB_X31_Y3_N10
\tempy[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy[3]~feeder_combout\ = \tempy~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tempy~21_combout\,
	combout => \tempy[3]~feeder_combout\);

-- Location: FF_X31_Y3_N11
\tempy[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tempy[3]~feeder_combout\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tempy(3));

-- Location: LCCOMB_X31_Y3_N12
\tempy~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~19_combout\ = (\Op[0]~input_o\ & ((\Op[1]~input_o\ & ((tempy(3)))) # (!\Op[1]~input_o\ & (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[0]~input_o\,
	datab => \Op[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => tempy(3),
	combout => \tempy~19_combout\);

-- Location: LCCOMB_X31_Y3_N24
\tempy~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tempy~21_combout\ = (\Op[2]~input_o\ & (((\tempy~20_combout\) # (\tempy~19_combout\)))) # (!\Op[2]~input_o\ & (\tempy~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[2]~input_o\,
	datab => \tempy~18_combout\,
	datac => \tempy~20_combout\,
	datad => \tempy~19_combout\,
	combout => \tempy~21_combout\);

-- Location: FF_X31_Y3_N25
\y[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tempy~21_combout\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y[3]~reg0_q\);

-- Location: LCCOMB_X31_Y3_N18
\n_flag~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \n_flag~reg0feeder_combout\ = \tempy~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tempy~21_combout\,
	combout => \n_flag~reg0feeder_combout\);

-- Location: FF_X31_Y3_N19
\n_flag~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n_flag~reg0feeder_combout\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_flag~reg0_q\);

-- Location: LCCOMB_X30_Y3_N26
\Equal7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\tempy~4_combout\ & (!\tempy~10_combout\ & (!\tempy~16_combout\ & !\tempy~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempy~4_combout\,
	datab => \tempy~10_combout\,
	datac => \tempy~16_combout\,
	datad => \tempy~21_combout\,
	combout => \Equal7~0_combout\);

-- Location: FF_X30_Y3_N27
\z_flag~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal7~0_combout\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \z_flag~reg0_q\);

-- Location: LCCOMB_X31_Y3_N28
\o_flag~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_flag~1_combout\ = (\Op[0]~input_o\ & ((\B[3]~input_o\ & (\Add1~6_combout\ & !\A[3]~input_o\)) # (!\B[3]~input_o\ & (!\Add1~6_combout\ & \A[3]~input_o\)))) # (!\Op[0]~input_o\ & (\B[3]~input_o\ $ (((!\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Add1~6_combout\,
	datac => \A[3]~input_o\,
	datad => \Op[0]~input_o\,
	combout => \o_flag~1_combout\);

-- Location: LCCOMB_X31_Y3_N14
\o_flag~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_flag~2_combout\ = (\o_flag~1_combout\ & ((\Add0~6_combout\ & ((!\B[3]~input_o\) # (!\A[3]~input_o\))) # (!\Add0~6_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \o_flag~1_combout\,
	combout => \o_flag~2_combout\);

-- Location: LCCOMB_X31_Y3_N16
\o_flag~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_flag~0_combout\ = (\Op[2]~input_o\ & (((\o_flag~reg0_q\)))) # (!\Op[2]~input_o\ & ((\Op[1]~input_o\ & ((\o_flag~reg0_q\))) # (!\Op[1]~input_o\ & (\o_flag~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[2]~input_o\,
	datab => \o_flag~2_combout\,
	datac => \o_flag~reg0_q\,
	datad => \Op[1]~input_o\,
	combout => \o_flag~0_combout\);

-- Location: FF_X31_Y3_N17
\o_flag~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_flag~0_combout\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_flag~reg0_q\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_n_flag <= \n_flag~output_o\;

ww_z_flag <= \z_flag~output_o\;

ww_o_flag <= \o_flag~output_o\;
END structure;


