-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/07/2023 18:18:01"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(64 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(32 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(64 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(32 DOWNTO 0);
SIGNAL \add_instance|sum_xors:0:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|cmapg|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:1:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:1:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c2|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c2|abc~1_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:2:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c3|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:3:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g2:0:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g2:0:abc_i|abc~1_combout\ : std_logic;
SIGNAL \add_instance|xor_gates_p0:0:xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c4|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:4:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c5|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:5:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:2:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c6|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:6:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c7|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:7:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g2:1:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g3:0:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c8|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:3:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g3:0:abc_i|abc~1_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g3:0:abc_i|abc~combout\ : std_logic;
SIGNAL \add_instance|sum_xors:8:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c9|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:9:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:4:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c10|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c10|abc~1_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:10:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c11|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:11:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g2:2:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c12|abc~3_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:5:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g2:2:abc_i|abc~combout\ : std_logic;
SIGNAL \add_instance|sum_xors:12:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c13|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:13:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c14|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c14|abc~1_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:6:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:14:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c15|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:15:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g2:3:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g3:1:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c12|abc~2_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g4:0:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:7:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g4:0:abc_i|abc~1_combout\ : std_logic;
SIGNAL \add_instance|abc_c16|abc~4_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:16:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c17|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:17:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:8:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c18|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c18|abc~1_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:18:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c19|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:19:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g2:4:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:9:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g2:4:abc_i|abc~combout\ : std_logic;
SIGNAL \add_instance|abc_c20|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:20:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c21|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:21:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c22|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c22|abc~1_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:10:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:22:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c23|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:23:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g3:2:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:11:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g3:2:abc_i|abc~1_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g3:2:abc_i|abc~2_combout\ : std_logic;
SIGNAL \add_instance|abc_c24|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:24:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c25|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:25:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c26|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c24|abc~1_combout\ : std_logic;
SIGNAL \add_instance|abc_c26|abc~1_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:12:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:26:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c27|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:27:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g2:6:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c28|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:13:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g2:6:abc_i|abc~combout\ : std_logic;
SIGNAL \add_instance|sum_xors:28:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c29|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:29:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_gates_g1:14:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c32|abc~0_combout\ : std_logic;
SIGNAL \add_instance|abc_c32|abc~1_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:30:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c31|abc~0_combout\ : std_logic;
SIGNAL \add_instance|sum_xors:31:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|abc_c32|abc~2_combout\ : std_logic;
SIGNAL \add_instance|abc_c32|abc~3_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(64 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[33]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(33),
	combout => \input_vector~combout\(33));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X1_Y8_N9
\add_instance|sum_xors:0:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:0:sum_xor_i|uneq~combout\ = \input_vector~combout\(1) $ (((\input_vector~combout\(33) $ (\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \input_vector~combout\(33),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:0:sum_xor_i|uneq~combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X1_Y8_N5
\add_instance|cmapg|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|cmapg|Bit0_G~0_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(33)) # (\input_vector~combout\(0))))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(33) & \input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \input_vector~combout\(33),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|cmapg|Bit0_G~0_combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[34]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(34),
	combout => \input_vector~combout\(34));

-- Location: LC_X1_Y8_N6
\add_instance|sum_xors:1:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:1:sum_xor_i|uneq~combout\ = \input_vector~combout\(2) $ (((\add_instance|cmapg|Bit0_G~0_combout\ $ (\input_vector~combout\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datac => \add_instance|cmapg|Bit0_G~0_combout\,
	datad => \input_vector~combout\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:1:sum_xor_i|uneq~combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[36]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(36),
	combout => \input_vector~combout\(36));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[35]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(35),
	combout => \input_vector~combout\(35));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X2_Y8_N4
\add_instance|abc_gates_g1:1:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:1:abc_i|abc~0_combout\ = (\input_vector~combout\(36) & ((\input_vector~combout\(4)) # ((\input_vector~combout\(3) & \input_vector~combout\(35))))) # (!\input_vector~combout\(36) & (\input_vector~combout\(3) & 
-- (\input_vector~combout\(35) & \input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(36),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(35),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:1:abc_i|abc~0_combout\);

-- Location: LC_X2_Y8_N8
\add_instance|abc_c2|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c2|abc~0_combout\ = (\input_vector~combout\(36) & (!\input_vector~combout\(4) & (\input_vector~combout\(3) $ (\input_vector~combout\(35))))) # (!\input_vector~combout\(36) & (\input_vector~combout\(4) & (\input_vector~combout\(3) $ 
-- (\input_vector~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1428",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(36),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(35),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c2|abc~0_combout\);

-- Location: LC_X1_Y8_N4
\add_instance|abc_c2|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c2|abc~1_combout\ = (((\input_vector~combout\(0) & \add_instance|abc_c2|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(0),
	datad => \add_instance|abc_c2|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c2|abc~1_combout\);

-- Location: LC_X2_Y8_N7
\add_instance|sum_xors:2:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:2:sum_xor_i|uneq~combout\ = \input_vector~combout\(3) $ (\input_vector~combout\(35) $ (((\add_instance|abc_gates_g1:1:abc_i|abc~0_combout\) # (\add_instance|abc_c2|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c396",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g1:1:abc_i|abc~0_combout\,
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(35),
	datad => \add_instance|abc_c2|abc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:2:sum_xor_i|uneq~combout\);

-- Location: LC_X2_Y8_N6
\add_instance|abc_c3|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c3|abc~0_combout\ = (\input_vector~combout\(3) & ((\add_instance|abc_gates_g1:1:abc_i|abc~0_combout\) # ((\input_vector~combout\(35)) # (\add_instance|abc_c2|abc~1_combout\)))) # (!\input_vector~combout\(3) & (\input_vector~combout\(35) 
-- & ((\add_instance|abc_gates_g1:1:abc_i|abc~0_combout\) # (\add_instance|abc_c2|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g1:1:abc_i|abc~0_combout\,
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(35),
	datad => \add_instance|abc_c2|abc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c3|abc~0_combout\);

-- Location: LC_X2_Y8_N2
\add_instance|sum_xors:3:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:3:sum_xor_i|uneq~combout\ = \input_vector~combout\(36) $ (((\add_instance|abc_c3|abc~0_combout\ $ (\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(36),
	datac => \add_instance|abc_c3|abc~0_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:3:sum_xor_i|uneq~combout\);

-- Location: LC_X1_Y8_N2
\add_instance|abc_gates_g2:0:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g2:0:abc_i|abc~0_combout\ = (\add_instance|abc_c2|abc~0_combout\ & ((\input_vector~combout\(2) & ((\input_vector~combout\(34)) # (\add_instance|cmapg|Bit0_G~0_combout\))) # (!\input_vector~combout\(2) & (\input_vector~combout\(34) 
-- & \add_instance|cmapg|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(34),
	datac => \add_instance|cmapg|Bit0_G~0_combout\,
	datad => \add_instance|abc_c2|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g2:0:abc_i|abc~0_combout\);

-- Location: LC_X2_Y8_N9
\add_instance|abc_gates_g2:0:abc_i|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g2:0:abc_i|abc~1_combout\ = ((\add_instance|abc_gates_g2:0:abc_i|abc~0_combout\) # ((\add_instance|abc_gates_g1:1:abc_i|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|abc_gates_g2:0:abc_i|abc~0_combout\,
	datac => \add_instance|abc_gates_g1:1:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g2:0:abc_i|abc~1_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[37]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(37),
	combout => \input_vector~combout\(37));

-- Location: LC_X1_Y8_N7
\add_instance|xor_gates_p0:0:xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|xor_gates_p0:0:xor_i|uneq~combout\ = ((\input_vector~combout\(33) $ (\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(33),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|xor_gates_p0:0:xor_i|uneq~combout\);

-- Location: LC_X1_Y8_N8
\add_instance|abc_c4|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c4|abc~0_combout\ = (\add_instance|abc_c2|abc~1_combout\ & (\add_instance|xor_gates_p0:0:xor_i|uneq~combout\ & (\input_vector~combout\(2) $ (\input_vector~combout\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \add_instance|abc_c2|abc~1_combout\,
	datac => \add_instance|xor_gates_p0:0:xor_i|uneq~combout\,
	datad => \input_vector~combout\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c4|abc~0_combout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X6_Y9_N2
\add_instance|sum_xors:4:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:4:sum_xor_i|uneq~combout\ = \input_vector~combout\(37) $ (\input_vector~combout\(5) $ (((\add_instance|abc_gates_g2:0:abc_i|abc~1_combout\) # (\add_instance|abc_c4|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c936",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:0:abc_i|abc~1_combout\,
	datab => \input_vector~combout\(37),
	datac => \add_instance|abc_c4|abc~0_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:4:sum_xor_i|uneq~combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[38]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(38),
	combout => \input_vector~combout\(38));

-- Location: LC_X6_Y9_N4
\add_instance|abc_c5|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c5|abc~0_combout\ = (\input_vector~combout\(37) & ((\add_instance|abc_gates_g2:0:abc_i|abc~1_combout\) # ((\add_instance|abc_c4|abc~0_combout\) # (\input_vector~combout\(5))))) # (!\input_vector~combout\(37) & (\input_vector~combout\(5) 
-- & ((\add_instance|abc_gates_g2:0:abc_i|abc~1_combout\) # (\add_instance|abc_c4|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:0:abc_i|abc~1_combout\,
	datab => \input_vector~combout\(37),
	datac => \add_instance|abc_c4|abc~0_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c5|abc~0_combout\);

-- Location: LC_X6_Y9_N5
\add_instance|sum_xors:5:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:5:sum_xor_i|uneq~combout\ = \input_vector~combout\(6) $ (\input_vector~combout\(38) $ (((\add_instance|abc_c5|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(38),
	datad => \add_instance|abc_c5|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:5:sum_xor_i|uneq~combout\);

-- Location: LC_X6_Y9_N8
\add_instance|abc_gates_g1:2:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:2:abc_i|abc~0_combout\ = (\input_vector~combout\(38) & ((\input_vector~combout\(6)) # ((\input_vector~combout\(5) & \input_vector~combout\(37))))) # (!\input_vector~combout\(38) & (\input_vector~combout\(5) & 
-- (\input_vector~combout\(6) & \input_vector~combout\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(38),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:2:abc_i|abc~0_combout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[39]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(39),
	combout => \input_vector~combout\(39));

-- Location: LC_X2_Y8_N5
\add_instance|abc_c6|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c6|abc~0_combout\ = (\add_instance|abc_c4|abc~0_combout\ & (\input_vector~combout\(3) $ ((\input_vector~combout\(35))))) # (!\add_instance|abc_c4|abc~0_combout\ & (\add_instance|abc_gates_g2:0:abc_i|abc~1_combout\ & 
-- (\input_vector~combout\(3) $ (\input_vector~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_c4|abc~0_combout\,
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(35),
	datad => \add_instance|abc_gates_g2:0:abc_i|abc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c6|abc~0_combout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X5_Y10_N6
\add_instance|sum_xors:6:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:6:sum_xor_i|uneq~combout\ = \input_vector~combout\(39) $ (\input_vector~combout\(7) $ (((\add_instance|abc_gates_g1:2:abc_i|abc~0_combout\) # (\add_instance|abc_c6|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c936",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g1:2:abc_i|abc~0_combout\,
	datab => \input_vector~combout\(39),
	datac => \add_instance|abc_c6|abc~0_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:6:sum_xor_i|uneq~combout\);

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[40]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(40),
	combout => \input_vector~combout\(40));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X5_Y10_N9
\add_instance|abc_c7|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c7|abc~0_combout\ = (\input_vector~combout\(39) & ((\add_instance|abc_gates_g1:2:abc_i|abc~0_combout\) # ((\add_instance|abc_c6|abc~0_combout\) # (\input_vector~combout\(7))))) # (!\input_vector~combout\(39) & (\input_vector~combout\(7) 
-- & ((\add_instance|abc_gates_g1:2:abc_i|abc~0_combout\) # (\add_instance|abc_c6|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g1:2:abc_i|abc~0_combout\,
	datab => \input_vector~combout\(39),
	datac => \add_instance|abc_c6|abc~0_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c7|abc~0_combout\);

-- Location: LC_X5_Y10_N2
\add_instance|sum_xors:7:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:7:sum_xor_i|uneq~combout\ = \input_vector~combout\(40) $ (((\input_vector~combout\(8) $ (\add_instance|abc_c7|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(40),
	datac => \input_vector~combout\(8),
	datad => \add_instance|abc_c7|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:7:sum_xor_i|uneq~combout\);

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X5_Y10_N0
\add_instance|abc_gates_g2:1:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g2:1:abc_i|abc~0_combout\ = (\input_vector~combout\(40) & (!\input_vector~combout\(8) & (\input_vector~combout\(39) $ (\input_vector~combout\(7))))) # (!\input_vector~combout\(40) & (\input_vector~combout\(8) & 
-- (\input_vector~combout\(39) $ (\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1248",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(40),
	datab => \input_vector~combout\(39),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g2:1:abc_i|abc~0_combout\);

-- Location: LC_X6_Y9_N9
\add_instance|abc_gates_g3:0:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g3:0:abc_i|abc~0_combout\ = (\input_vector~combout\(5) & (!\input_vector~combout\(37) & (\input_vector~combout\(38) $ (\input_vector~combout\(6))))) # (!\input_vector~combout\(5) & (\input_vector~combout\(37) & 
-- (\input_vector~combout\(38) $ (\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1428",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(38),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g3:0:abc_i|abc~0_combout\);

-- Location: LC_X6_Y9_N6
\add_instance|abc_c8|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c8|abc~0_combout\ = ((\add_instance|abc_gates_g2:1:abc_i|abc~0_combout\ & (\add_instance|abc_c4|abc~0_combout\ & \add_instance|abc_gates_g3:0:abc_i|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|abc_gates_g2:1:abc_i|abc~0_combout\,
	datac => \add_instance|abc_c4|abc~0_combout\,
	datad => \add_instance|abc_gates_g3:0:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c8|abc~0_combout\);

-- Location: LC_X5_Y10_N4
\add_instance|abc_gates_g1:3:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:3:abc_i|abc~0_combout\ = (\input_vector~combout\(40) & ((\input_vector~combout\(8)) # ((\input_vector~combout\(39) & \input_vector~combout\(7))))) # (!\input_vector~combout\(40) & (\input_vector~combout\(39) & 
-- (\input_vector~combout\(8) & \input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(40),
	datab => \input_vector~combout\(39),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:3:abc_i|abc~0_combout\);

-- Location: LC_X5_Y10_N5
\add_instance|abc_gates_g3:0:abc_i|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g3:0:abc_i|abc~1_combout\ = ((\add_instance|abc_gates_g1:3:abc_i|abc~0_combout\) # ((\add_instance|abc_gates_g2:1:abc_i|abc~0_combout\ & \add_instance|abc_gates_g1:2:abc_i|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|abc_gates_g2:1:abc_i|abc~0_combout\,
	datac => \add_instance|abc_gates_g1:3:abc_i|abc~0_combout\,
	datad => \add_instance|abc_gates_g1:2:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g3:0:abc_i|abc~1_combout\);

-- Location: LC_X6_Y9_N7
\add_instance|abc_gates_g3:0:abc_i|abc\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g3:0:abc_i|abc~combout\ = (\add_instance|abc_gates_g3:0:abc_i|abc~1_combout\) # ((\add_instance|abc_gates_g2:1:abc_i|abc~0_combout\ & (\add_instance|abc_gates_g2:0:abc_i|abc~1_combout\ & 
-- \add_instance|abc_gates_g3:0:abc_i|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g3:0:abc_i|abc~1_combout\,
	datab => \add_instance|abc_gates_g2:1:abc_i|abc~0_combout\,
	datac => \add_instance|abc_gates_g2:0:abc_i|abc~1_combout\,
	datad => \add_instance|abc_gates_g3:0:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g3:0:abc_i|abc~combout\);

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[41]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(41),
	combout => \input_vector~combout\(41));

-- Location: LC_X16_Y7_N5
\add_instance|sum_xors:8:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:8:sum_xor_i|uneq~combout\ = \input_vector~combout\(9) $ (\input_vector~combout\(41) $ (((\add_instance|abc_c8|abc~0_combout\) # (\add_instance|abc_gates_g3:0:abc_i|abc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a956",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \add_instance|abc_c8|abc~0_combout\,
	datac => \add_instance|abc_gates_g3:0:abc_i|abc~combout\,
	datad => \input_vector~combout\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:8:sum_xor_i|uneq~combout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[42]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(42),
	combout => \input_vector~combout\(42));

-- Location: LC_X16_Y7_N4
\add_instance|abc_c9|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c9|abc~0_combout\ = (\input_vector~combout\(9) & ((\add_instance|abc_c8|abc~0_combout\) # ((\add_instance|abc_gates_g3:0:abc_i|abc~combout\) # (\input_vector~combout\(41))))) # (!\input_vector~combout\(9) & (\input_vector~combout\(41) & 
-- ((\add_instance|abc_c8|abc~0_combout\) # (\add_instance|abc_gates_g3:0:abc_i|abc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \add_instance|abc_c8|abc~0_combout\,
	datac => \add_instance|abc_gates_g3:0:abc_i|abc~combout\,
	datad => \input_vector~combout\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c9|abc~0_combout\);

-- Location: LC_X16_Y7_N2
\add_instance|sum_xors:9:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:9:sum_xor_i|uneq~combout\ = (\input_vector~combout\(10) $ (\input_vector~combout\(42) $ (\add_instance|abc_c9|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(42),
	datad => \add_instance|abc_c9|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:9:sum_xor_i|uneq~combout\);

-- Location: LC_X16_Y7_N0
\add_instance|abc_gates_g1:4:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:4:abc_i|abc~0_combout\ = (\input_vector~combout\(10) & ((\input_vector~combout\(42)) # ((\input_vector~combout\(9) & \input_vector~combout\(41))))) # (!\input_vector~combout\(10) & (\input_vector~combout\(9) & 
-- (\input_vector~combout\(42) & \input_vector~combout\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(42),
	datad => \input_vector~combout\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:4:abc_i|abc~0_combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[43]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(43),
	combout => \input_vector~combout\(43));

-- Location: LC_X16_Y7_N8
\add_instance|abc_c10|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c10|abc~0_combout\ = (\input_vector~combout\(9) & (!\input_vector~combout\(41) & (\input_vector~combout\(10) $ (\input_vector~combout\(42))))) # (!\input_vector~combout\(9) & (\input_vector~combout\(41) & (\input_vector~combout\(10) $ 
-- (\input_vector~combout\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1428",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(42),
	datad => \input_vector~combout\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c10|abc~0_combout\);

-- Location: LC_X16_Y7_N7
\add_instance|abc_c10|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c10|abc~1_combout\ = ((\add_instance|abc_c10|abc~0_combout\ & ((\add_instance|abc_c8|abc~0_combout\) # (\add_instance|abc_gates_g3:0:abc_i|abc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|abc_c8|abc~0_combout\,
	datac => \add_instance|abc_gates_g3:0:abc_i|abc~combout\,
	datad => \add_instance|abc_c10|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c10|abc~1_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: LC_X16_Y6_N8
\add_instance|sum_xors:10:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:10:sum_xor_i|uneq~combout\ = \input_vector~combout\(43) $ (\input_vector~combout\(11) $ (((\add_instance|abc_gates_g1:4:abc_i|abc~0_combout\) # (\add_instance|abc_c10|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c936",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g1:4:abc_i|abc~0_combout\,
	datab => \input_vector~combout\(43),
	datac => \add_instance|abc_c10|abc~1_combout\,
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:10:sum_xor_i|uneq~combout\);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: LC_X16_Y6_N6
\add_instance|abc_c11|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c11|abc~0_combout\ = (\input_vector~combout\(43) & ((\add_instance|abc_gates_g1:4:abc_i|abc~0_combout\) # ((\add_instance|abc_c10|abc~1_combout\) # (\input_vector~combout\(11))))) # (!\input_vector~combout\(43) & 
-- (\input_vector~combout\(11) & ((\add_instance|abc_gates_g1:4:abc_i|abc~0_combout\) # (\add_instance|abc_c10|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g1:4:abc_i|abc~0_combout\,
	datab => \input_vector~combout\(43),
	datac => \add_instance|abc_c10|abc~1_combout\,
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c11|abc~0_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[44]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(44),
	combout => \input_vector~combout\(44));

-- Location: LC_X16_Y6_N3
\add_instance|sum_xors:11:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:11:sum_xor_i|uneq~combout\ = (\input_vector~combout\(12) $ (\add_instance|abc_c11|abc~0_combout\ $ (\input_vector~combout\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(12),
	datac => \add_instance|abc_c11|abc~0_combout\,
	datad => \input_vector~combout\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:11:sum_xor_i|uneq~combout\);

-- Location: LC_X16_Y6_N2
\add_instance|abc_gates_g2:2:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g2:2:abc_i|abc~0_combout\ = (\input_vector~combout\(11) & (!\input_vector~combout\(43) & (\input_vector~combout\(12) $ (\input_vector~combout\(44))))) # (!\input_vector~combout\(11) & (\input_vector~combout\(43) & 
-- (\input_vector~combout\(12) $ (\input_vector~combout\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1428",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(12),
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g2:2:abc_i|abc~0_combout\);

-- Location: LC_X16_Y7_N1
\add_instance|abc_c12|abc~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c12|abc~3_combout\ = (\add_instance|abc_gates_g2:2:abc_i|abc~0_combout\ & (\add_instance|abc_c10|abc~0_combout\ & ((\add_instance|abc_c8|abc~0_combout\) # (\add_instance|abc_gates_g3:0:abc_i|abc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:2:abc_i|abc~0_combout\,
	datab => \add_instance|abc_c8|abc~0_combout\,
	datac => \add_instance|abc_gates_g3:0:abc_i|abc~combout\,
	datad => \add_instance|abc_c10|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c12|abc~3_combout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[45]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(45),
	combout => \input_vector~combout\(45));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X16_Y6_N4
\add_instance|abc_gates_g1:5:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:5:abc_i|abc~0_combout\ = (\input_vector~combout\(12) & ((\input_vector~combout\(44)) # ((\input_vector~combout\(11) & \input_vector~combout\(43))))) # (!\input_vector~combout\(12) & (\input_vector~combout\(11) & 
-- (\input_vector~combout\(44) & \input_vector~combout\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(12),
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:5:abc_i|abc~0_combout\);

-- Location: LC_X16_Y6_N5
\add_instance|abc_gates_g2:2:abc_i|abc\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g2:2:abc_i|abc~combout\ = ((\add_instance|abc_gates_g1:5:abc_i|abc~0_combout\) # ((\add_instance|abc_gates_g1:4:abc_i|abc~0_combout\ & \add_instance|abc_gates_g2:2:abc_i|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g1:4:abc_i|abc~0_combout\,
	datab => \add_instance|abc_gates_g2:2:abc_i|abc~0_combout\,
	datad => \add_instance|abc_gates_g1:5:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g2:2:abc_i|abc~combout\);

-- Location: LC_X16_Y5_N8
\add_instance|sum_xors:12:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:12:sum_xor_i|uneq~combout\ = \input_vector~combout\(45) $ (\input_vector~combout\(13) $ (((\add_instance|abc_c12|abc~3_combout\) # (\add_instance|abc_gates_g2:2:abc_i|abc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c396",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_c12|abc~3_combout\,
	datab => \input_vector~combout\(45),
	datac => \input_vector~combout\(13),
	datad => \add_instance|abc_gates_g2:2:abc_i|abc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:12:sum_xor_i|uneq~combout\);

-- Location: LC_X16_Y5_N9
\add_instance|abc_c13|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c13|abc~0_combout\ = (\input_vector~combout\(45) & ((\add_instance|abc_c12|abc~3_combout\) # ((\input_vector~combout\(13)) # (\add_instance|abc_gates_g2:2:abc_i|abc~combout\)))) # (!\input_vector~combout\(45) & 
-- (\input_vector~combout\(13) & ((\add_instance|abc_c12|abc~3_combout\) # (\add_instance|abc_gates_g2:2:abc_i|abc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_c12|abc~3_combout\,
	datab => \input_vector~combout\(45),
	datac => \input_vector~combout\(13),
	datad => \add_instance|abc_gates_g2:2:abc_i|abc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c13|abc~0_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[46]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(46),
	combout => \input_vector~combout\(46));

-- Location: LC_X16_Y5_N3
\add_instance|sum_xors:13:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:13:sum_xor_i|uneq~combout\ = (\add_instance|abc_c13|abc~0_combout\ $ (\input_vector~combout\(14) $ (\input_vector~combout\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|abc_c13|abc~0_combout\,
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:13:sum_xor_i|uneq~combout\);

-- Location: LC_X16_Y5_N6
\add_instance|abc_c14|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c14|abc~0_combout\ = (\input_vector~combout\(13) & (!\input_vector~combout\(45) & (\input_vector~combout\(14) $ (\input_vector~combout\(46))))) # (!\input_vector~combout\(13) & (\input_vector~combout\(45) & (\input_vector~combout\(14) $ 
-- (\input_vector~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(45),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c14|abc~0_combout\);

-- Location: LC_X16_Y5_N2
\add_instance|abc_c14|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c14|abc~1_combout\ = ((\add_instance|abc_c14|abc~0_combout\ & ((\add_instance|abc_gates_g2:2:abc_i|abc~combout\) # (\add_instance|abc_c12|abc~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:2:abc_i|abc~combout\,
	datac => \add_instance|abc_c14|abc~0_combout\,
	datad => \add_instance|abc_c12|abc~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c14|abc~1_combout\);

-- Location: LC_X16_Y5_N4
\add_instance|abc_gates_g1:6:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:6:abc_i|abc~0_combout\ = (\input_vector~combout\(14) & ((\input_vector~combout\(46)) # ((\input_vector~combout\(13) & \input_vector~combout\(45))))) # (!\input_vector~combout\(14) & (\input_vector~combout\(13) & 
-- (\input_vector~combout\(45) & \input_vector~combout\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(45),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:6:abc_i|abc~0_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[47]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(47),
	combout => \input_vector~combout\(47));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X15_Y6_N0
\add_instance|sum_xors:14:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:14:sum_xor_i|uneq~combout\ = \input_vector~combout\(47) $ (\input_vector~combout\(15) $ (((\add_instance|abc_c14|abc~1_combout\) # (\add_instance|abc_gates_g1:6:abc_i|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e11e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_c14|abc~1_combout\,
	datab => \add_instance|abc_gates_g1:6:abc_i|abc~0_combout\,
	datac => \input_vector~combout\(47),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:14:sum_xor_i|uneq~combout\);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(16),
	combout => \input_vector~combout\(16));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[48]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(48),
	combout => \input_vector~combout\(48));

-- Location: LC_X15_Y6_N4
\add_instance|abc_c15|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c15|abc~0_combout\ = (\input_vector~combout\(47) & ((\add_instance|abc_c14|abc~1_combout\) # ((\add_instance|abc_gates_g1:6:abc_i|abc~0_combout\) # (\input_vector~combout\(15))))) # (!\input_vector~combout\(47) & 
-- (\input_vector~combout\(15) & ((\add_instance|abc_c14|abc~1_combout\) # (\add_instance|abc_gates_g1:6:abc_i|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_c14|abc~1_combout\,
	datab => \add_instance|abc_gates_g1:6:abc_i|abc~0_combout\,
	datac => \input_vector~combout\(47),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c15|abc~0_combout\);

-- Location: LC_X15_Y6_N9
\add_instance|sum_xors:15:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:15:sum_xor_i|uneq~combout\ = \input_vector~combout\(16) $ (((\input_vector~combout\(48) $ (\add_instance|abc_c15|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datac => \input_vector~combout\(48),
	datad => \add_instance|abc_c15|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:15:sum_xor_i|uneq~combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[49]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(49),
	combout => \input_vector~combout\(49));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(17),
	combout => \input_vector~combout\(17));

-- Location: LC_X15_Y6_N5
\add_instance|abc_gates_g2:3:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g2:3:abc_i|abc~0_combout\ = (\input_vector~combout\(47) & (!\input_vector~combout\(15) & (\input_vector~combout\(48) $ (\input_vector~combout\(16))))) # (!\input_vector~combout\(47) & (\input_vector~combout\(15) & 
-- (\input_vector~combout\(48) $ (\input_vector~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1428",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(47),
	datab => \input_vector~combout\(48),
	datac => \input_vector~combout\(16),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g2:3:abc_i|abc~0_combout\);

-- Location: LC_X16_Y5_N7
\add_instance|abc_gates_g3:1:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g3:1:abc_i|abc~0_combout\ = ((\add_instance|abc_gates_g2:3:abc_i|abc~0_combout\ & ((\add_instance|abc_c14|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|abc_gates_g2:3:abc_i|abc~0_combout\,
	datad => \add_instance|abc_c14|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g3:1:abc_i|abc~0_combout\);

-- Location: LC_X16_Y7_N3
\add_instance|abc_c12|abc~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c12|abc~2_combout\ = (\add_instance|abc_gates_g2:2:abc_i|abc~0_combout\ & (((\add_instance|abc_c10|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:2:abc_i|abc~0_combout\,
	datad => \add_instance|abc_c10|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c12|abc~2_combout\);

-- Location: LC_X16_Y7_N6
\add_instance|abc_gates_g4:0:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g4:0:abc_i|abc~0_combout\ = (\add_instance|abc_gates_g3:1:abc_i|abc~0_combout\ & ((\add_instance|abc_gates_g2:2:abc_i|abc~combout\) # ((\add_instance|abc_gates_g3:0:abc_i|abc~combout\ & \add_instance|abc_c12|abc~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g3:1:abc_i|abc~0_combout\,
	datab => \add_instance|abc_gates_g2:2:abc_i|abc~combout\,
	datac => \add_instance|abc_gates_g3:0:abc_i|abc~combout\,
	datad => \add_instance|abc_c12|abc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g4:0:abc_i|abc~0_combout\);

-- Location: LC_X15_Y6_N8
\add_instance|abc_gates_g1:7:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:7:abc_i|abc~0_combout\ = (\input_vector~combout\(48) & ((\input_vector~combout\(16)) # ((\input_vector~combout\(47) & \input_vector~combout\(15))))) # (!\input_vector~combout\(48) & (\input_vector~combout\(47) & 
-- (\input_vector~combout\(16) & \input_vector~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(47),
	datab => \input_vector~combout\(48),
	datac => \input_vector~combout\(16),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:7:abc_i|abc~0_combout\);

-- Location: LC_X15_Y6_N2
\add_instance|abc_gates_g4:0:abc_i|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g4:0:abc_i|abc~1_combout\ = (\add_instance|abc_gates_g4:0:abc_i|abc~0_combout\) # ((\add_instance|abc_gates_g1:7:abc_i|abc~0_combout\) # ((\add_instance|abc_gates_g2:3:abc_i|abc~0_combout\ & 
-- \add_instance|abc_gates_g1:6:abc_i|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:3:abc_i|abc~0_combout\,
	datab => \add_instance|abc_gates_g1:6:abc_i|abc~0_combout\,
	datac => \add_instance|abc_gates_g4:0:abc_i|abc~0_combout\,
	datad => \add_instance|abc_gates_g1:7:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g4:0:abc_i|abc~1_combout\);

-- Location: LC_X16_Y7_N9
\add_instance|abc_c16|abc~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c16|abc~4_combout\ = (\add_instance|abc_gates_g2:2:abc_i|abc~0_combout\ & (\add_instance|abc_c8|abc~0_combout\ & (\add_instance|abc_gates_g3:1:abc_i|abc~0_combout\ & \add_instance|abc_c10|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:2:abc_i|abc~0_combout\,
	datab => \add_instance|abc_c8|abc~0_combout\,
	datac => \add_instance|abc_gates_g3:1:abc_i|abc~0_combout\,
	datad => \add_instance|abc_c10|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c16|abc~4_combout\);

-- Location: LC_X10_Y10_N1
\add_instance|sum_xors:16:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:16:sum_xor_i|uneq~combout\ = \input_vector~combout\(49) $ (\input_vector~combout\(17) $ (((\add_instance|abc_gates_g4:0:abc_i|abc~1_combout\) # (\add_instance|abc_c16|abc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(49),
	datab => \input_vector~combout\(17),
	datac => \add_instance|abc_gates_g4:0:abc_i|abc~1_combout\,
	datad => \add_instance|abc_c16|abc~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:16:sum_xor_i|uneq~combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[50]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(50),
	combout => \input_vector~combout\(50));

-- Location: LC_X10_Y10_N4
\add_instance|abc_c17|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c17|abc~0_combout\ = (\input_vector~combout\(49) & ((\input_vector~combout\(17)) # ((\add_instance|abc_gates_g4:0:abc_i|abc~1_combout\) # (\add_instance|abc_c16|abc~4_combout\)))) # (!\input_vector~combout\(49) & 
-- (\input_vector~combout\(17) & ((\add_instance|abc_gates_g4:0:abc_i|abc~1_combout\) # (\add_instance|abc_c16|abc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(49),
	datab => \input_vector~combout\(17),
	datac => \add_instance|abc_gates_g4:0:abc_i|abc~1_combout\,
	datad => \add_instance|abc_c16|abc~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c17|abc~0_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(18),
	combout => \input_vector~combout\(18));

-- Location: LC_X10_Y10_N8
\add_instance|sum_xors:17:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:17:sum_xor_i|uneq~combout\ = \input_vector~combout\(50) $ (((\add_instance|abc_c17|abc~0_combout\ $ (\input_vector~combout\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(50),
	datac => \add_instance|abc_c17|abc~0_combout\,
	datad => \input_vector~combout\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:17:sum_xor_i|uneq~combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[51]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(51),
	combout => \input_vector~combout\(51));

-- Location: LC_X10_Y10_N3
\add_instance|abc_gates_g1:8:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:8:abc_i|abc~0_combout\ = (\input_vector~combout\(18) & ((\input_vector~combout\(50)) # ((\input_vector~combout\(49) & \input_vector~combout\(17))))) # (!\input_vector~combout\(18) & (\input_vector~combout\(49) & 
-- (\input_vector~combout\(50) & \input_vector~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datab => \input_vector~combout\(49),
	datac => \input_vector~combout\(50),
	datad => \input_vector~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:8:abc_i|abc~0_combout\);

-- Location: LC_X10_Y10_N7
\add_instance|abc_c18|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c18|abc~0_combout\ = (\input_vector~combout\(18) & (!\input_vector~combout\(50) & (\input_vector~combout\(49) $ (\input_vector~combout\(17))))) # (!\input_vector~combout\(18) & (\input_vector~combout\(50) & (\input_vector~combout\(49) $ 
-- (\input_vector~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1248",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datab => \input_vector~combout\(49),
	datac => \input_vector~combout\(50),
	datad => \input_vector~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c18|abc~0_combout\);

-- Location: LC_X10_Y10_N6
\add_instance|abc_c18|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c18|abc~1_combout\ = ((\add_instance|abc_c18|abc~0_combout\ & ((\add_instance|abc_gates_g4:0:abc_i|abc~1_combout\) # (\add_instance|abc_c16|abc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|abc_gates_g4:0:abc_i|abc~1_combout\,
	datac => \add_instance|abc_c18|abc~0_combout\,
	datad => \add_instance|abc_c16|abc~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c18|abc~1_combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(19),
	combout => \input_vector~combout\(19));

-- Location: LC_X9_Y10_N8
\add_instance|sum_xors:18:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:18:sum_xor_i|uneq~combout\ = \input_vector~combout\(51) $ (\input_vector~combout\(19) $ (((\add_instance|abc_gates_g1:8:abc_i|abc~0_combout\) # (\add_instance|abc_c18|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a956",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(51),
	datab => \add_instance|abc_gates_g1:8:abc_i|abc~0_combout\,
	datac => \add_instance|abc_c18|abc~1_combout\,
	datad => \input_vector~combout\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:18:sum_xor_i|uneq~combout\);

-- Location: LC_X9_Y10_N2
\add_instance|abc_c19|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c19|abc~0_combout\ = (\input_vector~combout\(51) & ((\add_instance|abc_gates_g1:8:abc_i|abc~0_combout\) # ((\add_instance|abc_c18|abc~1_combout\) # (\input_vector~combout\(19))))) # (!\input_vector~combout\(51) & 
-- (\input_vector~combout\(19) & ((\add_instance|abc_gates_g1:8:abc_i|abc~0_combout\) # (\add_instance|abc_c18|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(51),
	datab => \add_instance|abc_gates_g1:8:abc_i|abc~0_combout\,
	datac => \add_instance|abc_c18|abc~1_combout\,
	datad => \input_vector~combout\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c19|abc~0_combout\);

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(20),
	combout => \input_vector~combout\(20));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[52]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(52),
	combout => \input_vector~combout\(52));

-- Location: LC_X9_Y10_N0
\add_instance|sum_xors:19:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:19:sum_xor_i|uneq~combout\ = (\add_instance|abc_c19|abc~0_combout\ $ (\input_vector~combout\(20) $ (\input_vector~combout\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|abc_c19|abc~0_combout\,
	datac => \input_vector~combout\(20),
	datad => \input_vector~combout\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:19:sum_xor_i|uneq~combout\);

-- Location: LC_X9_Y10_N5
\add_instance|abc_gates_g2:4:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g2:4:abc_i|abc~0_combout\ = (\input_vector~combout\(20) & (!\input_vector~combout\(52) & (\input_vector~combout\(51) $ (\input_vector~combout\(19))))) # (!\input_vector~combout\(20) & (\input_vector~combout\(52) & 
-- (\input_vector~combout\(51) $ (\input_vector~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(20),
	datab => \input_vector~combout\(52),
	datac => \input_vector~combout\(51),
	datad => \input_vector~combout\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g2:4:abc_i|abc~0_combout\);

-- Location: LC_X9_Y10_N6
\add_instance|abc_gates_g1:9:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:9:abc_i|abc~0_combout\ = (\input_vector~combout\(20) & ((\input_vector~combout\(52)) # ((\input_vector~combout\(51) & \input_vector~combout\(19))))) # (!\input_vector~combout\(20) & (\input_vector~combout\(52) & 
-- (\input_vector~combout\(51) & \input_vector~combout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(20),
	datab => \input_vector~combout\(52),
	datac => \input_vector~combout\(51),
	datad => \input_vector~combout\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:9:abc_i|abc~0_combout\);

-- Location: LC_X10_Y10_N2
\add_instance|abc_gates_g2:4:abc_i|abc\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g2:4:abc_i|abc~combout\ = ((\add_instance|abc_gates_g1:9:abc_i|abc~0_combout\) # ((\add_instance|abc_gates_g2:4:abc_i|abc~0_combout\ & \add_instance|abc_gates_g1:8:abc_i|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:4:abc_i|abc~0_combout\,
	datac => \add_instance|abc_gates_g1:9:abc_i|abc~0_combout\,
	datad => \add_instance|abc_gates_g1:8:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g2:4:abc_i|abc~combout\);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(21),
	combout => \input_vector~combout\(21));

-- Location: LC_X10_Y10_N5
\add_instance|abc_c20|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c20|abc~0_combout\ = (\add_instance|abc_gates_g2:4:abc_i|abc~0_combout\ & (\add_instance|abc_c18|abc~0_combout\ & ((\add_instance|abc_gates_g4:0:abc_i|abc~1_combout\) # (\add_instance|abc_c16|abc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:4:abc_i|abc~0_combout\,
	datab => \add_instance|abc_gates_g4:0:abc_i|abc~1_combout\,
	datac => \add_instance|abc_c18|abc~0_combout\,
	datad => \add_instance|abc_c16|abc~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c20|abc~0_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[53]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(53),
	combout => \input_vector~combout\(53));

-- Location: LC_X10_Y6_N9
\add_instance|sum_xors:20:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:20:sum_xor_i|uneq~combout\ = \input_vector~combout\(21) $ (\input_vector~combout\(53) $ (((\add_instance|abc_gates_g2:4:abc_i|abc~combout\) # (\add_instance|abc_c20|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c936",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:4:abc_i|abc~combout\,
	datab => \input_vector~combout\(21),
	datac => \add_instance|abc_c20|abc~0_combout\,
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:20:sum_xor_i|uneq~combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(22),
	combout => \input_vector~combout\(22));

-- Location: LC_X10_Y6_N4
\add_instance|abc_c21|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c21|abc~0_combout\ = (\input_vector~combout\(21) & ((\add_instance|abc_gates_g2:4:abc_i|abc~combout\) # ((\add_instance|abc_c20|abc~0_combout\) # (\input_vector~combout\(53))))) # (!\input_vector~combout\(21) & 
-- (\input_vector~combout\(53) & ((\add_instance|abc_gates_g2:4:abc_i|abc~combout\) # (\add_instance|abc_c20|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:4:abc_i|abc~combout\,
	datab => \input_vector~combout\(21),
	datac => \add_instance|abc_c20|abc~0_combout\,
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c21|abc~0_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[54]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(54),
	combout => \input_vector~combout\(54));

-- Location: LC_X10_Y6_N8
\add_instance|sum_xors:21:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:21:sum_xor_i|uneq~combout\ = \input_vector~combout\(22) $ (((\add_instance|abc_c21|abc~0_combout\ $ (\input_vector~combout\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(22),
	datac => \add_instance|abc_c21|abc~0_combout\,
	datad => \input_vector~combout\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:21:sum_xor_i|uneq~combout\);

-- Location: LC_X10_Y6_N5
\add_instance|abc_c22|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c22|abc~0_combout\ = (\input_vector~combout\(22) & (!\input_vector~combout\(54) & (\input_vector~combout\(21) $ (\input_vector~combout\(53))))) # (!\input_vector~combout\(22) & (\input_vector~combout\(54) & (\input_vector~combout\(21) $ 
-- (\input_vector~combout\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(22),
	datab => \input_vector~combout\(54),
	datac => \input_vector~combout\(21),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c22|abc~0_combout\);

-- Location: LC_X10_Y6_N6
\add_instance|abc_c22|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c22|abc~1_combout\ = ((\add_instance|abc_c22|abc~0_combout\ & ((\add_instance|abc_gates_g2:4:abc_i|abc~combout\) # (\add_instance|abc_c20|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:4:abc_i|abc~combout\,
	datac => \add_instance|abc_c20|abc~0_combout\,
	datad => \add_instance|abc_c22|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c22|abc~1_combout\);

-- Location: LC_X10_Y6_N2
\add_instance|abc_gates_g1:10:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:10:abc_i|abc~0_combout\ = (\input_vector~combout\(22) & ((\input_vector~combout\(54)) # ((\input_vector~combout\(21) & \input_vector~combout\(53))))) # (!\input_vector~combout\(22) & (\input_vector~combout\(54) & 
-- (\input_vector~combout\(21) & \input_vector~combout\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(22),
	datab => \input_vector~combout\(54),
	datac => \input_vector~combout\(21),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:10:abc_i|abc~0_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[55]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(55),
	combout => \input_vector~combout\(55));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(23),
	combout => \input_vector~combout\(23));

-- Location: LC_X10_Y5_N5
\add_instance|sum_xors:22:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:22:sum_xor_i|uneq~combout\ = \input_vector~combout\(55) $ (\input_vector~combout\(23) $ (((\add_instance|abc_c22|abc~1_combout\) # (\add_instance|abc_gates_g1:10:abc_i|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e11e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_c22|abc~1_combout\,
	datab => \add_instance|abc_gates_g1:10:abc_i|abc~0_combout\,
	datac => \input_vector~combout\(55),
	datad => \input_vector~combout\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:22:sum_xor_i|uneq~combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(24),
	combout => \input_vector~combout\(24));

-- Location: LC_X10_Y5_N2
\add_instance|abc_c23|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c23|abc~0_combout\ = (\input_vector~combout\(55) & ((\add_instance|abc_c22|abc~1_combout\) # ((\add_instance|abc_gates_g1:10:abc_i|abc~0_combout\) # (\input_vector~combout\(23))))) # (!\input_vector~combout\(55) & 
-- (\input_vector~combout\(23) & ((\add_instance|abc_c22|abc~1_combout\) # (\add_instance|abc_gates_g1:10:abc_i|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_c22|abc~1_combout\,
	datab => \add_instance|abc_gates_g1:10:abc_i|abc~0_combout\,
	datac => \input_vector~combout\(55),
	datad => \input_vector~combout\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c23|abc~0_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[56]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(56),
	combout => \input_vector~combout\(56));

-- Location: LC_X10_Y5_N8
\add_instance|sum_xors:23:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:23:sum_xor_i|uneq~combout\ = \input_vector~combout\(24) $ (\add_instance|abc_c23|abc~0_combout\ $ (((\input_vector~combout\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(24),
	datab => \add_instance|abc_c23|abc~0_combout\,
	datad => \input_vector~combout\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:23:sum_xor_i|uneq~combout\);

-- Location: LC_X10_Y5_N6
\add_instance|abc_gates_g3:2:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g3:2:abc_i|abc~0_combout\ = (\input_vector~combout\(24) & (!\input_vector~combout\(56) & (\input_vector~combout\(55) $ (\input_vector~combout\(23))))) # (!\input_vector~combout\(24) & (\input_vector~combout\(56) & 
-- (\input_vector~combout\(55) $ (\input_vector~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(24),
	datab => \input_vector~combout\(56),
	datac => \input_vector~combout\(55),
	datad => \input_vector~combout\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g3:2:abc_i|abc~0_combout\);

-- Location: LC_X10_Y5_N4
\add_instance|abc_gates_g1:11:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:11:abc_i|abc~0_combout\ = (\input_vector~combout\(24) & ((\input_vector~combout\(56)) # ((\input_vector~combout\(55) & \input_vector~combout\(23))))) # (!\input_vector~combout\(24) & (\input_vector~combout\(56) & 
-- (\input_vector~combout\(55) & \input_vector~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(24),
	datab => \input_vector~combout\(56),
	datac => \input_vector~combout\(55),
	datad => \input_vector~combout\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:11:abc_i|abc~0_combout\);

-- Location: LC_X10_Y10_N9
\add_instance|abc_gates_g3:2:abc_i|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g3:2:abc_i|abc~1_combout\ = (\add_instance|abc_c22|abc~0_combout\ & ((\add_instance|abc_gates_g1:9:abc_i|abc~0_combout\) # ((\add_instance|abc_gates_g2:4:abc_i|abc~0_combout\ & \add_instance|abc_gates_g1:8:abc_i|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:4:abc_i|abc~0_combout\,
	datab => \add_instance|abc_c22|abc~0_combout\,
	datac => \add_instance|abc_gates_g1:9:abc_i|abc~0_combout\,
	datad => \add_instance|abc_gates_g1:8:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g3:2:abc_i|abc~1_combout\);

-- Location: LC_X10_Y5_N7
\add_instance|abc_gates_g3:2:abc_i|abc~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g3:2:abc_i|abc~2_combout\ = (\add_instance|abc_gates_g1:11:abc_i|abc~0_combout\) # ((\add_instance|abc_gates_g3:2:abc_i|abc~0_combout\ & ((\add_instance|abc_gates_g1:10:abc_i|abc~0_combout\) # 
-- (\add_instance|abc_gates_g3:2:abc_i|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g3:2:abc_i|abc~0_combout\,
	datab => \add_instance|abc_gates_g1:10:abc_i|abc~0_combout\,
	datac => \add_instance|abc_gates_g1:11:abc_i|abc~0_combout\,
	datad => \add_instance|abc_gates_g3:2:abc_i|abc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g3:2:abc_i|abc~2_combout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[57]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(57),
	combout => \input_vector~combout\(57));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(25),
	combout => \input_vector~combout\(25));

-- Location: LC_X10_Y4_N3
\add_instance|abc_c24|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c24|abc~0_combout\ = ((\add_instance|abc_gates_g3:2:abc_i|abc~0_combout\ & (\add_instance|abc_c22|abc~0_combout\ & \add_instance|abc_c20|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|abc_gates_g3:2:abc_i|abc~0_combout\,
	datac => \add_instance|abc_c22|abc~0_combout\,
	datad => \add_instance|abc_c20|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c24|abc~0_combout\);

-- Location: LC_X10_Y4_N8
\add_instance|sum_xors:24:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:24:sum_xor_i|uneq~combout\ = \input_vector~combout\(57) $ (\input_vector~combout\(25) $ (((\add_instance|abc_gates_g3:2:abc_i|abc~2_combout\) # (\add_instance|abc_c24|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c396",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g3:2:abc_i|abc~2_combout\,
	datab => \input_vector~combout\(57),
	datac => \input_vector~combout\(25),
	datad => \add_instance|abc_c24|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:24:sum_xor_i|uneq~combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[58]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(58),
	combout => \input_vector~combout\(58));

-- Location: LC_X10_Y4_N4
\add_instance|abc_c25|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c25|abc~0_combout\ = (\input_vector~combout\(57) & ((\add_instance|abc_gates_g3:2:abc_i|abc~2_combout\) # ((\input_vector~combout\(25)) # (\add_instance|abc_c24|abc~0_combout\)))) # (!\input_vector~combout\(57) & 
-- (\input_vector~combout\(25) & ((\add_instance|abc_gates_g3:2:abc_i|abc~2_combout\) # (\add_instance|abc_c24|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g3:2:abc_i|abc~2_combout\,
	datab => \input_vector~combout\(57),
	datac => \input_vector~combout\(25),
	datad => \add_instance|abc_c24|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c25|abc~0_combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(26),
	combout => \input_vector~combout\(26));

-- Location: LC_X10_Y4_N6
\add_instance|sum_xors:25:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:25:sum_xor_i|uneq~combout\ = \input_vector~combout\(58) $ (((\add_instance|abc_c25|abc~0_combout\ $ (\input_vector~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(58),
	datac => \add_instance|abc_c25|abc~0_combout\,
	datad => \input_vector~combout\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:25:sum_xor_i|uneq~combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[59]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(59),
	combout => \input_vector~combout\(59));

-- Location: LC_X10_Y4_N2
\add_instance|abc_c26|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c26|abc~0_combout\ = (\input_vector~combout\(58) & (!\input_vector~combout\(26) & (\input_vector~combout\(57) $ (\input_vector~combout\(25))))) # (!\input_vector~combout\(58) & (\input_vector~combout\(26) & (\input_vector~combout\(57) $ 
-- (\input_vector~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1428",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(58),
	datab => \input_vector~combout\(57),
	datac => \input_vector~combout\(25),
	datad => \input_vector~combout\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c26|abc~0_combout\);

-- Location: LC_X10_Y4_N7
\add_instance|abc_c24|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c24|abc~1_combout\ = ((\add_instance|abc_gates_g3:2:abc_i|abc~0_combout\ & (\add_instance|abc_c22|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|abc_gates_g3:2:abc_i|abc~0_combout\,
	datac => \add_instance|abc_c22|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c24|abc~1_combout\);

-- Location: LC_X10_Y4_N5
\add_instance|abc_c26|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c26|abc~1_combout\ = (\add_instance|abc_c26|abc~0_combout\ & ((\add_instance|abc_gates_g3:2:abc_i|abc~2_combout\) # ((\add_instance|abc_c24|abc~1_combout\ & \add_instance|abc_c20|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g3:2:abc_i|abc~2_combout\,
	datab => \add_instance|abc_c26|abc~0_combout\,
	datac => \add_instance|abc_c24|abc~1_combout\,
	datad => \add_instance|abc_c20|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c26|abc~1_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(27),
	combout => \input_vector~combout\(27));

-- Location: LC_X10_Y4_N9
\add_instance|abc_gates_g1:12:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:12:abc_i|abc~0_combout\ = (\input_vector~combout\(58) & ((\input_vector~combout\(26)) # ((\input_vector~combout\(57) & \input_vector~combout\(25))))) # (!\input_vector~combout\(58) & (\input_vector~combout\(57) & 
-- (\input_vector~combout\(25) & \input_vector~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(58),
	datab => \input_vector~combout\(57),
	datac => \input_vector~combout\(25),
	datad => \input_vector~combout\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:12:abc_i|abc~0_combout\);

-- Location: LC_X8_Y4_N7
\add_instance|sum_xors:26:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:26:sum_xor_i|uneq~combout\ = \input_vector~combout\(59) $ (\input_vector~combout\(27) $ (((\add_instance|abc_c26|abc~1_combout\) # (\add_instance|abc_gates_g1:12:abc_i|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a596",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(59),
	datab => \add_instance|abc_c26|abc~1_combout\,
	datac => \input_vector~combout\(27),
	datad => \add_instance|abc_gates_g1:12:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:26:sum_xor_i|uneq~combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[60]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(60),
	combout => \input_vector~combout\(60));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(28),
	combout => \input_vector~combout\(28));

-- Location: LC_X8_Y4_N6
\add_instance|abc_c27|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c27|abc~0_combout\ = (\input_vector~combout\(59) & ((\add_instance|abc_c26|abc~1_combout\) # ((\input_vector~combout\(27)) # (\add_instance|abc_gates_g1:12:abc_i|abc~0_combout\)))) # (!\input_vector~combout\(59) & 
-- (\input_vector~combout\(27) & ((\add_instance|abc_c26|abc~1_combout\) # (\add_instance|abc_gates_g1:12:abc_i|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fae8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(59),
	datab => \add_instance|abc_c26|abc~1_combout\,
	datac => \input_vector~combout\(27),
	datad => \add_instance|abc_gates_g1:12:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c27|abc~0_combout\);

-- Location: LC_X8_Y4_N2
\add_instance|sum_xors:27:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:27:sum_xor_i|uneq~combout\ = \input_vector~combout\(60) $ (\input_vector~combout\(28) $ ((\add_instance|abc_c27|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(60),
	datab => \input_vector~combout\(28),
	datac => \add_instance|abc_c27|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:27:sum_xor_i|uneq~combout\);

-- Location: LC_X8_Y4_N8
\add_instance|abc_gates_g2:6:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g2:6:abc_i|abc~0_combout\ = (\input_vector~combout\(59) & (!\input_vector~combout\(27) & (\input_vector~combout\(28) $ (\input_vector~combout\(60))))) # (!\input_vector~combout\(59) & (\input_vector~combout\(27) & 
-- (\input_vector~combout\(28) $ (\input_vector~combout\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1248",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(59),
	datab => \input_vector~combout\(28),
	datac => \input_vector~combout\(27),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g2:6:abc_i|abc~0_combout\);

-- Location: LC_X7_Y4_N6
\add_instance|abc_c28|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c28|abc~0_combout\ = (\add_instance|abc_c26|abc~1_combout\ & (((\add_instance|abc_gates_g2:6:abc_i|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_c26|abc~1_combout\,
	datad => \add_instance|abc_gates_g2:6:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c28|abc~0_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[61]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(61),
	combout => \input_vector~combout\(61));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(29),
	combout => \input_vector~combout\(29));

-- Location: LC_X8_Y4_N4
\add_instance|abc_gates_g1:13:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:13:abc_i|abc~0_combout\ = (\input_vector~combout\(28) & ((\input_vector~combout\(60)) # ((\input_vector~combout\(59) & \input_vector~combout\(27))))) # (!\input_vector~combout\(28) & (\input_vector~combout\(59) & 
-- (\input_vector~combout\(27) & \input_vector~combout\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(59),
	datab => \input_vector~combout\(28),
	datac => \input_vector~combout\(27),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:13:abc_i|abc~0_combout\);

-- Location: LC_X8_Y4_N5
\add_instance|abc_gates_g2:6:abc_i|abc\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g2:6:abc_i|abc~combout\ = ((\add_instance|abc_gates_g1:13:abc_i|abc~0_combout\) # ((\add_instance|abc_gates_g2:6:abc_i|abc~0_combout\ & \add_instance|abc_gates_g1:12:abc_i|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g2:6:abc_i|abc~0_combout\,
	datac => \add_instance|abc_gates_g1:13:abc_i|abc~0_combout\,
	datad => \add_instance|abc_gates_g1:12:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g2:6:abc_i|abc~combout\);

-- Location: LC_X7_Y4_N8
\add_instance|sum_xors:28:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:28:sum_xor_i|uneq~combout\ = \input_vector~combout\(61) $ (\input_vector~combout\(29) $ (((\add_instance|abc_c28|abc~0_combout\) # (\add_instance|abc_gates_g2:6:abc_i|abc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c396",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_c28|abc~0_combout\,
	datab => \input_vector~combout\(61),
	datac => \input_vector~combout\(29),
	datad => \add_instance|abc_gates_g2:6:abc_i|abc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:28:sum_xor_i|uneq~combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[62]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(62),
	combout => \input_vector~combout\(62));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(30),
	combout => \input_vector~combout\(30));

-- Location: LC_X7_Y4_N1
\add_instance|abc_c29|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c29|abc~0_combout\ = (\input_vector~combout\(61) & ((\add_instance|abc_c28|abc~0_combout\) # ((\input_vector~combout\(29)) # (\add_instance|abc_gates_g2:6:abc_i|abc~combout\)))) # (!\input_vector~combout\(61) & 
-- (\input_vector~combout\(29) & ((\add_instance|abc_c28|abc~0_combout\) # (\add_instance|abc_gates_g2:6:abc_i|abc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_c28|abc~0_combout\,
	datab => \input_vector~combout\(61),
	datac => \input_vector~combout\(29),
	datad => \add_instance|abc_gates_g2:6:abc_i|abc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c29|abc~0_combout\);

-- Location: LC_X7_Y4_N5
\add_instance|sum_xors:29:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:29:sum_xor_i|uneq~combout\ = \input_vector~combout\(62) $ (\input_vector~combout\(30) $ (((\add_instance|abc_c29|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(62),
	datab => \input_vector~combout\(30),
	datad => \add_instance|abc_c29|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:29:sum_xor_i|uneq~combout\);

-- Location: LC_X7_Y4_N3
\add_instance|abc_gates_g1:14:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_gates_g1:14:abc_i|abc~0_combout\ = (\input_vector~combout\(62) & ((\input_vector~combout\(30)) # ((\input_vector~combout\(29) & \input_vector~combout\(61))))) # (!\input_vector~combout\(62) & (\input_vector~combout\(30) & 
-- (\input_vector~combout\(29) & \input_vector~combout\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(62),
	datab => \input_vector~combout\(30),
	datac => \input_vector~combout\(29),
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_gates_g1:14:abc_i|abc~0_combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(31),
	combout => \input_vector~combout\(31));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[63]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(63),
	combout => \input_vector~combout\(63));

-- Location: LC_X7_Y4_N0
\add_instance|abc_c32|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c32|abc~0_combout\ = (\input_vector~combout\(62) & (!\input_vector~combout\(30) & (\input_vector~combout\(29) $ (\input_vector~combout\(61))))) # (!\input_vector~combout\(62) & (\input_vector~combout\(30) & (\input_vector~combout\(29) $ 
-- (\input_vector~combout\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(62),
	datab => \input_vector~combout\(30),
	datac => \input_vector~combout\(29),
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c32|abc~0_combout\);

-- Location: LC_X7_Y4_N9
\add_instance|abc_c32|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c32|abc~1_combout\ = (\add_instance|abc_c32|abc~0_combout\ & ((\add_instance|abc_gates_g2:6:abc_i|abc~combout\) # ((\add_instance|abc_c26|abc~1_combout\ & \add_instance|abc_gates_g2:6:abc_i|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_c26|abc~1_combout\,
	datab => \add_instance|abc_gates_g2:6:abc_i|abc~0_combout\,
	datac => \add_instance|abc_c32|abc~0_combout\,
	datad => \add_instance|abc_gates_g2:6:abc_i|abc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c32|abc~1_combout\);

-- Location: LC_X7_Y4_N4
\add_instance|sum_xors:30:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:30:sum_xor_i|uneq~combout\ = \input_vector~combout\(31) $ (\input_vector~combout\(63) $ (((\add_instance|abc_gates_g1:14:abc_i|abc~0_combout\) # (\add_instance|abc_c32|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c396",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g1:14:abc_i|abc~0_combout\,
	datab => \input_vector~combout\(31),
	datac => \input_vector~combout\(63),
	datad => \add_instance|abc_c32|abc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:30:sum_xor_i|uneq~combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[64]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(64),
	combout => \input_vector~combout\(64));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(32),
	combout => \input_vector~combout\(32));

-- Location: LC_X7_Y4_N7
\add_instance|abc_c31|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c31|abc~0_combout\ = (\input_vector~combout\(31) & ((\add_instance|abc_gates_g1:14:abc_i|abc~0_combout\) # ((\input_vector~combout\(63)) # (\add_instance|abc_c32|abc~1_combout\)))) # (!\input_vector~combout\(31) & 
-- (\input_vector~combout\(63) & ((\add_instance|abc_gates_g1:14:abc_i|abc~0_combout\) # (\add_instance|abc_c32|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g1:14:abc_i|abc~0_combout\,
	datab => \input_vector~combout\(31),
	datac => \input_vector~combout\(63),
	datad => \add_instance|abc_c32|abc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c31|abc~0_combout\);

-- Location: LC_X3_Y4_N4
\add_instance|sum_xors:31:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum_xors:31:sum_xor_i|uneq~combout\ = (\input_vector~combout\(64) $ (\input_vector~combout\(32) $ (\add_instance|abc_c31|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(64),
	datac => \input_vector~combout\(32),
	datad => \add_instance|abc_c31|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum_xors:31:sum_xor_i|uneq~combout\);

-- Location: LC_X7_Y4_N2
\add_instance|abc_c32|abc~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c32|abc~2_combout\ = (\input_vector~combout\(31) & ((\add_instance|abc_gates_g1:14:abc_i|abc~0_combout\) # ((\input_vector~combout\(63)) # (\add_instance|abc_c32|abc~1_combout\)))) # (!\input_vector~combout\(31) & 
-- (\input_vector~combout\(63) & ((\add_instance|abc_gates_g1:14:abc_i|abc~0_combout\) # (\add_instance|abc_c32|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|abc_gates_g1:14:abc_i|abc~0_combout\,
	datab => \input_vector~combout\(31),
	datac => \input_vector~combout\(63),
	datad => \add_instance|abc_c32|abc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c32|abc~2_combout\);

-- Location: LC_X3_Y4_N2
\add_instance|abc_c32|abc~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|abc_c32|abc~3_combout\ = ((\input_vector~combout\(64) & ((\input_vector~combout\(32)) # (\add_instance|abc_c32|abc~2_combout\))) # (!\input_vector~combout\(64) & (\input_vector~combout\(32) & \add_instance|abc_c32|abc~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(64),
	datac => \input_vector~combout\(32),
	datad => \add_instance|abc_c32|abc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|abc_c32|abc~3_combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:0:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:1:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:2:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:3:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:4:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:5:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:6:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:7:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:8:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:9:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:10:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:11:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(11));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:12:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(12));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:13:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(13));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:14:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(14));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:15:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(15));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:16:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(16));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:17:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(17));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:18:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(18));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:19:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(19));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:20:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(20));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:21:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(21));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:22:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(22));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:23:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(23));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:24:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(24));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:25:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(25));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:26:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(26));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:27:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(27));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:28:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(28));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:29:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(29));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:30:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(30));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|sum_xors:31:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(31));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|abc_c32|abc~3_combout\,
	oe => VCC,
	padio => ww_output_vector(32));
END structure;


