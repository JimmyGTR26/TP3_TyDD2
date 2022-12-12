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

-- DATE "12/12/2022 13:54:06"

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

ENTITY 	debouncer_top IS
    PORT (
	clk : IN std_logic;
	btn_in : IN std_logic;
	btn_out : OUT std_logic
	);
END debouncer_top;

-- Design Ports Information
-- btn_out	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_in	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF debouncer_top IS
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
SIGNAL ww_btn_in : std_logic;
SIGNAL ww_btn_out : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \counter[17]~3_combout\ : std_logic;
SIGNAL \counter[15]~5_combout\ : std_logic;
SIGNAL \counter[13]~7_combout\ : std_logic;
SIGNAL \counter[11]~9_combout\ : std_logic;
SIGNAL \counter[10]~10_combout\ : std_logic;
SIGNAL \counter[9]~11_combout\ : std_logic;
SIGNAL \counter[6]~14_combout\ : std_logic;
SIGNAL \counter[3]~17_combout\ : std_logic;
SIGNAL \counter[2]~18_combout\ : std_logic;
SIGNAL \counter[0]~20_combout\ : std_logic;
SIGNAL \btn_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \btn_in~input_o\ : std_logic;
SIGNAL \btn_prev~feeder_combout\ : std_logic;
SIGNAL \btn_prev~q\ : std_logic;
SIGNAL \counter[0]~1_combout\ : std_logic;
SIGNAL \btn_out~1_combout\ : std_logic;
SIGNAL \counter[7]~13_combout\ : std_logic;
SIGNAL \counter[5]~15_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \counter[1]~19_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \counter[4]~16_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \counter[8]~12_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \counter[12]~8_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \counter[14]~6_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \counter[16]~4_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \counter[18]~2_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \btn_out~0_combout\ : std_logic;
SIGNAL \btn_out~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(19 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_btn_in <= btn_in;
btn_out <= ww_btn_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X2_Y45_N12
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (VCC)
-- \Add0~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X2_Y45_N16
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X2_Y45_N18
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X2_Y45_N22
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X2_Y45_N24
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & (\Add0~11\ $ (GND))) # (!counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X2_Y45_N26
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (!\Add0~13\)) # (!counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X2_Y45_N30
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (!\Add0~17\)) # (!counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X2_Y44_N0
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & (\Add0~19\ $ (GND))) # (!counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X2_Y44_N2
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (!\Add0~21\)) # (!counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X2_Y44_N6
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter(13) & (!\Add0~25\)) # (!counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X2_Y44_N10
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(15) & (!\Add0~29\)) # (!counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X2_Y44_N14
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter(17) & (!\Add0~33\)) # (!counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X2_Y44_N27
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: FF_X2_Y44_N31
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: FF_X2_Y44_N23
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: FF_X3_Y44_N5
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: FF_X1_Y44_N17
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: FF_X1_Y45_N17
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: FF_X1_Y45_N11
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: FF_X2_Y45_N7
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: FF_X2_Y45_N13
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[2]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: FF_X2_Y45_N11
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X2_Y44_N26
\counter[17]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[17]~3_combout\ = (\btn_out~1_combout\ & ((counter(17)) # ((\counter[0]~1_combout\ & \Add0~34_combout\)))) # (!\btn_out~1_combout\ & (\counter[0]~1_combout\ & ((\Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \counter[0]~1_combout\,
	datac => counter(17),
	datad => \Add0~34_combout\,
	combout => \counter[17]~3_combout\);

-- Location: LCCOMB_X2_Y44_N30
\counter[15]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[15]~5_combout\ = (\btn_out~1_combout\ & ((counter(15)) # ((\counter[0]~1_combout\ & \Add0~30_combout\)))) # (!\btn_out~1_combout\ & (\counter[0]~1_combout\ & ((\Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \counter[0]~1_combout\,
	datac => counter(15),
	datad => \Add0~30_combout\,
	combout => \counter[15]~5_combout\);

-- Location: LCCOMB_X2_Y44_N22
\counter[13]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[13]~7_combout\ = (\btn_out~1_combout\ & ((counter(13)) # ((\counter[0]~1_combout\ & \Add0~26_combout\)))) # (!\btn_out~1_combout\ & (\counter[0]~1_combout\ & ((\Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \counter[0]~1_combout\,
	datac => counter(13),
	datad => \Add0~26_combout\,
	combout => \counter[13]~7_combout\);

-- Location: LCCOMB_X3_Y44_N4
\counter[11]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[11]~9_combout\ = (\counter[0]~1_combout\ & ((\Add0~22_combout\) # ((\btn_out~1_combout\ & counter(11))))) # (!\counter[0]~1_combout\ & (\btn_out~1_combout\ & (counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~1_combout\,
	datab => \btn_out~1_combout\,
	datac => counter(11),
	datad => \Add0~22_combout\,
	combout => \counter[11]~9_combout\);

-- Location: LCCOMB_X1_Y44_N16
\counter[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[10]~10_combout\ = (\btn_out~1_combout\ & ((counter(10)) # ((\Add0~20_combout\ & \counter[0]~1_combout\)))) # (!\btn_out~1_combout\ & (\Add0~20_combout\ & ((\counter[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \Add0~20_combout\,
	datac => counter(10),
	datad => \counter[0]~1_combout\,
	combout => \counter[10]~10_combout\);

-- Location: LCCOMB_X1_Y45_N16
\counter[9]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[9]~11_combout\ = (\Add0~18_combout\ & ((\counter[0]~1_combout\) # ((counter(9) & \btn_out~1_combout\)))) # (!\Add0~18_combout\ & (((counter(9) & \btn_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \counter[0]~1_combout\,
	datac => counter(9),
	datad => \btn_out~1_combout\,
	combout => \counter[9]~11_combout\);

-- Location: LCCOMB_X1_Y45_N10
\counter[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[6]~14_combout\ = (\btn_out~1_combout\ & ((counter(6)) # ((\counter[0]~1_combout\ & \Add0~12_combout\)))) # (!\btn_out~1_combout\ & (\counter[0]~1_combout\ & ((\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \counter[0]~1_combout\,
	datac => counter(6),
	datad => \Add0~12_combout\,
	combout => \counter[6]~14_combout\);

-- Location: LCCOMB_X2_Y45_N6
\counter[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[3]~17_combout\ = (\btn_out~1_combout\ & ((counter(3)) # ((\counter[0]~1_combout\ & \Add0~6_combout\)))) # (!\btn_out~1_combout\ & (\counter[0]~1_combout\ & ((\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \counter[0]~1_combout\,
	datac => counter(3),
	datad => \Add0~6_combout\,
	combout => \counter[3]~17_combout\);

-- Location: LCCOMB_X1_Y45_N6
\counter[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[2]~18_combout\ = (\btn_out~1_combout\ & ((counter(2)) # ((\counter[0]~1_combout\ & \Add0~4_combout\)))) # (!\btn_out~1_combout\ & (\counter[0]~1_combout\ & ((\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \counter[0]~1_combout\,
	datac => counter(2),
	datad => \Add0~4_combout\,
	combout => \counter[2]~18_combout\);

-- Location: LCCOMB_X2_Y45_N10
\counter[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[0]~20_combout\ = (\btn_out~1_combout\ & ((counter(0)) # ((\Add0~0_combout\ & \counter[0]~1_combout\)))) # (!\btn_out~1_combout\ & (\Add0~0_combout\ & ((\counter[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \Add0~0_combout\,
	datac => counter(0),
	datad => \counter[0]~1_combout\,
	combout => \counter[0]~20_combout\);

-- Location: IOOBUF_X0_Y44_N9
\btn_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \btn_out~reg0_q\,
	devoe => ww_devoe,
	o => \btn_out~output_o\);

-- Location: IOIBUF_X0_Y36_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X0_Y44_N15
\btn_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_in,
	o => \btn_in~input_o\);

-- Location: LCCOMB_X1_Y44_N2
\btn_prev~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_prev~feeder_combout\ = \btn_in~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_in~input_o\,
	combout => \btn_prev~feeder_combout\);

-- Location: FF_X1_Y44_N3
btn_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_prev~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_prev~q\);

-- Location: LCCOMB_X1_Y44_N0
\counter[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[0]~1_combout\ = (!counter(19) & (\btn_in~input_o\ $ (!\btn_prev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_in~input_o\,
	datab => \btn_prev~q\,
	datad => counter(19),
	combout => \counter[0]~1_combout\);

-- Location: LCCOMB_X1_Y44_N10
\btn_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_out~1_combout\ = (counter(19) & (\btn_in~input_o\ $ (!\btn_prev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_in~input_o\,
	datab => \btn_prev~q\,
	datad => counter(19),
	combout => \btn_out~1_combout\);

-- Location: LCCOMB_X2_Y45_N2
\counter[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[7]~13_combout\ = (\Add0~14_combout\ & ((\counter[0]~1_combout\) # ((counter(7) & \btn_out~1_combout\)))) # (!\Add0~14_combout\ & (((counter(7) & \btn_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \counter[0]~1_combout\,
	datac => counter(7),
	datad => \btn_out~1_combout\,
	combout => \counter[7]~13_combout\);

-- Location: FF_X2_Y45_N3
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X2_Y45_N4
\counter[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[5]~15_combout\ = (\Add0~10_combout\ & ((\counter[0]~1_combout\) # ((counter(5) & \btn_out~1_combout\)))) # (!\Add0~10_combout\ & (((counter(5) & \btn_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \counter[0]~1_combout\,
	datac => counter(5),
	datad => \btn_out~1_combout\,
	combout => \counter[5]~15_combout\);

-- Location: FF_X2_Y45_N5
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X2_Y45_N14
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X2_Y45_N8
\counter[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[1]~19_combout\ = (\btn_out~1_combout\ & ((counter(1)) # ((\Add0~2_combout\ & \counter[0]~1_combout\)))) # (!\btn_out~1_combout\ & (\Add0~2_combout\ & ((\counter[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \Add0~2_combout\,
	datac => counter(1),
	datad => \counter[0]~1_combout\,
	combout => \counter[1]~19_combout\);

-- Location: FF_X2_Y45_N9
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X2_Y45_N20
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X1_Y45_N4
\counter[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[4]~16_combout\ = (counter(4) & ((\btn_out~1_combout\) # ((\counter[0]~1_combout\ & \Add0~8_combout\)))) # (!counter(4) & (\counter[0]~1_combout\ & (\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \counter[0]~1_combout\,
	datac => \Add0~8_combout\,
	datad => \btn_out~1_combout\,
	combout => \counter[4]~16_combout\);

-- Location: FF_X2_Y45_N21
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[4]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X2_Y45_N28
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & (\Add0~15\ $ (GND))) # (!counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X2_Y45_N0
\counter[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[8]~12_combout\ = (\btn_out~1_combout\ & ((counter(8)) # ((\counter[0]~1_combout\ & \Add0~16_combout\)))) # (!\btn_out~1_combout\ & (\counter[0]~1_combout\ & ((\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \counter[0]~1_combout\,
	datac => counter(8),
	datad => \Add0~16_combout\,
	combout => \counter[8]~12_combout\);

-- Location: FF_X2_Y45_N1
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X2_Y44_N4
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(12) & (\Add0~23\ $ (GND))) # (!counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X1_Y44_N6
\counter[12]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[12]~8_combout\ = (\btn_out~1_combout\ & ((counter(12)) # ((\counter[0]~1_combout\ & \Add0~24_combout\)))) # (!\btn_out~1_combout\ & (\counter[0]~1_combout\ & ((\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \counter[0]~1_combout\,
	datac => counter(12),
	datad => \Add0~24_combout\,
	combout => \counter[12]~8_combout\);

-- Location: FF_X1_Y44_N7
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X2_Y44_N8
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter(14) & (\Add0~27\ $ (GND))) # (!counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X2_Y44_N20
\counter[14]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[14]~6_combout\ = (\btn_out~1_combout\ & ((counter(14)) # ((\Add0~28_combout\ & \counter[0]~1_combout\)))) # (!\btn_out~1_combout\ & (\Add0~28_combout\ & ((\counter[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \Add0~28_combout\,
	datac => counter(14),
	datad => \counter[0]~1_combout\,
	combout => \counter[14]~6_combout\);

-- Location: FF_X2_Y44_N21
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X2_Y44_N12
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter(16) & (\Add0~31\ $ (GND))) # (!counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X2_Y44_N28
\counter[16]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[16]~4_combout\ = (\btn_out~1_combout\ & ((counter(16)) # ((\counter[0]~1_combout\ & \Add0~32_combout\)))) # (!\btn_out~1_combout\ & (\counter[0]~1_combout\ & ((\Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \counter[0]~1_combout\,
	datac => counter(16),
	datad => \Add0~32_combout\,
	combout => \counter[16]~4_combout\);

-- Location: FF_X2_Y44_N29
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X2_Y44_N16
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter(18) & (\Add0~35\ $ (GND))) # (!counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X2_Y44_N24
\counter[18]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[18]~2_combout\ = (\btn_out~1_combout\ & ((counter(18)) # ((\counter[0]~1_combout\ & \Add0~36_combout\)))) # (!\btn_out~1_combout\ & (\counter[0]~1_combout\ & ((\Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_out~1_combout\,
	datab => \counter[0]~1_combout\,
	datac => counter(18),
	datad => \Add0~36_combout\,
	combout => \counter[18]~2_combout\);

-- Location: FF_X2_Y44_N25
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X2_Y44_N18
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \Add0~37\ $ (counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(19),
	cin => \Add0~37\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X1_Y44_N20
\counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (counter(19) & (\btn_in~input_o\ $ ((!\btn_prev~q\)))) # (!counter(19) & (\Add0~38_combout\ & (\btn_in~input_o\ $ (!\btn_prev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_in~input_o\,
	datab => \btn_prev~q\,
	datac => counter(19),
	datad => \Add0~38_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X1_Y44_N21
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X1_Y44_N12
\btn_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_out~0_combout\ = (\btn_in~input_o\ & ((\btn_out~reg0_q\) # ((\btn_prev~q\ & counter(19))))) # (!\btn_in~input_o\ & (\btn_out~reg0_q\ & ((\btn_prev~q\) # (!counter(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_in~input_o\,
	datab => \btn_prev~q\,
	datac => \btn_out~reg0_q\,
	datad => counter(19),
	combout => \btn_out~0_combout\);

-- Location: FF_X1_Y44_N13
\btn_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_out~reg0_q\);

ww_btn_out <= \btn_out~output_o\;
END structure;


