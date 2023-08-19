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

-- DATE "08/18/2023 21:11:10"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	count_4digits IS
    PORT (
	clk_gen : IN std_logic;
	reset : IN std_logic;
	ini_but : IN std_logic;
	numbers : OUT std_logic_vector(7 DOWNTO 0);
	digit : OUT std_logic_vector(3 DOWNTO 0)
	);
END count_4digits;

-- Design Ports Information
-- numbers[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numbers[1]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numbers[2]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numbers[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numbers[4]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numbers[5]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numbers[6]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- numbers[7]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[0]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit[3]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_gen	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ini_but	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF count_4digits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_gen : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ini_but : std_logic;
SIGNAL ww_numbers : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_digit : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_gen~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \princ_count~9_combout\ : std_logic;
SIGNAL \princ_count~10_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \count_tens~4_combout\ : std_logic;
SIGNAL \count_delay~2_combout\ : std_logic;
SIGNAL \count_delay~7_combout\ : std_logic;
SIGNAL \count_sw~0_combout\ : std_logic;
SIGNAL \clk_gen~input_o\ : std_logic;
SIGNAL \clk_gen~inputclkctrl_outclk\ : std_logic;
SIGNAL \numbers[0]~output_o\ : std_logic;
SIGNAL \numbers[1]~output_o\ : std_logic;
SIGNAL \numbers[2]~output_o\ : std_logic;
SIGNAL \numbers[3]~output_o\ : std_logic;
SIGNAL \numbers[4]~output_o\ : std_logic;
SIGNAL \numbers[5]~output_o\ : std_logic;
SIGNAL \numbers[6]~output_o\ : std_logic;
SIGNAL \numbers[7]~output_o\ : std_logic;
SIGNAL \digit[0]~output_o\ : std_logic;
SIGNAL \digit[1]~output_o\ : std_logic;
SIGNAL \digit[2]~output_o\ : std_logic;
SIGNAL \digit[3]~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \count_unit~0_combout\ : std_logic;
SIGNAL \ini_but~input_o\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \count_delay[4]~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \count_delay~1_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \count_delay~5_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \count_delay~6_combout\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \count_delay~3_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \count_delay~4_combout\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \count_unit[2]~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \count_unit~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count_unit~2_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \count_unit~4_combout\ : std_logic;
SIGNAL \prs_state.tens~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \count_sw~3_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \count_sw~1_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \count_sw~2_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \count_sw~4_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \prs_state.tens~q\ : std_logic;
SIGNAL \prs_state.hundred~feeder_combout\ : std_logic;
SIGNAL \prs_state.hundred~q\ : std_logic;
SIGNAL \prs_state.thousand~feeder_combout\ : std_logic;
SIGNAL \prs_state.thousand~q\ : std_logic;
SIGNAL \prs_state.unit~0_combout\ : std_logic;
SIGNAL \prs_state.unit~q\ : std_logic;
SIGNAL \numbers~0_combout\ : std_logic;
SIGNAL \count_tens~0_combout\ : std_logic;
SIGNAL \count_tens[0]~1_combout\ : std_logic;
SIGNAL \princ_count[1]~0_combout\ : std_logic;
SIGNAL \princ_count[1]~1_combout\ : std_logic;
SIGNAL \princ_count[0]~2_combout\ : std_logic;
SIGNAL \princ_count[0]~3_combout\ : std_logic;
SIGNAL \count_tens~3_combout\ : std_logic;
SIGNAL \count_thous~1_combout\ : std_logic;
SIGNAL \count_hund~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \count_tens~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \count_thous[2]~0_combout\ : std_logic;
SIGNAL \count_hund[3]~1_combout\ : std_logic;
SIGNAL \count_hund~3_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \count_hund~2_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \count_hund~4_combout\ : std_logic;
SIGNAL \count_thous[2]~2_combout\ : std_logic;
SIGNAL \count_thous[2]~3_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \count_thous~5_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \count_thous~7_combout\ : std_logic;
SIGNAL \count_thous[2]~4_combout\ : std_logic;
SIGNAL \count_thous~6_combout\ : std_logic;
SIGNAL \princ_count[1]~7_combout\ : std_logic;
SIGNAL \princ_count[1]~8_combout\ : std_logic;
SIGNAL \princ_count~4_combout\ : std_logic;
SIGNAL \princ_count~5_combout\ : std_logic;
SIGNAL \princ_count[2]~6_combout\ : std_logic;
SIGNAL \numbers~1_combout\ : std_logic;
SIGNAL \numbers~2_combout\ : std_logic;
SIGNAL \numbers~4_combout\ : std_logic;
SIGNAL \numbers~3_combout\ : std_logic;
SIGNAL \numbers~5_combout\ : std_logic;
SIGNAL \numbers~6_combout\ : std_logic;
SIGNAL \numbers~7_combout\ : std_logic;
SIGNAL \numbers~8_combout\ : std_logic;
SIGNAL \numbers~9_combout\ : std_logic;
SIGNAL count_unit : std_logic_vector(3 DOWNTO 0);
SIGNAL count_thous : std_logic_vector(3 DOWNTO 0);
SIGNAL count_tens : std_logic_vector(3 DOWNTO 0);
SIGNAL count_sw : std_logic_vector(12 DOWNTO 0);
SIGNAL count_hund : std_logic_vector(3 DOWNTO 0);
SIGNAL count_delay : std_logic_vector(18 DOWNTO 0);
SIGNAL \ALT_INV_prs_state.thousand~q\ : std_logic;
SIGNAL \ALT_INV_prs_state.tens~q\ : std_logic;
SIGNAL \ALT_INV_prs_state.hundred~q\ : std_logic;

BEGIN

ww_clk_gen <= clk_gen;
ww_reset <= reset;
ww_ini_but <= ini_but;
numbers <= ww_numbers;
digit <= ww_digit;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_gen~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_gen~input_o\);
\ALT_INV_prs_state.thousand~q\ <= NOT \prs_state.thousand~q\;
\ALT_INV_prs_state.tens~q\ <= NOT \prs_state.tens~q\;
\ALT_INV_prs_state.hundred~q\ <= NOT \prs_state.hundred~q\;

-- Location: LCCOMB_X29_Y13_N22
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (count_delay(4) & (\Add4~7\ $ (GND))) # (!count_delay(4) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((count_delay(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X29_Y13_N30
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (count_delay(8) & (\Add4~15\ $ (GND))) # (!count_delay(8) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((count_delay(8) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X29_Y12_N6
\Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (count_delay(12) & (\Add4~23\ $ (GND))) # (!count_delay(12) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((count_delay(12) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(12),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X29_Y12_N16
\Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (count_delay(17) & (!\Add4~33\)) # (!count_delay(17) & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!count_delay(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_delay(17),
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X29_Y12_N18
\Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = count_delay(18) $ (!\Add4~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(18),
	cin => \Add4~35\,
	combout => \Add4~36_combout\);

-- Location: LCCOMB_X32_Y13_N10
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (count_sw(3) & (!\Add5~5\)) # (!count_sw(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!count_sw(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_sw(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X32_Y13_N12
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (count_sw(4) & (\Add5~7\ $ (GND))) # (!count_sw(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((count_sw(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_sw(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X32_Y13_N26
\Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (count_sw(11) & (!\Add5~21\)) # (!count_sw(11) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!count_sw(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_sw(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X32_Y13_N28
\Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = \Add5~23\ $ (!count_sw(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count_sw(12),
	cin => \Add5~23\,
	combout => \Add5~24_combout\);

-- Location: LCCOMB_X33_Y12_N0
\princ_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \princ_count~9_combout\ = (!\prs_state.tens~q\ & ((\prs_state.hundred~q\ & (count_hund(3))) # (!\prs_state.hundred~q\ & ((count_thous(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_hund(3),
	datab => count_thous(3),
	datac => \prs_state.tens~q\,
	datad => \prs_state.hundred~q\,
	combout => \princ_count~9_combout\);

-- Location: FF_X31_Y12_N13
\count_tens[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_tens~4_combout\,
	ena => \count_tens[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_tens(3));

-- Location: LCCOMB_X33_Y12_N26
\princ_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \princ_count~10_combout\ = (\princ_count~9_combout\) # ((count_tens(3) & \prs_state.tens~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_tens(3),
	datac => \prs_state.tens~q\,
	datad => \princ_count~9_combout\,
	combout => \princ_count~10_combout\);

-- Location: FF_X29_Y13_N23
\count_delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add4~8_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(4));

-- Location: FF_X29_Y13_N7
\count_delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_delay~2_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(8));

-- Location: LCCOMB_X30_Y12_N12
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (count_delay(10)) # ((count_delay(11)) # ((count_delay(9)) # (!count_delay(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(10),
	datab => count_delay(11),
	datac => count_delay(9),
	datad => count_delay(8),
	combout => \Equal0~2_combout\);

-- Location: FF_X29_Y12_N7
\count_delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add4~24_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(12));

-- Location: FF_X29_Y12_N27
\count_delay[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_delay~7_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(18));

-- Location: FF_X32_Y13_N1
\count_sw[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_sw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_sw(12));

-- Location: FF_X32_Y13_N13
\count_sw[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_sw(4));

-- Location: LCCOMB_X31_Y12_N22
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = count_tens(3) $ (((count_tens(1) & (count_tens(0) & count_tens(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_tens(3),
	datab => count_tens(1),
	datac => count_tens(0),
	datad => count_tens(2),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X31_Y12_N12
\count_tens~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_tens~4_combout\ = (\Equal2~0_combout\ & (\Add1~1_combout\ & \reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \Add1~1_combout\,
	datad => \reset~input_o\,
	combout => \count_tens~4_combout\);

-- Location: LCCOMB_X29_Y13_N6
\count_delay~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_delay~2_combout\ = (\Add4~16_combout\ & \Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~16_combout\,
	datad => \Equal0~5_combout\,
	combout => \count_delay~2_combout\);

-- Location: LCCOMB_X29_Y12_N26
\count_delay~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_delay~7_combout\ = (\Equal0~5_combout\ & \Add4~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datad => \Add4~36_combout\,
	combout => \count_delay~7_combout\);

-- Location: LCCOMB_X32_Y13_N0
\count_sw~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_sw~0_combout\ = (!\Equal5~3_combout\ & \Add5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datad => \Add5~24_combout\,
	combout => \count_sw~0_combout\);

-- Location: IOIBUF_X0_Y11_N8
\clk_gen~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_gen,
	o => \clk_gen~input_o\);

-- Location: CLKCTRL_G2
\clk_gen~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_gen~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_gen~inputclkctrl_outclk\);

-- Location: IOOBUF_X7_Y24_N2
\numbers[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \numbers[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\numbers[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \numbers~1_combout\,
	devoe => ww_devoe,
	o => \numbers[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\numbers[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \numbers~2_combout\,
	devoe => ww_devoe,
	o => \numbers[2]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\numbers[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \numbers~5_combout\,
	devoe => ww_devoe,
	o => \numbers[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\numbers[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \numbers~6_combout\,
	devoe => ww_devoe,
	o => \numbers[4]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\numbers[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \numbers~7_combout\,
	devoe => ww_devoe,
	o => \numbers[5]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\numbers[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \numbers~8_combout\,
	devoe => ww_devoe,
	o => \numbers[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\numbers[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \numbers~9_combout\,
	devoe => ww_devoe,
	o => \numbers[7]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\digit[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prs_state.unit~q\,
	devoe => ww_devoe,
	o => \digit[0]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\digit[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_prs_state.tens~q\,
	devoe => ww_devoe,
	o => \digit[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\digit[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_prs_state.hundred~q\,
	devoe => ww_devoe,
	o => \digit[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\digit[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_prs_state.thousand~q\,
	devoe => ww_devoe,
	o => \digit[3]~output_o\);

-- Location: IOIBUF_X34_Y4_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X31_Y12_N2
\count_unit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_unit~0_combout\ = (!count_unit(0) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_unit(0),
	datad => \reset~input_o\,
	combout => \count_unit~0_combout\);

-- Location: IOIBUF_X34_Y7_N8
\ini_but~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ini_but,
	o => \ini_but~input_o\);

-- Location: LCCOMB_X29_Y13_N14
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = count_delay(0) $ (VCC)
-- \Add4~1\ = CARRY(count_delay(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_delay(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X31_Y12_N6
\count_delay[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_delay[4]~0_combout\ = (\reset~input_o\ & \ini_but~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \ini_but~input_o\,
	combout => \count_delay[4]~0_combout\);

-- Location: FF_X29_Y13_N15
\count_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add4~0_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(0));

-- Location: LCCOMB_X29_Y13_N16
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (count_delay(1) & (!\Add4~1\)) # (!count_delay(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!count_delay(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_delay(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: FF_X29_Y13_N17
\count_delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add4~2_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(1));

-- Location: LCCOMB_X29_Y13_N18
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (count_delay(2) & (\Add4~3\ $ (GND))) # (!count_delay(2) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((count_delay(2) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X29_Y13_N20
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (count_delay(3) & (!\Add4~5\)) # (!count_delay(3) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!count_delay(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_delay(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: FF_X29_Y13_N21
\count_delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add4~6_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(3));

-- Location: LCCOMB_X29_Y13_N24
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (count_delay(5) & (!\Add4~9\)) # (!count_delay(5) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!count_delay(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_delay(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X29_Y13_N2
\count_delay~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_delay~1_combout\ = (\Equal0~5_combout\ & \Add4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~5_combout\,
	datad => \Add4~10_combout\,
	combout => \count_delay~1_combout\);

-- Location: FF_X29_Y13_N3
\count_delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_delay~1_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(5));

-- Location: LCCOMB_X29_Y13_N26
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (count_delay(6) & (\Add4~11\ $ (GND))) # (!count_delay(6) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((count_delay(6) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_delay(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: FF_X29_Y13_N27
\count_delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add4~12_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(6));

-- Location: LCCOMB_X29_Y13_N28
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (count_delay(7) & (!\Add4~13\)) # (!count_delay(7) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!count_delay(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X29_Y12_N0
\Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (count_delay(9) & (!\Add4~17\)) # (!count_delay(9) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!count_delay(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_delay(9),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: FF_X29_Y12_N1
\count_delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add4~18_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(9));

-- Location: LCCOMB_X29_Y12_N2
\Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (count_delay(10) & (\Add4~19\ $ (GND))) # (!count_delay(10) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((count_delay(10) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_delay(10),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: FF_X29_Y12_N3
\count_delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add4~20_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(10));

-- Location: LCCOMB_X29_Y12_N4
\Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (count_delay(11) & (!\Add4~21\)) # (!count_delay(11) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!count_delay(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_delay(11),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: FF_X29_Y12_N5
\count_delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add4~22_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(11));

-- Location: LCCOMB_X29_Y12_N8
\Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (count_delay(13) & (!\Add4~25\)) # (!count_delay(13) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!count_delay(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(13),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X29_Y12_N10
\Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (count_delay(14) & (\Add4~27\ $ (GND))) # (!count_delay(14) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((count_delay(14) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(14),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X29_Y12_N12
\Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (count_delay(15) & (!\Add4~29\)) # (!count_delay(15) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!count_delay(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(15),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X29_Y12_N14
\Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (count_delay(16) & (\Add4~31\ $ (GND))) # (!count_delay(16) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((count_delay(16) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(16),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X29_Y12_N22
\count_delay~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_delay~5_combout\ = (\Add4~32_combout\ & \Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~32_combout\,
	datad => \Equal0~5_combout\,
	combout => \count_delay~5_combout\);

-- Location: FF_X29_Y12_N23
\count_delay[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_delay~5_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(16));

-- Location: LCCOMB_X29_Y12_N20
\count_delay~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_delay~6_combout\ = (\Equal0~5_combout\ & \Add4~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datad => \Add4~34_combout\,
	combout => \count_delay~6_combout\);

-- Location: FF_X29_Y12_N21
\count_delay[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_delay~6_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(17));

-- Location: LCCOMB_X29_Y12_N28
\count_delay~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_delay~3_combout\ = (\Add4~26_combout\ & \Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~26_combout\,
	datad => \Equal0~5_combout\,
	combout => \count_delay~3_combout\);

-- Location: FF_X29_Y12_N29
\count_delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_delay~3_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(13));

-- Location: LCCOMB_X29_Y12_N30
\count_delay~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_delay~4_combout\ = (\Equal0~5_combout\ & \Add4~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datad => \Add4~30_combout\,
	combout => \count_delay~4_combout\);

-- Location: FF_X29_Y12_N31
\count_delay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_delay~4_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(15));

-- Location: FF_X29_Y12_N11
\count_delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add4~28_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(14));

-- Location: LCCOMB_X29_Y12_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (count_delay(12)) # (((count_delay(14)) # (!count_delay(15))) # (!count_delay(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(12),
	datab => count_delay(13),
	datac => count_delay(15),
	datad => count_delay(14),
	combout => \Equal0~3_combout\);

-- Location: FF_X29_Y13_N29
\count_delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add4~14_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(7));

-- Location: LCCOMB_X29_Y13_N12
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (count_delay(6)) # ((count_delay(7)) # ((count_delay(5)) # (!count_delay(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(6),
	datab => count_delay(7),
	datac => count_delay(0),
	datad => count_delay(5),
	combout => \Equal0~1_combout\);

-- Location: FF_X29_Y13_N19
\count_delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add4~4_combout\,
	ena => \count_delay[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_delay(2));

-- Location: LCCOMB_X29_Y13_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (((!count_delay(2)) # (!count_delay(3))) # (!count_delay(1))) # (!count_delay(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(4),
	datab => count_delay(1),
	datac => count_delay(3),
	datad => count_delay(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X30_Y12_N10
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\) # ((\Equal0~3_combout\) # ((\Equal0~1_combout\) # (\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X30_Y12_N16
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (((\Equal0~4_combout\) # (!count_delay(17))) # (!count_delay(16))) # (!count_delay(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_delay(18),
	datab => count_delay(16),
	datac => count_delay(17),
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X31_Y12_N18
\count_unit[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_unit[2]~1_combout\ = ((\ini_but~input_o\ & !\Equal0~5_combout\)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ini_but~input_o\,
	datac => \Equal0~5_combout\,
	combout => \count_unit[2]~1_combout\);

-- Location: FF_X31_Y12_N3
\count_unit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_unit~0_combout\,
	ena => \count_unit[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_unit(0));

-- Location: LCCOMB_X31_Y12_N14
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (count_unit(1)) # (((count_unit(2)) # (!count_unit(3))) # (!count_unit(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_unit(1),
	datab => count_unit(0),
	datac => count_unit(2),
	datad => count_unit(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X31_Y12_N30
\count_unit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_unit~3_combout\ = (\Equal1~0_combout\ & (\reset~input_o\ & (count_unit(0) $ (count_unit(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_unit(0),
	datab => \Equal1~0_combout\,
	datac => count_unit(1),
	datad => \reset~input_o\,
	combout => \count_unit~3_combout\);

-- Location: FF_X31_Y12_N31
\count_unit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_unit~3_combout\,
	ena => \count_unit[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_unit(1));

-- Location: LCCOMB_X31_Y12_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count_unit(2) $ (((count_unit(1) & count_unit(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_unit(2),
	datac => count_unit(1),
	datad => count_unit(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X31_Y12_N26
\count_unit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_unit~2_combout\ = (\Add0~0_combout\ & (\Equal1~0_combout\ & \reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \reset~input_o\,
	combout => \count_unit~2_combout\);

-- Location: FF_X31_Y12_N27
\count_unit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_unit~2_combout\,
	ena => \count_unit[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_unit(2));

-- Location: LCCOMB_X31_Y12_N20
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = count_unit(3) $ (((count_unit(1) & (count_unit(0) & count_unit(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_unit(1),
	datab => count_unit(0),
	datac => count_unit(2),
	datad => count_unit(3),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X31_Y12_N10
\count_unit~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_unit~4_combout\ = (\Add0~1_combout\ & (\Equal1~0_combout\ & \reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \reset~input_o\,
	combout => \count_unit~4_combout\);

-- Location: FF_X31_Y12_N11
\count_unit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_unit~4_combout\,
	ena => \count_unit[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_unit(3));

-- Location: LCCOMB_X33_Y13_N30
\prs_state.tens~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \prs_state.tens~0_combout\ = !\prs_state.unit~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prs_state.unit~q\,
	combout => \prs_state.tens~0_combout\);

-- Location: LCCOMB_X32_Y13_N4
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = count_sw(0) $ (VCC)
-- \Add5~1\ = CARRY(count_sw(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_sw(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: FF_X32_Y13_N5
\count_sw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_sw(0));

-- Location: LCCOMB_X32_Y13_N6
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (count_sw(1) & (!\Add5~1\)) # (!count_sw(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!count_sw(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_sw(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X32_Y13_N8
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (count_sw(2) & (\Add5~3\ $ (GND))) # (!count_sw(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((count_sw(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_sw(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: FF_X32_Y13_N9
\count_sw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_sw(2));

-- Location: LCCOMB_X32_Y13_N14
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (count_sw(5) & (!\Add5~9\)) # (!count_sw(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!count_sw(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_sw(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: FF_X32_Y13_N15
\count_sw[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_sw(5));

-- Location: LCCOMB_X32_Y13_N16
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (count_sw(6) & (\Add5~11\ $ (GND))) # (!count_sw(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((count_sw(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_sw(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: FF_X32_Y13_N17
\count_sw[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_sw(6));

-- Location: LCCOMB_X32_Y13_N18
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (count_sw(7) & (!\Add5~13\)) # (!count_sw(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!count_sw(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_sw(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X33_Y13_N26
\count_sw~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_sw~3_combout\ = (!\Equal5~3_combout\ & \Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~3_combout\,
	datad => \Add5~14_combout\,
	combout => \count_sw~3_combout\);

-- Location: FF_X33_Y13_N27
\count_sw[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_sw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_sw(7));

-- Location: LCCOMB_X32_Y13_N20
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (count_sw(8) & (\Add5~15\ $ (GND))) # (!count_sw(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((count_sw(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_sw(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X32_Y13_N22
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (count_sw(9) & (!\Add5~17\)) # (!count_sw(9) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!count_sw(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_sw(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X33_Y13_N4
\count_sw~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_sw~1_combout\ = (!\Equal5~3_combout\ & \Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~3_combout\,
	datad => \Add5~18_combout\,
	combout => \count_sw~1_combout\);

-- Location: FF_X33_Y13_N5
\count_sw[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_sw~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_sw(9));

-- Location: LCCOMB_X32_Y13_N24
\Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (count_sw(10) & (\Add5~19\ $ (GND))) # (!count_sw(10) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((count_sw(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_sw(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: FF_X32_Y13_N25
\count_sw[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add5~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_sw(10));

-- Location: FF_X32_Y13_N27
\count_sw[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add5~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_sw(11));

-- Location: LCCOMB_X33_Y13_N18
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (count_sw(12) & (count_sw(9) & (!count_sw(11) & !count_sw(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_sw(12),
	datab => count_sw(9),
	datac => count_sw(11),
	datad => count_sw(10),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X33_Y13_N20
\count_sw~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_sw~2_combout\ = (!\Equal5~3_combout\ & \Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~3_combout\,
	datad => \Add5~16_combout\,
	combout => \count_sw~2_combout\);

-- Location: FF_X33_Y13_N21
\count_sw[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_sw~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_sw(8));

-- Location: LCCOMB_X33_Y13_N28
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (count_sw(7) & (count_sw(8) & (!count_sw(6) & !count_sw(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_sw(7),
	datab => count_sw(8),
	datac => count_sw(6),
	datad => count_sw(5),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X32_Y13_N30
\count_sw~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_sw~4_combout\ = (\Add5~6_combout\ & !\Equal5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datad => \Equal5~3_combout\,
	combout => \count_sw~4_combout\);

-- Location: FF_X32_Y13_N31
\count_sw[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_sw~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_sw(3));

-- Location: FF_X32_Y13_N7
\count_sw[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \Add5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_sw(1));

-- Location: LCCOMB_X32_Y13_N2
\Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!count_sw(4) & (count_sw(2) & (!count_sw(3) & count_sw(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_sw(4),
	datab => count_sw(2),
	datac => count_sw(3),
	datad => count_sw(1),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X33_Y13_N2
\Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (count_sw(0) & (\Equal5~0_combout\ & (\Equal5~1_combout\ & \Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_sw(0),
	datab => \Equal5~0_combout\,
	datac => \Equal5~1_combout\,
	datad => \Equal5~2_combout\,
	combout => \Equal5~3_combout\);

-- Location: FF_X33_Y13_N31
\prs_state.tens\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \prs_state.tens~0_combout\,
	ena => \Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prs_state.tens~q\);

-- Location: LCCOMB_X33_Y13_N16
\prs_state.hundred~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \prs_state.hundred~feeder_combout\ = \prs_state.tens~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \prs_state.tens~q\,
	combout => \prs_state.hundred~feeder_combout\);

-- Location: FF_X33_Y13_N17
\prs_state.hundred\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \prs_state.hundred~feeder_combout\,
	ena => \Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prs_state.hundred~q\);

-- Location: LCCOMB_X33_Y13_N22
\prs_state.thousand~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \prs_state.thousand~feeder_combout\ = \prs_state.hundred~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prs_state.hundred~q\,
	combout => \prs_state.thousand~feeder_combout\);

-- Location: FF_X33_Y13_N23
\prs_state.thousand\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \prs_state.thousand~feeder_combout\,
	ena => \Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prs_state.thousand~q\);

-- Location: LCCOMB_X33_Y13_N24
\prs_state.unit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \prs_state.unit~0_combout\ = !\prs_state.thousand~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \prs_state.thousand~q\,
	combout => \prs_state.unit~0_combout\);

-- Location: FF_X33_Y13_N25
\prs_state.unit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \prs_state.unit~0_combout\,
	ena => \Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prs_state.unit~q\);

-- Location: LCCOMB_X33_Y16_N26
\numbers~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \numbers~0_combout\ = (\prs_state.unit~q\ & (\princ_count~10_combout\)) # (!\prs_state.unit~q\ & ((count_unit(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \princ_count~10_combout\,
	datac => count_unit(3),
	datad => \prs_state.unit~q\,
	combout => \numbers~0_combout\);

-- Location: LCCOMB_X31_Y12_N4
\count_tens~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_tens~0_combout\ = (!count_tens(0) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_tens(0),
	datad => \reset~input_o\,
	combout => \count_tens~0_combout\);

-- Location: LCCOMB_X31_Y12_N8
\count_tens[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_tens[0]~1_combout\ = ((\ini_but~input_o\ & (!\Equal0~5_combout\ & !\Equal1~0_combout\))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ini_but~input_o\,
	datac => \Equal0~5_combout\,
	datad => \Equal1~0_combout\,
	combout => \count_tens[0]~1_combout\);

-- Location: FF_X31_Y12_N5
\count_tens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_tens~0_combout\,
	ena => \count_tens[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_tens(0));

-- Location: LCCOMB_X33_Y12_N20
\princ_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \princ_count[1]~0_combout\ = ((!\prs_state.tens~q\ & \prs_state.hundred~q\)) # (!\prs_state.unit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prs_state.tens~q\,
	datac => \prs_state.unit~q\,
	datad => \prs_state.hundred~q\,
	combout => \princ_count[1]~0_combout\);

-- Location: LCCOMB_X33_Y12_N6
\princ_count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \princ_count[1]~1_combout\ = (\prs_state.tens~q\) # (!\prs_state.unit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prs_state.unit~q\,
	datac => \prs_state.tens~q\,
	combout => \princ_count[1]~1_combout\);

-- Location: LCCOMB_X32_Y12_N24
\princ_count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \princ_count[0]~2_combout\ = (\princ_count[1]~0_combout\ & (((\princ_count[1]~1_combout\)))) # (!\princ_count[1]~0_combout\ & ((\princ_count[1]~1_combout\ & ((count_tens(0)))) # (!\princ_count[1]~1_combout\ & (count_thous(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_thous(0),
	datab => count_tens(0),
	datac => \princ_count[1]~0_combout\,
	datad => \princ_count[1]~1_combout\,
	combout => \princ_count[0]~2_combout\);

-- Location: LCCOMB_X33_Y12_N24
\princ_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \princ_count[0]~3_combout\ = (\princ_count[0]~2_combout\ & (((count_unit(0)) # (!\princ_count[1]~0_combout\)))) # (!\princ_count[0]~2_combout\ & (count_hund(0) & ((\princ_count[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_hund(0),
	datab => \princ_count[0]~2_combout\,
	datac => count_unit(0),
	datad => \princ_count[1]~0_combout\,
	combout => \princ_count[0]~3_combout\);

-- Location: LCCOMB_X31_Y12_N24
\count_tens~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_tens~3_combout\ = (\Equal2~0_combout\ & (\reset~input_o\ & (count_tens(0) $ (count_tens(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => count_tens(0),
	datac => count_tens(1),
	datad => \reset~input_o\,
	combout => \count_tens~3_combout\);

-- Location: FF_X31_Y12_N25
\count_tens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_tens~3_combout\,
	ena => \count_tens[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_tens(1));

-- Location: LCCOMB_X30_Y12_N14
\count_thous~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_thous~1_combout\ = (!count_thous(0) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_thous(0),
	datad => \reset~input_o\,
	combout => \count_thous~1_combout\);

-- Location: LCCOMB_X30_Y12_N0
\count_hund~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_hund~0_combout\ = (!count_hund(0) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_hund(0),
	datad => \reset~input_o\,
	combout => \count_hund~0_combout\);

-- Location: LCCOMB_X32_Y12_N4
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = count_tens(2) $ (((count_tens(0) & count_tens(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_tens(2),
	datac => count_tens(0),
	datad => count_tens(1),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X31_Y12_N0
\count_tens~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_tens~2_combout\ = (\reset~input_o\ & (\Equal2~0_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \Equal2~0_combout\,
	datad => \Add1~0_combout\,
	combout => \count_tens~2_combout\);

-- Location: FF_X31_Y12_N1
\count_tens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_tens~2_combout\,
	ena => \count_tens[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_tens(2));

-- Location: LCCOMB_X31_Y12_N28
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ((count_tens(1)) # ((count_tens(2)) # (!count_tens(0)))) # (!count_tens(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_tens(3),
	datab => count_tens(1),
	datac => count_tens(0),
	datad => count_tens(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X30_Y12_N2
\count_thous[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_thous[2]~0_combout\ = (\ini_but~input_o\ & (!\Equal2~0_combout\ & (!\Equal1~0_combout\ & !\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ini_but~input_o\,
	datab => \Equal2~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal0~5_combout\,
	combout => \count_thous[2]~0_combout\);

-- Location: LCCOMB_X30_Y12_N4
\count_hund[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_hund[3]~1_combout\ = (\count_thous[2]~0_combout\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \count_thous[2]~0_combout\,
	combout => \count_hund[3]~1_combout\);

-- Location: FF_X30_Y12_N1
\count_hund[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_hund~0_combout\,
	ena => \count_hund[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_hund(0));

-- Location: LCCOMB_X30_Y12_N20
\count_hund~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_hund~3_combout\ = (!\count_thous[2]~2_combout\ & (\reset~input_o\ & (count_hund(1) $ (count_hund(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_thous[2]~2_combout\,
	datab => \reset~input_o\,
	datac => count_hund(1),
	datad => count_hund(0),
	combout => \count_hund~3_combout\);

-- Location: FF_X30_Y12_N21
\count_hund[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_hund~3_combout\,
	ena => \count_hund[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_hund(1));

-- Location: LCCOMB_X33_Y12_N12
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = count_hund(2) $ (((count_hund(1) & count_hund(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_hund(2),
	datac => count_hund(1),
	datad => count_hund(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X30_Y12_N24
\count_hund~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_hund~2_combout\ = (\reset~input_o\ & (!\count_thous[2]~2_combout\ & \Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \count_thous[2]~2_combout\,
	datad => \Add2~0_combout\,
	combout => \count_hund~2_combout\);

-- Location: FF_X30_Y12_N25
\count_hund[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_hund~2_combout\,
	ena => \count_hund[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_hund(2));

-- Location: LCCOMB_X33_Y12_N4
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = count_hund(3) $ (((count_hund(2) & (count_hund(1) & count_hund(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_hund(3),
	datab => count_hund(2),
	datac => count_hund(1),
	datad => count_hund(0),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X30_Y12_N28
\count_hund~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_hund~4_combout\ = (\reset~input_o\ & (!\count_thous[2]~2_combout\ & \Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \count_thous[2]~2_combout\,
	datad => \Add2~1_combout\,
	combout => \count_hund~4_combout\);

-- Location: FF_X30_Y12_N29
\count_hund[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_hund~4_combout\,
	ena => \count_hund[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_hund(3));

-- Location: LCCOMB_X30_Y12_N26
\count_thous[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_thous[2]~2_combout\ = (!count_hund(1) & (count_hund(3) & (!count_hund(2) & count_hund(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_hund(1),
	datab => count_hund(3),
	datac => count_hund(2),
	datad => count_hund(0),
	combout => \count_thous[2]~2_combout\);

-- Location: LCCOMB_X30_Y12_N8
\count_thous[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_thous[2]~3_combout\ = ((\count_thous[2]~2_combout\ & \count_thous[2]~0_combout\)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \count_thous[2]~2_combout\,
	datad => \count_thous[2]~0_combout\,
	combout => \count_thous[2]~3_combout\);

-- Location: FF_X30_Y12_N15
\count_thous[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_thous~1_combout\,
	ena => \count_thous[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_thous(0));

-- Location: LCCOMB_X30_Y12_N18
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = count_thous(2) $ (((count_thous(0) & count_thous(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_thous(0),
	datac => count_thous(1),
	datad => count_thous(2),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X30_Y12_N6
\count_thous~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_thous~5_combout\ = (\reset~input_o\ & (\count_thous[2]~4_combout\ & \Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \count_thous[2]~4_combout\,
	datad => \Add3~0_combout\,
	combout => \count_thous~5_combout\);

-- Location: FF_X30_Y12_N7
\count_thous[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_thous~5_combout\,
	ena => \count_thous[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_thous(2));

-- Location: LCCOMB_X33_Y12_N22
\Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = count_thous(3) $ (((count_thous(0) & (count_thous(2) & count_thous(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_thous(0),
	datab => count_thous(3),
	datac => count_thous(2),
	datad => count_thous(1),
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X30_Y12_N22
\count_thous~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_thous~7_combout\ = (\reset~input_o\ & (\count_thous[2]~4_combout\ & \Add3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \count_thous[2]~4_combout\,
	datad => \Add3~1_combout\,
	combout => \count_thous~7_combout\);

-- Location: FF_X30_Y12_N23
\count_thous[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_thous~7_combout\,
	ena => \count_thous[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_thous(3));

-- Location: LCCOMB_X33_Y12_N2
\count_thous[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_thous[2]~4_combout\ = (((count_thous(2)) # (count_thous(1))) # (!count_thous(3))) # (!count_thous(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_thous(0),
	datab => count_thous(3),
	datac => count_thous(2),
	datad => count_thous(1),
	combout => \count_thous[2]~4_combout\);

-- Location: LCCOMB_X30_Y12_N30
\count_thous~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_thous~6_combout\ = (\count_thous[2]~4_combout\ & (\reset~input_o\ & (count_thous(0) $ (count_thous(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_thous(0),
	datab => \count_thous[2]~4_combout\,
	datac => count_thous(1),
	datad => \reset~input_o\,
	combout => \count_thous~6_combout\);

-- Location: FF_X30_Y12_N31
\count_thous[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_gen~inputclkctrl_outclk\,
	d => \count_thous~6_combout\,
	ena => \count_thous[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_thous(1));

-- Location: LCCOMB_X33_Y12_N30
\princ_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \princ_count[1]~7_combout\ = (\princ_count[1]~1_combout\ & (((\princ_count[1]~0_combout\)))) # (!\princ_count[1]~1_combout\ & ((\princ_count[1]~0_combout\ & ((count_hund(1)))) # (!\princ_count[1]~0_combout\ & (count_thous(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \princ_count[1]~1_combout\,
	datab => count_thous(1),
	datac => count_hund(1),
	datad => \princ_count[1]~0_combout\,
	combout => \princ_count[1]~7_combout\);

-- Location: LCCOMB_X32_Y12_N2
\princ_count[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \princ_count[1]~8_combout\ = (\princ_count[1]~1_combout\ & ((\princ_count[1]~7_combout\ & ((count_unit(1)))) # (!\princ_count[1]~7_combout\ & (count_tens(1))))) # (!\princ_count[1]~1_combout\ & (((\princ_count[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \princ_count[1]~1_combout\,
	datab => count_tens(1),
	datac => \princ_count[1]~7_combout\,
	datad => count_unit(1),
	combout => \princ_count[1]~8_combout\);

-- Location: LCCOMB_X33_Y12_N18
\princ_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \princ_count~4_combout\ = (!\prs_state.tens~q\ & ((\prs_state.hundred~q\ & (count_hund(2))) # (!\prs_state.hundred~q\ & ((count_thous(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prs_state.tens~q\,
	datab => count_hund(2),
	datac => count_thous(2),
	datad => \prs_state.hundred~q\,
	combout => \princ_count~4_combout\);

-- Location: LCCOMB_X33_Y12_N28
\princ_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \princ_count~5_combout\ = (\princ_count~4_combout\) # ((count_tens(2) & \prs_state.tens~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_tens(2),
	datac => \prs_state.tens~q\,
	datad => \princ_count~4_combout\,
	combout => \princ_count~5_combout\);

-- Location: LCCOMB_X33_Y16_N20
\princ_count[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \princ_count[2]~6_combout\ = (\prs_state.unit~q\ & ((\princ_count~5_combout\))) # (!\prs_state.unit~q\ & (count_unit(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_unit(2),
	datac => \princ_count~5_combout\,
	datad => \prs_state.unit~q\,
	combout => \princ_count[2]~6_combout\);

-- Location: LCCOMB_X33_Y16_N8
\numbers~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \numbers~1_combout\ = (!\numbers~0_combout\ & ((\princ_count[1]~8_combout\ & (\princ_count[0]~3_combout\ & \princ_count[2]~6_combout\)) # (!\princ_count[1]~8_combout\ & ((!\princ_count[2]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numbers~0_combout\,
	datab => \princ_count[0]~3_combout\,
	datac => \princ_count[1]~8_combout\,
	datad => \princ_count[2]~6_combout\,
	combout => \numbers~1_combout\);

-- Location: LCCOMB_X33_Y16_N22
\numbers~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \numbers~2_combout\ = (!\numbers~0_combout\ & ((\princ_count[0]~3_combout\ & ((\princ_count[1]~8_combout\) # (!\princ_count[2]~6_combout\))) # (!\princ_count[0]~3_combout\ & (\princ_count[1]~8_combout\ & !\princ_count[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numbers~0_combout\,
	datab => \princ_count[0]~3_combout\,
	datac => \princ_count[1]~8_combout\,
	datad => \princ_count[2]~6_combout\,
	combout => \numbers~2_combout\);

-- Location: LCCOMB_X33_Y16_N10
\numbers~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \numbers~4_combout\ = (\prs_state.unit~q\ & (\princ_count~10_combout\)) # (!\prs_state.unit~q\ & ((count_unit(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \princ_count~10_combout\,
	datac => count_unit(3),
	datad => \prs_state.unit~q\,
	combout => \numbers~4_combout\);

-- Location: LCCOMB_X33_Y16_N24
\numbers~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \numbers~3_combout\ = (\prs_state.unit~q\ & ((\princ_count~5_combout\))) # (!\prs_state.unit~q\ & (count_unit(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_unit(2),
	datac => \princ_count~5_combout\,
	datad => \prs_state.unit~q\,
	combout => \numbers~3_combout\);

-- Location: LCCOMB_X33_Y16_N0
\numbers~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \numbers~5_combout\ = (\princ_count[0]~3_combout\) # ((\princ_count[1]~8_combout\ & (\numbers~4_combout\)) # (!\princ_count[1]~8_combout\ & ((\numbers~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numbers~4_combout\,
	datab => \princ_count[0]~3_combout\,
	datac => \princ_count[1]~8_combout\,
	datad => \numbers~3_combout\,
	combout => \numbers~5_combout\);

-- Location: LCCOMB_X33_Y16_N6
\numbers~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \numbers~6_combout\ = (!\numbers~0_combout\ & ((\princ_count[0]~3_combout\ & (\princ_count[1]~8_combout\ $ (!\princ_count[2]~6_combout\))) # (!\princ_count[0]~3_combout\ & (!\princ_count[1]~8_combout\ & \princ_count[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numbers~0_combout\,
	datab => \princ_count[0]~3_combout\,
	datac => \princ_count[1]~8_combout\,
	datad => \princ_count[2]~6_combout\,
	combout => \numbers~6_combout\);

-- Location: LCCOMB_X33_Y16_N12
\numbers~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \numbers~7_combout\ = (!\numbers~0_combout\ & (!\princ_count[0]~3_combout\ & (\princ_count[1]~8_combout\ & !\princ_count[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numbers~0_combout\,
	datab => \princ_count[0]~3_combout\,
	datac => \princ_count[1]~8_combout\,
	datad => \princ_count[2]~6_combout\,
	combout => \numbers~7_combout\);

-- Location: LCCOMB_X33_Y16_N2
\numbers~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \numbers~8_combout\ = (!\numbers~0_combout\ & (\princ_count[2]~6_combout\ & (\princ_count[0]~3_combout\ $ (\princ_count[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numbers~0_combout\,
	datab => \princ_count[0]~3_combout\,
	datac => \princ_count[1]~8_combout\,
	datad => \princ_count[2]~6_combout\,
	combout => \numbers~8_combout\);

-- Location: LCCOMB_X33_Y16_N16
\numbers~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \numbers~9_combout\ = (!\numbers~0_combout\ & (!\princ_count[1]~8_combout\ & (\princ_count[0]~3_combout\ $ (\princ_count[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \numbers~0_combout\,
	datab => \princ_count[0]~3_combout\,
	datac => \princ_count[1]~8_combout\,
	datad => \princ_count[2]~6_combout\,
	combout => \numbers~9_combout\);

ww_numbers(0) <= \numbers[0]~output_o\;

ww_numbers(1) <= \numbers[1]~output_o\;

ww_numbers(2) <= \numbers[2]~output_o\;

ww_numbers(3) <= \numbers[3]~output_o\;

ww_numbers(4) <= \numbers[4]~output_o\;

ww_numbers(5) <= \numbers[5]~output_o\;

ww_numbers(6) <= \numbers[6]~output_o\;

ww_numbers(7) <= \numbers[7]~output_o\;

ww_digit(0) <= \digit[0]~output_o\;

ww_digit(1) <= \digit[1]~output_o\;

ww_digit(2) <= \digit[2]~output_o\;

ww_digit(3) <= \digit[3]~output_o\;
END structure;


