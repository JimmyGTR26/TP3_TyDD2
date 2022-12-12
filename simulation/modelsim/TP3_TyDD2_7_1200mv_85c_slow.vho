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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/12/2022 11:46:32"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SAC IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	x : IN std_logic;
	z : OUT std_logic_vector(0 TO 2)
	);
END SAC;

-- Design Ports Information
-- z[2]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[1]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[0]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SAC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_z : std_logic_vector(0 TO 2);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \z[2]~output_o\ : std_logic;
SIGNAL \z[1]~output_o\ : std_logic;
SIGNAL \z[0]~output_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \fstate.St_4~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \fstate.St_4~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \fstate.St_6~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \fstate.St_7~q\ : std_logic;
SIGNAL \fstate.S_7~0_combout\ : std_logic;
SIGNAL \fstate.S_7~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \fstate.St_2~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \fstate.St_1~q\ : std_logic;
SIGNAL \fstate.S_1~0_combout\ : std_logic;
SIGNAL \fstate.S_1~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \fstate.St_5~q\ : std_logic;
SIGNAL \fstate.S_5~0_combout\ : std_logic;
SIGNAL \fstate.S_5~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \fstate.St_3~q\ : std_logic;
SIGNAL \fstate.S_3~0_combout\ : std_logic;
SIGNAL \fstate.S_3~q\ : std_logic;
SIGNAL \WideOr16~0_combout\ : std_logic;
SIGNAL \fstate.S_2~0_combout\ : std_logic;
SIGNAL \fstate.S_2~q\ : std_logic;
SIGNAL \fstate.S_6~0_combout\ : std_logic;
SIGNAL \fstate.S_6~q\ : std_logic;
SIGNAL \WideOr15~0_combout\ : std_logic;
SIGNAL \fstate.S_4~0_combout\ : std_logic;
SIGNAL \fstate.S_4~q\ : std_logic;
SIGNAL \WideOr14~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_x <= x;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOIBUF_X56_Y0_N15
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOOBUF_X60_Y0_N16
\z[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr16~0_combout\,
	devoe => ww_devoe,
	o => \z[2]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\z[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr15~0_combout\,
	devoe => ww_devoe,
	o => \z[1]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\z[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr14~0_combout\,
	devoe => ww_devoe,
	o => \z[0]~output_o\);

-- Location: IOIBUF_X56_Y0_N22
\x~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LCCOMB_X57_Y1_N6
\fstate.St_4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.St_4~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fstate.St_4~feeder_combout\);

-- Location: IOIBUF_X85_Y0_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X57_Y1_N7
\fstate.St_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \fstate.St_4~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.St_4~q\);

-- Location: LCCOMB_X57_Y1_N16
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\x~input_o\ & !\fstate.St_4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~input_o\,
	datad => \fstate.St_4~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X57_Y1_N17
\fstate.St_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.St_6~q\);

-- Location: LCCOMB_X57_Y1_N28
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\x~input_o\ & \fstate.St_6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~input_o\,
	datad => \fstate.St_6~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X57_Y1_N29
\fstate.St_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.St_7~q\);

-- Location: LCCOMB_X57_Y1_N30
\fstate.S_7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.S_7~0_combout\ = (\fstate.S_7~q\) # ((\x~input_o\ & \fstate.St_7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datac => \fstate.S_7~q\,
	datad => \fstate.St_7~q\,
	combout => \fstate.S_7~0_combout\);

-- Location: FF_X57_Y1_N31
\fstate.S_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \fstate.S_7~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.S_7~q\);

-- Location: LCCOMB_X57_Y1_N10
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\x~input_o\ & !\fstate.St_4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~input_o\,
	datad => \fstate.St_4~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X57_Y1_N11
\fstate.St_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.St_2~q\);

-- Location: LCCOMB_X57_Y1_N2
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\x~input_o\ & \fstate.St_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~input_o\,
	datad => \fstate.St_2~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X57_Y1_N3
\fstate.St_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.St_1~q\);

-- Location: LCCOMB_X57_Y1_N4
\fstate.S_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.S_1~0_combout\ = (\fstate.S_1~q\) # ((\x~input_o\ & \fstate.St_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datac => \fstate.S_1~q\,
	datad => \fstate.St_1~q\,
	combout => \fstate.S_1~0_combout\);

-- Location: FF_X57_Y1_N5
\fstate.S_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \fstate.S_1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.S_1~q\);

-- Location: LCCOMB_X57_Y1_N12
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\x~input_o\ & \fstate.St_6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~input_o\,
	datad => \fstate.St_6~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X57_Y1_N13
\fstate.St_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.St_5~q\);

-- Location: LCCOMB_X57_Y1_N14
\fstate.S_5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.S_5~0_combout\ = (\fstate.S_5~q\) # ((\x~input_o\ & \fstate.St_5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datac => \fstate.S_5~q\,
	datad => \fstate.St_5~q\,
	combout => \fstate.S_5~0_combout\);

-- Location: FF_X57_Y1_N15
\fstate.S_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \fstate.S_5~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.S_5~q\);

-- Location: LCCOMB_X57_Y1_N18
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\x~input_o\ & \fstate.St_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~input_o\,
	datad => \fstate.St_2~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X57_Y1_N19
\fstate.St_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.St_3~q\);

-- Location: LCCOMB_X57_Y1_N20
\fstate.S_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.S_3~0_combout\ = (\fstate.S_3~q\) # ((\x~input_o\ & \fstate.St_3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datac => \fstate.S_3~q\,
	datad => \fstate.St_3~q\,
	combout => \fstate.S_3~0_combout\);

-- Location: FF_X57_Y1_N21
\fstate.S_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \fstate.S_3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.S_3~q\);

-- Location: LCCOMB_X57_Y1_N24
\WideOr16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr16~0_combout\ = (\fstate.S_7~q\) # ((\fstate.S_1~q\) # ((\fstate.S_5~q\) # (\fstate.S_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.S_7~q\,
	datab => \fstate.S_1~q\,
	datac => \fstate.S_5~q\,
	datad => \fstate.S_3~q\,
	combout => \WideOr16~0_combout\);

-- Location: LCCOMB_X57_Y1_N26
\fstate.S_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.S_2~0_combout\ = (\fstate.S_2~q\) # ((!\x~input_o\ & \fstate.St_3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datac => \fstate.S_2~q\,
	datad => \fstate.St_3~q\,
	combout => \fstate.S_2~0_combout\);

-- Location: FF_X57_Y1_N27
\fstate.S_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \fstate.S_2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.S_2~q\);

-- Location: LCCOMB_X57_Y1_N8
\fstate.S_6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.S_6~0_combout\ = (\fstate.S_6~q\) # ((!\x~input_o\ & \fstate.St_7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datac => \fstate.S_6~q\,
	datad => \fstate.St_7~q\,
	combout => \fstate.S_6~0_combout\);

-- Location: FF_X57_Y1_N9
\fstate.S_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \fstate.S_6~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.S_6~q\);

-- Location: LCCOMB_X57_Y1_N22
\WideOr15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr15~0_combout\ = (\fstate.S_7~q\) # ((\fstate.S_3~q\) # ((\fstate.S_2~q\) # (\fstate.S_6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.S_7~q\,
	datab => \fstate.S_3~q\,
	datac => \fstate.S_2~q\,
	datad => \fstate.S_6~q\,
	combout => \WideOr15~0_combout\);

-- Location: LCCOMB_X57_Y1_N0
\fstate.S_4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.S_4~0_combout\ = (\fstate.S_4~q\) # ((!\x~input_o\ & \fstate.St_5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datac => \fstate.S_4~q\,
	datad => \fstate.St_5~q\,
	combout => \fstate.S_4~0_combout\);

-- Location: FF_X57_Y1_N1
\fstate.S_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \fstate.S_4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.S_4~q\);

-- Location: LCCOMB_X58_Y1_N0
\WideOr14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr14~0_combout\ = (\fstate.S_6~q\) # ((\fstate.S_7~q\) # ((\fstate.S_4~q\) # (\fstate.S_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.S_6~q\,
	datab => \fstate.S_7~q\,
	datac => \fstate.S_4~q\,
	datad => \fstate.S_5~q\,
	combout => \WideOr14~0_combout\);

ww_z(2) <= \z[2]~output_o\;

ww_z(1) <= \z[1]~output_o\;

ww_z(0) <= \z[0]~output_o\;
END structure;


