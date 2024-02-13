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

-- DATE "11/02/2023 22:06:48"

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
	input_vector : IN std_logic_vector(63 DOWNTO 0);
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
SIGNAL ww_input_vector : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(32 DOWNTO 0);
SIGNAL \add_instance|bkadder|xor_gates_p0:0:xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|a2:0:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a1:0:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|ha1|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:1:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|ha1|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|ha2|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a2:1:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa1|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa1|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a2:2:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|ha3|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa2|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|ha2|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|fa3|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|xor_gates_p0:2:xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:2:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:3:sum_xor_i|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:0:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g2:0:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|fa3|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa2|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|ha3|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|a3:2:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a4:1:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a1:4:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa4|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa5|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa6|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:4:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa6|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|ha5|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a2:4:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa7|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa4|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a6:0:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa8|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa9|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa5|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa10|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c5|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:5:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa10|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:2:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c6|abc~0_combout\ : std_logic;
SIGNAL \add_instance|fa13|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa13|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|a4:2:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a5:1:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa8|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa9|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa7|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a4:3:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a3:4:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|ha5|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|a1:6:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa11|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa12|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa14|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa15|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:6:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c7|abc~0_combout\ : std_logic;
SIGNAL \add_instance|fa15|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a7:0:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa14|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a6:1:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a5:2:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa13|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|ha6|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|ha7|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa19|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|a5:3:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a1:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa16|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa17|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa11|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa18|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa12|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa20|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa21|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:7:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g2:1:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:3:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g2:1:abc_i|abc~combout\ : std_logic;
SIGNAL \add_instance|fa21|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g3:0:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g3:0:abc_i|abc~1_combout\ : std_logic;
SIGNAL \add_instance|fa19|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a7:1:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a6:2:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a8:1:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a7:2:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa24|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|a4:4:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a3:5:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa17|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa26|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa20|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa20|g1|Bit0_G~1_combout\ : std_logic;
SIGNAL \add_instance|fa23|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a6:3:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa16|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a2:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|ha8|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa22|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa25|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa18|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa27|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa28|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:8:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa26|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|ha7|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|fa27|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a10:0:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa24|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa32|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a4:5:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a5:4:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa23|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa34|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa31|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa22|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a7:3:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|ha8|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|a4:6:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a3:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a1:9:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa29|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa30|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa33|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa25|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa35|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa26|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa36|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa28|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c9|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:9:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c10|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c10|abc~1_combout\ : std_logic;
SIGNAL \add_instance|fa36|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:4:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|a8:3:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa30|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a5:6:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa29|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a1:10:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa37|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa38|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa39|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|ha9|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|ha10|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa40|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa42|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa33|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa44|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa34|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a8:2:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a9:1:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa34|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa35|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a11:0:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a6:4:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a5:5:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa31|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa32|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa41|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa43|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa45|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:10:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa45|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c11|abc~0_combout\ : std_logic;
SIGNAL \add_instance|fa42|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|ha10|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|fa39|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a3:8:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a4:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa38|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a7:5:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a6:6:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa48|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa50|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa37|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a5:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a1:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa46|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa47|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa49|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa52|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa54|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a9:2:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a10:1:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa43|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa44|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa41|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a12:0:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa40|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|ha11|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa51|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa53|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa43|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa55|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:11:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:5:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~combout\ : std_logic;
SIGNAL \add_instance|fa55|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa53|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a11:1:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa53|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa54|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa52|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa48|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa49|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a2:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|ha12|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa56|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa57|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa46|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a6:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa60|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|a9:4:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a7:6:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a3:9:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a4:8:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa47|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a8:5:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa61|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa63|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa65|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa50|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa50|g1|Bit0_G~1_combout\ : std_logic;
SIGNAL \add_instance|fa51|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|ha11|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|a11:2:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a10:3:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa59|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa62|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a13:0:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa64|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa66|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c12|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:12:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c13|abc~0_combout\ : std_logic;
SIGNAL \add_instance|fa66|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa63|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa58|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa60|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa75|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|a4:9:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a5:8:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa57|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a10:4:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a8:6:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a9:5:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa73|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|ha13|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa69|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a1:13:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa67|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|ha12|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|fa68|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|a7:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa56|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa72|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa77|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa64|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa65|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa64|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a11:3:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a12:2:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa71|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa59|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa74|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa62|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a14:0:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa58|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa61|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa76|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa78|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:13:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa78|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c14|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c14|abc~1_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:6:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|fa75|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|ha14|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|ha13|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|fa81|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa68|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a1:14:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa79|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa80|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a5:10:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa67|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa224|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|a8:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa84|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa72|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa70|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a6:8:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa69|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa82|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa85|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa87|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa89|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa75|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa76|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa77|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa74|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a12:3:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a13:2:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa83|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa71|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa86|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a15:0:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa70|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa73|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa88|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa76|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa90|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:14:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa90|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c15|abc~0_combout\ : std_logic;
SIGNAL \add_instance|fa88|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa88|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa89|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa86|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a13:3:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a14:2:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa97|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa83|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa100|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a16:0:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a11:4:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa85|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa102|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|a10:5:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a9:6:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa82|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa84|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a1:15:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa91|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|a5:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa92|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa79|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa94|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|ha14|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|fa224|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a3:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a4:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa80|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a7:9:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a6:10:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa93|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa95|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa98|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|a11:5:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a12:4:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|ha15|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa81|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa99|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa101|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa87|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa103|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa104|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:15:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa102|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa100|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a14:3:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a13:4:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa111|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa97|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa114|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a16:1:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa96|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa99|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa116|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa96|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa94|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa107|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a4:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a3:13:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa92|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa109|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a6:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a2:15:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa105|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa106|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa91|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa108|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa93|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa112|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|ha16|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a12:5:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|ha15|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|fa95|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa95|g1|Bit0_G~1_combout\ : std_logic;
SIGNAL \add_instance|fa113|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa98|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa115|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa101|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa117|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa102|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa103|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa118|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g4:0:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g4:0:abc_i|abc~1_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g3:1:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:7:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g3:1:abc_i|abc~1_combout\ : std_logic;
SIGNAL \add_instance|fa104|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:16:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa115|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a3:15:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa119|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa105|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a7:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa120|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa122|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|a10:8:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a4:13:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a5:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa106|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a9:9:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a8:10:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa123|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a7:10:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a8:9:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa107|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa108|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa126|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa112|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a12:6:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|ha16|a1|prod~combout\ : std_logic;
SIGNAL \add_instance|a11:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a9:8:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa109|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa127|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa110|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa129|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa131|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa116|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a14:4:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a13:5:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa125|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa111|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa128|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa110|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa113|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a16:2:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa114|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa130|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa116|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa117|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa132|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c17|abc~0_combout\ : std_logic;
SIGNAL \add_instance|fa118|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:17:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c18|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c18|abc~1_combout\ : std_logic;
SIGNAL \add_instance|fa132|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa129|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa126|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa124|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa137|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa121|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa123|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa140|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a5:13:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a6:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa120|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa136|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa122|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa121|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a8:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa119|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a4:15:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa133|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa134|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa135|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa139|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa142|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa144|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a13:6:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a14:5:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa138|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa125|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa141|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa124|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa127|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a16:3:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa128|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa143|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa130|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa131|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa130|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa145|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:8:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:18:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa143|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa143|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa144|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa139|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa149|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa136|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa152|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a5:15:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa146|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa133|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa147|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa135|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a6:13:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a7:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa134|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa148|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a9:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa151|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|a10:9:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a11:8:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa137|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa154|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa142|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa156|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa141|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a16:4:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a12:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa140|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a14:6:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a13:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa150|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa138|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa153|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa155|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa157|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c19|abc~0_combout\ : std_logic;
SIGNAL \add_instance|fa145|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:19:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g2:4:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:9:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g2:4:abc_i|abc~combout\ : std_logic;
SIGNAL \add_instance|fa157|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa155|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa155|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa156|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa153|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a16:5:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a13:8:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a14:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa161|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa150|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa164|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a12:8:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa152|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa166|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa154|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a9:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa147|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa146|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa158|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa159|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa162|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|a8:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa148|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa160|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa163|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa151|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a10:10:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a11:9:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa149|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa165|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa167|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa168|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c20|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:20:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa168|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa166|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa167|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa166|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa165|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa171|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a7:14:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a8:13:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa159|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa173|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa162|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa158|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a7:15:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa169|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|a11:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa170|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa172|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|a11:10:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a10:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa160|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa175|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa177|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa164|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa161|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa174|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a12:9:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa163|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a16:6:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa176|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa178|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c21|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:21:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa178|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:10:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c22|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c22|abc~1_combout\ : std_logic;
SIGNAL \add_instance|fa169|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a8:15:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa179|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|a12:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa180|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa181|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|a9:13:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a10:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa170|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa182|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa172|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a13:9:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a12:10:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa171|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa184|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa175|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa186|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a15:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa176|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa177|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa176|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a16:7:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa174|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa183|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a14:8:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa173|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa185|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa187|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:22:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|a10:13:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a11:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa180|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa190|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a9:15:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa188|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa179|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa189|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa181|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a13:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa192|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa184|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa194|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a14:9:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a15:8:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa185|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa186|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa185|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa182|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa183|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa191|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a16:8:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa193|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa195|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa187|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c23|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:23:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa198|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a12:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa190|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a16:9:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a15:9:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a14:10:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa191|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa200|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa192|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa188|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa196|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa189|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a13:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa197|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa199|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa201|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa193|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa193|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa194|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa202|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:11:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g2:5:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c24|abc~0_combout\ : std_logic;
SIGNAL \add_instance|fa195|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:24:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c25|abc~0_combout\ : std_logic;
SIGNAL \add_instance|fa200|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a11:14:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a12:13:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa197|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a14:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a15:10:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa198|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa206|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|a11:15:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa203|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa204|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a15:11:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa196|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa205|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa199|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa207|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa200|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa201|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa208|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa202|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:25:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~1_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c26|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c26|abc~1_combout\ : std_logic;
SIGNAL \add_instance|fa208|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa206|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa207|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a12:15:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa209|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa203|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa210|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa205|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa212|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a13:13:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a14:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa204|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a15:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa211|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa206|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa213|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:12:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:26:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa210|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa209|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa214|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa216|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa211|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa215|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa215|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa212|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa212|g1|Bit0_G~1_combout\ : std_logic;
SIGNAL \add_instance|fa217|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c27|abc~0_combout\ : std_logic;
SIGNAL \add_instance|fa213|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:27:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa217|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g2:6:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c28|abc~0_combout\ : std_logic;
SIGNAL \add_instance|a14:14:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|a15:13:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa215|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a14:15:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa218|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa214|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa219|x1|uneq~combout\ : std_logic;
SIGNAL \add_instance|a16:12:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa216|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|a16:13:and_i|prod~combout\ : std_logic;
SIGNAL \add_instance|fa220|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:13:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g2:6:abc_i|abc~combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:28:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa218|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa221|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|fa219|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa222|x2|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c29|abc~0_combout\ : std_logic;
SIGNAL \add_instance|fa220|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:29:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa222|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa221|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|fa223|x2|uneq~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g5|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g5|abc~1_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g1:14:abc_i|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:30:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|fa223|g1|Bit0_G~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_c31|abc~0_combout\ : std_logic;
SIGNAL \add_instance|bkadder|sum_xors:31:sum_xor_i|uneq~combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g5|abc~2_combout\ : std_logic;
SIGNAL \add_instance|bkadder|abc_gates_g5|abc~3_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(63 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[48]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(48),
	combout => \input_vector~combout\(48));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(32),
	combout => \input_vector~combout\(32));

-- Location: LC_X2_Y8_N9
\add_instance|bkadder|xor_gates_p0:0:xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|xor_gates_p0:0:xor_i|uneq~combout\ = (\input_vector~combout\(0) $ (((\input_vector~combout\(48) & \input_vector~combout\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(48),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|xor_gates_p0:0:xor_i|uneq~combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[49]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(49),
	combout => \input_vector~combout\(49));

-- Location: LC_X2_Y8_N3
\add_instance|a2:0:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a2:0:and_i|prod~combout\ = (((\input_vector~combout\(49) & \input_vector~combout\(32))))

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
	datac => \input_vector~combout\(49),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a2:0:and_i|prod~combout\);

-- Location: LC_X2_Y8_N0
\add_instance|a1:0:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a1:0:and_i|prod~combout\ = ((\input_vector~combout\(48) & ((\input_vector~combout\(32)))))

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
	datab => \input_vector~combout\(48),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a1:0:and_i|prod~combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[33]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(33),
	combout => \input_vector~combout\(33));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X2_Y9_N5
\add_instance|ha1|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha1|x1|uneq~combout\ = \input_vector~combout\(1) $ (((\input_vector~combout\(48) & (\input_vector~combout\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(48),
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha1|x1|uneq~combout\);

-- Location: LC_X2_Y8_N7
\add_instance|bkadder|sum_xors:1:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:1:sum_xor_i|uneq~combout\ = \add_instance|a2:0:and_i|prod~combout\ $ (\add_instance|ha1|x1|uneq~combout\ $ (((\input_vector~combout\(0) & \add_instance|a1:0:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a2:0:and_i|prod~combout\,
	datab => \input_vector~combout\(0),
	datac => \add_instance|a1:0:and_i|prod~combout\,
	datad => \add_instance|ha1|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:1:sum_xor_i|uneq~combout\);

-- Location: LC_X2_Y9_N3
\add_instance|ha1|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha1|a1|prod~combout\ = (\input_vector~combout\(48) & (\input_vector~combout\(33) & (\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(48),
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha1|a1|prod~combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[34]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(34),
	combout => \input_vector~combout\(34));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X2_Y8_N6
\add_instance|ha2|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha2|x1|uneq~combout\ = (\input_vector~combout\(2) $ (((\input_vector~combout\(34) & \input_vector~combout\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(34),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha2|x1|uneq~combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[50]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(50),
	combout => \input_vector~combout\(50));

-- Location: LC_X2_Y8_N4
\add_instance|a2:1:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a2:1:and_i|prod~combout\ = (((\input_vector~combout\(49) & \input_vector~combout\(33))))

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
	datac => \input_vector~combout\(49),
	datad => \input_vector~combout\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a2:1:and_i|prod~combout\);

-- Location: LC_X2_Y8_N5
\add_instance|fa1|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|x2|uneq~combout\ = \add_instance|ha2|x1|uneq~combout\ $ (\add_instance|a2:1:and_i|prod~combout\ $ (((\input_vector~combout\(50) & \input_vector~combout\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ha2|x1|uneq~combout\,
	datab => \input_vector~combout\(50),
	datac => \add_instance|a2:1:and_i|prod~combout\,
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|x2|uneq~combout\);

-- Location: LC_X2_Y8_N2
\add_instance|fa1|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa1|g1|Bit0_G~0_combout\ = (\add_instance|ha2|x1|uneq~combout\ & ((\add_instance|a2:1:and_i|prod~combout\) # ((\input_vector~combout\(50) & \input_vector~combout\(32))))) # (!\add_instance|ha2|x1|uneq~combout\ & (\input_vector~combout\(50) & 
-- (\add_instance|a2:1:and_i|prod~combout\ & \input_vector~combout\(32))))

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
	dataa => \add_instance|ha2|x1|uneq~combout\,
	datab => \input_vector~combout\(50),
	datac => \add_instance|a2:1:and_i|prod~combout\,
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa1|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y9_N7
\add_instance|a2:2:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a2:2:and_i|prod~combout\ = (\input_vector~combout\(49) & (((\input_vector~combout\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(49),
	datac => \input_vector~combout\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a2:2:and_i|prod~combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[35]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(35),
	combout => \input_vector~combout\(35));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X3_Y9_N9
\add_instance|ha3|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha3|x1|uneq~combout\ = (\input_vector~combout\(3) $ (((\input_vector~combout\(48) & \input_vector~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(48),
	datac => \input_vector~combout\(35),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha3|x1|uneq~combout\);

-- Location: LC_X3_Y9_N6
\add_instance|fa2|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|x2|uneq~combout\ = \add_instance|a2:2:and_i|prod~combout\ $ (\add_instance|ha3|x1|uneq~combout\ $ (((\input_vector~combout\(50) & \input_vector~combout\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(50),
	datab => \input_vector~combout\(33),
	datac => \add_instance|a2:2:and_i|prod~combout\,
	datad => \add_instance|ha3|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|x2|uneq~combout\);

-- Location: LC_X2_Y8_N8
\add_instance|ha2|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha2|a1|prod~combout\ = ((\input_vector~combout\(34) & (\input_vector~combout\(2) & \input_vector~combout\(48))))

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
	datab => \input_vector~combout\(34),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha2|a1|prod~combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[51]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(51),
	combout => \input_vector~combout\(51));

-- Location: LC_X2_Y9_N8
\add_instance|fa3|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|x2|uneq~0_combout\ = \add_instance|fa2|x2|uneq~combout\ $ (\add_instance|ha2|a1|prod~combout\ $ (((\input_vector~combout\(51) & \input_vector~combout\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa2|x2|uneq~combout\,
	datab => \add_instance|ha2|a1|prod~combout\,
	datac => \input_vector~combout\(51),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|x2|uneq~0_combout\);

-- Location: LC_X2_Y9_N0
\add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\ = (\add_instance|fa1|g1|Bit0_G~0_combout\ & ((\add_instance|fa3|x2|uneq~0_combout\) # ((\add_instance|ha1|a1|prod~combout\ & \add_instance|fa1|x2|uneq~combout\)))) # 
-- (!\add_instance|fa1|g1|Bit0_G~0_combout\ & (\add_instance|ha1|a1|prod~combout\ & (\add_instance|fa1|x2|uneq~combout\ & \add_instance|fa3|x2|uneq~0_combout\)))

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
	dataa => \add_instance|ha1|a1|prod~combout\,
	datab => \add_instance|fa1|x2|uneq~combout\,
	datac => \add_instance|fa1|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa3|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\);

-- Location: LC_X2_Y9_N4
\add_instance|bkadder|xor_gates_p0:2:xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|xor_gates_p0:2:xor_i|uneq~combout\ = \add_instance|fa1|x2|uneq~combout\ $ (((\input_vector~combout\(48) & (\input_vector~combout\(33) & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(48),
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(1),
	datad => \add_instance|fa1|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|xor_gates_p0:2:xor_i|uneq~combout\);

-- Location: LC_X2_Y9_N2
\add_instance|bkadder|sum_xors:2:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:2:sum_xor_i|uneq~combout\ = (\add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\ $ ((\add_instance|bkadder|xor_gates_p0:2:xor_i|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|xor_gates_p0:2:xor_i|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:2:sum_xor_i|uneq~combout\);

-- Location: LC_X2_Y9_N1
\add_instance|bkadder|sum_xors:3:sum_xor_i|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:3:sum_xor_i|uneq~0_combout\ = (\add_instance|fa1|g1|Bit0_G~0_combout\ & ((\add_instance|ha1|a1|prod~combout\ & ((\add_instance|fa3|x2|uneq~0_combout\) # (!\add_instance|fa1|x2|uneq~combout\))) # 
-- (!\add_instance|ha1|a1|prod~combout\ & ((\add_instance|fa1|x2|uneq~combout\) # (!\add_instance|fa3|x2|uneq~0_combout\))))) # (!\add_instance|fa1|g1|Bit0_G~0_combout\ & (\add_instance|fa3|x2|uneq~0_combout\ $ (((\add_instance|ha1|a1|prod~combout\ & 
-- \add_instance|fa1|x2|uneq~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ha1|a1|prod~combout\,
	datab => \add_instance|fa1|x2|uneq~combout\,
	datac => \add_instance|fa1|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa3|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:3:sum_xor_i|uneq~0_combout\);

-- Location: LC_X2_Y8_N1
\add_instance|bkadder|abc_gates_g1:0:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:0:abc_i|abc~0_combout\ = (\add_instance|a2:0:and_i|prod~combout\ & ((\add_instance|ha1|x1|uneq~combout\) # ((\input_vector~combout\(0) & \add_instance|a1:0:and_i|prod~combout\)))) # 
-- (!\add_instance|a2:0:and_i|prod~combout\ & (\input_vector~combout\(0) & (\add_instance|a1:0:and_i|prod~combout\ & \add_instance|ha1|x1|uneq~combout\)))

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
	dataa => \add_instance|a2:0:and_i|prod~combout\,
	datab => \input_vector~combout\(0),
	datac => \add_instance|a1:0:and_i|prod~combout\,
	datad => \add_instance|ha1|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:0:abc_i|abc~0_combout\);

-- Location: LC_X2_Y9_N9
\add_instance|bkadder|abc_gates_g2:0:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g2:0:abc_i|abc~0_combout\ = (\add_instance|bkadder|abc_gates_g1:0:abc_i|abc~0_combout\ & (\add_instance|bkadder|xor_gates_p0:2:xor_i|uneq~combout\ & (\add_instance|fa1|g1|Bit0_G~0_combout\ $ 
-- (\add_instance|fa3|x2|uneq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|bkadder|abc_gates_g1:0:abc_i|abc~0_combout\,
	datab => \add_instance|fa1|g1|Bit0_G~0_combout\,
	datac => \add_instance|bkadder|xor_gates_p0:2:xor_i|uneq~combout\,
	datad => \add_instance|fa3|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g2:0:abc_i|abc~0_combout\);

-- Location: LC_X2_Y9_N6
\add_instance|fa3|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa3|g1|Bit0_G~0_combout\ = (\add_instance|fa2|x2|uneq~combout\ & ((\add_instance|ha2|a1|prod~combout\) # ((\input_vector~combout\(51) & \input_vector~combout\(32))))) # (!\add_instance|fa2|x2|uneq~combout\ & 
-- (\add_instance|ha2|a1|prod~combout\ & (\input_vector~combout\(51) & \input_vector~combout\(32))))

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
	dataa => \add_instance|fa2|x2|uneq~combout\,
	datab => \add_instance|ha2|a1|prod~combout\,
	datac => \input_vector~combout\(51),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa3|g1|Bit0_G~0_combout\);

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[52]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(52),
	combout => \input_vector~combout\(52));

-- Location: LC_X3_Y9_N4
\add_instance|fa2|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa2|g1|Bit0_G~0_combout\ = (\add_instance|a2:2:and_i|prod~combout\ & ((\add_instance|ha3|x1|uneq~combout\) # ((\input_vector~combout\(50) & \input_vector~combout\(33))))) # (!\add_instance|a2:2:and_i|prod~combout\ & 
-- (\input_vector~combout\(50) & (\input_vector~combout\(33) & \add_instance|ha3|x1|uneq~combout\)))

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
	dataa => \input_vector~combout\(50),
	datab => \input_vector~combout\(33),
	datac => \add_instance|a2:2:and_i|prod~combout\,
	datad => \add_instance|ha3|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa2|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y7_N8
\add_instance|ha3|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha3|a1|prod~combout\ = ((\input_vector~combout\(3) & (\input_vector~combout\(48) & \input_vector~combout\(35))))

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
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(48),
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha3|a1|prod~combout\);

-- Location: LC_X6_Y7_N7
\add_instance|a3:2:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a3:2:and_i|prod~combout\ = ((\input_vector~combout\(34) & (\input_vector~combout\(50))))

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
	datab => \input_vector~combout\(34),
	datac => \input_vector~combout\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a3:2:and_i|prod~combout\);

-- Location: LC_X6_Y7_N6
\add_instance|a4:1:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a4:1:and_i|prod~combout\ = (((\input_vector~combout\(51) & \input_vector~combout\(33))))

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
	datac => \input_vector~combout\(51),
	datad => \input_vector~combout\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a4:1:and_i|prod~combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[36]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(36),
	combout => \input_vector~combout\(36));

-- Location: LC_X6_Y7_N1
\add_instance|a1:4:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a1:4:and_i|prod~combout\ = (((\input_vector~combout\(48) & \input_vector~combout\(36))))

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
	datac => \input_vector~combout\(48),
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a1:4:and_i|prod~combout\);

-- Location: LC_X6_Y7_N2
\add_instance|fa4|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa4|x2|uneq~combout\ = \input_vector~combout\(4) $ (\add_instance|a1:4:and_i|prod~combout\ $ (((\input_vector~combout\(49) & \input_vector~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \add_instance|a1:4:and_i|prod~combout\,
	datac => \input_vector~combout\(49),
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa4|x2|uneq~combout\);

-- Location: LC_X6_Y7_N3
\add_instance|fa5|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa5|x2|uneq~0_combout\ = \add_instance|ha3|a1|prod~combout\ $ (\add_instance|a3:2:and_i|prod~combout\ $ (\add_instance|a4:1:and_i|prod~combout\ $ (\add_instance|fa4|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ha3|a1|prod~combout\,
	datab => \add_instance|a3:2:and_i|prod~combout\,
	datac => \add_instance|a4:1:and_i|prod~combout\,
	datad => \add_instance|fa4|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa5|x2|uneq~0_combout\);

-- Location: LC_X6_Y9_N3
\add_instance|fa6|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa6|x2|uneq~combout\ = \add_instance|fa2|g1|Bit0_G~0_combout\ $ (\add_instance|fa5|x2|uneq~0_combout\ $ (((\input_vector~combout\(52) & \input_vector~combout\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(52),
	datab => \add_instance|fa2|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(32),
	datad => \add_instance|fa5|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa6|x2|uneq~combout\);

-- Location: LC_X6_Y9_N2
\add_instance|bkadder|sum_xors:4:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:4:sum_xor_i|uneq~combout\ = \add_instance|fa3|g1|Bit0_G~0_combout\ $ (\add_instance|fa6|x2|uneq~combout\ $ (((\add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\) # 
-- (\add_instance|bkadder|abc_gates_g2:0:abc_i|abc~0_combout\))))

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
	dataa => \add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\,
	datab => \add_instance|bkadder|abc_gates_g2:0:abc_i|abc~0_combout\,
	datac => \add_instance|fa3|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa6|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:4:sum_xor_i|uneq~combout\);

-- Location: LC_X6_Y9_N6
\add_instance|fa6|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa6|g1|Bit0_G~0_combout\ = (\add_instance|fa2|g1|Bit0_G~0_combout\ & ((\add_instance|fa5|x2|uneq~0_combout\) # ((\input_vector~combout\(52) & \input_vector~combout\(32))))) # (!\add_instance|fa2|g1|Bit0_G~0_combout\ & 
-- (\input_vector~combout\(52) & (\input_vector~combout\(32) & \add_instance|fa5|x2|uneq~0_combout\)))

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
	dataa => \input_vector~combout\(52),
	datab => \add_instance|fa2|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(32),
	datad => \add_instance|fa5|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa6|g1|Bit0_G~0_combout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[37]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(37),
	combout => \input_vector~combout\(37));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X8_Y7_N9
\add_instance|ha5|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha5|x1|uneq~combout\ = (\input_vector~combout\(5) $ (((\input_vector~combout\(48) & \input_vector~combout\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7788",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(48),
	datab => \input_vector~combout\(37),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha5|x1|uneq~combout\);

-- Location: LC_X8_Y7_N1
\add_instance|a2:4:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a2:4:and_i|prod~combout\ = ((\input_vector~combout\(49) & ((\input_vector~combout\(36)))))

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
	datab => \input_vector~combout\(49),
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a2:4:and_i|prod~combout\);

-- Location: LC_X8_Y7_N6
\add_instance|fa7|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa7|x2|uneq~combout\ = \add_instance|ha5|x1|uneq~combout\ $ (\add_instance|a2:4:and_i|prod~combout\ $ (((\input_vector~combout\(50) & \input_vector~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(50),
	datab => \add_instance|ha5|x1|uneq~combout\,
	datac => \input_vector~combout\(35),
	datad => \add_instance|a2:4:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa7|x2|uneq~combout\);

-- Location: LC_X6_Y7_N4
\add_instance|fa4|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa4|g1|Bit0_G~0_combout\ = (\input_vector~combout\(4) & ((\add_instance|a1:4:and_i|prod~combout\) # ((\input_vector~combout\(49) & \input_vector~combout\(35))))) # (!\input_vector~combout\(4) & (\add_instance|a1:4:and_i|prod~combout\ & 
-- (\input_vector~combout\(49) & \input_vector~combout\(35))))

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
	dataa => \input_vector~combout\(4),
	datab => \add_instance|a1:4:and_i|prod~combout\,
	datac => \input_vector~combout\(49),
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa4|g1|Bit0_G~0_combout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[53]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(53),
	combout => \input_vector~combout\(53));

-- Location: LC_X7_Y7_N4
\add_instance|a6:0:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a6:0:and_i|prod~combout\ = (\input_vector~combout\(53) & (((\input_vector~combout\(32)))))

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
	dataa => \input_vector~combout\(53),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a6:0:and_i|prod~combout\);

-- Location: LC_X5_Y7_N1
\add_instance|fa8|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa8|x1|uneq~combout\ = (\input_vector~combout\(52) & (\input_vector~combout\(33) $ (((\input_vector~combout\(51) & \input_vector~combout\(34)))))) # (!\input_vector~combout\(52) & (\input_vector~combout\(51) & (\input_vector~combout\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(52),
	datab => \input_vector~combout\(51),
	datac => \input_vector~combout\(34),
	datad => \input_vector~combout\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa8|x1|uneq~combout\);

-- Location: LC_X7_Y7_N1
\add_instance|fa9|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa9|x2|uneq~0_combout\ = \add_instance|fa7|x2|uneq~combout\ $ (\add_instance|fa4|g1|Bit0_G~0_combout\ $ (\add_instance|a6:0:and_i|prod~combout\ $ (\add_instance|fa8|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa7|x2|uneq~combout\,
	datab => \add_instance|fa4|g1|Bit0_G~0_combout\,
	datac => \add_instance|a6:0:and_i|prod~combout\,
	datad => \add_instance|fa8|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa9|x2|uneq~0_combout\);

-- Location: LC_X6_Y7_N9
\add_instance|fa5|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa5|g1|Bit0_G~0_combout\ = (\add_instance|ha3|a1|prod~combout\ & ((\add_instance|fa4|x2|uneq~combout\) # (\add_instance|a3:2:and_i|prod~combout\ $ (\add_instance|a4:1:and_i|prod~combout\)))) # (!\add_instance|ha3|a1|prod~combout\ & 
-- (\add_instance|fa4|x2|uneq~combout\ & (\add_instance|a3:2:and_i|prod~combout\ $ (\add_instance|a4:1:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ha3|a1|prod~combout\,
	datab => \add_instance|a3:2:and_i|prod~combout\,
	datac => \add_instance|a4:1:and_i|prod~combout\,
	datad => \add_instance|fa4|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa5|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y7_N0
\add_instance|fa10|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa10|x2|uneq~combout\ = \add_instance|fa9|x2|uneq~0_combout\ $ (\add_instance|fa5|g1|Bit0_G~0_combout\ $ (((\add_instance|a3:2:and_i|prod~combout\ & \add_instance|a4:1:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa9|x2|uneq~0_combout\,
	datab => \add_instance|a3:2:and_i|prod~combout\,
	datac => \add_instance|a4:1:and_i|prod~combout\,
	datad => \add_instance|fa5|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa10|x2|uneq~combout\);

-- Location: LC_X6_Y9_N4
\add_instance|bkadder|abc_c5|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c5|abc~0_combout\ = (\add_instance|fa3|g1|Bit0_G~0_combout\ & ((\add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\) # ((\add_instance|bkadder|abc_gates_g2:0:abc_i|abc~0_combout\) # (\add_instance|fa6|x2|uneq~combout\)))) # 
-- (!\add_instance|fa3|g1|Bit0_G~0_combout\ & (\add_instance|fa6|x2|uneq~combout\ & ((\add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\) # (\add_instance|bkadder|abc_gates_g2:0:abc_i|abc~0_combout\))))

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
	dataa => \add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\,
	datab => \add_instance|bkadder|abc_gates_g2:0:abc_i|abc~0_combout\,
	datac => \add_instance|fa3|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa6|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c5|abc~0_combout\);

-- Location: LC_X6_Y9_N5
\add_instance|bkadder|sum_xors:5:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:5:sum_xor_i|uneq~combout\ = \add_instance|fa6|g1|Bit0_G~0_combout\ $ (\add_instance|fa10|x2|uneq~combout\ $ ((\add_instance|bkadder|abc_c5|abc~0_combout\)))

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
	dataa => \add_instance|fa6|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa10|x2|uneq~combout\,
	datac => \add_instance|bkadder|abc_c5|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:5:sum_xor_i|uneq~combout\);

-- Location: LC_X6_Y7_N5
\add_instance|fa10|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa10|g1|Bit0_G~0_combout\ = (\add_instance|fa9|x2|uneq~0_combout\ & ((\add_instance|fa5|g1|Bit0_G~0_combout\) # ((\add_instance|a3:2:and_i|prod~combout\ & \add_instance|a4:1:and_i|prod~combout\)))) # (!\add_instance|fa9|x2|uneq~0_combout\ & 
-- (\add_instance|a3:2:and_i|prod~combout\ & (\add_instance|a4:1:and_i|prod~combout\ & \add_instance|fa5|g1|Bit0_G~0_combout\)))

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
	dataa => \add_instance|fa9|x2|uneq~0_combout\,
	datab => \add_instance|a3:2:and_i|prod~combout\,
	datac => \add_instance|a4:1:and_i|prod~combout\,
	datad => \add_instance|fa5|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa10|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y9_N7
\add_instance|bkadder|abc_gates_g1:2:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:2:abc_i|abc~0_combout\ = (\add_instance|fa6|g1|Bit0_G~0_combout\ & ((\add_instance|fa10|x2|uneq~combout\) # ((\add_instance|fa3|g1|Bit0_G~0_combout\ & \add_instance|fa6|x2|uneq~combout\)))) # 
-- (!\add_instance|fa6|g1|Bit0_G~0_combout\ & (\add_instance|fa10|x2|uneq~combout\ & (\add_instance|fa3|g1|Bit0_G~0_combout\ & \add_instance|fa6|x2|uneq~combout\)))

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
	dataa => \add_instance|fa6|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa10|x2|uneq~combout\,
	datac => \add_instance|fa3|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa6|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:2:abc_i|abc~0_combout\);

-- Location: LC_X2_Y9_N7
\add_instance|bkadder|abc_c6|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c6|abc~0_combout\ = ((\add_instance|bkadder|xor_gates_p0:2:xor_i|uneq~combout\ & ((\add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\) # (\add_instance|bkadder|abc_gates_g2:0:abc_i|abc~0_combout\))))

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
	datab => \add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|xor_gates_p0:2:xor_i|uneq~combout\,
	datad => \add_instance|bkadder|abc_gates_g2:0:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c6|abc~0_combout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[54]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(54),
	combout => \input_vector~combout\(54));

-- Location: LC_X7_Y7_N6
\add_instance|fa13|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa13|x1|uneq~combout\ = (\input_vector~combout\(34) & (\input_vector~combout\(52) $ (((\input_vector~combout\(33) & \input_vector~combout\(53)))))) # (!\input_vector~combout\(34) & (((\input_vector~combout\(33) & 
-- \input_vector~combout\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(34),
	datab => \input_vector~combout\(52),
	datac => \input_vector~combout\(33),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa13|x1|uneq~combout\);

-- Location: LC_X7_Y7_N8
\add_instance|fa13|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa13|x2|uneq~combout\ = (\add_instance|fa13|x1|uneq~combout\ $ (((\input_vector~combout\(54) & \input_vector~combout\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(54),
	datac => \add_instance|fa13|x1|uneq~combout\,
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa13|x2|uneq~combout\);

-- Location: LC_X5_Y7_N2
\add_instance|a4:2:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a4:2:and_i|prod~combout\ = ((\input_vector~combout\(51) & (\input_vector~combout\(34))))

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
	datab => \input_vector~combout\(51),
	datac => \input_vector~combout\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a4:2:and_i|prod~combout\);

-- Location: LC_X5_Y7_N4
\add_instance|a5:1:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a5:1:and_i|prod~combout\ = ((\input_vector~combout\(52) & ((\input_vector~combout\(33)))))

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
	datab => \input_vector~combout\(52),
	datad => \input_vector~combout\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a5:1:and_i|prod~combout\);

-- Location: LC_X5_Y7_N3
\add_instance|fa8|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa8|g1|Bit0_G~0_combout\ = (\add_instance|a4:2:and_i|prod~combout\ & ((\add_instance|a5:1:and_i|prod~combout\) # ((\input_vector~combout\(53) & \input_vector~combout\(32))))) # (!\add_instance|a4:2:and_i|prod~combout\ & 
-- (\input_vector~combout\(53) & (\add_instance|a5:1:and_i|prod~combout\ & \input_vector~combout\(32))))

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
	dataa => \input_vector~combout\(53),
	datab => \add_instance|a4:2:and_i|prod~combout\,
	datac => \add_instance|a5:1:and_i|prod~combout\,
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa8|g1|Bit0_G~0_combout\);

-- Location: LC_X7_Y7_N7
\add_instance|fa9|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa9|g1|Bit0_G~0_combout\ = (\add_instance|fa7|x2|uneq~combout\ & ((\add_instance|fa4|g1|Bit0_G~0_combout\) # (\add_instance|a6:0:and_i|prod~combout\ $ (\add_instance|fa8|x1|uneq~combout\)))) # (!\add_instance|fa7|x2|uneq~combout\ & 
-- (\add_instance|fa4|g1|Bit0_G~0_combout\ & (\add_instance|a6:0:and_i|prod~combout\ $ (\add_instance|fa8|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa7|x2|uneq~combout\,
	datab => \add_instance|fa4|g1|Bit0_G~0_combout\,
	datac => \add_instance|a6:0:and_i|prod~combout\,
	datad => \add_instance|fa8|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa9|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y7_N5
\add_instance|fa7|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa7|g1|Bit0_G~0_combout\ = (\add_instance|ha5|x1|uneq~combout\ & ((\add_instance|a2:4:and_i|prod~combout\) # ((\input_vector~combout\(50) & \input_vector~combout\(35))))) # (!\add_instance|ha5|x1|uneq~combout\ & (\input_vector~combout\(50) & 
-- (\input_vector~combout\(35) & \add_instance|a2:4:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(50),
	datab => \add_instance|ha5|x1|uneq~combout\,
	datac => \input_vector~combout\(35),
	datad => \add_instance|a2:4:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa7|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y8_N8
\add_instance|a4:3:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a4:3:and_i|prod~combout\ = (((\input_vector~combout\(51) & \input_vector~combout\(35))))

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
	datac => \input_vector~combout\(51),
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a4:3:and_i|prod~combout\);

-- Location: LC_X8_Y7_N8
\add_instance|a3:4:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a3:4:and_i|prod~combout\ = (\input_vector~combout\(50) & (((\input_vector~combout\(36)))))

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
	dataa => \input_vector~combout\(50),
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a3:4:and_i|prod~combout\);

-- Location: LC_X8_Y7_N0
\add_instance|ha5|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha5|a1|prod~combout\ = (\input_vector~combout\(48) & (\input_vector~combout\(37) & ((\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(48),
	datab => \input_vector~combout\(37),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha5|a1|prod~combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[38]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(38),
	combout => \input_vector~combout\(38));

-- Location: LC_X7_Y8_N0
\add_instance|a1:6:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a1:6:and_i|prod~combout\ = (((\input_vector~combout\(48) & \input_vector~combout\(38))))

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
	datac => \input_vector~combout\(48),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a1:6:and_i|prod~combout\);

-- Location: LC_X7_Y8_N2
\add_instance|fa11|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa11|x2|uneq~combout\ = \input_vector~combout\(6) $ (\add_instance|a1:6:and_i|prod~combout\ $ (((\input_vector~combout\(37) & \input_vector~combout\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \add_instance|a1:6:and_i|prod~combout\,
	datac => \input_vector~combout\(37),
	datad => \input_vector~combout\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa11|x2|uneq~combout\);

-- Location: LC_X8_Y8_N9
\add_instance|fa12|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa12|x2|uneq~0_combout\ = \add_instance|a4:3:and_i|prod~combout\ $ (\add_instance|a3:4:and_i|prod~combout\ $ (\add_instance|ha5|a1|prod~combout\ $ (\add_instance|fa11|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a4:3:and_i|prod~combout\,
	datab => \add_instance|a3:4:and_i|prod~combout\,
	datac => \add_instance|ha5|a1|prod~combout\,
	datad => \add_instance|fa11|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa12|x2|uneq~0_combout\);

-- Location: LC_X7_Y7_N9
\add_instance|fa14|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa14|x1|uneq~combout\ = (\add_instance|fa7|g1|Bit0_G~0_combout\ $ (((\add_instance|fa12|x2|uneq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa7|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa12|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa14|x1|uneq~combout\);

-- Location: LC_X7_Y7_N3
\add_instance|fa15|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa15|x2|uneq~combout\ = \add_instance|fa13|x2|uneq~combout\ $ (\add_instance|fa8|g1|Bit0_G~0_combout\ $ (\add_instance|fa9|g1|Bit0_G~0_combout\ $ (\add_instance|fa14|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa13|x2|uneq~combout\,
	datab => \add_instance|fa8|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa9|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa14|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa15|x2|uneq~combout\);

-- Location: LC_X7_Y9_N4
\add_instance|bkadder|sum_xors:6:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:6:sum_xor_i|uneq~combout\ = \add_instance|fa10|g1|Bit0_G~0_combout\ $ (\add_instance|fa15|x2|uneq~combout\ $ (((\add_instance|bkadder|abc_gates_g1:2:abc_i|abc~0_combout\) # (\add_instance|bkadder|abc_c6|abc~0_combout\))))

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
	dataa => \add_instance|fa10|g1|Bit0_G~0_combout\,
	datab => \add_instance|bkadder|abc_gates_g1:2:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|abc_c6|abc~0_combout\,
	datad => \add_instance|fa15|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:6:sum_xor_i|uneq~combout\);

-- Location: LC_X7_Y9_N9
\add_instance|bkadder|abc_c7|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c7|abc~0_combout\ = (\add_instance|fa10|g1|Bit0_G~0_combout\ & ((\add_instance|bkadder|abc_gates_g1:2:abc_i|abc~0_combout\) # ((\add_instance|bkadder|abc_c6|abc~0_combout\) # (\add_instance|fa15|x2|uneq~combout\)))) # 
-- (!\add_instance|fa10|g1|Bit0_G~0_combout\ & (\add_instance|fa15|x2|uneq~combout\ & ((\add_instance|bkadder|abc_gates_g1:2:abc_i|abc~0_combout\) # (\add_instance|bkadder|abc_c6|abc~0_combout\))))

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
	dataa => \add_instance|fa10|g1|Bit0_G~0_combout\,
	datab => \add_instance|bkadder|abc_gates_g1:2:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|abc_c6|abc~0_combout\,
	datad => \add_instance|fa15|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c7|abc~0_combout\);

-- Location: LC_X7_Y7_N0
\add_instance|fa15|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa15|g1|Bit0_G~0_combout\ = (\add_instance|fa8|g1|Bit0_G~0_combout\ & ((\add_instance|fa9|g1|Bit0_G~0_combout\) # (\add_instance|fa13|x2|uneq~combout\ $ (\add_instance|fa14|x1|uneq~combout\)))) # (!\add_instance|fa8|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa9|g1|Bit0_G~0_combout\ & (\add_instance|fa13|x2|uneq~combout\ $ (\add_instance|fa14|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa13|x2|uneq~combout\,
	datab => \add_instance|fa8|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa9|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa14|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa15|g1|Bit0_G~0_combout\);

-- Location: LC_X7_Y7_N2
\add_instance|a7:0:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a7:0:and_i|prod~combout\ = (\input_vector~combout\(54) & (((\input_vector~combout\(32)))))

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
	dataa => \input_vector~combout\(54),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a7:0:and_i|prod~combout\);

-- Location: LC_X7_Y7_N5
\add_instance|fa14|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa14|g1|Bit0_G~0_combout\ = (\add_instance|fa7|g1|Bit0_G~0_combout\ & ((\add_instance|fa12|x2|uneq~0_combout\) # (\add_instance|a7:0:and_i|prod~combout\ $ (\add_instance|fa13|x1|uneq~combout\)))) # (!\add_instance|fa7|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa12|x2|uneq~0_combout\ & (\add_instance|a7:0:and_i|prod~combout\ $ (\add_instance|fa13|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a7:0:and_i|prod~combout\,
	datab => \add_instance|fa7|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa13|x1|uneq~combout\,
	datad => \add_instance|fa12|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa14|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y7_N9
\add_instance|a6:1:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a6:1:and_i|prod~combout\ = ((\input_vector~combout\(33) & (\input_vector~combout\(53))))

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
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a6:1:and_i|prod~combout\);

-- Location: LC_X5_Y7_N6
\add_instance|a5:2:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a5:2:and_i|prod~combout\ = ((\input_vector~combout\(52) & (\input_vector~combout\(34))))

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
	datab => \input_vector~combout\(52),
	datac => \input_vector~combout\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a5:2:and_i|prod~combout\);

-- Location: LC_X5_Y7_N0
\add_instance|fa13|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa13|g1|Bit0_G~0_combout\ = (\add_instance|a6:1:and_i|prod~combout\ & ((\add_instance|a5:2:and_i|prod~combout\) # ((\input_vector~combout\(54) & \input_vector~combout\(32))))) # (!\add_instance|a6:1:and_i|prod~combout\ & 
-- (\input_vector~combout\(54) & (\add_instance|a5:2:and_i|prod~combout\ & \input_vector~combout\(32))))

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
	dataa => \input_vector~combout\(54),
	datab => \add_instance|a6:1:and_i|prod~combout\,
	datac => \add_instance|a5:2:and_i|prod~combout\,
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa13|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y7_N2
\add_instance|ha6|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha6|a1|prod~combout\ = (\input_vector~combout\(50) & (\input_vector~combout\(51) & (\input_vector~combout\(35) & \input_vector~combout\(36))))

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
	dataa => \input_vector~combout\(50),
	datab => \input_vector~combout\(51),
	datac => \input_vector~combout\(35),
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha6|a1|prod~combout\);

-- Location: LC_X5_Y7_N8
\add_instance|ha7|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha7|x1|uneq~combout\ = (\input_vector~combout\(54) & (\input_vector~combout\(33) $ (((\input_vector~combout\(53) & \input_vector~combout\(34)))))) # (!\input_vector~combout\(54) & (((\input_vector~combout\(53) & 
-- \input_vector~combout\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(54),
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(53),
	datad => \input_vector~combout\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha7|x1|uneq~combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[55]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(55),
	combout => \input_vector~combout\(55));

-- Location: LC_X8_Y8_N7
\add_instance|fa19|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa19|x2|uneq~combout\ = \add_instance|ha6|a1|prod~combout\ $ (\add_instance|ha7|x1|uneq~combout\ $ (((\input_vector~combout\(55) & \input_vector~combout\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ha6|a1|prod~combout\,
	datab => \add_instance|ha7|x1|uneq~combout\,
	datac => \input_vector~combout\(55),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa19|x2|uneq~combout\);

-- Location: LC_X7_Y8_N8
\add_instance|a5:3:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a5:3:and_i|prod~combout\ = (((\input_vector~combout\(52) & \input_vector~combout\(35))))

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
	datac => \input_vector~combout\(52),
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a5:3:and_i|prod~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[39]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(39),
	combout => \input_vector~combout\(39));

-- Location: LC_X7_Y8_N4
\add_instance|a1:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a1:7:and_i|prod~combout\ = (((\input_vector~combout\(48) & \input_vector~combout\(39))))

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
	datac => \input_vector~combout\(48),
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a1:7:and_i|prod~combout\);

-- Location: LC_X7_Y8_N9
\add_instance|fa16|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa16|x2|uneq~combout\ = \input_vector~combout\(7) $ (\add_instance|a1:7:and_i|prod~combout\ $ (((\input_vector~combout\(49) & \input_vector~combout\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(49),
	datac => \add_instance|a1:7:and_i|prod~combout\,
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa16|x2|uneq~combout\);

-- Location: LC_X7_Y8_N6
\add_instance|fa17|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa17|x1|uneq~combout\ = (\input_vector~combout\(51) & (\input_vector~combout\(36) $ (((\input_vector~combout\(50) & \input_vector~combout\(37)))))) # (!\input_vector~combout\(51) & (\input_vector~combout\(50) & (\input_vector~combout\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(51),
	datab => \input_vector~combout\(50),
	datac => \input_vector~combout\(37),
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa17|x1|uneq~combout\);

-- Location: LC_X7_Y8_N1
\add_instance|fa11|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa11|g1|Bit0_G~0_combout\ = (\input_vector~combout\(6) & ((\add_instance|a1:6:and_i|prod~combout\) # ((\input_vector~combout\(49) & \input_vector~combout\(37))))) # (!\input_vector~combout\(6) & (\input_vector~combout\(49) & 
-- (\input_vector~combout\(37) & \add_instance|a1:6:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(49),
	datac => \input_vector~combout\(37),
	datad => \add_instance|a1:6:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa11|g1|Bit0_G~0_combout\);

-- Location: LC_X7_Y8_N5
\add_instance|fa18|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa18|x2|uneq~0_combout\ = \add_instance|a5:3:and_i|prod~combout\ $ (\add_instance|fa16|x2|uneq~combout\ $ (\add_instance|fa17|x1|uneq~combout\ $ (\add_instance|fa11|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a5:3:and_i|prod~combout\,
	datab => \add_instance|fa16|x2|uneq~combout\,
	datac => \add_instance|fa17|x1|uneq~combout\,
	datad => \add_instance|fa11|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa18|x2|uneq~0_combout\);

-- Location: LC_X8_Y8_N0
\add_instance|fa12|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa12|g1|Bit0_G~0_combout\ = (\add_instance|ha5|a1|prod~combout\ & ((\add_instance|fa11|x2|uneq~combout\) # (\add_instance|a4:3:and_i|prod~combout\ $ (\add_instance|a3:4:and_i|prod~combout\)))) # (!\add_instance|ha5|a1|prod~combout\ & 
-- (\add_instance|fa11|x2|uneq~combout\ & (\add_instance|a4:3:and_i|prod~combout\ $ (\add_instance|a3:4:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a4:3:and_i|prod~combout\,
	datab => \add_instance|a3:4:and_i|prod~combout\,
	datac => \add_instance|ha5|a1|prod~combout\,
	datad => \add_instance|fa11|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa12|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y8_N1
\add_instance|fa20|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa20|x1|uneq~combout\ = \add_instance|fa18|x2|uneq~0_combout\ $ ((((\add_instance|fa12|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa18|x2|uneq~0_combout\,
	datac => \add_instance|fa12|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa20|x1|uneq~combout\);

-- Location: LC_X8_Y8_N4
\add_instance|fa21|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa21|x2|uneq~combout\ = \add_instance|fa14|g1|Bit0_G~0_combout\ $ (\add_instance|fa13|g1|Bit0_G~0_combout\ $ (\add_instance|fa19|x2|uneq~combout\ $ (\add_instance|fa20|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa14|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa13|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa19|x2|uneq~combout\,
	datad => \add_instance|fa20|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa21|x2|uneq~combout\);

-- Location: LC_X7_Y9_N5
\add_instance|bkadder|sum_xors:7:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:7:sum_xor_i|uneq~combout\ = (\add_instance|bkadder|abc_c7|abc~0_combout\ $ (\add_instance|fa15|g1|Bit0_G~0_combout\ $ (\add_instance|fa21|x2|uneq~combout\)))

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
	datab => \add_instance|bkadder|abc_c7|abc~0_combout\,
	datac => \add_instance|fa15|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa21|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:7:sum_xor_i|uneq~combout\);

-- Location: LC_X7_Y9_N6
\add_instance|bkadder|abc_gates_g2:1:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g2:1:abc_i|abc~0_combout\ = (\add_instance|fa10|g1|Bit0_G~0_combout\ & (!\add_instance|fa15|x2|uneq~combout\ & (\add_instance|fa15|g1|Bit0_G~0_combout\ $ (\add_instance|fa21|x2|uneq~combout\)))) # 
-- (!\add_instance|fa10|g1|Bit0_G~0_combout\ & (\add_instance|fa15|x2|uneq~combout\ & (\add_instance|fa15|g1|Bit0_G~0_combout\ $ (\add_instance|fa21|x2|uneq~combout\))))

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
	dataa => \add_instance|fa10|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa15|x2|uneq~combout\,
	datac => \add_instance|fa15|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa21|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g2:1:abc_i|abc~0_combout\);

-- Location: LC_X7_Y9_N8
\add_instance|bkadder|abc_gates_g1:3:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:3:abc_i|abc~0_combout\ = (\add_instance|fa15|g1|Bit0_G~0_combout\ & ((\add_instance|fa21|x2|uneq~combout\) # ((\add_instance|fa10|g1|Bit0_G~0_combout\ & \add_instance|fa15|x2|uneq~combout\)))) # 
-- (!\add_instance|fa15|g1|Bit0_G~0_combout\ & (\add_instance|fa10|g1|Bit0_G~0_combout\ & (\add_instance|fa15|x2|uneq~combout\ & \add_instance|fa21|x2|uneq~combout\)))

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
	dataa => \add_instance|fa10|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa15|x2|uneq~combout\,
	datac => \add_instance|fa15|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa21|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:3:abc_i|abc~0_combout\);

-- Location: LC_X7_Y9_N2
\add_instance|bkadder|abc_gates_g2:1:abc_i|abc\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g2:1:abc_i|abc~combout\ = ((\add_instance|bkadder|abc_gates_g1:3:abc_i|abc~0_combout\) # ((\add_instance|bkadder|abc_gates_g1:2:abc_i|abc~0_combout\ & \add_instance|bkadder|abc_gates_g2:1:abc_i|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|bkadder|abc_gates_g1:2:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g2:1:abc_i|abc~0_combout\,
	datad => \add_instance|bkadder|abc_gates_g1:3:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g2:1:abc_i|abc~combout\);

-- Location: LC_X8_Y8_N5
\add_instance|fa21|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa21|g1|Bit0_G~0_combout\ = (\add_instance|fa14|g1|Bit0_G~0_combout\ & ((\add_instance|fa13|g1|Bit0_G~0_combout\) # (\add_instance|fa19|x2|uneq~combout\ $ (\add_instance|fa20|x1|uneq~combout\)))) # (!\add_instance|fa14|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa13|g1|Bit0_G~0_combout\ & (\add_instance|fa19|x2|uneq~combout\ $ (\add_instance|fa20|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa14|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa13|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa19|x2|uneq~combout\,
	datad => \add_instance|fa20|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa21|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y9_N8
\add_instance|bkadder|abc_gates_g3:0:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g3:0:abc_i|abc~0_combout\ = (\add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\ & ((\add_instance|fa3|g1|Bit0_G~0_combout\ $ (\add_instance|fa6|x2|uneq~combout\)))) # 
-- (!\add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\ & (\add_instance|bkadder|abc_gates_g2:0:abc_i|abc~0_combout\ & (\add_instance|fa3|g1|Bit0_G~0_combout\ $ (\add_instance|fa6|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ee0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|bkadder|abc_gates_g1:1:abc_i|abc~0_combout\,
	datab => \add_instance|bkadder|abc_gates_g2:0:abc_i|abc~0_combout\,
	datac => \add_instance|fa3|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa6|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g3:0:abc_i|abc~0_combout\);

-- Location: LC_X6_Y9_N9
\add_instance|bkadder|abc_gates_g3:0:abc_i|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g3:0:abc_i|abc~1_combout\ = (\add_instance|bkadder|abc_gates_g2:1:abc_i|abc~0_combout\ & (\add_instance|bkadder|abc_gates_g3:0:abc_i|abc~0_combout\ & (\add_instance|fa6|g1|Bit0_G~0_combout\ $ 
-- (\add_instance|fa10|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa6|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa10|x2|uneq~combout\,
	datac => \add_instance|bkadder|abc_gates_g2:1:abc_i|abc~0_combout\,
	datad => \add_instance|bkadder|abc_gates_g3:0:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g3:0:abc_i|abc~1_combout\);

-- Location: LC_X8_Y8_N6
\add_instance|fa19|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa19|g1|Bit0_G~0_combout\ = (\add_instance|ha6|a1|prod~combout\ & ((\add_instance|ha7|x1|uneq~combout\) # ((\input_vector~combout\(55) & \input_vector~combout\(32))))) # (!\add_instance|ha6|a1|prod~combout\ & 
-- (\add_instance|ha7|x1|uneq~combout\ & (\input_vector~combout\(55) & \input_vector~combout\(32))))

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
	dataa => \add_instance|ha6|a1|prod~combout\,
	datab => \add_instance|ha7|x1|uneq~combout\,
	datac => \input_vector~combout\(55),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa19|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y7_N7
\add_instance|a7:1:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a7:1:and_i|prod~combout\ = ((\input_vector~combout\(33) & ((\input_vector~combout\(54)))))

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
	datab => \input_vector~combout\(33),
	datad => \input_vector~combout\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a7:1:and_i|prod~combout\);

-- Location: LC_X5_Y8_N9
\add_instance|a6:2:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a6:2:and_i|prod~combout\ = (((\input_vector~combout\(34) & \input_vector~combout\(53))))

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
	datac => \input_vector~combout\(34),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a6:2:and_i|prod~combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[56]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(56),
	combout => \input_vector~combout\(56));

-- Location: LC_X3_Y9_N2
\add_instance|a8:1:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a8:1:and_i|prod~combout\ = ((\input_vector~combout\(33) & ((\input_vector~combout\(55)))))

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
	datab => \input_vector~combout\(33),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a8:1:and_i|prod~combout\);

-- Location: LC_X5_Y8_N3
\add_instance|a7:2:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a7:2:and_i|prod~combout\ = ((\input_vector~combout\(54) & (\input_vector~combout\(34))))

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
	datab => \input_vector~combout\(54),
	datac => \input_vector~combout\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a7:2:and_i|prod~combout\);

-- Location: LC_X3_Y8_N9
\add_instance|fa24|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa24|x2|uneq~combout\ = \add_instance|a8:1:and_i|prod~combout\ $ (\add_instance|a7:2:and_i|prod~combout\ $ (((\input_vector~combout\(56) & \input_vector~combout\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(56),
	datab => \add_instance|a8:1:and_i|prod~combout\,
	datac => \input_vector~combout\(32),
	datad => \add_instance|a7:2:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa24|x2|uneq~combout\);

-- Location: LC_X8_Y7_N7
\add_instance|a4:4:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a4:4:and_i|prod~combout\ = ((\input_vector~combout\(51) & ((\input_vector~combout\(36)))))

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
	datab => \input_vector~combout\(51),
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a4:4:and_i|prod~combout\);

-- Location: LC_X8_Y7_N3
\add_instance|a3:5:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a3:5:and_i|prod~combout\ = (\input_vector~combout\(50) & (((\input_vector~combout\(37)))))

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
	dataa => \input_vector~combout\(50),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a3:5:and_i|prod~combout\);

-- Location: LC_X8_Y7_N4
\add_instance|fa17|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa17|g1|Bit0_G~0_combout\ = (\add_instance|a4:4:and_i|prod~combout\ & ((\add_instance|a3:5:and_i|prod~combout\) # ((\input_vector~combout\(52) & \input_vector~combout\(35))))) # (!\add_instance|a4:4:and_i|prod~combout\ & 
-- (\input_vector~combout\(52) & (\input_vector~combout\(35) & \add_instance|a3:5:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(52),
	datab => \add_instance|a4:4:and_i|prod~combout\,
	datac => \input_vector~combout\(35),
	datad => \add_instance|a3:5:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa17|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y8_N6
\add_instance|fa26|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa26|x2|uneq~combout\ = \add_instance|fa24|x2|uneq~combout\ $ (\add_instance|fa17|g1|Bit0_G~0_combout\ $ (((\add_instance|a7:1:and_i|prod~combout\ & \add_instance|a6:2:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a7:1:and_i|prod~combout\,
	datab => \add_instance|a6:2:and_i|prod~combout\,
	datac => \add_instance|fa24|x2|uneq~combout\,
	datad => \add_instance|fa17|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa26|x2|uneq~combout\);

-- Location: LC_X8_Y8_N2
\add_instance|fa20|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa20|g1|Bit0_G~0_combout\ = (\add_instance|a4:3:and_i|prod~combout\ & (\add_instance|a3:4:and_i|prod~combout\ $ (((\input_vector~combout\(55) & \input_vector~combout\(32)))))) # (!\add_instance|a4:3:and_i|prod~combout\ & 
-- (((\input_vector~combout\(55) & \input_vector~combout\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a4:3:and_i|prod~combout\,
	datab => \add_instance|a3:4:and_i|prod~combout\,
	datac => \input_vector~combout\(55),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa20|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y8_N3
\add_instance|fa20|g1|Bit0_G~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa20|g1|Bit0_G~1_combout\ = (\add_instance|fa18|x2|uneq~0_combout\ & ((\add_instance|fa12|g1|Bit0_G~0_combout\) # (\add_instance|ha7|x1|uneq~combout\ $ (\add_instance|fa20|g1|Bit0_G~0_combout\)))) # (!\add_instance|fa18|x2|uneq~0_combout\ & 
-- (\add_instance|fa12|g1|Bit0_G~0_combout\ & (\add_instance|ha7|x1|uneq~combout\ $ (\add_instance|fa20|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa18|x2|uneq~0_combout\,
	datab => \add_instance|ha7|x1|uneq~combout\,
	datac => \add_instance|fa12|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa20|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa20|g1|Bit0_G~1_combout\);

-- Location: LC_X3_Y7_N3
\add_instance|fa23|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa23|x1|uneq~combout\ = (\input_vector~combout\(52) & (\input_vector~combout\(36) $ (((\input_vector~combout\(51) & \input_vector~combout\(37)))))) # (!\input_vector~combout\(52) & (\input_vector~combout\(51) & 
-- ((\input_vector~combout\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(52),
	datab => \input_vector~combout\(51),
	datac => \input_vector~combout\(36),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa23|x1|uneq~combout\);

-- Location: LC_X3_Y7_N9
\add_instance|a6:3:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a6:3:and_i|prod~combout\ = ((\input_vector~combout\(53) & ((\input_vector~combout\(35)))))

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
	datab => \input_vector~combout\(53),
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a6:3:and_i|prod~combout\);

-- Location: LC_X7_Y8_N3
\add_instance|fa16|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa16|g1|Bit0_G~0_combout\ = (\input_vector~combout\(7) & ((\add_instance|a1:7:and_i|prod~combout\) # ((\input_vector~combout\(49) & \input_vector~combout\(38))))) # (!\input_vector~combout\(7) & (\input_vector~combout\(49) & 
-- (\add_instance|a1:7:and_i|prod~combout\ & \input_vector~combout\(38))))

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
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(49),
	datac => \add_instance|a1:7:and_i|prod~combout\,
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa16|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y5_N0
\add_instance|a2:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a2:7:and_i|prod~combout\ = ((\input_vector~combout\(49) & (\input_vector~combout\(39))))

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
	datab => \input_vector~combout\(49),
	datac => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a2:7:and_i|prod~combout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[40]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(40),
	combout => \input_vector~combout\(40));

-- Location: LC_X4_Y9_N6
\add_instance|ha8|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha8|x1|uneq~combout\ = (\input_vector~combout\(8) $ (((\input_vector~combout\(48) & \input_vector~combout\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(48),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha8|x1|uneq~combout\);

-- Location: LC_X3_Y7_N4
\add_instance|fa22|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa22|x2|uneq~combout\ = \add_instance|a2:7:and_i|prod~combout\ $ (\add_instance|ha8|x1|uneq~combout\ $ (((\input_vector~combout\(50) & \input_vector~combout\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(50),
	datab => \add_instance|a2:7:and_i|prod~combout\,
	datac => \input_vector~combout\(38),
	datad => \add_instance|ha8|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa22|x2|uneq~combout\);

-- Location: LC_X3_Y7_N0
\add_instance|fa25|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa25|x2|uneq~0_combout\ = \add_instance|fa23|x1|uneq~combout\ $ (\add_instance|a6:3:and_i|prod~combout\ $ (\add_instance|fa16|g1|Bit0_G~0_combout\ $ (\add_instance|fa22|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa23|x1|uneq~combout\,
	datab => \add_instance|a6:3:and_i|prod~combout\,
	datac => \add_instance|fa16|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa22|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa25|x2|uneq~0_combout\);

-- Location: LC_X7_Y8_N7
\add_instance|fa18|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa18|g1|Bit0_G~0_combout\ = (\add_instance|fa16|x2|uneq~combout\ & ((\add_instance|fa11|g1|Bit0_G~0_combout\) # (\add_instance|a5:3:and_i|prod~combout\ $ (\add_instance|fa17|x1|uneq~combout\)))) # (!\add_instance|fa16|x2|uneq~combout\ & 
-- (\add_instance|fa11|g1|Bit0_G~0_combout\ & (\add_instance|a5:3:and_i|prod~combout\ $ (\add_instance|fa17|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a5:3:and_i|prod~combout\,
	datab => \add_instance|fa16|x2|uneq~combout\,
	datac => \add_instance|fa17|x1|uneq~combout\,
	datad => \add_instance|fa11|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa18|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y8_N2
\add_instance|fa27|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa27|x1|uneq~combout\ = (\add_instance|fa25|x2|uneq~0_combout\ $ (((\add_instance|fa18|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa25|x2|uneq~0_combout\,
	datad => \add_instance|fa18|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa27|x1|uneq~combout\);

-- Location: LC_X8_Y9_N9
\add_instance|fa28|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa28|x2|uneq~0_combout\ = \add_instance|fa19|g1|Bit0_G~0_combout\ $ (\add_instance|fa26|x2|uneq~combout\ $ (\add_instance|fa20|g1|Bit0_G~1_combout\ $ (\add_instance|fa27|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa19|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa26|x2|uneq~combout\,
	datac => \add_instance|fa20|g1|Bit0_G~1_combout\,
	datad => \add_instance|fa27|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa28|x2|uneq~0_combout\);

-- Location: LC_X8_Y9_N1
\add_instance|bkadder|sum_xors:8:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:8:sum_xor_i|uneq~combout\ = \add_instance|fa21|g1|Bit0_G~0_combout\ $ (\add_instance|fa28|x2|uneq~0_combout\ $ (((\add_instance|bkadder|abc_gates_g2:1:abc_i|abc~combout\) # 
-- (\add_instance|bkadder|abc_gates_g3:0:abc_i|abc~1_combout\))))

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
	dataa => \add_instance|bkadder|abc_gates_g2:1:abc_i|abc~combout\,
	datab => \add_instance|fa21|g1|Bit0_G~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g3:0:abc_i|abc~1_combout\,
	datad => \add_instance|fa28|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:8:sum_xor_i|uneq~combout\);

-- Location: LC_X5_Y8_N5
\add_instance|fa26|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa26|x1|uneq~combout\ = ((\add_instance|fa24|x2|uneq~combout\ $ (\add_instance|fa17|g1|Bit0_G~0_combout\)))

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
	datac => \add_instance|fa24|x2|uneq~combout\,
	datad => \add_instance|fa17|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa26|x1|uneq~combout\);

-- Location: LC_X5_Y8_N7
\add_instance|ha7|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha7|a1|prod~combout\ = (\input_vector~combout\(34) & (\input_vector~combout\(33) & (\input_vector~combout\(54) & \input_vector~combout\(53))))

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
	dataa => \input_vector~combout\(34),
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(54),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha7|a1|prod~combout\);

-- Location: LC_X5_Y8_N8
\add_instance|fa27|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa27|g1|Bit0_G~0_combout\ = (\add_instance|fa25|x2|uneq~0_combout\ & ((\add_instance|fa18|g1|Bit0_G~0_combout\) # (\add_instance|fa26|x1|uneq~combout\ $ (\add_instance|ha7|a1|prod~combout\)))) # (!\add_instance|fa25|x2|uneq~0_combout\ & 
-- (\add_instance|fa18|g1|Bit0_G~0_combout\ & (\add_instance|fa26|x1|uneq~combout\ $ (\add_instance|ha7|a1|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa26|x1|uneq~combout\,
	datab => \add_instance|fa25|x2|uneq~0_combout\,
	datac => \add_instance|ha7|a1|prod~combout\,
	datad => \add_instance|fa18|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa27|g1|Bit0_G~0_combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[57]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(57),
	combout => \input_vector~combout\(57));

-- Location: LC_X3_Y8_N5
\add_instance|a10:0:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a10:0:and_i|prod~combout\ = ((\input_vector~combout\(57) & (\input_vector~combout\(32))))

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
	datab => \input_vector~combout\(57),
	datac => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a10:0:and_i|prod~combout\);

-- Location: LC_X3_Y8_N2
\add_instance|fa24|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa24|g1|Bit0_G~0_combout\ = (\add_instance|a8:1:and_i|prod~combout\ & ((\add_instance|a7:2:and_i|prod~combout\) # ((\input_vector~combout\(56) & \input_vector~combout\(32))))) # (!\add_instance|a8:1:and_i|prod~combout\ & 
-- (\input_vector~combout\(56) & (\input_vector~combout\(32) & \add_instance|a7:2:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(56),
	datab => \add_instance|a8:1:and_i|prod~combout\,
	datac => \input_vector~combout\(32),
	datad => \add_instance|a7:2:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa24|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y9_N8
\add_instance|fa32|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa32|x1|uneq~combout\ = (\input_vector~combout\(34) & (\input_vector~combout\(55) $ (((\input_vector~combout\(33) & \input_vector~combout\(56)))))) # (!\input_vector~combout\(34) & (\input_vector~combout\(33) & (\input_vector~combout\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(34),
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(56),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa32|x1|uneq~combout\);

-- Location: LC_X2_Y7_N3
\add_instance|a4:5:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a4:5:and_i|prod~combout\ = (((\input_vector~combout\(51) & \input_vector~combout\(37))))

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
	datac => \input_vector~combout\(51),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a4:5:and_i|prod~combout\);

-- Location: LC_X2_Y7_N9
\add_instance|a5:4:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a5:4:and_i|prod~combout\ = (\input_vector~combout\(52) & (((\input_vector~combout\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(52),
	datac => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a5:4:and_i|prod~combout\);

-- Location: LC_X2_Y7_N5
\add_instance|fa23|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa23|g1|Bit0_G~0_combout\ = (\add_instance|a4:5:and_i|prod~combout\ & ((\add_instance|a5:4:and_i|prod~combout\) # ((\input_vector~combout\(35) & \input_vector~combout\(53))))) # (!\add_instance|a4:5:and_i|prod~combout\ & 
-- (\add_instance|a5:4:and_i|prod~combout\ & (\input_vector~combout\(35) & \input_vector~combout\(53))))

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
	dataa => \add_instance|a4:5:and_i|prod~combout\,
	datab => \add_instance|a5:4:and_i|prod~combout\,
	datac => \input_vector~combout\(35),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa23|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y8_N3
\add_instance|fa34|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa34|x2|uneq~combout\ = \add_instance|a10:0:and_i|prod~combout\ $ (\add_instance|fa24|g1|Bit0_G~0_combout\ $ (\add_instance|fa32|x1|uneq~combout\ $ (\add_instance|fa23|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a10:0:and_i|prod~combout\,
	datab => \add_instance|fa24|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa32|x1|uneq~combout\,
	datad => \add_instance|fa23|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa34|x2|uneq~combout\);

-- Location: LC_X3_Y7_N5
\add_instance|fa31|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa31|x1|uneq~combout\ = (\input_vector~combout\(36) & (\input_vector~combout\(53) $ (((\input_vector~combout\(52) & \input_vector~combout\(37)))))) # (!\input_vector~combout\(36) & (((\input_vector~combout\(52) & 
-- \input_vector~combout\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(36),
	datab => \input_vector~combout\(53),
	datac => \input_vector~combout\(52),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa31|x1|uneq~combout\);

-- Location: LC_X3_Y7_N2
\add_instance|fa22|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa22|g1|Bit0_G~0_combout\ = (\add_instance|a2:7:and_i|prod~combout\ & ((\add_instance|ha8|x1|uneq~combout\) # ((\input_vector~combout\(50) & \input_vector~combout\(38))))) # (!\add_instance|a2:7:and_i|prod~combout\ & 
-- (\input_vector~combout\(50) & (\input_vector~combout\(38) & \add_instance|ha8|x1|uneq~combout\)))

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
	dataa => \input_vector~combout\(50),
	datab => \add_instance|a2:7:and_i|prod~combout\,
	datac => \input_vector~combout\(38),
	datad => \add_instance|ha8|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa22|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y7_N6
\add_instance|a7:3:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a7:3:and_i|prod~combout\ = (((\input_vector~combout\(54) & \input_vector~combout\(35))))

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
	datac => \input_vector~combout\(54),
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a7:3:and_i|prod~combout\);

-- Location: LC_X4_Y9_N8
\add_instance|ha8|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha8|a1|prod~combout\ = ((\input_vector~combout\(8) & (\input_vector~combout\(48) & \input_vector~combout\(40))))

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
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(48),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha8|a1|prod~combout\);

-- Location: LC_X4_Y9_N2
\add_instance|a4:6:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a4:6:and_i|prod~combout\ = (((\input_vector~combout\(51) & \input_vector~combout\(38))))

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
	datac => \input_vector~combout\(51),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a4:6:and_i|prod~combout\);

-- Location: LC_X4_Y9_N5
\add_instance|a3:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a3:7:and_i|prod~combout\ = (((\input_vector~combout\(39) & \input_vector~combout\(50))))

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
	datac => \input_vector~combout\(39),
	datad => \input_vector~combout\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a3:7:and_i|prod~combout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[41]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(41),
	combout => \input_vector~combout\(41));

-- Location: LC_X6_Y10_N4
\add_instance|a1:9:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a1:9:and_i|prod~combout\ = ((\input_vector~combout\(41) & (\input_vector~combout\(48))))

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
	datab => \input_vector~combout\(41),
	datac => \input_vector~combout\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a1:9:and_i|prod~combout\);

-- Location: LC_X6_Y10_N1
\add_instance|fa29|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa29|x2|uneq~combout\ = \input_vector~combout\(9) $ (\add_instance|a1:9:and_i|prod~combout\ $ (((\input_vector~combout\(49) & \input_vector~combout\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(49),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(40),
	datad => \add_instance|a1:9:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa29|x2|uneq~combout\);

-- Location: LC_X4_Y9_N9
\add_instance|fa30|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa30|x2|uneq~0_combout\ = \add_instance|ha8|a1|prod~combout\ $ (\add_instance|a4:6:and_i|prod~combout\ $ (\add_instance|a3:7:and_i|prod~combout\ $ (\add_instance|fa29|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ha8|a1|prod~combout\,
	datab => \add_instance|a4:6:and_i|prod~combout\,
	datac => \add_instance|a3:7:and_i|prod~combout\,
	datad => \add_instance|fa29|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa30|x2|uneq~0_combout\);

-- Location: LC_X3_Y7_N8
\add_instance|fa33|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa33|x2|uneq~combout\ = \add_instance|fa31|x1|uneq~combout\ $ (\add_instance|fa22|g1|Bit0_G~0_combout\ $ (\add_instance|a7:3:and_i|prod~combout\ $ (\add_instance|fa30|x2|uneq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa31|x1|uneq~combout\,
	datab => \add_instance|fa22|g1|Bit0_G~0_combout\,
	datac => \add_instance|a7:3:and_i|prod~combout\,
	datad => \add_instance|fa30|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa33|x2|uneq~combout\);

-- Location: LC_X3_Y7_N1
\add_instance|fa25|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa25|g1|Bit0_G~0_combout\ = (\add_instance|fa16|g1|Bit0_G~0_combout\ & ((\add_instance|fa22|x2|uneq~combout\) # (\add_instance|fa23|x1|uneq~combout\ $ (\add_instance|a6:3:and_i|prod~combout\)))) # (!\add_instance|fa16|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa22|x2|uneq~combout\ & (\add_instance|fa23|x1|uneq~combout\ $ (\add_instance|a6:3:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa23|x1|uneq~combout\,
	datab => \add_instance|a6:3:and_i|prod~combout\,
	datac => \add_instance|fa16|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa22|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa25|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y8_N7
\add_instance|fa35|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa35|x1|uneq~combout\ = (\add_instance|fa33|x2|uneq~combout\ $ ((\add_instance|fa25|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa33|x2|uneq~combout\,
	datac => \add_instance|fa25|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa35|x1|uneq~combout\);

-- Location: LC_X5_Y8_N1
\add_instance|fa26|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa26|g1|Bit0_G~0_combout\ = (\add_instance|fa24|x2|uneq~combout\ & ((\add_instance|fa17|g1|Bit0_G~0_combout\) # ((\add_instance|a7:1:and_i|prod~combout\ & \add_instance|a6:2:and_i|prod~combout\)))) # (!\add_instance|fa24|x2|uneq~combout\ & 
-- (\add_instance|a7:1:and_i|prod~combout\ & (\add_instance|a6:2:and_i|prod~combout\ & \add_instance|fa17|g1|Bit0_G~0_combout\)))

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
	dataa => \add_instance|a7:1:and_i|prod~combout\,
	datab => \add_instance|a6:2:and_i|prod~combout\,
	datac => \add_instance|fa24|x2|uneq~combout\,
	datad => \add_instance|fa17|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa26|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y8_N4
\add_instance|fa36|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa36|x2|uneq~combout\ = \add_instance|fa27|g1|Bit0_G~0_combout\ $ (\add_instance|fa34|x2|uneq~combout\ $ (\add_instance|fa35|x1|uneq~combout\ $ (\add_instance|fa26|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa27|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa34|x2|uneq~combout\,
	datac => \add_instance|fa35|x1|uneq~combout\,
	datad => \add_instance|fa26|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa36|x2|uneq~combout\);

-- Location: LC_X8_Y9_N4
\add_instance|fa28|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa28|g1|Bit0_G~0_combout\ = (\add_instance|fa19|g1|Bit0_G~0_combout\ & ((\add_instance|fa20|g1|Bit0_G~1_combout\) # (\add_instance|fa26|x2|uneq~combout\ $ (\add_instance|fa27|x1|uneq~combout\)))) # (!\add_instance|fa19|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa20|g1|Bit0_G~1_combout\ & (\add_instance|fa26|x2|uneq~combout\ $ (\add_instance|fa27|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa19|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa26|x2|uneq~combout\,
	datac => \add_instance|fa20|g1|Bit0_G~1_combout\,
	datad => \add_instance|fa27|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa28|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y9_N3
\add_instance|bkadder|abc_c9|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c9|abc~0_combout\ = (\add_instance|fa21|g1|Bit0_G~0_combout\ & ((\add_instance|bkadder|abc_gates_g2:1:abc_i|abc~combout\) # ((\add_instance|bkadder|abc_gates_g3:0:abc_i|abc~1_combout\) # (\add_instance|fa28|x2|uneq~0_combout\)))) 
-- # (!\add_instance|fa21|g1|Bit0_G~0_combout\ & (\add_instance|fa28|x2|uneq~0_combout\ & ((\add_instance|bkadder|abc_gates_g2:1:abc_i|abc~combout\) # (\add_instance|bkadder|abc_gates_g3:0:abc_i|abc~1_combout\))))

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
	dataa => \add_instance|bkadder|abc_gates_g2:1:abc_i|abc~combout\,
	datab => \add_instance|fa21|g1|Bit0_G~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g3:0:abc_i|abc~1_combout\,
	datad => \add_instance|fa28|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c9|abc~0_combout\);

-- Location: LC_X8_Y9_N2
\add_instance|bkadder|sum_xors:9:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:9:sum_xor_i|uneq~combout\ = \add_instance|fa36|x2|uneq~combout\ $ (((\add_instance|fa28|g1|Bit0_G~0_combout\ $ (\add_instance|bkadder|abc_c9|abc~0_combout\))))

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
	dataa => \add_instance|fa36|x2|uneq~combout\,
	datac => \add_instance|fa28|g1|Bit0_G~0_combout\,
	datad => \add_instance|bkadder|abc_c9|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:9:sum_xor_i|uneq~combout\);

-- Location: LC_X8_Y9_N8
\add_instance|bkadder|abc_c10|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c10|abc~0_combout\ = (\add_instance|fa36|x2|uneq~combout\ & (!\add_instance|fa28|g1|Bit0_G~0_combout\ & (\add_instance|fa21|g1|Bit0_G~0_combout\ $ (\add_instance|fa28|x2|uneq~0_combout\)))) # (!\add_instance|fa36|x2|uneq~combout\ 
-- & (\add_instance|fa28|g1|Bit0_G~0_combout\ & (\add_instance|fa21|g1|Bit0_G~0_combout\ $ (\add_instance|fa28|x2|uneq~0_combout\))))

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
	dataa => \add_instance|fa36|x2|uneq~combout\,
	datab => \add_instance|fa21|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa28|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa28|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c10|abc~0_combout\);

-- Location: LC_X8_Y9_N5
\add_instance|bkadder|abc_c10|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c10|abc~1_combout\ = ((\add_instance|bkadder|abc_c10|abc~0_combout\ & ((\add_instance|bkadder|abc_gates_g2:1:abc_i|abc~combout\) # (\add_instance|bkadder|abc_gates_g3:0:abc_i|abc~1_combout\))))

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
	datab => \add_instance|bkadder|abc_gates_g2:1:abc_i|abc~combout\,
	datac => \add_instance|bkadder|abc_gates_g3:0:abc_i|abc~1_combout\,
	datad => \add_instance|bkadder|abc_c10|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c10|abc~1_combout\);

-- Location: LC_X5_Y8_N0
\add_instance|fa36|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa36|g1|Bit0_G~0_combout\ = (\add_instance|fa27|g1|Bit0_G~0_combout\ & ((\add_instance|fa26|g1|Bit0_G~0_combout\) # (\add_instance|fa34|x2|uneq~combout\ $ (\add_instance|fa35|x1|uneq~combout\)))) # (!\add_instance|fa27|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa26|g1|Bit0_G~0_combout\ & (\add_instance|fa34|x2|uneq~combout\ $ (\add_instance|fa35|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa27|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa34|x2|uneq~combout\,
	datac => \add_instance|fa35|x1|uneq~combout\,
	datad => \add_instance|fa26|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa36|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y9_N6
\add_instance|bkadder|abc_gates_g1:4:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:4:abc_i|abc~0_combout\ = (\add_instance|fa36|x2|uneq~combout\ & ((\add_instance|fa28|g1|Bit0_G~0_combout\) # ((\add_instance|fa21|g1|Bit0_G~0_combout\ & \add_instance|fa28|x2|uneq~0_combout\)))) # 
-- (!\add_instance|fa36|x2|uneq~combout\ & (\add_instance|fa21|g1|Bit0_G~0_combout\ & (\add_instance|fa28|g1|Bit0_G~0_combout\ & \add_instance|fa28|x2|uneq~0_combout\)))

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
	dataa => \add_instance|fa36|x2|uneq~combout\,
	datab => \add_instance|fa21|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa28|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa28|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:4:abc_i|abc~0_combout\);

-- Location: LC_X5_Y9_N5
\add_instance|a8:3:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a8:3:and_i|prod~combout\ = (((\input_vector~combout\(35) & \input_vector~combout\(55))))

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
	datac => \input_vector~combout\(35),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a8:3:and_i|prod~combout\);

-- Location: LC_X4_Y9_N7
\add_instance|fa30|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa30|g1|Bit0_G~0_combout\ = (\add_instance|ha8|a1|prod~combout\ & ((\add_instance|fa29|x2|uneq~combout\) # (\add_instance|a4:6:and_i|prod~combout\ $ (\add_instance|a3:7:and_i|prod~combout\)))) # (!\add_instance|ha8|a1|prod~combout\ & 
-- (\add_instance|fa29|x2|uneq~combout\ & (\add_instance|a4:6:and_i|prod~combout\ $ (\add_instance|a3:7:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ha8|a1|prod~combout\,
	datab => \add_instance|a4:6:and_i|prod~combout\,
	datac => \add_instance|a3:7:and_i|prod~combout\,
	datad => \add_instance|fa29|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa30|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y10_N6
\add_instance|a5:6:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a5:6:and_i|prod~combout\ = ((\input_vector~combout\(52) & ((\input_vector~combout\(38)))))

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
	datab => \input_vector~combout\(52),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a5:6:and_i|prod~combout\);

-- Location: LC_X6_Y10_N0
\add_instance|fa29|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa29|g1|Bit0_G~0_combout\ = (\input_vector~combout\(9) & ((\add_instance|a1:9:and_i|prod~combout\) # ((\input_vector~combout\(49) & \input_vector~combout\(40))))) # (!\input_vector~combout\(9) & (\input_vector~combout\(49) & 
-- (\input_vector~combout\(40) & \add_instance|a1:9:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(49),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(40),
	datad => \add_instance|a1:9:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa29|g1|Bit0_G~0_combout\);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[42]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(42),
	combout => \input_vector~combout\(42));

-- Location: LC_X6_Y10_N2
\add_instance|a1:10:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a1:10:and_i|prod~combout\ = ((\input_vector~combout\(42) & (\input_vector~combout\(48))))

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
	datab => \input_vector~combout\(42),
	datac => \input_vector~combout\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a1:10:and_i|prod~combout\);

-- Location: LC_X6_Y10_N7
\add_instance|fa37|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa37|x2|uneq~combout\ = \input_vector~combout\(10) $ (\add_instance|a1:10:and_i|prod~combout\ $ (((\input_vector~combout\(49) & \input_vector~combout\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(49),
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(41),
	datad => \add_instance|a1:10:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa37|x2|uneq~combout\);

-- Location: LC_X6_Y10_N8
\add_instance|fa38|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa38|x1|uneq~combout\ = (\input_vector~combout\(40) & (\input_vector~combout\(50) $ (((\input_vector~combout\(51) & \input_vector~combout\(39)))))) # (!\input_vector~combout\(40) & (\input_vector~combout\(51) & 
-- ((\input_vector~combout\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(40),
	datab => \input_vector~combout\(51),
	datac => \input_vector~combout\(50),
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa38|x1|uneq~combout\);

-- Location: LC_X6_Y10_N9
\add_instance|fa39|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa39|x2|uneq~0_combout\ = \add_instance|a5:6:and_i|prod~combout\ $ (\add_instance|fa29|g1|Bit0_G~0_combout\ $ (\add_instance|fa37|x2|uneq~combout\ $ (\add_instance|fa38|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a5:6:and_i|prod~combout\,
	datab => \add_instance|fa29|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa37|x2|uneq~combout\,
	datad => \add_instance|fa38|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa39|x2|uneq~0_combout\);

-- Location: LC_X4_Y9_N4
\add_instance|ha9|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha9|a1|prod~combout\ = (\input_vector~combout\(51) & (\input_vector~combout\(50) & (\input_vector~combout\(39) & \input_vector~combout\(38))))

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
	dataa => \input_vector~combout\(51),
	datab => \input_vector~combout\(50),
	datac => \input_vector~combout\(39),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha9|a1|prod~combout\);

-- Location: LC_X5_Y9_N7
\add_instance|ha10|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha10|x1|uneq~combout\ = (\input_vector~combout\(36) & (\input_vector~combout\(54) $ (((\input_vector~combout\(53) & \input_vector~combout\(37)))))) # (!\input_vector~combout\(36) & (\input_vector~combout\(53) & 
-- ((\input_vector~combout\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(36),
	datab => \input_vector~combout\(53),
	datac => \input_vector~combout\(54),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha10|x1|uneq~combout\);

-- Location: LC_X5_Y9_N2
\add_instance|fa40|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa40|x1|uneq~combout\ = (\add_instance|ha9|a1|prod~combout\ $ ((\add_instance|ha10|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ha9|a1|prod~combout\,
	datac => \add_instance|ha10|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa40|x1|uneq~combout\);

-- Location: LC_X5_Y9_N4
\add_instance|fa42|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa42|x2|uneq~combout\ = \add_instance|a8:3:and_i|prod~combout\ $ (\add_instance|fa30|g1|Bit0_G~0_combout\ $ (\add_instance|fa39|x2|uneq~0_combout\ $ (\add_instance|fa40|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a8:3:and_i|prod~combout\,
	datab => \add_instance|fa30|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa39|x2|uneq~0_combout\,
	datad => \add_instance|fa40|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa42|x2|uneq~combout\);

-- Location: LC_X3_Y7_N7
\add_instance|fa33|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa33|g1|Bit0_G~0_combout\ = (\add_instance|fa22|g1|Bit0_G~0_combout\ & ((\add_instance|fa30|x2|uneq~0_combout\) # (\add_instance|fa31|x1|uneq~combout\ $ (\add_instance|a7:3:and_i|prod~combout\)))) # (!\add_instance|fa22|g1|Bit0_G~0_combout\ 
-- & (\add_instance|fa30|x2|uneq~0_combout\ & (\add_instance|fa31|x1|uneq~combout\ $ (\add_instance|a7:3:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa31|x1|uneq~combout\,
	datab => \add_instance|fa22|g1|Bit0_G~0_combout\,
	datac => \add_instance|a7:3:and_i|prod~combout\,
	datad => \add_instance|fa30|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa33|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y9_N6
\add_instance|fa44|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa44|x1|uneq~combout\ = \add_instance|fa42|x2|uneq~combout\ $ ((((\add_instance|fa33|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa42|x2|uneq~combout\,
	datac => \add_instance|fa33|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa44|x1|uneq~combout\);

-- Location: LC_X3_Y8_N1
\add_instance|fa34|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa34|g1|Bit0_G~0_combout\ = (\add_instance|fa24|g1|Bit0_G~0_combout\ & ((\add_instance|fa23|g1|Bit0_G~0_combout\) # (\add_instance|a10:0:and_i|prod~combout\ $ (\add_instance|fa32|x1|uneq~combout\)))) # 
-- (!\add_instance|fa24|g1|Bit0_G~0_combout\ & (\add_instance|fa23|g1|Bit0_G~0_combout\ & (\add_instance|a10:0:and_i|prod~combout\ $ (\add_instance|fa32|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a10:0:and_i|prod~combout\,
	datab => \add_instance|fa24|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa32|x1|uneq~combout\,
	datad => \add_instance|fa23|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa34|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y9_N5
\add_instance|a8:2:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a8:2:and_i|prod~combout\ = (((\input_vector~combout\(34) & \input_vector~combout\(55))))

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
	datac => \input_vector~combout\(34),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a8:2:and_i|prod~combout\);

-- Location: LC_X4_Y8_N1
\add_instance|a9:1:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a9:1:and_i|prod~combout\ = (\input_vector~combout\(33) & (((\input_vector~combout\(56)))))

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
	dataa => \input_vector~combout\(33),
	datad => \input_vector~combout\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a9:1:and_i|prod~combout\);

-- Location: LC_X3_Y8_N6
\add_instance|fa34|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa34|x1|uneq~combout\ = \add_instance|a10:0:and_i|prod~combout\ $ (\add_instance|a8:2:and_i|prod~combout\ $ (\add_instance|fa23|g1|Bit0_G~0_combout\ $ (\add_instance|a9:1:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a10:0:and_i|prod~combout\,
	datab => \add_instance|a8:2:and_i|prod~combout\,
	datac => \add_instance|fa23|g1|Bit0_G~0_combout\,
	datad => \add_instance|a9:1:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa34|x1|uneq~combout\);

-- Location: LC_X3_Y8_N0
\add_instance|fa35|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa35|g1|Bit0_G~0_combout\ = (\add_instance|fa33|x2|uneq~combout\ & ((\add_instance|fa25|g1|Bit0_G~0_combout\) # (\add_instance|fa34|x1|uneq~combout\ $ (\add_instance|fa24|g1|Bit0_G~0_combout\)))) # (!\add_instance|fa33|x2|uneq~combout\ & 
-- (\add_instance|fa25|g1|Bit0_G~0_combout\ & (\add_instance|fa34|x1|uneq~combout\ $ (\add_instance|fa24|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa34|x1|uneq~combout\,
	datab => \add_instance|fa33|x2|uneq~combout\,
	datac => \add_instance|fa25|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa24|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa35|g1|Bit0_G~0_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[58]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(58),
	combout => \input_vector~combout\(58));

-- Location: LC_X6_Y8_N8
\add_instance|a11:0:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:0:and_i|prod~combout\ = ((\input_vector~combout\(58) & (\input_vector~combout\(32))))

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
	datab => \input_vector~combout\(58),
	datac => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:0:and_i|prod~combout\);

-- Location: LC_X5_Y7_N5
\add_instance|a6:4:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a6:4:and_i|prod~combout\ = (\input_vector~combout\(36) & (((\input_vector~combout\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(36),
	datac => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a6:4:and_i|prod~combout\);

-- Location: LC_X6_Y8_N6
\add_instance|a5:5:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a5:5:and_i|prod~combout\ = ((\input_vector~combout\(52) & ((\input_vector~combout\(37)))))

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
	datab => \input_vector~combout\(52),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a5:5:and_i|prod~combout\);

-- Location: LC_X6_Y8_N2
\add_instance|fa31|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa31|g1|Bit0_G~0_combout\ = (\add_instance|a6:4:and_i|prod~combout\ & ((\add_instance|a5:5:and_i|prod~combout\) # ((\input_vector~combout\(54) & \input_vector~combout\(35))))) # (!\add_instance|a6:4:and_i|prod~combout\ & 
-- (\input_vector~combout\(54) & (\add_instance|a5:5:and_i|prod~combout\ & \input_vector~combout\(35))))

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
	dataa => \add_instance|a6:4:and_i|prod~combout\,
	datab => \input_vector~combout\(54),
	datac => \add_instance|a5:5:and_i|prod~combout\,
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa31|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y8_N8
\add_instance|fa32|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa32|g1|Bit0_G~0_combout\ = (\add_instance|a9:1:and_i|prod~combout\ & ((\add_instance|a8:2:and_i|prod~combout\) # ((\input_vector~combout\(32) & \input_vector~combout\(57))))) # (!\add_instance|a9:1:and_i|prod~combout\ & 
-- (\add_instance|a8:2:and_i|prod~combout\ & (\input_vector~combout\(32) & \input_vector~combout\(57))))

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
	dataa => \add_instance|a9:1:and_i|prod~combout\,
	datab => \add_instance|a8:2:and_i|prod~combout\,
	datac => \input_vector~combout\(32),
	datad => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa32|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y8_N1
\add_instance|fa41|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa41|x1|uneq~combout\ = (\input_vector~combout\(56) & (\input_vector~combout\(34) $ (((\input_vector~combout\(57) & \input_vector~combout\(33)))))) # (!\input_vector~combout\(56) & (((\input_vector~combout\(57) & 
-- \input_vector~combout\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(56),
	datab => \input_vector~combout\(34),
	datac => \input_vector~combout\(57),
	datad => \input_vector~combout\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa41|x1|uneq~combout\);

-- Location: LC_X6_Y8_N3
\add_instance|fa43|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa43|x2|uneq~combout\ = \add_instance|a11:0:and_i|prod~combout\ $ (\add_instance|fa31|g1|Bit0_G~0_combout\ $ (\add_instance|fa32|g1|Bit0_G~0_combout\ $ (\add_instance|fa41|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a11:0:and_i|prod~combout\,
	datab => \add_instance|fa31|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa32|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa41|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa43|x2|uneq~combout\);

-- Location: LC_X10_Y9_N3
\add_instance|fa45|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa45|x2|uneq~combout\ = \add_instance|fa44|x1|uneq~combout\ $ (\add_instance|fa34|g1|Bit0_G~0_combout\ $ (\add_instance|fa35|g1|Bit0_G~0_combout\ $ (\add_instance|fa43|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa44|x1|uneq~combout\,
	datab => \add_instance|fa34|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa35|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa43|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa45|x2|uneq~combout\);

-- Location: LC_X10_Y9_N8
\add_instance|bkadder|sum_xors:10:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:10:sum_xor_i|uneq~combout\ = \add_instance|fa36|g1|Bit0_G~0_combout\ $ (\add_instance|fa45|x2|uneq~combout\ $ (((\add_instance|bkadder|abc_c10|abc~1_combout\) # (\add_instance|bkadder|abc_gates_g1:4:abc_i|abc~0_combout\))))

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
	dataa => \add_instance|bkadder|abc_c10|abc~1_combout\,
	datab => \add_instance|fa36|g1|Bit0_G~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g1:4:abc_i|abc~0_combout\,
	datad => \add_instance|fa45|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:10:sum_xor_i|uneq~combout\);

-- Location: LC_X10_Y9_N4
\add_instance|fa45|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa45|g1|Bit0_G~0_combout\ = (\add_instance|fa34|g1|Bit0_G~0_combout\ & ((\add_instance|fa35|g1|Bit0_G~0_combout\) # (\add_instance|fa44|x1|uneq~combout\ $ (\add_instance|fa43|x2|uneq~combout\)))) # (!\add_instance|fa34|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa35|g1|Bit0_G~0_combout\ & (\add_instance|fa44|x1|uneq~combout\ $ (\add_instance|fa43|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa44|x1|uneq~combout\,
	datab => \add_instance|fa34|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa35|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa43|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa45|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y9_N6
\add_instance|bkadder|abc_c11|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c11|abc~0_combout\ = (\add_instance|fa36|g1|Bit0_G~0_combout\ & ((\add_instance|bkadder|abc_c10|abc~1_combout\) # ((\add_instance|bkadder|abc_gates_g1:4:abc_i|abc~0_combout\) # (\add_instance|fa45|x2|uneq~combout\)))) # 
-- (!\add_instance|fa36|g1|Bit0_G~0_combout\ & (\add_instance|fa45|x2|uneq~combout\ & ((\add_instance|bkadder|abc_c10|abc~1_combout\) # (\add_instance|bkadder|abc_gates_g1:4:abc_i|abc~0_combout\))))

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
	dataa => \add_instance|bkadder|abc_c10|abc~1_combout\,
	datab => \add_instance|fa36|g1|Bit0_G~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g1:4:abc_i|abc~0_combout\,
	datad => \add_instance|fa45|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c11|abc~0_combout\);

-- Location: LC_X5_Y9_N9
\add_instance|fa42|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa42|g1|Bit0_G~0_combout\ = (\add_instance|fa30|g1|Bit0_G~0_combout\ & ((\add_instance|fa39|x2|uneq~0_combout\) # (\add_instance|a8:3:and_i|prod~combout\ $ (\add_instance|fa40|x1|uneq~combout\)))) # (!\add_instance|fa30|g1|Bit0_G~0_combout\ 
-- & (\add_instance|fa39|x2|uneq~0_combout\ & (\add_instance|a8:3:and_i|prod~combout\ $ (\add_instance|fa40|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a8:3:and_i|prod~combout\,
	datab => \add_instance|fa30|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa39|x2|uneq~0_combout\,
	datad => \add_instance|fa40|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa42|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y8_N3
\add_instance|ha10|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha10|a1|prod~combout\ = (\input_vector~combout\(53) & (\input_vector~combout\(54) & (\input_vector~combout\(36) & \input_vector~combout\(37))))

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
	dataa => \input_vector~combout\(53),
	datab => \input_vector~combout\(54),
	datac => \input_vector~combout\(36),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha10|a1|prod~combout\);

-- Location: LC_X6_Y10_N3
\add_instance|fa39|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa39|g1|Bit0_G~0_combout\ = (\add_instance|fa29|g1|Bit0_G~0_combout\ & ((\add_instance|fa37|x2|uneq~combout\) # (\add_instance|a5:6:and_i|prod~combout\ $ (\add_instance|fa38|x1|uneq~combout\)))) # (!\add_instance|fa29|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa37|x2|uneq~combout\ & (\add_instance|a5:6:and_i|prod~combout\ $ (\add_instance|fa38|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a5:6:and_i|prod~combout\,
	datab => \add_instance|fa29|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa37|x2|uneq~combout\,
	datad => \add_instance|fa38|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa39|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y9_N6
\add_instance|a3:8:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a3:8:and_i|prod~combout\ = ((\input_vector~combout\(50) & ((\input_vector~combout\(40)))))

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
	datab => \input_vector~combout\(50),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a3:8:and_i|prod~combout\);

-- Location: LC_X9_Y9_N9
\add_instance|a4:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a4:7:and_i|prod~combout\ = (\input_vector~combout\(51) & (((\input_vector~combout\(39)))))

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
	dataa => \input_vector~combout\(51),
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a4:7:and_i|prod~combout\);

-- Location: LC_X9_Y9_N7
\add_instance|fa38|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa38|g1|Bit0_G~0_combout\ = (\add_instance|a3:8:and_i|prod~combout\ & ((\add_instance|a4:7:and_i|prod~combout\) # ((\input_vector~combout\(52) & \input_vector~combout\(38))))) # (!\add_instance|a3:8:and_i|prod~combout\ & 
-- (\add_instance|a4:7:and_i|prod~combout\ & (\input_vector~combout\(52) & \input_vector~combout\(38))))

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
	dataa => \add_instance|a3:8:and_i|prod~combout\,
	datab => \add_instance|a4:7:and_i|prod~combout\,
	datac => \input_vector~combout\(52),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa38|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y8_N9
\add_instance|a7:5:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a7:5:and_i|prod~combout\ = ((\input_vector~combout\(37) & ((\input_vector~combout\(54)))))

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
	datab => \input_vector~combout\(37),
	datad => \input_vector~combout\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a7:5:and_i|prod~combout\);

-- Location: LC_X9_Y8_N6
\add_instance|a6:6:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a6:6:and_i|prod~combout\ = (\input_vector~combout\(53) & (((\input_vector~combout\(38)))))

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
	dataa => \input_vector~combout\(53),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a6:6:and_i|prod~combout\);

-- Location: LC_X9_Y8_N1
\add_instance|fa48|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa48|x2|uneq~combout\ = \add_instance|a7:5:and_i|prod~combout\ $ (\add_instance|a6:6:and_i|prod~combout\ $ (((\input_vector~combout\(36) & \input_vector~combout\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(36),
	datab => \add_instance|a7:5:and_i|prod~combout\,
	datac => \add_instance|a6:6:and_i|prod~combout\,
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa48|x2|uneq~combout\);

-- Location: LC_X9_Y8_N4
\add_instance|fa50|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa50|x1|uneq~combout\ = ((\add_instance|fa38|g1|Bit0_G~0_combout\ $ (\add_instance|fa48|x2|uneq~combout\)))

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
	datac => \add_instance|fa38|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa48|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa50|x1|uneq~combout\);

-- Location: LC_X6_Y10_N5
\add_instance|fa37|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa37|g1|Bit0_G~0_combout\ = (\input_vector~combout\(10) & ((\add_instance|a1:10:and_i|prod~combout\) # ((\input_vector~combout\(49) & \input_vector~combout\(41))))) # (!\input_vector~combout\(10) & (\input_vector~combout\(49) & 
-- (\input_vector~combout\(41) & \add_instance|a1:10:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(49),
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(41),
	datad => \add_instance|a1:10:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa37|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y9_N4
\add_instance|a5:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a5:7:and_i|prod~combout\ = (((\input_vector~combout\(52) & \input_vector~combout\(39))))

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
	datac => \input_vector~combout\(52),
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a5:7:and_i|prod~combout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[43]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(43),
	combout => \input_vector~combout\(43));

-- Location: LC_X8_Y10_N2
\add_instance|a1:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a1:11:and_i|prod~combout\ = ((\input_vector~combout\(43) & (\input_vector~combout\(48))))

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
	datab => \input_vector~combout\(43),
	datac => \input_vector~combout\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a1:11:and_i|prod~combout\);

-- Location: LC_X8_Y10_N5
\add_instance|fa46|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa46|x2|uneq~combout\ = \input_vector~combout\(11) $ (\add_instance|a1:11:and_i|prod~combout\ $ (((\input_vector~combout\(49) & \input_vector~combout\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(49),
	datab => \input_vector~combout\(42),
	datac => \input_vector~combout\(11),
	datad => \add_instance|a1:11:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa46|x2|uneq~combout\);

-- Location: LC_X9_Y9_N8
\add_instance|fa47|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa47|x1|uneq~combout\ = (\input_vector~combout\(51) & (\input_vector~combout\(40) $ (((\input_vector~combout\(50) & \input_vector~combout\(41)))))) # (!\input_vector~combout\(51) & (\input_vector~combout\(50) & (\input_vector~combout\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(51),
	datab => \input_vector~combout\(50),
	datac => \input_vector~combout\(41),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa47|x1|uneq~combout\);

-- Location: LC_X9_Y9_N3
\add_instance|fa49|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa49|x2|uneq~0_combout\ = \add_instance|fa37|g1|Bit0_G~0_combout\ $ (\add_instance|a5:7:and_i|prod~combout\ $ (\add_instance|fa46|x2|uneq~combout\ $ (\add_instance|fa47|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa37|g1|Bit0_G~0_combout\,
	datab => \add_instance|a5:7:and_i|prod~combout\,
	datac => \add_instance|fa46|x2|uneq~combout\,
	datad => \add_instance|fa47|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa49|x2|uneq~0_combout\);

-- Location: LC_X9_Y8_N0
\add_instance|fa52|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa52|x2|uneq~0_combout\ = \add_instance|ha10|a1|prod~combout\ $ (\add_instance|fa39|g1|Bit0_G~0_combout\ $ (\add_instance|fa50|x1|uneq~combout\ $ (\add_instance|fa49|x2|uneq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ha10|a1|prod~combout\,
	datab => \add_instance|fa39|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa50|x1|uneq~combout\,
	datad => \add_instance|fa49|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa52|x2|uneq~0_combout\);

-- Location: LC_X11_Y9_N8
\add_instance|fa54|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa54|x1|uneq~combout\ = (\add_instance|fa42|g1|Bit0_G~0_combout\ $ (((\add_instance|fa52|x2|uneq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa42|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa52|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa54|x1|uneq~combout\);

-- Location: LC_X6_Y8_N9
\add_instance|a9:2:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a9:2:and_i|prod~combout\ = (\input_vector~combout\(56) & (((\input_vector~combout\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(56),
	datac => \input_vector~combout\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a9:2:and_i|prod~combout\);

-- Location: LC_X6_Y8_N4
\add_instance|a10:1:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a10:1:and_i|prod~combout\ = (\input_vector~combout\(33) & (((\input_vector~combout\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(33),
	datac => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a10:1:and_i|prod~combout\);

-- Location: LC_X6_Y8_N7
\add_instance|fa43|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa43|x1|uneq~combout\ = \add_instance|a11:0:and_i|prod~combout\ $ (\add_instance|a9:2:and_i|prod~combout\ $ (\add_instance|a10:1:and_i|prod~combout\ $ (\add_instance|fa31|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a11:0:and_i|prod~combout\,
	datab => \add_instance|a9:2:and_i|prod~combout\,
	datac => \add_instance|a10:1:and_i|prod~combout\,
	datad => \add_instance|fa31|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa43|x1|uneq~combout\);

-- Location: LC_X5_Y9_N3
\add_instance|fa44|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa44|g1|Bit0_G~0_combout\ = (\add_instance|fa42|x2|uneq~combout\ & ((\add_instance|fa33|g1|Bit0_G~0_combout\) # (\add_instance|fa32|g1|Bit0_G~0_combout\ $ (\add_instance|fa43|x1|uneq~combout\)))) # (!\add_instance|fa42|x2|uneq~combout\ & 
-- (\add_instance|fa33|g1|Bit0_G~0_combout\ & (\add_instance|fa32|g1|Bit0_G~0_combout\ $ (\add_instance|fa43|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa42|x2|uneq~combout\,
	datab => \add_instance|fa32|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa43|x1|uneq~combout\,
	datad => \add_instance|fa33|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa44|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y8_N0
\add_instance|fa41|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa41|g1|Bit0_G~0_combout\ = (\add_instance|a9:2:and_i|prod~combout\ & ((\add_instance|a10:1:and_i|prod~combout\) # ((\input_vector~combout\(32) & \input_vector~combout\(58))))) # (!\add_instance|a9:2:and_i|prod~combout\ & 
-- (\input_vector~combout\(32) & (\add_instance|a10:1:and_i|prod~combout\ & \input_vector~combout\(58))))

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
	dataa => \input_vector~combout\(32),
	datab => \add_instance|a9:2:and_i|prod~combout\,
	datac => \add_instance|a10:1:and_i|prod~combout\,
	datad => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa41|g1|Bit0_G~0_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[59]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(59),
	combout => \input_vector~combout\(59));

-- Location: LC_X11_Y9_N1
\add_instance|a12:0:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:0:and_i|prod~combout\ = ((\input_vector~combout\(59) & (\input_vector~combout\(32))))

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
	datab => \input_vector~combout\(59),
	datac => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:0:and_i|prod~combout\);

-- Location: LC_X5_Y9_N8
\add_instance|fa40|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa40|g1|Bit0_G~0_combout\ = (\add_instance|ha9|a1|prod~combout\ & ((\add_instance|ha10|x1|uneq~combout\) # ((\input_vector~combout\(35) & \input_vector~combout\(55))))) # (!\add_instance|ha9|a1|prod~combout\ & (\input_vector~combout\(35) & 
-- (\add_instance|ha10|x1|uneq~combout\ & \input_vector~combout\(55))))

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
	dataa => \input_vector~combout\(35),
	datab => \add_instance|ha9|a1|prod~combout\,
	datac => \add_instance|ha10|x1|uneq~combout\,
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa40|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y9_N2
\add_instance|ha11|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha11|x1|uneq~combout\ = (\input_vector~combout\(34) & (\input_vector~combout\(57) $ (((\input_vector~combout\(56) & \input_vector~combout\(35)))))) # (!\input_vector~combout\(34) & (((\input_vector~combout\(56) & 
-- \input_vector~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(34),
	datab => \input_vector~combout\(57),
	datac => \input_vector~combout\(56),
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha11|x1|uneq~combout\);

-- Location: LC_X11_Y9_N9
\add_instance|fa51|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa51|x1|uneq~combout\ = (\add_instance|ha11|x1|uneq~combout\ $ (((\input_vector~combout\(33) & \input_vector~combout\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ha11|x1|uneq~combout\,
	datac => \input_vector~combout\(33),
	datad => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa51|x1|uneq~combout\);

-- Location: LC_X11_Y9_N7
\add_instance|fa53|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa53|x2|uneq~combout\ = \add_instance|fa41|g1|Bit0_G~0_combout\ $ (\add_instance|a12:0:and_i|prod~combout\ $ (\add_instance|fa40|g1|Bit0_G~0_combout\ $ (\add_instance|fa51|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa41|g1|Bit0_G~0_combout\,
	datab => \add_instance|a12:0:and_i|prod~combout\,
	datac => \add_instance|fa40|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa51|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa53|x2|uneq~combout\);

-- Location: LC_X6_Y8_N5
\add_instance|fa43|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa43|g1|Bit0_G~0_combout\ = (\add_instance|fa31|g1|Bit0_G~0_combout\ & ((\add_instance|fa32|g1|Bit0_G~0_combout\) # (\add_instance|a11:0:and_i|prod~combout\ $ (\add_instance|fa41|x1|uneq~combout\)))) # 
-- (!\add_instance|fa31|g1|Bit0_G~0_combout\ & (\add_instance|fa32|g1|Bit0_G~0_combout\ & (\add_instance|a11:0:and_i|prod~combout\ $ (\add_instance|fa41|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a11:0:and_i|prod~combout\,
	datab => \add_instance|fa31|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa32|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa41|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa43|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y9_N4
\add_instance|fa55|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa55|x2|uneq~combout\ = \add_instance|fa54|x1|uneq~combout\ $ (\add_instance|fa44|g1|Bit0_G~0_combout\ $ (\add_instance|fa53|x2|uneq~combout\ $ (\add_instance|fa43|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa54|x1|uneq~combout\,
	datab => \add_instance|fa44|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa53|x2|uneq~combout\,
	datad => \add_instance|fa43|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa55|x2|uneq~combout\);

-- Location: LC_X10_Y9_N7
\add_instance|bkadder|sum_xors:11:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:11:sum_xor_i|uneq~combout\ = \add_instance|fa45|g1|Bit0_G~0_combout\ $ (((\add_instance|bkadder|abc_c11|abc~0_combout\ $ (\add_instance|fa55|x2|uneq~combout\))))

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
	dataa => \add_instance|fa45|g1|Bit0_G~0_combout\,
	datac => \add_instance|bkadder|abc_c11|abc~0_combout\,
	datad => \add_instance|fa55|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:11:sum_xor_i|uneq~combout\);

-- Location: LC_X10_Y9_N2
\add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0_combout\ = (\add_instance|fa45|x2|uneq~combout\ & (!\add_instance|fa36|g1|Bit0_G~0_combout\ & (\add_instance|fa45|g1|Bit0_G~0_combout\ $ (\add_instance|fa55|x2|uneq~combout\)))) # 
-- (!\add_instance|fa45|x2|uneq~combout\ & (\add_instance|fa36|g1|Bit0_G~0_combout\ & (\add_instance|fa45|g1|Bit0_G~0_combout\ $ (\add_instance|fa55|x2|uneq~combout\))))

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
	dataa => \add_instance|fa45|x2|uneq~combout\,
	datab => \add_instance|fa36|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa45|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa55|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0_combout\);

-- Location: LC_X10_Y9_N9
\add_instance|bkadder|abc_gates_g1:5:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:5:abc_i|abc~0_combout\ = (\add_instance|fa45|g1|Bit0_G~0_combout\ & ((\add_instance|fa55|x2|uneq~combout\) # ((\add_instance|fa45|x2|uneq~combout\ & \add_instance|fa36|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa45|g1|Bit0_G~0_combout\ & (\add_instance|fa45|x2|uneq~combout\ & (\add_instance|fa36|g1|Bit0_G~0_combout\ & \add_instance|fa55|x2|uneq~combout\)))

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
	dataa => \add_instance|fa45|x2|uneq~combout\,
	datab => \add_instance|fa36|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa45|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa55|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:5:abc_i|abc~0_combout\);

-- Location: LC_X10_Y9_N1
\add_instance|bkadder|abc_gates_g2:2:abc_i|abc\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~combout\ = ((\add_instance|bkadder|abc_gates_g1:5:abc_i|abc~0_combout\) # ((\add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0_combout\ & \add_instance|bkadder|abc_gates_g1:4:abc_i|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g1:4:abc_i|abc~0_combout\,
	datad => \add_instance|bkadder|abc_gates_g1:5:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~combout\);

-- Location: LC_X11_Y9_N3
\add_instance|fa55|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa55|g1|Bit0_G~0_combout\ = (\add_instance|fa44|g1|Bit0_G~0_combout\ & ((\add_instance|fa43|g1|Bit0_G~0_combout\) # (\add_instance|fa54|x1|uneq~combout\ $ (\add_instance|fa53|x2|uneq~combout\)))) # (!\add_instance|fa44|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa43|g1|Bit0_G~0_combout\ & (\add_instance|fa54|x1|uneq~combout\ $ (\add_instance|fa53|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa54|x1|uneq~combout\,
	datab => \add_instance|fa44|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa53|x2|uneq~combout\,
	datad => \add_instance|fa43|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa55|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y9_N0
\add_instance|fa53|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa53|g1|Bit0_G~0_combout\ = (\add_instance|fa41|g1|Bit0_G~0_combout\ & ((\add_instance|fa40|g1|Bit0_G~0_combout\) # (\add_instance|a12:0:and_i|prod~combout\ $ (\add_instance|fa51|x1|uneq~combout\)))) # 
-- (!\add_instance|fa41|g1|Bit0_G~0_combout\ & (\add_instance|fa40|g1|Bit0_G~0_combout\ & (\add_instance|a12:0:and_i|prod~combout\ $ (\add_instance|fa51|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa41|g1|Bit0_G~0_combout\,
	datab => \add_instance|a12:0:and_i|prod~combout\,
	datac => \add_instance|fa40|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa51|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa53|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y8_N6
\add_instance|a11:1:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:1:and_i|prod~combout\ = ((\input_vector~combout\(33) & ((\input_vector~combout\(58)))))

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
	datab => \input_vector~combout\(33),
	datad => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:1:and_i|prod~combout\);

-- Location: LC_X11_Y9_N5
\add_instance|fa53|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa53|x1|uneq~combout\ = \add_instance|fa40|g1|Bit0_G~0_combout\ $ (\add_instance|a12:0:and_i|prod~combout\ $ (\add_instance|a11:1:and_i|prod~combout\ $ (\add_instance|ha11|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa40|g1|Bit0_G~0_combout\,
	datab => \add_instance|a12:0:and_i|prod~combout\,
	datac => \add_instance|a11:1:and_i|prod~combout\,
	datad => \add_instance|ha11|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa53|x1|uneq~combout\);

-- Location: LC_X11_Y9_N6
\add_instance|fa54|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa54|g1|Bit0_G~0_combout\ = (\add_instance|fa42|g1|Bit0_G~0_combout\ & ((\add_instance|fa52|x2|uneq~0_combout\) # (\add_instance|fa53|x1|uneq~combout\ $ (\add_instance|fa41|g1|Bit0_G~0_combout\)))) # (!\add_instance|fa42|g1|Bit0_G~0_combout\ 
-- & (\add_instance|fa52|x2|uneq~0_combout\ & (\add_instance|fa53|x1|uneq~combout\ $ (\add_instance|fa41|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa53|x1|uneq~combout\,
	datab => \add_instance|fa42|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa41|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa52|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa54|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y8_N2
\add_instance|fa52|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa52|g1|Bit0_G~0_combout\ = (\add_instance|fa39|g1|Bit0_G~0_combout\ & ((\add_instance|fa49|x2|uneq~0_combout\) # (\add_instance|ha10|a1|prod~combout\ $ (\add_instance|fa50|x1|uneq~combout\)))) # (!\add_instance|fa39|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa49|x2|uneq~0_combout\ & (\add_instance|ha10|a1|prod~combout\ $ (\add_instance|fa50|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ha10|a1|prod~combout\,
	datab => \add_instance|fa39|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa50|x1|uneq~combout\,
	datad => \add_instance|fa49|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa52|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y8_N5
\add_instance|fa48|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa48|g1|Bit0_G~0_combout\ = (\add_instance|a7:5:and_i|prod~combout\ & ((\add_instance|a6:6:and_i|prod~combout\) # ((\input_vector~combout\(36) & \input_vector~combout\(55))))) # (!\add_instance|a7:5:and_i|prod~combout\ & 
-- (\input_vector~combout\(36) & (\add_instance|a6:6:and_i|prod~combout\ & \input_vector~combout\(55))))

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
	dataa => \input_vector~combout\(36),
	datab => \add_instance|a7:5:and_i|prod~combout\,
	datac => \add_instance|a6:6:and_i|prod~combout\,
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa48|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y9_N5
\add_instance|fa49|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa49|g1|Bit0_G~0_combout\ = (\add_instance|fa37|g1|Bit0_G~0_combout\ & ((\add_instance|fa46|x2|uneq~combout\) # (\add_instance|a5:7:and_i|prod~combout\ $ (\add_instance|fa47|x1|uneq~combout\)))) # (!\add_instance|fa37|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa46|x2|uneq~combout\ & (\add_instance|a5:7:and_i|prod~combout\ $ (\add_instance|fa47|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa37|g1|Bit0_G~0_combout\,
	datab => \add_instance|a5:7:and_i|prod~combout\,
	datac => \add_instance|fa46|x2|uneq~combout\,
	datad => \add_instance|fa47|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa49|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y10_N4
\add_instance|a2:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a2:11:and_i|prod~combout\ = ((\input_vector~combout\(43) & ((\input_vector~combout\(49)))))

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
	datab => \input_vector~combout\(43),
	datad => \input_vector~combout\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a2:11:and_i|prod~combout\);

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[44]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(44),
	combout => \input_vector~combout\(44));

-- Location: LC_X8_Y10_N9
\add_instance|ha12|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha12|x1|uneq~combout\ = \input_vector~combout\(12) $ (((\input_vector~combout\(44) & (\input_vector~combout\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(44),
	datac => \input_vector~combout\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha12|x1|uneq~combout\);

-- Location: LC_X8_Y10_N3
\add_instance|fa56|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa56|x2|uneq~combout\ = \add_instance|a2:11:and_i|prod~combout\ $ (\add_instance|ha12|x1|uneq~combout\ $ (((\input_vector~combout\(42) & \input_vector~combout\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(42),
	datab => \input_vector~combout\(50),
	datac => \add_instance|a2:11:and_i|prod~combout\,
	datad => \add_instance|ha12|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa56|x2|uneq~combout\);

-- Location: LC_X7_Y10_N4
\add_instance|fa57|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa57|x1|uneq~combout\ = (\input_vector~combout\(51) & (\input_vector~combout\(41) $ (((\input_vector~combout\(52) & \input_vector~combout\(40)))))) # (!\input_vector~combout\(51) & (\input_vector~combout\(52) & 
-- ((\input_vector~combout\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(51),
	datab => \input_vector~combout\(52),
	datac => \input_vector~combout\(41),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa57|x1|uneq~combout\);

-- Location: LC_X8_Y10_N0
\add_instance|fa46|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa46|g1|Bit0_G~0_combout\ = (\input_vector~combout\(11) & ((\add_instance|a1:11:and_i|prod~combout\) # ((\input_vector~combout\(49) & \input_vector~combout\(42))))) # (!\input_vector~combout\(11) & (\input_vector~combout\(49) & 
-- (\input_vector~combout\(42) & \add_instance|a1:11:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(49),
	datab => \input_vector~combout\(42),
	datac => \input_vector~combout\(11),
	datad => \add_instance|a1:11:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa46|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y10_N1
\add_instance|a6:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a6:7:and_i|prod~combout\ = (((\input_vector~combout\(53) & \input_vector~combout\(39))))

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
	datac => \input_vector~combout\(53),
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a6:7:and_i|prod~combout\);

-- Location: LC_X8_Y10_N8
\add_instance|fa60|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa60|x2|uneq~0_combout\ = \add_instance|fa56|x2|uneq~combout\ $ (\add_instance|fa57|x1|uneq~combout\ $ (\add_instance|fa46|g1|Bit0_G~0_combout\ $ (\add_instance|a6:7:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa56|x2|uneq~combout\,
	datab => \add_instance|fa57|x1|uneq~combout\,
	datac => \add_instance|fa46|g1|Bit0_G~0_combout\,
	datad => \add_instance|a6:7:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa60|x2|uneq~0_combout\);

-- Location: LC_X10_Y10_N8
\add_instance|a9:4:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a9:4:and_i|prod~combout\ = (((\input_vector~combout\(56) & \input_vector~combout\(36))))

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
	datac => \input_vector~combout\(56),
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a9:4:and_i|prod~combout\);

-- Location: LC_X10_Y10_N1
\add_instance|a7:6:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a7:6:and_i|prod~combout\ = (((\input_vector~combout\(54) & \input_vector~combout\(38))))

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
	datac => \input_vector~combout\(54),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a7:6:and_i|prod~combout\);

-- Location: LC_X7_Y10_N8
\add_instance|a3:9:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a3:9:and_i|prod~combout\ = (\input_vector~combout\(50) & (((\input_vector~combout\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(50),
	datac => \input_vector~combout\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a3:9:and_i|prod~combout\);

-- Location: LC_X7_Y10_N5
\add_instance|a4:8:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a4:8:and_i|prod~combout\ = (\input_vector~combout\(51) & (((\input_vector~combout\(40)))))

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
	dataa => \input_vector~combout\(51),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a4:8:and_i|prod~combout\);

-- Location: LC_X7_Y10_N2
\add_instance|fa47|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa47|g1|Bit0_G~0_combout\ = (\add_instance|a3:9:and_i|prod~combout\ & ((\add_instance|a4:8:and_i|prod~combout\) # ((\input_vector~combout\(52) & \input_vector~combout\(39))))) # (!\add_instance|a3:9:and_i|prod~combout\ & 
-- (\input_vector~combout\(52) & (\add_instance|a4:8:and_i|prod~combout\ & \input_vector~combout\(39))))

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
	dataa => \add_instance|a3:9:and_i|prod~combout\,
	datab => \input_vector~combout\(52),
	datac => \add_instance|a4:8:and_i|prod~combout\,
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa47|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y10_N3
\add_instance|a8:5:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a8:5:and_i|prod~combout\ = ((\input_vector~combout\(37) & ((\input_vector~combout\(55)))))

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
	datab => \input_vector~combout\(37),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a8:5:and_i|prod~combout\);

-- Location: LC_X10_Y10_N2
\add_instance|fa61|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa61|x1|uneq~combout\ = \add_instance|a9:4:and_i|prod~combout\ $ (\add_instance|a7:6:and_i|prod~combout\ $ (\add_instance|fa47|g1|Bit0_G~0_combout\ $ (\add_instance|a8:5:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a9:4:and_i|prod~combout\,
	datab => \add_instance|a7:6:and_i|prod~combout\,
	datac => \add_instance|fa47|g1|Bit0_G~0_combout\,
	datad => \add_instance|a8:5:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa61|x1|uneq~combout\);

-- Location: LC_X10_Y10_N5
\add_instance|fa63|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa63|x2|uneq~combout\ = \add_instance|fa48|g1|Bit0_G~0_combout\ $ (\add_instance|fa49|g1|Bit0_G~0_combout\ $ (\add_instance|fa60|x2|uneq~0_combout\ $ (\add_instance|fa61|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa48|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa49|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa60|x2|uneq~0_combout\,
	datad => \add_instance|fa61|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa63|x2|uneq~combout\);

-- Location: LC_X11_Y10_N3
\add_instance|fa65|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa65|x1|uneq~combout\ = (\add_instance|fa52|g1|Bit0_G~0_combout\ $ ((\add_instance|fa63|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa52|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa63|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa65|x1|uneq~combout\);

-- Location: LC_X9_Y8_N7
\add_instance|fa50|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa50|g1|Bit0_G~0_combout\ = (\input_vector~combout\(53) & (\input_vector~combout\(54) & ((\input_vector~combout\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(53),
	datab => \input_vector~combout\(54),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa50|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y8_N8
\add_instance|fa50|g1|Bit0_G~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa50|g1|Bit0_G~1_combout\ = (\add_instance|fa38|g1|Bit0_G~0_combout\ & ((\add_instance|fa48|x2|uneq~combout\) # ((\input_vector~combout\(36) & \add_instance|fa50|g1|Bit0_G~0_combout\)))) # (!\add_instance|fa38|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa48|x2|uneq~combout\ & (\input_vector~combout\(36) & \add_instance|fa50|g1|Bit0_G~0_combout\)))

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
	dataa => \add_instance|fa38|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa48|x2|uneq~combout\,
	datac => \input_vector~combout\(36),
	datad => \add_instance|fa50|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa50|g1|Bit0_G~1_combout\);

-- Location: LC_X11_Y9_N2
\add_instance|fa51|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa51|g1|Bit0_G~0_combout\ = (\add_instance|a11:1:and_i|prod~combout\ & ((\add_instance|ha11|x1|uneq~combout\) # ((\input_vector~combout\(32) & \input_vector~combout\(59))))) # (!\add_instance|a11:1:and_i|prod~combout\ & 
-- (\input_vector~combout\(32) & (\input_vector~combout\(59) & \add_instance|ha11|x1|uneq~combout\)))

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
	dataa => \input_vector~combout\(32),
	datab => \input_vector~combout\(59),
	datac => \add_instance|a11:1:and_i|prod~combout\,
	datad => \add_instance|ha11|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa51|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y9_N9
\add_instance|ha11|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha11|a1|prod~combout\ = (\input_vector~combout\(57) & (\input_vector~combout\(56) & (\input_vector~combout\(34) & \input_vector~combout\(35))))

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
	dataa => \input_vector~combout\(57),
	datab => \input_vector~combout\(56),
	datac => \input_vector~combout\(34),
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha11|a1|prod~combout\);

-- Location: LC_X13_Y9_N5
\add_instance|a11:2:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:2:and_i|prod~combout\ = (\input_vector~combout\(34) & (((\input_vector~combout\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(34),
	datac => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:2:and_i|prod~combout\);

-- Location: LC_X13_Y9_N9
\add_instance|a10:3:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a10:3:and_i|prod~combout\ = ((\input_vector~combout\(57) & ((\input_vector~combout\(35)))))

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
	datab => \input_vector~combout\(57),
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a10:3:and_i|prod~combout\);

-- Location: LC_X13_Y9_N1
\add_instance|fa59|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa59|x2|uneq~combout\ = \add_instance|a11:2:and_i|prod~combout\ $ (\add_instance|a10:3:and_i|prod~combout\ $ (((\input_vector~combout\(33) & \input_vector~combout\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a11:2:and_i|prod~combout\,
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(59),
	datad => \add_instance|a10:3:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa59|x2|uneq~combout\);

-- Location: LC_X12_Y9_N4
\add_instance|fa62|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa62|x1|uneq~combout\ = (\add_instance|ha11|a1|prod~combout\ $ (((\add_instance|fa59|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ha11|a1|prod~combout\,
	datad => \add_instance|fa59|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa62|x1|uneq~combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[60]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(60),
	combout => \input_vector~combout\(60));

-- Location: LC_X12_Y9_N7
\add_instance|a13:0:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a13:0:and_i|prod~combout\ = ((\input_vector~combout\(60) & ((\input_vector~combout\(32)))))

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
	datab => \input_vector~combout\(60),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a13:0:and_i|prod~combout\);

-- Location: LC_X12_Y9_N8
\add_instance|fa64|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa64|x2|uneq~combout\ = \add_instance|fa50|g1|Bit0_G~1_combout\ $ (\add_instance|fa51|g1|Bit0_G~0_combout\ $ (\add_instance|fa62|x1|uneq~combout\ $ (\add_instance|a13:0:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa50|g1|Bit0_G~1_combout\,
	datab => \add_instance|fa51|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa62|x1|uneq~combout\,
	datad => \add_instance|a13:0:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa64|x2|uneq~combout\);

-- Location: LC_X11_Y10_N6
\add_instance|fa66|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa66|x2|uneq~combout\ = \add_instance|fa53|g1|Bit0_G~0_combout\ $ (\add_instance|fa54|g1|Bit0_G~0_combout\ $ (\add_instance|fa65|x1|uneq~combout\ $ (\add_instance|fa64|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa53|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa54|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa65|x1|uneq~combout\,
	datad => \add_instance|fa64|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa66|x2|uneq~combout\);

-- Location: LC_X8_Y9_N0
\add_instance|bkadder|abc_c12|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c12|abc~0_combout\ = (\add_instance|bkadder|abc_c10|abc~0_combout\ & (\add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0_combout\ & ((\add_instance|bkadder|abc_gates_g2:1:abc_i|abc~combout\) # 
-- (\add_instance|bkadder|abc_gates_g3:0:abc_i|abc~1_combout\))))

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
	dataa => \add_instance|bkadder|abc_c10|abc~0_combout\,
	datab => \add_instance|bkadder|abc_gates_g2:1:abc_i|abc~combout\,
	datac => \add_instance|bkadder|abc_gates_g3:0:abc_i|abc~1_combout\,
	datad => \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c12|abc~0_combout\);

-- Location: LC_X11_Y10_N2
\add_instance|bkadder|sum_xors:12:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:12:sum_xor_i|uneq~combout\ = \add_instance|fa55|g1|Bit0_G~0_combout\ $ (\add_instance|fa66|x2|uneq~combout\ $ (((\add_instance|bkadder|abc_gates_g2:2:abc_i|abc~combout\) # (\add_instance|bkadder|abc_c12|abc~0_combout\))))

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
	dataa => \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~combout\,
	datab => \add_instance|fa55|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa66|x2|uneq~combout\,
	datad => \add_instance|bkadder|abc_c12|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:12:sum_xor_i|uneq~combout\);

-- Location: LC_X11_Y10_N9
\add_instance|bkadder|abc_c13|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c13|abc~0_combout\ = (\add_instance|fa55|g1|Bit0_G~0_combout\ & ((\add_instance|bkadder|abc_gates_g2:2:abc_i|abc~combout\) # ((\add_instance|fa66|x2|uneq~combout\) # (\add_instance|bkadder|abc_c12|abc~0_combout\)))) # 
-- (!\add_instance|fa55|g1|Bit0_G~0_combout\ & (\add_instance|fa66|x2|uneq~combout\ & ((\add_instance|bkadder|abc_gates_g2:2:abc_i|abc~combout\) # (\add_instance|bkadder|abc_c12|abc~0_combout\))))

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
	dataa => \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~combout\,
	datab => \add_instance|fa55|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa66|x2|uneq~combout\,
	datad => \add_instance|bkadder|abc_c12|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c13|abc~0_combout\);

-- Location: LC_X11_Y10_N4
\add_instance|fa66|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa66|g1|Bit0_G~0_combout\ = (\add_instance|fa53|g1|Bit0_G~0_combout\ & ((\add_instance|fa54|g1|Bit0_G~0_combout\) # (\add_instance|fa65|x1|uneq~combout\ $ (\add_instance|fa64|x2|uneq~combout\)))) # (!\add_instance|fa53|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa54|g1|Bit0_G~0_combout\ & (\add_instance|fa65|x1|uneq~combout\ $ (\add_instance|fa64|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa53|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa54|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa65|x1|uneq~combout\,
	datad => \add_instance|fa64|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa66|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y10_N4
\add_instance|fa63|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa63|g1|Bit0_G~0_combout\ = (\add_instance|fa49|g1|Bit0_G~0_combout\ & ((\add_instance|fa60|x2|uneq~0_combout\) # (\add_instance|fa48|g1|Bit0_G~0_combout\ $ (\add_instance|fa61|x1|uneq~combout\)))) # (!\add_instance|fa49|g1|Bit0_G~0_combout\ 
-- & (\add_instance|fa60|x2|uneq~0_combout\ & (\add_instance|fa48|g1|Bit0_G~0_combout\ $ (\add_instance|fa61|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa48|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa49|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa60|x2|uneq~0_combout\,
	datad => \add_instance|fa61|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa63|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y10_N6
\add_instance|fa58|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa58|g1|Bit0_G~0_combout\ = (\add_instance|a8:5:and_i|prod~combout\ & ((\add_instance|a7:6:and_i|prod~combout\) # ((\input_vector~combout\(56) & \input_vector~combout\(36))))) # (!\add_instance|a8:5:and_i|prod~combout\ & 
-- (\add_instance|a7:6:and_i|prod~combout\ & (\input_vector~combout\(56) & \input_vector~combout\(36))))

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
	dataa => \add_instance|a8:5:and_i|prod~combout\,
	datab => \add_instance|a7:6:and_i|prod~combout\,
	datac => \input_vector~combout\(56),
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa58|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y10_N1
\add_instance|fa60|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa60|g1|Bit0_G~0_combout\ = (\add_instance|fa56|x2|uneq~combout\ & ((\add_instance|fa46|g1|Bit0_G~0_combout\) # (\add_instance|fa57|x1|uneq~combout\ $ (\add_instance|a6:7:and_i|prod~combout\)))) # (!\add_instance|fa56|x2|uneq~combout\ & 
-- (\add_instance|fa46|g1|Bit0_G~0_combout\ & (\add_instance|fa57|x1|uneq~combout\ $ (\add_instance|a6:7:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa56|x2|uneq~combout\,
	datab => \add_instance|fa57|x1|uneq~combout\,
	datac => \add_instance|fa46|g1|Bit0_G~0_combout\,
	datad => \add_instance|a6:7:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa60|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y10_N2
\add_instance|fa75|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa75|x2|uneq~0_combout\ = (\add_instance|fa58|g1|Bit0_G~0_combout\ $ ((\add_instance|fa60|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa58|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa60|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa75|x2|uneq~0_combout\);

-- Location: LC_X7_Y10_N9
\add_instance|a4:9:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a4:9:and_i|prod~combout\ = (\input_vector~combout\(51) & (((\input_vector~combout\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(51),
	datac => \input_vector~combout\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a4:9:and_i|prod~combout\);

-- Location: LC_X7_Y10_N7
\add_instance|a5:8:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a5:8:and_i|prod~combout\ = ((\input_vector~combout\(52) & ((\input_vector~combout\(40)))))

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
	datab => \input_vector~combout\(52),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a5:8:and_i|prod~combout\);

-- Location: LC_X7_Y10_N6
\add_instance|fa57|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa57|g1|Bit0_G~0_combout\ = (\add_instance|a4:9:and_i|prod~combout\ & ((\add_instance|a5:8:and_i|prod~combout\) # ((\input_vector~combout\(53) & \input_vector~combout\(39))))) # (!\add_instance|a4:9:and_i|prod~combout\ & 
-- (\input_vector~combout\(53) & (\add_instance|a5:8:and_i|prod~combout\ & \input_vector~combout\(39))))

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
	dataa => \input_vector~combout\(53),
	datab => \add_instance|a4:9:and_i|prod~combout\,
	datac => \add_instance|a5:8:and_i|prod~combout\,
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa57|g1|Bit0_G~0_combout\);

-- Location: LC_X14_Y10_N9
\add_instance|a10:4:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a10:4:and_i|prod~combout\ = ((\input_vector~combout\(57) & ((\input_vector~combout\(36)))))

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
	datab => \input_vector~combout\(57),
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a10:4:and_i|prod~combout\);

-- Location: LC_X14_Y10_N6
\add_instance|a8:6:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a8:6:and_i|prod~combout\ = ((\input_vector~combout\(38) & ((\input_vector~combout\(55)))))

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
	datab => \input_vector~combout\(38),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a8:6:and_i|prod~combout\);

-- Location: LC_X14_Y10_N2
\add_instance|a9:5:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a9:5:and_i|prod~combout\ = ((\input_vector~combout\(56) & (\input_vector~combout\(37))))

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
	datab => \input_vector~combout\(56),
	datac => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a9:5:and_i|prod~combout\);

-- Location: LC_X14_Y10_N4
\add_instance|fa73|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa73|x1|uneq~combout\ = \add_instance|fa57|g1|Bit0_G~0_combout\ $ (\add_instance|a10:4:and_i|prod~combout\ $ (\add_instance|a8:6:and_i|prod~combout\ $ (\add_instance|a9:5:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa57|g1|Bit0_G~0_combout\,
	datab => \add_instance|a10:4:and_i|prod~combout\,
	datac => \add_instance|a8:6:and_i|prod~combout\,
	datad => \add_instance|a9:5:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa73|x1|uneq~combout\);

-- Location: LC_X9_Y10_N3
\add_instance|ha13|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha13|x1|uneq~combout\ = (\input_vector~combout\(51) & (\input_vector~combout\(42) $ (((\input_vector~combout\(50) & \input_vector~combout\(43)))))) # (!\input_vector~combout\(51) & (\input_vector~combout\(50) & (\input_vector~combout\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(51),
	datab => \input_vector~combout\(50),
	datac => \input_vector~combout\(43),
	datad => \input_vector~combout\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha13|x1|uneq~combout\);

-- Location: LC_X9_Y10_N9
\add_instance|fa69|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa69|x1|uneq~combout\ = \add_instance|ha13|x1|uneq~combout\ $ ((((\input_vector~combout\(53) & \input_vector~combout\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ha13|x1|uneq~combout\,
	datac => \input_vector~combout\(53),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa69|x1|uneq~combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[45]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(45),
	combout => \input_vector~combout\(45));

-- Location: LC_X5_Y10_N5
\add_instance|a1:13:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a1:13:and_i|prod~combout\ = (((\input_vector~combout\(45) & \input_vector~combout\(48))))

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
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a1:13:and_i|prod~combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X5_Y10_N4
\add_instance|fa67|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa67|x2|uneq~combout\ = \add_instance|a1:13:and_i|prod~combout\ $ (\input_vector~combout\(13) $ (((\input_vector~combout\(49) & \input_vector~combout\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a1:13:and_i|prod~combout\,
	datab => \input_vector~combout\(49),
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa67|x2|uneq~combout\);

-- Location: LC_X8_Y10_N7
\add_instance|ha12|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha12|a1|prod~combout\ = (\input_vector~combout\(12) & (\input_vector~combout\(44) & (\input_vector~combout\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(44),
	datac => \input_vector~combout\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha12|a1|prod~combout\);

-- Location: LC_X5_Y10_N6
\add_instance|fa68|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa68|x2|uneq~0_combout\ = \add_instance|fa67|x2|uneq~combout\ $ (\add_instance|ha12|a1|prod~combout\ $ (((\input_vector~combout\(52) & \input_vector~combout\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa67|x2|uneq~combout\,
	datab => \input_vector~combout\(52),
	datac => \input_vector~combout\(41),
	datad => \add_instance|ha12|a1|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa68|x2|uneq~0_combout\);

-- Location: LC_X12_Y10_N6
\add_instance|a7:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a7:7:and_i|prod~combout\ = ((\input_vector~combout\(54) & ((\input_vector~combout\(39)))))

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
	datab => \input_vector~combout\(54),
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a7:7:and_i|prod~combout\);

-- Location: LC_X8_Y10_N6
\add_instance|fa56|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa56|g1|Bit0_G~0_combout\ = (\add_instance|a2:11:and_i|prod~combout\ & ((\add_instance|ha12|x1|uneq~combout\) # ((\input_vector~combout\(42) & \input_vector~combout\(50))))) # (!\add_instance|a2:11:and_i|prod~combout\ & 
-- (\input_vector~combout\(42) & (\input_vector~combout\(50) & \add_instance|ha12|x1|uneq~combout\)))

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
	dataa => \input_vector~combout\(42),
	datab => \input_vector~combout\(50),
	datac => \add_instance|a2:11:and_i|prod~combout\,
	datad => \add_instance|ha12|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa56|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y10_N3
\add_instance|fa72|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa72|x2|uneq~combout\ = \add_instance|fa69|x1|uneq~combout\ $ (\add_instance|fa68|x2|uneq~0_combout\ $ (\add_instance|a7:7:and_i|prod~combout\ $ (\add_instance|fa56|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa69|x1|uneq~combout\,
	datab => \add_instance|fa68|x2|uneq~0_combout\,
	datac => \add_instance|a7:7:and_i|prod~combout\,
	datad => \add_instance|fa56|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa72|x2|uneq~combout\);

-- Location: LC_X12_Y10_N7
\add_instance|fa77|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa77|x1|uneq~combout\ = \add_instance|fa63|g1|Bit0_G~0_combout\ $ (\add_instance|fa75|x2|uneq~0_combout\ $ (\add_instance|fa73|x1|uneq~combout\ $ (\add_instance|fa72|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa63|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa75|x2|uneq~0_combout\,
	datac => \add_instance|fa73|x1|uneq~combout\,
	datad => \add_instance|fa72|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa77|x1|uneq~combout\);

-- Location: LC_X12_Y9_N3
\add_instance|fa64|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa64|x1|uneq~combout\ = \add_instance|a13:0:and_i|prod~combout\ $ (\add_instance|ha11|a1|prod~combout\ $ (\add_instance|fa50|g1|Bit0_G~1_combout\ $ (\add_instance|fa59|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a13:0:and_i|prod~combout\,
	datab => \add_instance|ha11|a1|prod~combout\,
	datac => \add_instance|fa50|g1|Bit0_G~1_combout\,
	datad => \add_instance|fa59|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa64|x1|uneq~combout\);

-- Location: LC_X12_Y9_N0
\add_instance|fa65|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa65|g1|Bit0_G~0_combout\ = (\add_instance|fa63|x2|uneq~combout\ & ((\add_instance|fa52|g1|Bit0_G~0_combout\) # (\add_instance|fa51|g1|Bit0_G~0_combout\ $ (\add_instance|fa64|x1|uneq~combout\)))) # (!\add_instance|fa63|x2|uneq~combout\ & 
-- (\add_instance|fa52|g1|Bit0_G~0_combout\ & (\add_instance|fa51|g1|Bit0_G~0_combout\ $ (\add_instance|fa64|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa63|x2|uneq~combout\,
	datab => \add_instance|fa51|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa52|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa64|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa65|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y9_N5
\add_instance|fa64|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa64|g1|Bit0_G~0_combout\ = (\add_instance|fa51|g1|Bit0_G~0_combout\ & ((\add_instance|fa50|g1|Bit0_G~1_combout\) # (\add_instance|a13:0:and_i|prod~combout\ $ (\add_instance|fa62|x1|uneq~combout\)))) # 
-- (!\add_instance|fa51|g1|Bit0_G~0_combout\ & (\add_instance|fa50|g1|Bit0_G~1_combout\ & (\add_instance|a13:0:and_i|prod~combout\ $ (\add_instance|fa62|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a13:0:and_i|prod~combout\,
	datab => \add_instance|fa51|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa50|g1|Bit0_G~1_combout\,
	datad => \add_instance|fa62|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa64|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y9_N3
\add_instance|a11:3:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:3:and_i|prod~combout\ = (\input_vector~combout\(35) & (((\input_vector~combout\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(35),
	datac => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:3:and_i|prod~combout\);

-- Location: LC_X13_Y9_N6
\add_instance|a12:2:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:2:and_i|prod~combout\ = (\input_vector~combout\(34) & (((\input_vector~combout\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(34),
	datac => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:2:and_i|prod~combout\);

-- Location: LC_X13_Y9_N4
\add_instance|fa71|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa71|x2|uneq~combout\ = \add_instance|a11:3:and_i|prod~combout\ $ (\add_instance|a12:2:and_i|prod~combout\ $ (((\input_vector~combout\(33) & \input_vector~combout\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a11:3:and_i|prod~combout\,
	datab => \input_vector~combout\(33),
	datac => \add_instance|a12:2:and_i|prod~combout\,
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa71|x2|uneq~combout\);

-- Location: LC_X13_Y9_N0
\add_instance|fa59|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa59|g1|Bit0_G~0_combout\ = (\add_instance|a11:2:and_i|prod~combout\ & ((\add_instance|a10:3:and_i|prod~combout\) # ((\input_vector~combout\(33) & \input_vector~combout\(59))))) # (!\add_instance|a11:2:and_i|prod~combout\ & 
-- (\input_vector~combout\(33) & (\input_vector~combout\(59) & \add_instance|a10:3:and_i|prod~combout\)))

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
	dataa => \add_instance|a11:2:and_i|prod~combout\,
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(59),
	datad => \add_instance|a10:3:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa59|g1|Bit0_G~0_combout\);

-- Location: LC_X14_Y9_N4
\add_instance|fa74|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa74|x1|uneq~combout\ = (\add_instance|fa71|x2|uneq~combout\ $ (((\add_instance|fa59|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa71|x2|uneq~combout\,
	datad => \add_instance|fa59|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa74|x1|uneq~combout\);

-- Location: LC_X12_Y9_N1
\add_instance|fa62|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa62|g1|Bit0_G~0_combout\ = (\add_instance|fa59|x2|uneq~combout\ & ((\add_instance|ha11|a1|prod~combout\) # ((\input_vector~combout\(60) & \input_vector~combout\(32))))) # (!\add_instance|fa59|x2|uneq~combout\ & (\input_vector~combout\(60) & 
-- (\add_instance|ha11|a1|prod~combout\ & \input_vector~combout\(32))))

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
	dataa => \add_instance|fa59|x2|uneq~combout\,
	datab => \input_vector~combout\(60),
	datac => \add_instance|ha11|a1|prod~combout\,
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa62|g1|Bit0_G~0_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[61]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(61),
	combout => \input_vector~combout\(61));

-- Location: LC_X14_Y9_N6
\add_instance|a14:0:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:0:and_i|prod~combout\ = ((\input_vector~combout\(61) & (\input_vector~combout\(32))))

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
	datab => \input_vector~combout\(61),
	datac => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:0:and_i|prod~combout\);

-- Location: LC_X10_Y10_N7
\add_instance|fa58|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa58|x1|uneq~combout\ = (\input_vector~combout\(38) & (\input_vector~combout\(54) $ (((\input_vector~combout\(37) & \input_vector~combout\(55)))))) # (!\input_vector~combout\(38) & (\input_vector~combout\(37) & 
-- ((\input_vector~combout\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(38),
	datab => \input_vector~combout\(37),
	datac => \input_vector~combout\(54),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa58|x1|uneq~combout\);

-- Location: LC_X10_Y10_N9
\add_instance|fa61|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa61|g1|Bit0_G~0_combout\ = (\add_instance|fa48|g1|Bit0_G~0_combout\ & ((\add_instance|fa47|g1|Bit0_G~0_combout\) # (\add_instance|fa58|x1|uneq~combout\ $ (\add_instance|a9:4:and_i|prod~combout\)))) # 
-- (!\add_instance|fa48|g1|Bit0_G~0_combout\ & (\add_instance|fa47|g1|Bit0_G~0_combout\ & (\add_instance|fa58|x1|uneq~combout\ $ (\add_instance|a9:4:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa48|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa47|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa58|x1|uneq~combout\,
	datad => \add_instance|a9:4:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa61|g1|Bit0_G~0_combout\);

-- Location: LC_X14_Y9_N9
\add_instance|fa76|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa76|x2|uneq~combout\ = \add_instance|fa74|x1|uneq~combout\ $ (\add_instance|fa62|g1|Bit0_G~0_combout\ $ (\add_instance|a14:0:and_i|prod~combout\ $ (\add_instance|fa61|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa74|x1|uneq~combout\,
	datab => \add_instance|fa62|g1|Bit0_G~0_combout\,
	datac => \add_instance|a14:0:and_i|prod~combout\,
	datad => \add_instance|fa61|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa76|x2|uneq~combout\);

-- Location: LC_X12_Y9_N6
\add_instance|fa78|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa78|x2|uneq~combout\ = \add_instance|fa77|x1|uneq~combout\ $ (\add_instance|fa65|g1|Bit0_G~0_combout\ $ (\add_instance|fa64|g1|Bit0_G~0_combout\ $ (\add_instance|fa76|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa77|x1|uneq~combout\,
	datab => \add_instance|fa65|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa64|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa76|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa78|x2|uneq~combout\);

-- Location: LC_X11_Y10_N8
\add_instance|bkadder|sum_xors:13:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:13:sum_xor_i|uneq~combout\ = (\add_instance|bkadder|abc_c13|abc~0_combout\ $ (\add_instance|fa66|g1|Bit0_G~0_combout\ $ (\add_instance|fa78|x2|uneq~combout\)))

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
	datab => \add_instance|bkadder|abc_c13|abc~0_combout\,
	datac => \add_instance|fa66|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa78|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:13:sum_xor_i|uneq~combout\);

-- Location: LC_X12_Y9_N2
\add_instance|fa78|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa78|g1|Bit0_G~0_combout\ = (\add_instance|fa65|g1|Bit0_G~0_combout\ & ((\add_instance|fa64|g1|Bit0_G~0_combout\) # (\add_instance|fa77|x1|uneq~combout\ $ (\add_instance|fa76|x2|uneq~combout\)))) # (!\add_instance|fa65|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa64|g1|Bit0_G~0_combout\ & (\add_instance|fa77|x1|uneq~combout\ $ (\add_instance|fa76|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa77|x1|uneq~combout\,
	datab => \add_instance|fa65|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa64|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa76|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa78|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y10_N5
\add_instance|bkadder|abc_c14|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c14|abc~0_combout\ = (\add_instance|fa66|x2|uneq~combout\ & (!\add_instance|fa55|g1|Bit0_G~0_combout\ & (\add_instance|fa66|g1|Bit0_G~0_combout\ $ (\add_instance|fa78|x2|uneq~combout\)))) # (!\add_instance|fa66|x2|uneq~combout\ & 
-- (\add_instance|fa55|g1|Bit0_G~0_combout\ & (\add_instance|fa66|g1|Bit0_G~0_combout\ $ (\add_instance|fa78|x2|uneq~combout\))))

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
	dataa => \add_instance|fa66|x2|uneq~combout\,
	datab => \add_instance|fa55|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa66|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa78|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c14|abc~0_combout\);

-- Location: LC_X12_Y8_N2
\add_instance|bkadder|abc_c14|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c14|abc~1_combout\ = (\add_instance|bkadder|abc_c14|abc~0_combout\ & ((\add_instance|bkadder|abc_gates_g2:2:abc_i|abc~combout\) # ((\add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0_combout\ & 
-- \add_instance|bkadder|abc_c10|abc~1_combout\))))

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
	dataa => \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0_combout\,
	datab => \add_instance|bkadder|abc_c10|abc~1_combout\,
	datac => \add_instance|bkadder|abc_c14|abc~0_combout\,
	datad => \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c14|abc~1_combout\);

-- Location: LC_X11_Y10_N7
\add_instance|bkadder|abc_gates_g1:6:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:6:abc_i|abc~0_combout\ = (\add_instance|fa66|g1|Bit0_G~0_combout\ & ((\add_instance|fa78|x2|uneq~combout\) # ((\add_instance|fa66|x2|uneq~combout\ & \add_instance|fa55|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa66|g1|Bit0_G~0_combout\ & (\add_instance|fa66|x2|uneq~combout\ & (\add_instance|fa55|g1|Bit0_G~0_combout\ & \add_instance|fa78|x2|uneq~combout\)))

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
	dataa => \add_instance|fa66|x2|uneq~combout\,
	datab => \add_instance|fa55|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa66|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa78|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:6:abc_i|abc~0_combout\);

-- Location: LC_X12_Y10_N8
\add_instance|fa75|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa75|g1|Bit0_G~0_combout\ = (\add_instance|fa72|x2|uneq~combout\ & ((\add_instance|fa60|g1|Bit0_G~0_combout\) # (\add_instance|fa58|g1|Bit0_G~0_combout\ $ (\add_instance|fa73|x1|uneq~combout\)))) # (!\add_instance|fa72|x2|uneq~combout\ & 
-- (\add_instance|fa60|g1|Bit0_G~0_combout\ & (\add_instance|fa58|g1|Bit0_G~0_combout\ $ (\add_instance|fa73|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa72|x2|uneq~combout\,
	datab => \add_instance|fa58|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa73|x1|uneq~combout\,
	datad => \add_instance|fa60|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa75|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y10_N4
\add_instance|ha14|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha14|x1|uneq~combout\ = (\input_vector~combout\(41) & (\input_vector~combout\(53) $ (((\input_vector~combout\(54) & \input_vector~combout\(40)))))) # (!\input_vector~combout\(41) & (\input_vector~combout\(54) & 
-- ((\input_vector~combout\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(41),
	datab => \input_vector~combout\(54),
	datac => \input_vector~combout\(53),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha14|x1|uneq~combout\);

-- Location: LC_X9_Y10_N8
\add_instance|ha13|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha13|a1|prod~combout\ = (\input_vector~combout\(51) & (\input_vector~combout\(50) & (\input_vector~combout\(43) & \input_vector~combout\(42))))

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
	dataa => \input_vector~combout\(51),
	datab => \input_vector~combout\(50),
	datac => \input_vector~combout\(43),
	datad => \input_vector~combout\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha13|a1|prod~combout\);

-- Location: LC_X9_Y10_N7
\add_instance|fa81|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa81|x1|uneq~combout\ = ((\add_instance|ha14|x1|uneq~combout\ $ (\add_instance|ha13|a1|prod~combout\)))

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
	datac => \add_instance|ha14|x1|uneq~combout\,
	datad => \add_instance|ha13|a1|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa81|x1|uneq~combout\);

-- Location: LC_X5_Y10_N9
\add_instance|fa68|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa68|g1|Bit0_G~0_combout\ = (\add_instance|fa67|x2|uneq~combout\ & ((\add_instance|ha12|a1|prod~combout\) # ((\input_vector~combout\(52) & \input_vector~combout\(41))))) # (!\add_instance|fa67|x2|uneq~combout\ & (\input_vector~combout\(52) & 
-- (\input_vector~combout\(41) & \add_instance|ha12|a1|prod~combout\)))

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
	dataa => \add_instance|fa67|x2|uneq~combout\,
	datab => \input_vector~combout\(52),
	datac => \input_vector~combout\(41),
	datad => \add_instance|ha12|a1|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa68|g1|Bit0_G~0_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[46]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(46),
	combout => \input_vector~combout\(46));

-- Location: LC_X1_Y9_N3
\add_instance|a1:14:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a1:14:and_i|prod~combout\ = ((\input_vector~combout\(48) & ((\input_vector~combout\(46)))))

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
	datab => \input_vector~combout\(48),
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a1:14:and_i|prod~combout\);

-- Location: LC_X1_Y9_N5
\add_instance|fa79|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa79|x2|uneq~combout\ = \input_vector~combout\(14) $ (\add_instance|a1:14:and_i|prod~combout\ $ (((\input_vector~combout\(49) & \input_vector~combout\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(49),
	datab => \input_vector~combout\(14),
	datac => \input_vector~combout\(45),
	datad => \add_instance|a1:14:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa79|x2|uneq~combout\);

-- Location: LC_X2_Y10_N9
\add_instance|fa80|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa80|x1|uneq~combout\ = (\input_vector~combout\(43) & (\input_vector~combout\(51) $ (((\input_vector~combout\(50) & \input_vector~combout\(44)))))) # (!\input_vector~combout\(43) & (\input_vector~combout\(50) & 
-- ((\input_vector~combout\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(43),
	datab => \input_vector~combout\(50),
	datac => \input_vector~combout\(51),
	datad => \input_vector~combout\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa80|x1|uneq~combout\);

-- Location: LC_X5_Y10_N7
\add_instance|a5:10:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a5:10:and_i|prod~combout\ = ((\input_vector~combout\(52) & (\input_vector~combout\(42))))

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
	datab => \input_vector~combout\(52),
	datac => \input_vector~combout\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a5:10:and_i|prod~combout\);

-- Location: LC_X5_Y10_N8
\add_instance|fa67|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa67|g1|Bit0_G~0_combout\ = (\add_instance|a1:13:and_i|prod~combout\ & ((\input_vector~combout\(13)) # ((\input_vector~combout\(49) & \input_vector~combout\(44))))) # (!\add_instance|a1:13:and_i|prod~combout\ & (\input_vector~combout\(49) & 
-- (\input_vector~combout\(44) & \input_vector~combout\(13))))

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
	dataa => \add_instance|a1:13:and_i|prod~combout\,
	datab => \input_vector~combout\(49),
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa67|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y10_N3
\add_instance|fa224|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa224|x2|uneq~0_combout\ = \add_instance|fa79|x2|uneq~combout\ $ (\add_instance|fa80|x1|uneq~combout\ $ (\add_instance|a5:10:and_i|prod~combout\ $ (\add_instance|fa67|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa79|x2|uneq~combout\,
	datab => \add_instance|fa80|x1|uneq~combout\,
	datac => \add_instance|a5:10:and_i|prod~combout\,
	datad => \add_instance|fa67|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa224|x2|uneq~0_combout\);

-- Location: LC_X14_Y8_N2
\add_instance|a8:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a8:7:and_i|prod~combout\ = (\input_vector~combout\(55) & (((\input_vector~combout\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(55),
	datac => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a8:7:and_i|prod~combout\);

-- Location: LC_X14_Y8_N6
\add_instance|fa84|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa84|x2|uneq~combout\ = \add_instance|fa81|x1|uneq~combout\ $ (\add_instance|fa68|g1|Bit0_G~0_combout\ $ (\add_instance|fa224|x2|uneq~0_combout\ $ (\add_instance|a8:7:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa81|x1|uneq~combout\,
	datab => \add_instance|fa68|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa224|x2|uneq~0_combout\,
	datad => \add_instance|a8:7:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa84|x2|uneq~combout\);

-- Location: LC_X12_Y10_N4
\add_instance|fa72|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa72|g1|Bit0_G~0_combout\ = (\add_instance|fa68|x2|uneq~0_combout\ & ((\add_instance|fa56|g1|Bit0_G~0_combout\) # (\add_instance|fa69|x1|uneq~combout\ $ (\add_instance|a7:7:and_i|prod~combout\)))) # (!\add_instance|fa68|x2|uneq~0_combout\ & 
-- (\add_instance|fa56|g1|Bit0_G~0_combout\ & (\add_instance|fa69|x1|uneq~combout\ $ (\add_instance|a7:7:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa69|x1|uneq~combout\,
	datab => \add_instance|fa68|x2|uneq~0_combout\,
	datac => \add_instance|a7:7:and_i|prod~combout\,
	datad => \add_instance|fa56|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa72|g1|Bit0_G~0_combout\);

-- Location: LC_X14_Y10_N3
\add_instance|fa70|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa70|g1|Bit0_G~0_combout\ = (\add_instance|a8:6:and_i|prod~combout\ & ((\add_instance|a9:5:and_i|prod~combout\) # ((\input_vector~combout\(36) & \input_vector~combout\(57))))) # (!\add_instance|a8:6:and_i|prod~combout\ & 
-- (\input_vector~combout\(36) & (\input_vector~combout\(57) & \add_instance|a9:5:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(36),
	datab => \input_vector~combout\(57),
	datac => \add_instance|a8:6:and_i|prod~combout\,
	datad => \add_instance|a9:5:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa70|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y10_N2
\add_instance|a6:8:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a6:8:and_i|prod~combout\ = (((\input_vector~combout\(53) & \input_vector~combout\(40))))

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
	datac => \input_vector~combout\(53),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a6:8:and_i|prod~combout\);

-- Location: LC_X9_Y10_N5
\add_instance|fa69|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa69|g1|Bit0_G~0_combout\ = (\add_instance|ha13|x1|uneq~combout\ & ((\add_instance|a6:8:and_i|prod~combout\) # ((\input_vector~combout\(54) & \input_vector~combout\(39))))) # (!\add_instance|ha13|x1|uneq~combout\ & 
-- (\input_vector~combout\(54) & (\add_instance|a6:8:and_i|prod~combout\ & \input_vector~combout\(39))))

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
	dataa => \add_instance|ha13|x1|uneq~combout\,
	datab => \input_vector~combout\(54),
	datac => \add_instance|a6:8:and_i|prod~combout\,
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa69|g1|Bit0_G~0_combout\);

-- Location: LC_X14_Y8_N8
\add_instance|fa82|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa82|x1|uneq~combout\ = (\input_vector~combout\(56) & (\input_vector~combout\(38) $ (((\input_vector~combout\(57) & \input_vector~combout\(37)))))) # (!\input_vector~combout\(56) & (\input_vector~combout\(57) & (\input_vector~combout\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(56),
	datab => \input_vector~combout\(57),
	datac => \input_vector~combout\(37),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa82|x1|uneq~combout\);

-- Location: LC_X14_Y8_N9
\add_instance|fa85|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa85|x1|uneq~combout\ = \add_instance|fa69|g1|Bit0_G~0_combout\ $ (\add_instance|fa82|x1|uneq~combout\ $ (((\input_vector~combout\(58) & \input_vector~combout\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(58),
	datab => \input_vector~combout\(36),
	datac => \add_instance|fa69|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa82|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa85|x1|uneq~combout\);

-- Location: LC_X14_Y8_N5
\add_instance|fa87|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa87|x2|uneq~combout\ = \add_instance|fa84|x2|uneq~combout\ $ (\add_instance|fa72|g1|Bit0_G~0_combout\ $ (\add_instance|fa70|g1|Bit0_G~0_combout\ $ (\add_instance|fa85|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa84|x2|uneq~combout\,
	datab => \add_instance|fa72|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa70|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa85|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa87|x2|uneq~combout\);

-- Location: LC_X14_Y7_N3
\add_instance|fa89|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa89|x1|uneq~combout\ = ((\add_instance|fa75|g1|Bit0_G~0_combout\ $ (\add_instance|fa87|x2|uneq~combout\)))

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
	datac => \add_instance|fa75|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa87|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa89|x1|uneq~combout\);

-- Location: LC_X12_Y10_N9
\add_instance|fa75|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa75|x2|uneq~combout\ = \add_instance|fa72|x2|uneq~combout\ $ (\add_instance|fa58|g1|Bit0_G~0_combout\ $ (\add_instance|fa73|x1|uneq~combout\ $ (\add_instance|fa60|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa72|x2|uneq~combout\,
	datab => \add_instance|fa58|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa73|x1|uneq~combout\,
	datad => \add_instance|fa60|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa75|x2|uneq~combout\);

-- Location: LC_X14_Y9_N8
\add_instance|fa76|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa76|x1|uneq~combout\ = \add_instance|fa59|g1|Bit0_G~0_combout\ $ (\add_instance|fa71|x2|uneq~combout\ $ (\add_instance|a14:0:and_i|prod~combout\ $ (\add_instance|fa61|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa59|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa71|x2|uneq~combout\,
	datac => \add_instance|a14:0:and_i|prod~combout\,
	datad => \add_instance|fa61|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa76|x1|uneq~combout\);

-- Location: LC_X12_Y10_N5
\add_instance|fa77|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa77|g1|Bit0_G~0_combout\ = (\add_instance|fa75|x2|uneq~combout\ & ((\add_instance|fa63|g1|Bit0_G~0_combout\) # (\add_instance|fa62|g1|Bit0_G~0_combout\ $ (\add_instance|fa76|x1|uneq~combout\)))) # (!\add_instance|fa75|x2|uneq~combout\ & 
-- (\add_instance|fa63|g1|Bit0_G~0_combout\ & (\add_instance|fa62|g1|Bit0_G~0_combout\ $ (\add_instance|fa76|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa62|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa75|x2|uneq~combout\,
	datac => \add_instance|fa63|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa76|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa77|g1|Bit0_G~0_combout\);

-- Location: LC_X14_Y9_N2
\add_instance|fa74|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa74|g1|Bit0_G~0_combout\ = (\add_instance|fa59|g1|Bit0_G~0_combout\ & ((\add_instance|fa71|x2|uneq~combout\) # ((\input_vector~combout\(32) & \input_vector~combout\(61))))) # (!\add_instance|fa59|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa71|x2|uneq~combout\ & (\input_vector~combout\(32) & \input_vector~combout\(61))))

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
	dataa => \add_instance|fa59|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa71|x2|uneq~combout\,
	datac => \input_vector~combout\(32),
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa74|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y7_N5
\add_instance|a12:3:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:3:and_i|prod~combout\ = ((\input_vector~combout\(59) & ((\input_vector~combout\(35)))))

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
	datab => \input_vector~combout\(59),
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:3:and_i|prod~combout\);

-- Location: LC_X13_Y7_N7
\add_instance|a13:2:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a13:2:and_i|prod~combout\ = (\input_vector~combout\(60) & (((\input_vector~combout\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(60),
	datac => \input_vector~combout\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a13:2:and_i|prod~combout\);

-- Location: LC_X13_Y7_N9
\add_instance|fa83|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa83|x2|uneq~combout\ = \add_instance|a12:3:and_i|prod~combout\ $ (\add_instance|a13:2:and_i|prod~combout\ $ (((\input_vector~combout\(33) & \input_vector~combout\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a12:3:and_i|prod~combout\,
	datab => \input_vector~combout\(33),
	datac => \add_instance|a13:2:and_i|prod~combout\,
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa83|x2|uneq~combout\);

-- Location: LC_X13_Y9_N7
\add_instance|fa71|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa71|g1|Bit0_G~0_combout\ = (\add_instance|a11:3:and_i|prod~combout\ & ((\add_instance|a12:2:and_i|prod~combout\) # ((\input_vector~combout\(33) & \input_vector~combout\(60))))) # (!\add_instance|a11:3:and_i|prod~combout\ & 
-- (\input_vector~combout\(33) & (\add_instance|a12:2:and_i|prod~combout\ & \input_vector~combout\(60))))

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
	dataa => \add_instance|a11:3:and_i|prod~combout\,
	datab => \input_vector~combout\(33),
	datac => \add_instance|a12:2:and_i|prod~combout\,
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa71|g1|Bit0_G~0_combout\);

-- Location: LC_X14_Y7_N7
\add_instance|fa86|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa86|x1|uneq~combout\ = ((\add_instance|fa83|x2|uneq~combout\ $ (\add_instance|fa71|g1|Bit0_G~0_combout\)))

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
	datac => \add_instance|fa83|x2|uneq~combout\,
	datad => \add_instance|fa71|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa86|x1|uneq~combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[62]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(62),
	combout => \input_vector~combout\(62));

-- Location: LC_X14_Y7_N5
\add_instance|a15:0:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a15:0:and_i|prod~combout\ = (((\input_vector~combout\(62) & \input_vector~combout\(32))))

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
	datac => \input_vector~combout\(62),
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a15:0:and_i|prod~combout\);

-- Location: LC_X14_Y10_N8
\add_instance|fa70|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa70|x1|uneq~combout\ = (\input_vector~combout\(55) & (\input_vector~combout\(38) $ (((\input_vector~combout\(56) & \input_vector~combout\(37)))))) # (!\input_vector~combout\(55) & (\input_vector~combout\(56) & (\input_vector~combout\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(55),
	datab => \input_vector~combout\(56),
	datac => \input_vector~combout\(37),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa70|x1|uneq~combout\);

-- Location: LC_X14_Y10_N7
\add_instance|fa73|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa73|g1|Bit0_G~0_combout\ = (\add_instance|fa57|g1|Bit0_G~0_combout\ & ((\add_instance|fa58|g1|Bit0_G~0_combout\) # (\add_instance|fa70|x1|uneq~combout\ $ (\add_instance|a10:4:and_i|prod~combout\)))) # 
-- (!\add_instance|fa57|g1|Bit0_G~0_combout\ & (\add_instance|fa58|g1|Bit0_G~0_combout\ & (\add_instance|fa70|x1|uneq~combout\ $ (\add_instance|a10:4:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa70|x1|uneq~combout\,
	datab => \add_instance|fa57|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa58|g1|Bit0_G~0_combout\,
	datad => \add_instance|a10:4:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa73|g1|Bit0_G~0_combout\);

-- Location: LC_X14_Y7_N9
\add_instance|fa88|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa88|x2|uneq~combout\ = \add_instance|fa74|g1|Bit0_G~0_combout\ $ (\add_instance|fa86|x1|uneq~combout\ $ (\add_instance|a15:0:and_i|prod~combout\ $ (\add_instance|fa73|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa74|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa86|x1|uneq~combout\,
	datac => \add_instance|a15:0:and_i|prod~combout\,
	datad => \add_instance|fa73|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa88|x2|uneq~combout\);

-- Location: LC_X14_Y9_N5
\add_instance|fa76|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa76|g1|Bit0_G~0_combout\ = (\add_instance|fa62|g1|Bit0_G~0_combout\ & ((\add_instance|fa61|g1|Bit0_G~0_combout\) # (\add_instance|fa74|x1|uneq~combout\ $ (\add_instance|a14:0:and_i|prod~combout\)))) # 
-- (!\add_instance|fa62|g1|Bit0_G~0_combout\ & (\add_instance|fa61|g1|Bit0_G~0_combout\ & (\add_instance|fa74|x1|uneq~combout\ $ (\add_instance|a14:0:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa74|x1|uneq~combout\,
	datab => \add_instance|fa62|g1|Bit0_G~0_combout\,
	datac => \add_instance|a14:0:and_i|prod~combout\,
	datad => \add_instance|fa61|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa76|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y8_N1
\add_instance|fa90|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa90|x2|uneq~combout\ = \add_instance|fa89|x1|uneq~combout\ $ (\add_instance|fa77|g1|Bit0_G~0_combout\ $ (\add_instance|fa88|x2|uneq~combout\ $ (\add_instance|fa76|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa89|x1|uneq~combout\,
	datab => \add_instance|fa77|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa88|x2|uneq~combout\,
	datad => \add_instance|fa76|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa90|x2|uneq~combout\);

-- Location: LC_X12_Y8_N5
\add_instance|bkadder|sum_xors:14:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:14:sum_xor_i|uneq~combout\ = \add_instance|fa78|g1|Bit0_G~0_combout\ $ (\add_instance|fa90|x2|uneq~combout\ $ (((\add_instance|bkadder|abc_c14|abc~1_combout\) # (\add_instance|bkadder|abc_gates_g1:6:abc_i|abc~0_combout\))))

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
	dataa => \add_instance|fa78|g1|Bit0_G~0_combout\,
	datab => \add_instance|bkadder|abc_c14|abc~1_combout\,
	datac => \add_instance|bkadder|abc_gates_g1:6:abc_i|abc~0_combout\,
	datad => \add_instance|fa90|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:14:sum_xor_i|uneq~combout\);

-- Location: LC_X12_Y8_N4
\add_instance|fa90|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa90|g1|Bit0_G~0_combout\ = (\add_instance|fa77|g1|Bit0_G~0_combout\ & ((\add_instance|fa76|g1|Bit0_G~0_combout\) # (\add_instance|fa89|x1|uneq~combout\ $ (\add_instance|fa88|x2|uneq~combout\)))) # (!\add_instance|fa77|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa76|g1|Bit0_G~0_combout\ & (\add_instance|fa89|x1|uneq~combout\ $ (\add_instance|fa88|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa89|x1|uneq~combout\,
	datab => \add_instance|fa77|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa88|x2|uneq~combout\,
	datad => \add_instance|fa76|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa90|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y8_N0
\add_instance|bkadder|abc_c15|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c15|abc~0_combout\ = (\add_instance|fa78|g1|Bit0_G~0_combout\ & ((\add_instance|bkadder|abc_c14|abc~1_combout\) # ((\add_instance|bkadder|abc_gates_g1:6:abc_i|abc~0_combout\) # (\add_instance|fa90|x2|uneq~combout\)))) # 
-- (!\add_instance|fa78|g1|Bit0_G~0_combout\ & (\add_instance|fa90|x2|uneq~combout\ & ((\add_instance|bkadder|abc_c14|abc~1_combout\) # (\add_instance|bkadder|abc_gates_g1:6:abc_i|abc~0_combout\))))

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
	dataa => \add_instance|fa78|g1|Bit0_G~0_combout\,
	datab => \add_instance|bkadder|abc_c14|abc~1_combout\,
	datac => \add_instance|bkadder|abc_gates_g1:6:abc_i|abc~0_combout\,
	datad => \add_instance|fa90|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c15|abc~0_combout\);

-- Location: LC_X14_Y7_N4
\add_instance|fa88|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa88|g1|Bit0_G~0_combout\ = (\add_instance|fa74|g1|Bit0_G~0_combout\ & ((\add_instance|fa73|g1|Bit0_G~0_combout\) # (\add_instance|fa86|x1|uneq~combout\ $ (\add_instance|a15:0:and_i|prod~combout\)))) # 
-- (!\add_instance|fa74|g1|Bit0_G~0_combout\ & (\add_instance|fa73|g1|Bit0_G~0_combout\ & (\add_instance|fa86|x1|uneq~combout\ $ (\add_instance|a15:0:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa74|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa86|x1|uneq~combout\,
	datac => \add_instance|a15:0:and_i|prod~combout\,
	datad => \add_instance|fa73|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa88|g1|Bit0_G~0_combout\);

-- Location: LC_X14_Y7_N2
\add_instance|fa88|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa88|x1|uneq~combout\ = \add_instance|a15:0:and_i|prod~combout\ $ (\add_instance|fa71|g1|Bit0_G~0_combout\ $ (\add_instance|fa83|x2|uneq~combout\ $ (\add_instance|fa73|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a15:0:and_i|prod~combout\,
	datab => \add_instance|fa71|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa83|x2|uneq~combout\,
	datad => \add_instance|fa73|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa88|x1|uneq~combout\);

-- Location: LC_X14_Y7_N6
\add_instance|fa89|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa89|g1|Bit0_G~0_combout\ = (\add_instance|fa87|x2|uneq~combout\ & ((\add_instance|fa75|g1|Bit0_G~0_combout\) # (\add_instance|fa74|g1|Bit0_G~0_combout\ $ (\add_instance|fa88|x1|uneq~combout\)))) # (!\add_instance|fa87|x2|uneq~combout\ & 
-- (\add_instance|fa75|g1|Bit0_G~0_combout\ & (\add_instance|fa74|g1|Bit0_G~0_combout\ $ (\add_instance|fa88|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa87|x2|uneq~combout\,
	datab => \add_instance|fa75|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa74|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa88|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa89|g1|Bit0_G~0_combout\);

-- Location: LC_X14_Y7_N1
\add_instance|fa86|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa86|g1|Bit0_G~0_combout\ = (\add_instance|fa71|g1|Bit0_G~0_combout\ & ((\add_instance|fa83|x2|uneq~combout\) # ((\input_vector~combout\(62) & \input_vector~combout\(32))))) # (!\add_instance|fa71|g1|Bit0_G~0_combout\ & 
-- (\input_vector~combout\(62) & (\add_instance|fa83|x2|uneq~combout\ & \input_vector~combout\(32))))

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
	dataa => \input_vector~combout\(62),
	datab => \add_instance|fa71|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa83|x2|uneq~combout\,
	datad => \input_vector~combout\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa86|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y7_N3
\add_instance|a13:3:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a13:3:and_i|prod~combout\ = ((\input_vector~combout\(35) & (\input_vector~combout\(60))))

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
	datab => \input_vector~combout\(35),
	datac => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a13:3:and_i|prod~combout\);

-- Location: LC_X13_Y7_N6
\add_instance|a14:2:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:2:and_i|prod~combout\ = (((\input_vector~combout\(34) & \input_vector~combout\(61))))

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
	datac => \input_vector~combout\(34),
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:2:and_i|prod~combout\);

-- Location: LC_X13_Y7_N2
\add_instance|fa97|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa97|x2|uneq~combout\ = \add_instance|a13:3:and_i|prod~combout\ $ (\add_instance|a14:2:and_i|prod~combout\ $ (((\input_vector~combout\(33) & \input_vector~combout\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a13:3:and_i|prod~combout\,
	datab => \input_vector~combout\(33),
	datac => \add_instance|a14:2:and_i|prod~combout\,
	datad => \input_vector~combout\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa97|x2|uneq~combout\);

-- Location: LC_X13_Y7_N8
\add_instance|fa83|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa83|g1|Bit0_G~0_combout\ = (\add_instance|a12:3:and_i|prod~combout\ & ((\add_instance|a13:2:and_i|prod~combout\) # ((\input_vector~combout\(33) & \input_vector~combout\(61))))) # (!\add_instance|a12:3:and_i|prod~combout\ & 
-- (\input_vector~combout\(33) & (\add_instance|a13:2:and_i|prod~combout\ & \input_vector~combout\(61))))

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
	dataa => \add_instance|a12:3:and_i|prod~combout\,
	datab => \input_vector~combout\(33),
	datac => \add_instance|a13:2:and_i|prod~combout\,
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa83|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y8_N9
\add_instance|fa100|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa100|x1|uneq~combout\ = ((\add_instance|fa97|x2|uneq~combout\ $ (\add_instance|fa83|g1|Bit0_G~0_combout\)))

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
	datac => \add_instance|fa97|x2|uneq~combout\,
	datad => \add_instance|fa83|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa100|x1|uneq~combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[63]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(63),
	combout => \input_vector~combout\(63));

-- Location: LC_X13_Y8_N5
\add_instance|a16:0:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a16:0:and_i|prod~combout\ = (\input_vector~combout\(32) & (((\input_vector~combout\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(32),
	datac => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a16:0:and_i|prod~combout\);

-- Location: LC_X14_Y8_N0
\add_instance|a11:4:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:4:and_i|prod~combout\ = (((\input_vector~combout\(36) & \input_vector~combout\(58))))

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
	datac => \input_vector~combout\(36),
	datad => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:4:and_i|prod~combout\);

-- Location: LC_X14_Y8_N4
\add_instance|fa85|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa85|g1|Bit0_G~0_combout\ = (\add_instance|fa69|g1|Bit0_G~0_combout\ & ((\add_instance|fa70|g1|Bit0_G~0_combout\) # (\add_instance|a11:4:and_i|prod~combout\ $ (\add_instance|fa82|x1|uneq~combout\)))) # 
-- (!\add_instance|fa69|g1|Bit0_G~0_combout\ & (\add_instance|fa70|g1|Bit0_G~0_combout\ & (\add_instance|a11:4:and_i|prod~combout\ $ (\add_instance|fa82|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa69|g1|Bit0_G~0_combout\,
	datab => \add_instance|a11:4:and_i|prod~combout\,
	datac => \add_instance|fa70|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa82|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa85|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y8_N0
\add_instance|fa102|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa102|x2|uneq~combout\ = \add_instance|fa86|g1|Bit0_G~0_combout\ $ (\add_instance|fa100|x1|uneq~combout\ $ (\add_instance|a16:0:and_i|prod~combout\ $ (\add_instance|fa85|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa86|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa100|x1|uneq~combout\,
	datac => \add_instance|a16:0:and_i|prod~combout\,
	datad => \add_instance|fa85|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa102|x2|uneq~combout\);

-- Location: LC_X13_Y10_N6
\add_instance|a10:5:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a10:5:and_i|prod~combout\ = ((\input_vector~combout\(57) & ((\input_vector~combout\(37)))))

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
	datab => \input_vector~combout\(57),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a10:5:and_i|prod~combout\);

-- Location: LC_X14_Y10_N5
\add_instance|a9:6:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a9:6:and_i|prod~combout\ = ((\input_vector~combout\(56) & ((\input_vector~combout\(38)))))

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
	datab => \input_vector~combout\(56),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a9:6:and_i|prod~combout\);

-- Location: LC_X13_Y10_N5
\add_instance|fa82|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa82|g1|Bit0_G~0_combout\ = (\add_instance|a10:5:and_i|prod~combout\ & ((\add_instance|a9:6:and_i|prod~combout\) # ((\input_vector~combout\(58) & \input_vector~combout\(36))))) # (!\add_instance|a10:5:and_i|prod~combout\ & 
-- (\input_vector~combout\(58) & (\input_vector~combout\(36) & \add_instance|a9:6:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(58),
	datab => \input_vector~combout\(36),
	datac => \add_instance|a10:5:and_i|prod~combout\,
	datad => \add_instance|a9:6:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa82|g1|Bit0_G~0_combout\);

-- Location: LC_X14_Y8_N3
\add_instance|fa84|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa84|g1|Bit0_G~0_combout\ = (\add_instance|fa68|g1|Bit0_G~0_combout\ & ((\add_instance|fa224|x2|uneq~0_combout\) # (\add_instance|fa81|x1|uneq~combout\ $ (\add_instance|a8:7:and_i|prod~combout\)))) # (!\add_instance|fa68|g1|Bit0_G~0_combout\ 
-- & (\add_instance|fa224|x2|uneq~0_combout\ & (\add_instance|fa81|x1|uneq~combout\ $ (\add_instance|a8:7:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa81|x1|uneq~combout\,
	datab => \add_instance|fa68|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa224|x2|uneq~0_combout\,
	datad => \add_instance|a8:7:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa84|g1|Bit0_G~0_combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[47]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(47),
	combout => \input_vector~combout\(47));

-- Location: LC_X2_Y7_N1
\add_instance|a1:15:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a1:15:and_i|prod~combout\ = (((\input_vector~combout\(48) & \input_vector~combout\(47))))

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
	datac => \input_vector~combout\(48),
	datad => \input_vector~combout\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a1:15:and_i|prod~combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X1_Y9_N6
\add_instance|fa91|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa91|x2|uneq~combout\ = \add_instance|a1:15:and_i|prod~combout\ $ (\input_vector~combout\(15) $ (((\input_vector~combout\(49) & \input_vector~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a1:15:and_i|prod~combout\,
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(49),
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa91|x2|uneq~combout\);

-- Location: LC_X1_Y9_N2
\add_instance|a5:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a5:11:and_i|prod~combout\ = ((\input_vector~combout\(43) & (\input_vector~combout\(52))))

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
	datab => \input_vector~combout\(43),
	datac => \input_vector~combout\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a5:11:and_i|prod~combout\);

-- Location: LC_X2_Y10_N3
\add_instance|fa92|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa92|x1|uneq~combout\ = (\input_vector~combout\(44) & (\input_vector~combout\(51) $ (((\input_vector~combout\(50) & \input_vector~combout\(45)))))) # (!\input_vector~combout\(44) & (\input_vector~combout\(50) & (\input_vector~combout\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(44),
	datab => \input_vector~combout\(50),
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa92|x1|uneq~combout\);

-- Location: LC_X1_Y9_N4
\add_instance|fa79|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa79|g1|Bit0_G~0_combout\ = (\input_vector~combout\(14) & ((\add_instance|a1:14:and_i|prod~combout\) # ((\input_vector~combout\(49) & \input_vector~combout\(45))))) # (!\input_vector~combout\(14) & (\input_vector~combout\(49) & 
-- (\input_vector~combout\(45) & \add_instance|a1:14:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(49),
	datab => \input_vector~combout\(14),
	datac => \input_vector~combout\(45),
	datad => \add_instance|a1:14:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa79|g1|Bit0_G~0_combout\);

-- Location: LC_X1_Y9_N0
\add_instance|fa94|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa94|x2|uneq~0_combout\ = \add_instance|fa91|x2|uneq~combout\ $ (\add_instance|a5:11:and_i|prod~combout\ $ (\add_instance|fa92|x1|uneq~combout\ $ (\add_instance|fa79|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa91|x2|uneq~combout\,
	datab => \add_instance|a5:11:and_i|prod~combout\,
	datac => \add_instance|fa92|x1|uneq~combout\,
	datad => \add_instance|fa79|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa94|x2|uneq~0_combout\);

-- Location: LC_X4_Y10_N7
\add_instance|ha14|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha14|a1|prod~combout\ = (\input_vector~combout\(41) & (\input_vector~combout\(53) & (\input_vector~combout\(54) & \input_vector~combout\(40))))

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
	dataa => \input_vector~combout\(41),
	datab => \input_vector~combout\(53),
	datac => \input_vector~combout\(54),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha14|a1|prod~combout\);

-- Location: LC_X5_Y10_N2
\add_instance|fa224|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa224|g1|Bit0_G~0_combout\ = (\add_instance|fa79|x2|uneq~combout\ & ((\add_instance|fa67|g1|Bit0_G~0_combout\) # (\add_instance|fa80|x1|uneq~combout\ $ (\add_instance|a5:10:and_i|prod~combout\)))) # (!\add_instance|fa79|x2|uneq~combout\ & 
-- (\add_instance|fa67|g1|Bit0_G~0_combout\ & (\add_instance|fa80|x1|uneq~combout\ $ (\add_instance|a5:10:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa79|x2|uneq~combout\,
	datab => \add_instance|fa80|x1|uneq~combout\,
	datac => \add_instance|a5:10:and_i|prod~combout\,
	datad => \add_instance|fa67|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa224|g1|Bit0_G~0_combout\);

-- Location: LC_X2_Y10_N8
\add_instance|a3:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a3:12:and_i|prod~combout\ = ((\input_vector~combout\(50) & ((\input_vector~combout\(44)))))

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
	datab => \input_vector~combout\(50),
	datad => \input_vector~combout\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a3:12:and_i|prod~combout\);

-- Location: LC_X2_Y10_N7
\add_instance|a4:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a4:11:and_i|prod~combout\ = (\input_vector~combout\(43) & (((\input_vector~combout\(51)))))

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
	dataa => \input_vector~combout\(43),
	datad => \input_vector~combout\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a4:11:and_i|prod~combout\);

-- Location: LC_X2_Y10_N6
\add_instance|fa80|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa80|g1|Bit0_G~0_combout\ = (\add_instance|a3:12:and_i|prod~combout\ & ((\add_instance|a4:11:and_i|prod~combout\) # ((\input_vector~combout\(52) & \input_vector~combout\(42))))) # (!\add_instance|a3:12:and_i|prod~combout\ & 
-- (\input_vector~combout\(52) & (\add_instance|a4:11:and_i|prod~combout\ & \input_vector~combout\(42))))

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
	dataa => \add_instance|a3:12:and_i|prod~combout\,
	datab => \input_vector~combout\(52),
	datac => \add_instance|a4:11:and_i|prod~combout\,
	datad => \input_vector~combout\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa80|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y10_N1
\add_instance|a7:9:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a7:9:and_i|prod~combout\ = (\input_vector~combout\(41) & (((\input_vector~combout\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(41),
	datac => \input_vector~combout\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a7:9:and_i|prod~combout\);

-- Location: LC_X4_Y10_N4
\add_instance|a6:10:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a6:10:and_i|prod~combout\ = (((\input_vector~combout\(42) & \input_vector~combout\(53))))

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
	datac => \input_vector~combout\(42),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a6:10:and_i|prod~combout\);

-- Location: LC_X4_Y10_N2
\add_instance|fa93|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa93|x2|uneq~combout\ = \add_instance|a7:9:and_i|prod~combout\ $ (\add_instance|a6:10:and_i|prod~combout\ $ (((\input_vector~combout\(55) & \input_vector~combout\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(55),
	datab => \add_instance|a7:9:and_i|prod~combout\,
	datac => \add_instance|a6:10:and_i|prod~combout\,
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa93|x2|uneq~combout\);

-- Location: LC_X4_Y10_N0
\add_instance|fa95|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa95|x1|uneq~combout\ = ((\add_instance|fa80|g1|Bit0_G~0_combout\ $ (\add_instance|fa93|x2|uneq~combout\)))

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
	datac => \add_instance|fa80|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa93|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa95|x1|uneq~combout\);

-- Location: LC_X4_Y10_N8
\add_instance|fa98|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa98|x2|uneq~0_combout\ = \add_instance|fa94|x2|uneq~0_combout\ $ (\add_instance|ha14|a1|prod~combout\ $ (\add_instance|fa224|g1|Bit0_G~0_combout\ $ (\add_instance|fa95|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa94|x2|uneq~0_combout\,
	datab => \add_instance|ha14|a1|prod~combout\,
	datac => \add_instance|fa224|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa95|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa98|x2|uneq~0_combout\);

-- Location: LC_X13_Y10_N4
\add_instance|a11:5:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:5:and_i|prod~combout\ = (((\input_vector~combout\(58) & \input_vector~combout\(37))))

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
	datac => \input_vector~combout\(58),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:5:and_i|prod~combout\);

-- Location: LC_X13_Y10_N1
\add_instance|a12:4:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:4:and_i|prod~combout\ = (((\input_vector~combout\(59) & \input_vector~combout\(36))))

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
	datac => \input_vector~combout\(59),
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:4:and_i|prod~combout\);

-- Location: LC_X14_Y8_N7
\add_instance|ha15|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha15|x1|uneq~combout\ = (\input_vector~combout\(56) & (\input_vector~combout\(39) $ (((\input_vector~combout\(57) & \input_vector~combout\(38)))))) # (!\input_vector~combout\(56) & (\input_vector~combout\(57) & 
-- ((\input_vector~combout\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(56),
	datab => \input_vector~combout\(57),
	datac => \input_vector~combout\(39),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha15|x1|uneq~combout\);

-- Location: LC_X9_Y10_N6
\add_instance|fa81|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa81|g1|Bit0_G~0_combout\ = (\add_instance|ha13|a1|prod~combout\ & ((\add_instance|ha14|x1|uneq~combout\) # ((\input_vector~combout\(55) & \input_vector~combout\(39))))) # (!\add_instance|ha13|a1|prod~combout\ & (\input_vector~combout\(55) & 
-- (\add_instance|ha14|x1|uneq~combout\ & \input_vector~combout\(39))))

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
	dataa => \input_vector~combout\(55),
	datab => \add_instance|ha13|a1|prod~combout\,
	datac => \add_instance|ha14|x1|uneq~combout\,
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa81|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y10_N8
\add_instance|fa99|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa99|x1|uneq~combout\ = \add_instance|a11:5:and_i|prod~combout\ $ (\add_instance|a12:4:and_i|prod~combout\ $ (\add_instance|ha15|x1|uneq~combout\ $ (\add_instance|fa81|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a11:5:and_i|prod~combout\,
	datab => \add_instance|a12:4:and_i|prod~combout\,
	datac => \add_instance|ha15|x1|uneq~combout\,
	datad => \add_instance|fa81|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa99|x1|uneq~combout\);

-- Location: LC_X13_Y10_N3
\add_instance|fa101|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa101|x2|uneq~combout\ = \add_instance|fa82|g1|Bit0_G~0_combout\ $ (\add_instance|fa84|g1|Bit0_G~0_combout\ $ (\add_instance|fa98|x2|uneq~0_combout\ $ (\add_instance|fa99|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa82|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa84|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa98|x2|uneq~0_combout\,
	datad => \add_instance|fa99|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa101|x2|uneq~combout\);

-- Location: LC_X14_Y8_N1
\add_instance|fa87|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa87|g1|Bit0_G~0_combout\ = (\add_instance|fa84|x2|uneq~combout\ & ((\add_instance|fa72|g1|Bit0_G~0_combout\) # (\add_instance|fa70|g1|Bit0_G~0_combout\ $ (\add_instance|fa85|x1|uneq~combout\)))) # (!\add_instance|fa84|x2|uneq~combout\ & 
-- (\add_instance|fa72|g1|Bit0_G~0_combout\ & (\add_instance|fa70|g1|Bit0_G~0_combout\ $ (\add_instance|fa85|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa84|x2|uneq~combout\,
	datab => \add_instance|fa72|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa70|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa85|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa87|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y8_N3
\add_instance|fa103|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa103|x1|uneq~combout\ = (\add_instance|fa101|x2|uneq~combout\ $ (((\add_instance|fa87|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa101|x2|uneq~combout\,
	datad => \add_instance|fa87|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa103|x1|uneq~combout\);

-- Location: LC_X13_Y8_N8
\add_instance|fa104|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa104|x2|uneq~combout\ = \add_instance|fa88|g1|Bit0_G~0_combout\ $ (\add_instance|fa89|g1|Bit0_G~0_combout\ $ (\add_instance|fa102|x2|uneq~combout\ $ (\add_instance|fa103|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa88|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa89|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa102|x2|uneq~combout\,
	datad => \add_instance|fa103|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa104|x2|uneq~combout\);

-- Location: LC_X12_Y8_N6
\add_instance|bkadder|sum_xors:15:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:15:sum_xor_i|uneq~combout\ = \add_instance|fa90|g1|Bit0_G~0_combout\ $ (((\add_instance|bkadder|abc_c15|abc~0_combout\ $ (\add_instance|fa104|x2|uneq~combout\))))

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
	dataa => \add_instance|fa90|g1|Bit0_G~0_combout\,
	datac => \add_instance|bkadder|abc_c15|abc~0_combout\,
	datad => \add_instance|fa104|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:15:sum_xor_i|uneq~combout\);

-- Location: LC_X13_Y8_N4
\add_instance|fa102|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa102|g1|Bit0_G~0_combout\ = (\add_instance|fa86|g1|Bit0_G~0_combout\ & ((\add_instance|fa85|g1|Bit0_G~0_combout\) # (\add_instance|fa100|x1|uneq~combout\ $ (\add_instance|a16:0:and_i|prod~combout\)))) # 
-- (!\add_instance|fa86|g1|Bit0_G~0_combout\ & (\add_instance|fa85|g1|Bit0_G~0_combout\ & (\add_instance|fa100|x1|uneq~combout\ $ (\add_instance|a16:0:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa86|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa100|x1|uneq~combout\,
	datac => \add_instance|a16:0:and_i|prod~combout\,
	datad => \add_instance|fa85|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa102|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y8_N1
\add_instance|fa100|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa100|g1|Bit0_G~0_combout\ = (\add_instance|fa97|x2|uneq~combout\ & ((\add_instance|fa83|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(32) & \input_vector~combout\(63))))) # (!\add_instance|fa97|x2|uneq~combout\ & 
-- (\input_vector~combout\(32) & (\input_vector~combout\(63) & \add_instance|fa83|g1|Bit0_G~0_combout\)))

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
	dataa => \input_vector~combout\(32),
	datab => \add_instance|fa97|x2|uneq~combout\,
	datac => \input_vector~combout\(63),
	datad => \add_instance|fa83|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa100|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y7_N5
\add_instance|a14:3:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:3:and_i|prod~combout\ = (\input_vector~combout\(61) & (((\input_vector~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(61),
	datac => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:3:and_i|prod~combout\);

-- Location: LC_X11_Y7_N6
\add_instance|a13:4:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a13:4:and_i|prod~combout\ = ((\input_vector~combout\(36) & ((\input_vector~combout\(60)))))

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
	datab => \input_vector~combout\(36),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a13:4:and_i|prod~combout\);

-- Location: LC_X11_Y7_N7
\add_instance|fa111|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa111|x2|uneq~combout\ = \add_instance|a14:3:and_i|prod~combout\ $ (\add_instance|a13:4:and_i|prod~combout\ $ (((\input_vector~combout\(34) & \input_vector~combout\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a14:3:and_i|prod~combout\,
	datab => \input_vector~combout\(34),
	datac => \add_instance|a13:4:and_i|prod~combout\,
	datad => \input_vector~combout\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa111|x2|uneq~combout\);

-- Location: LC_X13_Y7_N4
\add_instance|fa97|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa97|g1|Bit0_G~0_combout\ = (\add_instance|a13:3:and_i|prod~combout\ & ((\add_instance|a14:2:and_i|prod~combout\) # ((\input_vector~combout\(33) & \input_vector~combout\(62))))) # (!\add_instance|a13:3:and_i|prod~combout\ & 
-- (\input_vector~combout\(33) & (\add_instance|a14:2:and_i|prod~combout\ & \input_vector~combout\(62))))

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
	dataa => \add_instance|a13:3:and_i|prod~combout\,
	datab => \input_vector~combout\(33),
	datac => \add_instance|a14:2:and_i|prod~combout\,
	datad => \input_vector~combout\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa97|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y8_N2
\add_instance|fa114|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa114|x1|uneq~combout\ = ((\add_instance|fa111|x2|uneq~combout\ $ (\add_instance|fa97|g1|Bit0_G~0_combout\)))

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
	datac => \add_instance|fa111|x2|uneq~combout\,
	datad => \add_instance|fa97|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa114|x1|uneq~combout\);

-- Location: LC_X10_Y8_N4
\add_instance|a16:1:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a16:1:and_i|prod~combout\ = ((\input_vector~combout\(33) & (\input_vector~combout\(63))))

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
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a16:1:and_i|prod~combout\);

-- Location: LC_X13_Y10_N9
\add_instance|fa96|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa96|x1|uneq~combout\ = \add_instance|ha15|x1|uneq~combout\ $ ((((\input_vector~combout\(58) & \input_vector~combout\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ha15|x1|uneq~combout\,
	datac => \input_vector~combout\(58),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa96|x1|uneq~combout\);

-- Location: LC_X13_Y10_N0
\add_instance|fa99|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa99|g1|Bit0_G~0_combout\ = (\add_instance|fa82|g1|Bit0_G~0_combout\ & ((\add_instance|fa81|g1|Bit0_G~0_combout\) # (\add_instance|fa96|x1|uneq~combout\ $ (\add_instance|a12:4:and_i|prod~combout\)))) # 
-- (!\add_instance|fa82|g1|Bit0_G~0_combout\ & (\add_instance|fa81|g1|Bit0_G~0_combout\ & (\add_instance|fa96|x1|uneq~combout\ $ (\add_instance|a12:4:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa82|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa96|x1|uneq~combout\,
	datac => \add_instance|fa81|g1|Bit0_G~0_combout\,
	datad => \add_instance|a12:4:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa99|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y8_N7
\add_instance|fa116|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa116|x2|uneq~combout\ = \add_instance|fa100|g1|Bit0_G~0_combout\ $ (\add_instance|fa114|x1|uneq~combout\ $ (\add_instance|a16:1:and_i|prod~combout\ $ (\add_instance|fa99|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa100|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa114|x1|uneq~combout\,
	datac => \add_instance|a16:1:and_i|prod~combout\,
	datad => \add_instance|fa99|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa116|x2|uneq~combout\);

-- Location: LC_X13_Y10_N7
\add_instance|fa96|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa96|g1|Bit0_G~0_combout\ = (\add_instance|a11:5:and_i|prod~combout\ & ((\add_instance|ha15|x1|uneq~combout\) # ((\input_vector~combout\(59) & \input_vector~combout\(36))))) # (!\add_instance|a11:5:and_i|prod~combout\ & 
-- (\input_vector~combout\(59) & (\add_instance|ha15|x1|uneq~combout\ & \input_vector~combout\(36))))

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
	dataa => \add_instance|a11:5:and_i|prod~combout\,
	datab => \input_vector~combout\(59),
	datac => \add_instance|ha15|x1|uneq~combout\,
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa96|g1|Bit0_G~0_combout\);

-- Location: LC_X1_Y9_N9
\add_instance|fa94|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa94|g1|Bit0_G~0_combout\ = (\add_instance|fa91|x2|uneq~combout\ & ((\add_instance|fa79|g1|Bit0_G~0_combout\) # (\add_instance|a5:11:and_i|prod~combout\ $ (\add_instance|fa92|x1|uneq~combout\)))) # (!\add_instance|fa91|x2|uneq~combout\ & 
-- (\add_instance|fa79|g1|Bit0_G~0_combout\ & (\add_instance|a5:11:and_i|prod~combout\ $ (\add_instance|fa92|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa91|x2|uneq~combout\,
	datab => \add_instance|a5:11:and_i|prod~combout\,
	datac => \add_instance|fa92|x1|uneq~combout\,
	datad => \add_instance|fa79|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa94|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y7_N8
\add_instance|fa107|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa107|x1|uneq~combout\ = (\input_vector~combout\(41) & (\input_vector~combout\(55) $ (((\input_vector~combout\(42) & \input_vector~combout\(54)))))) # (!\input_vector~combout\(41) & (\input_vector~combout\(42) & 
-- (\input_vector~combout\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(41),
	datab => \input_vector~combout\(42),
	datac => \input_vector~combout\(54),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa107|x1|uneq~combout\);

-- Location: LC_X2_Y10_N4
\add_instance|a4:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a4:12:and_i|prod~combout\ = ((\input_vector~combout\(51) & ((\input_vector~combout\(44)))))

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
	datab => \input_vector~combout\(51),
	datad => \input_vector~combout\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a4:12:and_i|prod~combout\);

-- Location: LC_X2_Y10_N2
\add_instance|a3:13:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a3:13:and_i|prod~combout\ = (((\input_vector~combout\(45) & \input_vector~combout\(50))))

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
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a3:13:and_i|prod~combout\);

-- Location: LC_X2_Y10_N5
\add_instance|fa92|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa92|g1|Bit0_G~0_combout\ = (\add_instance|a4:12:and_i|prod~combout\ & ((\add_instance|a3:13:and_i|prod~combout\) # ((\input_vector~combout\(43) & \input_vector~combout\(52))))) # (!\add_instance|a4:12:and_i|prod~combout\ & 
-- (\input_vector~combout\(43) & (\input_vector~combout\(52) & \add_instance|a3:13:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(43),
	datab => \input_vector~combout\(52),
	datac => \add_instance|a4:12:and_i|prod~combout\,
	datad => \add_instance|a3:13:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa92|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y7_N2
\add_instance|fa109|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa109|x1|uneq~combout\ = \add_instance|fa107|x1|uneq~combout\ $ (\add_instance|fa92|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(56) & \input_vector~combout\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa107|x1|uneq~combout\,
	datab => \input_vector~combout\(56),
	datac => \add_instance|fa92|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa109|x1|uneq~combout\);

-- Location: LC_X1_Y7_N4
\add_instance|a6:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a6:11:and_i|prod~combout\ = (((\input_vector~combout\(43) & \input_vector~combout\(53))))

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
	datac => \input_vector~combout\(43),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a6:11:and_i|prod~combout\);

-- Location: LC_X1_Y6_N1
\add_instance|a2:15:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a2:15:and_i|prod~combout\ = ((\input_vector~combout\(49) & (\input_vector~combout\(47))))

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
	datab => \input_vector~combout\(49),
	datac => \input_vector~combout\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a2:15:and_i|prod~combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(16),
	combout => \input_vector~combout\(16));

-- Location: LC_X1_Y6_N8
\add_instance|fa105|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa105|x2|uneq~combout\ = \add_instance|a2:15:and_i|prod~combout\ $ (\input_vector~combout\(16) $ (((\input_vector~combout\(50) & \input_vector~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(50),
	datab => \add_instance|a2:15:and_i|prod~combout\,
	datac => \input_vector~combout\(16),
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa105|x2|uneq~combout\);

-- Location: LC_X1_Y7_N6
\add_instance|fa106|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa106|x1|uneq~combout\ = (\input_vector~combout\(45) & (\input_vector~combout\(51) $ (((\input_vector~combout\(52) & \input_vector~combout\(44)))))) # (!\input_vector~combout\(45) & (\input_vector~combout\(52) & 
-- ((\input_vector~combout\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(45),
	datab => \input_vector~combout\(52),
	datac => \input_vector~combout\(51),
	datad => \input_vector~combout\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa106|x1|uneq~combout\);

-- Location: LC_X1_Y9_N7
\add_instance|fa91|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa91|g1|Bit0_G~0_combout\ = (\add_instance|a1:15:and_i|prod~combout\ & ((\input_vector~combout\(15)) # ((\input_vector~combout\(49) & \input_vector~combout\(46))))) # (!\add_instance|a1:15:and_i|prod~combout\ & (\input_vector~combout\(15) & 
-- (\input_vector~combout\(49) & \input_vector~combout\(46))))

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
	dataa => \add_instance|a1:15:and_i|prod~combout\,
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(49),
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa91|g1|Bit0_G~0_combout\);

-- Location: LC_X1_Y7_N7
\add_instance|fa108|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa108|x2|uneq~0_combout\ = \add_instance|a6:11:and_i|prod~combout\ $ (\add_instance|fa105|x2|uneq~combout\ $ (\add_instance|fa106|x1|uneq~combout\ $ (\add_instance|fa91|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a6:11:and_i|prod~combout\,
	datab => \add_instance|fa105|x2|uneq~combout\,
	datac => \add_instance|fa106|x1|uneq~combout\,
	datad => \add_instance|fa91|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa108|x2|uneq~0_combout\);

-- Location: LC_X4_Y10_N6
\add_instance|fa93|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa93|g1|Bit0_G~0_combout\ = (\add_instance|a7:9:and_i|prod~combout\ & ((\add_instance|a6:10:and_i|prod~combout\) # ((\input_vector~combout\(55) & \input_vector~combout\(40))))) # (!\add_instance|a7:9:and_i|prod~combout\ & 
-- (\input_vector~combout\(55) & (\add_instance|a6:10:and_i|prod~combout\ & \input_vector~combout\(40))))

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
	dataa => \input_vector~combout\(55),
	datab => \add_instance|a7:9:and_i|prod~combout\,
	datac => \add_instance|a6:10:and_i|prod~combout\,
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa93|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y7_N5
\add_instance|fa112|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa112|x2|uneq~combout\ = \add_instance|fa94|g1|Bit0_G~0_combout\ $ (\add_instance|fa109|x1|uneq~combout\ $ (\add_instance|fa108|x2|uneq~0_combout\ $ (\add_instance|fa93|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa94|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa109|x1|uneq~combout\,
	datac => \add_instance|fa108|x2|uneq~0_combout\,
	datad => \add_instance|fa93|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa112|x2|uneq~combout\);

-- Location: LC_X4_Y8_N8
\add_instance|ha16|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha16|x1|uneq~combout\ = (\input_vector~combout\(57) & (\input_vector~combout\(39) $ (((\input_vector~combout\(38) & \input_vector~combout\(58)))))) # (!\input_vector~combout\(57) & (\input_vector~combout\(38) & 
-- ((\input_vector~combout\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(57),
	datab => \input_vector~combout\(38),
	datac => \input_vector~combout\(39),
	datad => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha16|x1|uneq~combout\);

-- Location: LC_X4_Y8_N9
\add_instance|a12:5:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:5:and_i|prod~combout\ = ((\input_vector~combout\(59) & ((\input_vector~combout\(37)))))

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
	datab => \input_vector~combout\(59),
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:5:and_i|prod~combout\);

-- Location: LC_X4_Y8_N7
\add_instance|ha15|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha15|a1|prod~combout\ = (\input_vector~combout\(57) & (\input_vector~combout\(38) & (\input_vector~combout\(39) & \input_vector~combout\(56))))

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
	dataa => \input_vector~combout\(57),
	datab => \input_vector~combout\(38),
	datac => \input_vector~combout\(39),
	datad => \input_vector~combout\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha15|a1|prod~combout\);

-- Location: LC_X4_Y10_N9
\add_instance|fa95|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa95|g1|Bit0_G~0_combout\ = ((\input_vector~combout\(53) & (\input_vector~combout\(41) & \input_vector~combout\(40))))

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
	datab => \input_vector~combout\(53),
	datac => \input_vector~combout\(41),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa95|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y10_N3
\add_instance|fa95|g1|Bit0_G~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa95|g1|Bit0_G~1_combout\ = (\add_instance|fa80|g1|Bit0_G~0_combout\ & ((\add_instance|fa93|x2|uneq~combout\) # ((\input_vector~combout\(54) & \add_instance|fa95|g1|Bit0_G~0_combout\)))) # (!\add_instance|fa80|g1|Bit0_G~0_combout\ & 
-- (\input_vector~combout\(54) & (\add_instance|fa95|g1|Bit0_G~0_combout\ & \add_instance|fa93|x2|uneq~combout\)))

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
	dataa => \input_vector~combout\(54),
	datab => \add_instance|fa95|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa80|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa93|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa95|g1|Bit0_G~1_combout\);

-- Location: LC_X4_Y8_N4
\add_instance|fa113|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa113|x1|uneq~combout\ = \add_instance|ha16|x1|uneq~combout\ $ (\add_instance|a12:5:and_i|prod~combout\ $ (\add_instance|ha15|a1|prod~combout\ $ (\add_instance|fa95|g1|Bit0_G~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ha16|x1|uneq~combout\,
	datab => \add_instance|a12:5:and_i|prod~combout\,
	datac => \add_instance|ha15|a1|prod~combout\,
	datad => \add_instance|fa95|g1|Bit0_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa113|x1|uneq~combout\);

-- Location: LC_X4_Y10_N5
\add_instance|fa98|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa98|g1|Bit0_G~0_combout\ = (\add_instance|fa94|x2|uneq~0_combout\ & ((\add_instance|fa224|g1|Bit0_G~0_combout\) # (\add_instance|ha14|a1|prod~combout\ $ (\add_instance|fa95|x1|uneq~combout\)))) # (!\add_instance|fa94|x2|uneq~0_combout\ & 
-- (\add_instance|fa224|g1|Bit0_G~0_combout\ & (\add_instance|ha14|a1|prod~combout\ $ (\add_instance|fa95|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa94|x2|uneq~0_combout\,
	datab => \add_instance|ha14|a1|prod~combout\,
	datac => \add_instance|fa224|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa95|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa98|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y8_N3
\add_instance|fa115|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa115|x2|uneq~combout\ = \add_instance|fa96|g1|Bit0_G~0_combout\ $ (\add_instance|fa112|x2|uneq~combout\ $ (\add_instance|fa113|x1|uneq~combout\ $ (\add_instance|fa98|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa96|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa112|x2|uneq~combout\,
	datac => \add_instance|fa113|x1|uneq~combout\,
	datad => \add_instance|fa98|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa115|x2|uneq~combout\);

-- Location: LC_X13_Y10_N2
\add_instance|fa101|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa101|g1|Bit0_G~0_combout\ = (\add_instance|fa84|g1|Bit0_G~0_combout\ & ((\add_instance|fa98|x2|uneq~0_combout\) # (\add_instance|fa82|g1|Bit0_G~0_combout\ $ (\add_instance|fa99|x1|uneq~combout\)))) # 
-- (!\add_instance|fa84|g1|Bit0_G~0_combout\ & (\add_instance|fa98|x2|uneq~0_combout\ & (\add_instance|fa82|g1|Bit0_G~0_combout\ $ (\add_instance|fa99|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa82|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa84|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa98|x2|uneq~0_combout\,
	datad => \add_instance|fa99|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa101|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y8_N7
\add_instance|fa117|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa117|x1|uneq~combout\ = (\add_instance|fa115|x2|uneq~combout\ $ ((\add_instance|fa101|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa115|x2|uneq~combout\,
	datac => \add_instance|fa101|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa117|x1|uneq~combout\);

-- Location: LC_X13_Y8_N6
\add_instance|fa102|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa102|x1|uneq~combout\ = \add_instance|a16:0:and_i|prod~combout\ $ (\add_instance|fa83|g1|Bit0_G~0_combout\ $ (\add_instance|fa97|x2|uneq~combout\ $ (\add_instance|fa85|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a16:0:and_i|prod~combout\,
	datab => \add_instance|fa83|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa97|x2|uneq~combout\,
	datad => \add_instance|fa85|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa102|x1|uneq~combout\);

-- Location: LC_X13_Y8_N7
\add_instance|fa103|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa103|g1|Bit0_G~0_combout\ = (\add_instance|fa101|x2|uneq~combout\ & ((\add_instance|fa87|g1|Bit0_G~0_combout\) # (\add_instance|fa86|g1|Bit0_G~0_combout\ $ (\add_instance|fa102|x1|uneq~combout\)))) # (!\add_instance|fa101|x2|uneq~combout\ & 
-- (\add_instance|fa87|g1|Bit0_G~0_combout\ & (\add_instance|fa86|g1|Bit0_G~0_combout\ $ (\add_instance|fa102|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa86|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa101|x2|uneq~combout\,
	datac => \add_instance|fa102|x1|uneq~combout\,
	datad => \add_instance|fa87|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa103|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y8_N4
\add_instance|fa118|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa118|x2|uneq~combout\ = \add_instance|fa102|g1|Bit0_G~0_combout\ $ (\add_instance|fa116|x2|uneq~combout\ $ (\add_instance|fa117|x1|uneq~combout\ $ (\add_instance|fa103|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa102|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa116|x2|uneq~combout\,
	datac => \add_instance|fa117|x1|uneq~combout\,
	datad => \add_instance|fa103|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa118|x2|uneq~combout\);

-- Location: LC_X12_Y8_N7
\add_instance|bkadder|abc_gates_g4:0:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g4:0:abc_i|abc~0_combout\ = (\add_instance|fa78|g1|Bit0_G~0_combout\ & (!\add_instance|fa90|x2|uneq~combout\ & (\add_instance|fa90|g1|Bit0_G~0_combout\ $ (\add_instance|fa104|x2|uneq~combout\)))) # 
-- (!\add_instance|fa78|g1|Bit0_G~0_combout\ & (\add_instance|fa90|x2|uneq~combout\ & (\add_instance|fa90|g1|Bit0_G~0_combout\ $ (\add_instance|fa104|x2|uneq~combout\))))

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
	dataa => \add_instance|fa78|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa90|x2|uneq~combout\,
	datac => \add_instance|fa90|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa104|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g4:0:abc_i|abc~0_combout\);

-- Location: LC_X12_Y8_N8
\add_instance|bkadder|abc_gates_g4:0:abc_i|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g4:0:abc_i|abc~1_combout\ = (\add_instance|bkadder|abc_c14|abc~0_combout\ & (\add_instance|bkadder|abc_c10|abc~1_combout\ & (\add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0_combout\ & 
-- \add_instance|bkadder|abc_gates_g4:0:abc_i|abc~0_combout\)))

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
	dataa => \add_instance|bkadder|abc_c14|abc~0_combout\,
	datab => \add_instance|bkadder|abc_c10|abc~1_combout\,
	datac => \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0_combout\,
	datad => \add_instance|bkadder|abc_gates_g4:0:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g4:0:abc_i|abc~1_combout\);

-- Location: LC_X10_Y9_N5
\add_instance|bkadder|abc_gates_g3:1:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g3:1:abc_i|abc~0_combout\ = (\add_instance|bkadder|abc_c14|abc~0_combout\ & ((\add_instance|bkadder|abc_gates_g1:5:abc_i|abc~0_combout\) # ((\add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0_combout\ & 
-- \add_instance|bkadder|abc_gates_g1:4:abc_i|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|bkadder|abc_gates_g2:2:abc_i|abc~0_combout\,
	datab => \add_instance|bkadder|abc_gates_g1:5:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g1:4:abc_i|abc~0_combout\,
	datad => \add_instance|bkadder|abc_c14|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g3:1:abc_i|abc~0_combout\);

-- Location: LC_X12_Y8_N3
\add_instance|bkadder|abc_gates_g1:7:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:7:abc_i|abc~0_combout\ = (\add_instance|fa90|g1|Bit0_G~0_combout\ & ((\add_instance|fa104|x2|uneq~combout\) # ((\add_instance|fa78|g1|Bit0_G~0_combout\ & \add_instance|fa90|x2|uneq~combout\)))) # 
-- (!\add_instance|fa90|g1|Bit0_G~0_combout\ & (\add_instance|fa78|g1|Bit0_G~0_combout\ & (\add_instance|fa90|x2|uneq~combout\ & \add_instance|fa104|x2|uneq~combout\)))

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
	dataa => \add_instance|fa78|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa90|x2|uneq~combout\,
	datac => \add_instance|fa90|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa104|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:7:abc_i|abc~0_combout\);

-- Location: LC_X12_Y8_N9
\add_instance|bkadder|abc_gates_g3:1:abc_i|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g3:1:abc_i|abc~1_combout\ = (\add_instance|bkadder|abc_gates_g1:7:abc_i|abc~0_combout\) # ((\add_instance|bkadder|abc_gates_g4:0:abc_i|abc~0_combout\ & ((\add_instance|bkadder|abc_gates_g3:1:abc_i|abc~0_combout\) # 
-- (\add_instance|bkadder|abc_gates_g1:6:abc_i|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|bkadder|abc_gates_g3:1:abc_i|abc~0_combout\,
	datab => \add_instance|bkadder|abc_gates_g4:0:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g1:6:abc_i|abc~0_combout\,
	datad => \add_instance|bkadder|abc_gates_g1:7:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g3:1:abc_i|abc~1_combout\);

-- Location: LC_X13_Y8_N2
\add_instance|fa104|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa104|g1|Bit0_G~0_combout\ = (\add_instance|fa88|g1|Bit0_G~0_combout\ & ((\add_instance|fa89|g1|Bit0_G~0_combout\) # (\add_instance|fa102|x2|uneq~combout\ $ (\add_instance|fa103|x1|uneq~combout\)))) # 
-- (!\add_instance|fa88|g1|Bit0_G~0_combout\ & (\add_instance|fa89|g1|Bit0_G~0_combout\ & (\add_instance|fa102|x2|uneq~combout\ $ (\add_instance|fa103|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa88|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa89|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa102|x2|uneq~combout\,
	datad => \add_instance|fa103|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa104|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y8_N8
\add_instance|bkadder|sum_xors:16:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:16:sum_xor_i|uneq~combout\ = \add_instance|fa118|x2|uneq~combout\ $ (\add_instance|fa104|g1|Bit0_G~0_combout\ $ (((\add_instance|bkadder|abc_gates_g4:0:abc_i|abc~1_combout\) # 
-- (\add_instance|bkadder|abc_gates_g3:1:abc_i|abc~1_combout\))))

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
	dataa => \add_instance|fa118|x2|uneq~combout\,
	datab => \add_instance|bkadder|abc_gates_g4:0:abc_i|abc~1_combout\,
	datac => \add_instance|bkadder|abc_gates_g3:1:abc_i|abc~1_combout\,
	datad => \add_instance|fa104|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:16:sum_xor_i|uneq~combout\);

-- Location: LC_X4_Y8_N5
\add_instance|fa115|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa115|g1|Bit0_G~0_combout\ = (\add_instance|fa112|x2|uneq~combout\ & ((\add_instance|fa98|g1|Bit0_G~0_combout\) # (\add_instance|fa96|g1|Bit0_G~0_combout\ $ (\add_instance|fa113|x1|uneq~combout\)))) # (!\add_instance|fa112|x2|uneq~combout\ & 
-- (\add_instance|fa98|g1|Bit0_G~0_combout\ & (\add_instance|fa96|g1|Bit0_G~0_combout\ $ (\add_instance|fa113|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa96|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa112|x2|uneq~combout\,
	datac => \add_instance|fa113|x1|uneq~combout\,
	datad => \add_instance|fa98|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa115|g1|Bit0_G~0_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(17),
	combout => \input_vector~combout\(17));

-- Location: LC_X1_Y6_N4
\add_instance|a3:15:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a3:15:and_i|prod~combout\ = (\input_vector~combout\(50) & (((\input_vector~combout\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(50),
	datac => \input_vector~combout\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a3:15:and_i|prod~combout\);

-- Location: LC_X1_Y6_N6
\add_instance|fa119|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa119|x2|uneq~combout\ = \input_vector~combout\(17) $ (\add_instance|a3:15:and_i|prod~combout\ $ (((\input_vector~combout\(51) & \input_vector~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(51),
	datab => \input_vector~combout\(17),
	datac => \add_instance|a3:15:and_i|prod~combout\,
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa119|x2|uneq~combout\);

-- Location: LC_X1_Y6_N9
\add_instance|fa105|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa105|g1|Bit0_G~0_combout\ = (\add_instance|a2:15:and_i|prod~combout\ & ((\input_vector~combout\(16)) # ((\input_vector~combout\(50) & \input_vector~combout\(46))))) # (!\add_instance|a2:15:and_i|prod~combout\ & (\input_vector~combout\(50) & 
-- (\input_vector~combout\(16) & \input_vector~combout\(46))))

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
	dataa => \input_vector~combout\(50),
	datab => \add_instance|a2:15:and_i|prod~combout\,
	datac => \input_vector~combout\(16),
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa105|g1|Bit0_G~0_combout\);

-- Location: LC_X1_Y6_N0
\add_instance|a7:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a7:11:and_i|prod~combout\ = (((\input_vector~combout\(43) & \input_vector~combout\(54))))

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
	datac => \input_vector~combout\(43),
	datad => \input_vector~combout\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a7:11:and_i|prod~combout\);

-- Location: LC_X1_Y6_N2
\add_instance|fa120|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa120|x1|uneq~combout\ = (\input_vector~combout\(44) & (\input_vector~combout\(53) $ (((\input_vector~combout\(52) & \input_vector~combout\(45)))))) # (!\input_vector~combout\(44) & (\input_vector~combout\(52) & 
-- (\input_vector~combout\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(44),
	datab => \input_vector~combout\(52),
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa120|x1|uneq~combout\);

-- Location: LC_X1_Y6_N3
\add_instance|fa122|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa122|x2|uneq~0_combout\ = \add_instance|fa119|x2|uneq~combout\ $ (\add_instance|fa105|g1|Bit0_G~0_combout\ $ (\add_instance|a7:11:and_i|prod~combout\ $ (\add_instance|fa120|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa119|x2|uneq~combout\,
	datab => \add_instance|fa105|g1|Bit0_G~0_combout\,
	datac => \add_instance|a7:11:and_i|prod~combout\,
	datad => \add_instance|fa120|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa122|x2|uneq~0_combout\);

-- Location: LC_X4_Y5_N8
\add_instance|a10:8:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a10:8:and_i|prod~combout\ = (((\input_vector~combout\(40) & \input_vector~combout\(57))))

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
	datac => \input_vector~combout\(40),
	datad => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a10:8:and_i|prod~combout\);

-- Location: LC_X1_Y7_N8
\add_instance|a4:13:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a4:13:and_i|prod~combout\ = (\input_vector~combout\(45) & (((\input_vector~combout\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(45),
	datac => \input_vector~combout\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a4:13:and_i|prod~combout\);

-- Location: LC_X1_Y7_N9
\add_instance|a5:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a5:12:and_i|prod~combout\ = ((\input_vector~combout\(52) & ((\input_vector~combout\(44)))))

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
	datab => \input_vector~combout\(52),
	datad => \input_vector~combout\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a5:12:and_i|prod~combout\);

-- Location: LC_X1_Y7_N2
\add_instance|fa106|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa106|g1|Bit0_G~0_combout\ = (\add_instance|a4:13:and_i|prod~combout\ & ((\add_instance|a5:12:and_i|prod~combout\) # ((\input_vector~combout\(43) & \input_vector~combout\(53))))) # (!\add_instance|a4:13:and_i|prod~combout\ & 
-- (\add_instance|a5:12:and_i|prod~combout\ & (\input_vector~combout\(43) & \input_vector~combout\(53))))

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
	dataa => \add_instance|a4:13:and_i|prod~combout\,
	datab => \add_instance|a5:12:and_i|prod~combout\,
	datac => \input_vector~combout\(43),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa106|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y5_N4
\add_instance|a9:9:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a9:9:and_i|prod~combout\ = (((\input_vector~combout\(56) & \input_vector~combout\(41))))

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
	datac => \input_vector~combout\(56),
	datad => \input_vector~combout\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a9:9:and_i|prod~combout\);

-- Location: LC_X4_Y5_N2
\add_instance|a8:10:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a8:10:and_i|prod~combout\ = (\input_vector~combout\(42) & (((\input_vector~combout\(55)))))

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
	dataa => \input_vector~combout\(42),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a8:10:and_i|prod~combout\);

-- Location: LC_X4_Y5_N3
\add_instance|fa123|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa123|x1|uneq~combout\ = \add_instance|a10:8:and_i|prod~combout\ $ (\add_instance|fa106|g1|Bit0_G~0_combout\ $ (\add_instance|a9:9:and_i|prod~combout\ $ (\add_instance|a8:10:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a10:8:and_i|prod~combout\,
	datab => \add_instance|fa106|g1|Bit0_G~0_combout\,
	datac => \add_instance|a9:9:and_i|prod~combout\,
	datad => \add_instance|a8:10:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa123|x1|uneq~combout\);

-- Location: LC_X4_Y5_N5
\add_instance|a7:10:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a7:10:and_i|prod~combout\ = (((\input_vector~combout\(54) & \input_vector~combout\(42))))

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
	datac => \input_vector~combout\(54),
	datad => \input_vector~combout\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a7:10:and_i|prod~combout\);

-- Location: LC_X4_Y5_N1
\add_instance|a8:9:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a8:9:and_i|prod~combout\ = ((\input_vector~combout\(41) & ((\input_vector~combout\(55)))))

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
	datab => \input_vector~combout\(41),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a8:9:and_i|prod~combout\);

-- Location: LC_X4_Y5_N0
\add_instance|fa107|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa107|g1|Bit0_G~0_combout\ = (\add_instance|a7:10:and_i|prod~combout\ & ((\add_instance|a8:9:and_i|prod~combout\) # ((\input_vector~combout\(56) & \input_vector~combout\(40))))) # (!\add_instance|a7:10:and_i|prod~combout\ & 
-- (\input_vector~combout\(56) & (\input_vector~combout\(40) & \add_instance|a8:9:and_i|prod~combout\)))

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
	dataa => \add_instance|a7:10:and_i|prod~combout\,
	datab => \input_vector~combout\(56),
	datac => \input_vector~combout\(40),
	datad => \add_instance|a8:9:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa107|g1|Bit0_G~0_combout\);

-- Location: LC_X1_Y7_N5
\add_instance|fa108|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa108|g1|Bit0_G~0_combout\ = (\add_instance|fa105|x2|uneq~combout\ & ((\add_instance|fa91|g1|Bit0_G~0_combout\) # (\add_instance|a6:11:and_i|prod~combout\ $ (\add_instance|fa106|x1|uneq~combout\)))) # (!\add_instance|fa105|x2|uneq~combout\ & 
-- (\add_instance|fa91|g1|Bit0_G~0_combout\ & (\add_instance|a6:11:and_i|prod~combout\ $ (\add_instance|fa106|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a6:11:and_i|prod~combout\,
	datab => \add_instance|fa105|x2|uneq~combout\,
	datac => \add_instance|fa106|x1|uneq~combout\,
	datad => \add_instance|fa91|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa108|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y6_N6
\add_instance|fa126|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa126|x2|uneq~combout\ = \add_instance|fa122|x2|uneq~0_combout\ $ (\add_instance|fa123|x1|uneq~combout\ $ (\add_instance|fa107|g1|Bit0_G~0_combout\ $ (\add_instance|fa108|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa122|x2|uneq~0_combout\,
	datab => \add_instance|fa123|x1|uneq~combout\,
	datac => \add_instance|fa107|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa108|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa126|x2|uneq~combout\);

-- Location: LC_X4_Y7_N3
\add_instance|fa112|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa112|g1|Bit0_G~0_combout\ = (\add_instance|fa94|g1|Bit0_G~0_combout\ & ((\add_instance|fa108|x2|uneq~0_combout\) # (\add_instance|fa109|x1|uneq~combout\ $ (\add_instance|fa93|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa94|g1|Bit0_G~0_combout\ & (\add_instance|fa108|x2|uneq~0_combout\ & (\add_instance|fa109|x1|uneq~combout\ $ (\add_instance|fa93|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa94|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa109|x1|uneq~combout\,
	datac => \add_instance|fa108|x2|uneq~0_combout\,
	datad => \add_instance|fa93|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa112|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y6_N5
\add_instance|a12:6:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:6:and_i|prod~combout\ = (((\input_vector~combout\(59) & \input_vector~combout\(38))))

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
	datac => \input_vector~combout\(59),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:6:and_i|prod~combout\);

-- Location: LC_X3_Y6_N9
\add_instance|ha16|a1|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|ha16|a1|prod~combout\ = (\input_vector~combout\(39) & (\input_vector~combout\(57) & (\input_vector~combout\(58) & \input_vector~combout\(38))))

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
	dataa => \input_vector~combout\(39),
	datab => \input_vector~combout\(57),
	datac => \input_vector~combout\(58),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ha16|a1|prod~combout\);

-- Location: LC_X3_Y6_N6
\add_instance|a11:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:7:and_i|prod~combout\ = (((\input_vector~combout\(58) & \input_vector~combout\(39))))

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
	datac => \input_vector~combout\(58),
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:7:and_i|prod~combout\);

-- Location: LC_X4_Y7_N6
\add_instance|a9:8:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a9:8:and_i|prod~combout\ = (((\input_vector~combout\(56) & \input_vector~combout\(40))))

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
	datac => \input_vector~combout\(56),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a9:8:and_i|prod~combout\);

-- Location: LC_X4_Y7_N9
\add_instance|fa109|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa109|g1|Bit0_G~0_combout\ = (\add_instance|fa92|g1|Bit0_G~0_combout\ & ((\add_instance|fa93|g1|Bit0_G~0_combout\) # (\add_instance|fa107|x1|uneq~combout\ $ (\add_instance|a9:8:and_i|prod~combout\)))) # 
-- (!\add_instance|fa92|g1|Bit0_G~0_combout\ & (\add_instance|fa93|g1|Bit0_G~0_combout\ & (\add_instance|fa107|x1|uneq~combout\ $ (\add_instance|a9:8:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa107|x1|uneq~combout\,
	datab => \add_instance|a9:8:and_i|prod~combout\,
	datac => \add_instance|fa92|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa93|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa109|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y6_N7
\add_instance|fa127|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa127|x1|uneq~combout\ = \add_instance|a12:6:and_i|prod~combout\ $ (\add_instance|fa109|g1|Bit0_G~0_combout\ $ (((!\add_instance|ha16|a1|prod~combout\ & \add_instance|a11:7:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "659a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a12:6:and_i|prod~combout\,
	datab => \add_instance|ha16|a1|prod~combout\,
	datac => \add_instance|a11:7:and_i|prod~combout\,
	datad => \add_instance|fa109|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa127|x1|uneq~combout\);

-- Location: LC_X4_Y8_N6
\add_instance|fa110|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa110|g1|Bit0_G~0_combout\ = (\add_instance|ha16|x1|uneq~combout\ & ((\add_instance|ha15|a1|prod~combout\) # ((\input_vector~combout\(59) & \input_vector~combout\(37))))) # (!\add_instance|ha16|x1|uneq~combout\ & (\input_vector~combout\(59) 
-- & (\add_instance|ha15|a1|prod~combout\ & \input_vector~combout\(37))))

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
	dataa => \add_instance|ha16|x1|uneq~combout\,
	datab => \input_vector~combout\(59),
	datac => \add_instance|ha15|a1|prod~combout\,
	datad => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa110|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y6_N0
\add_instance|fa129|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa129|x2|uneq~combout\ = \add_instance|fa126|x2|uneq~combout\ $ (\add_instance|fa112|g1|Bit0_G~0_combout\ $ (\add_instance|fa127|x1|uneq~combout\ $ (\add_instance|fa110|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa126|x2|uneq~combout\,
	datab => \add_instance|fa112|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa127|x1|uneq~combout\,
	datad => \add_instance|fa110|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa129|x2|uneq~combout\);

-- Location: LC_X10_Y7_N3
\add_instance|fa131|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa131|x1|uneq~combout\ = ((\add_instance|fa115|g1|Bit0_G~0_combout\ $ (\add_instance|fa129|x2|uneq~combout\)))

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
	datac => \add_instance|fa115|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa129|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa131|x1|uneq~combout\);

-- Location: LC_X10_Y8_N8
\add_instance|fa116|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa116|g1|Bit0_G~0_combout\ = (\add_instance|fa100|g1|Bit0_G~0_combout\ & ((\add_instance|fa99|g1|Bit0_G~0_combout\) # (\add_instance|fa114|x1|uneq~combout\ $ (\add_instance|a16:1:and_i|prod~combout\)))) # 
-- (!\add_instance|fa100|g1|Bit0_G~0_combout\ & (\add_instance|fa99|g1|Bit0_G~0_combout\ & (\add_instance|fa114|x1|uneq~combout\ $ (\add_instance|a16:1:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa100|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa114|x1|uneq~combout\,
	datac => \add_instance|a16:1:and_i|prod~combout\,
	datad => \add_instance|fa99|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa116|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y7_N4
\add_instance|a14:4:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:4:and_i|prod~combout\ = ((\input_vector~combout\(36) & (\input_vector~combout\(61))))

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
	datab => \input_vector~combout\(36),
	datac => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:4:and_i|prod~combout\);

-- Location: LC_X11_Y7_N3
\add_instance|a13:5:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a13:5:and_i|prod~combout\ = ((\input_vector~combout\(37) & ((\input_vector~combout\(60)))))

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
	datab => \input_vector~combout\(37),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a13:5:and_i|prod~combout\);

-- Location: LC_X11_Y7_N8
\add_instance|fa125|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa125|x2|uneq~combout\ = \add_instance|a14:4:and_i|prod~combout\ $ (\add_instance|a13:5:and_i|prod~combout\ $ (((\input_vector~combout\(35) & \input_vector~combout\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(35),
	datab => \input_vector~combout\(62),
	datac => \add_instance|a14:4:and_i|prod~combout\,
	datad => \add_instance|a13:5:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa125|x2|uneq~combout\);

-- Location: LC_X11_Y7_N2
\add_instance|fa111|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa111|g1|Bit0_G~0_combout\ = (\add_instance|a14:3:and_i|prod~combout\ & ((\add_instance|a13:4:and_i|prod~combout\) # ((\input_vector~combout\(34) & \input_vector~combout\(62))))) # (!\add_instance|a14:3:and_i|prod~combout\ & 
-- (\input_vector~combout\(34) & (\add_instance|a13:4:and_i|prod~combout\ & \input_vector~combout\(62))))

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
	dataa => \add_instance|a14:3:and_i|prod~combout\,
	datab => \input_vector~combout\(34),
	datac => \add_instance|a13:4:and_i|prod~combout\,
	datad => \input_vector~combout\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa111|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y7_N5
\add_instance|fa128|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa128|x1|uneq~combout\ = (\add_instance|fa125|x2|uneq~combout\ $ ((\add_instance|fa111|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa125|x2|uneq~combout\,
	datac => \add_instance|fa111|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa128|x1|uneq~combout\);

-- Location: LC_X4_Y8_N0
\add_instance|fa110|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa110|x1|uneq~combout\ = ((\add_instance|ha15|a1|prod~combout\ $ (\add_instance|ha16|x1|uneq~combout\)))

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
	datac => \add_instance|ha15|a1|prod~combout\,
	datad => \add_instance|ha16|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa110|x1|uneq~combout\);

-- Location: LC_X4_Y8_N2
\add_instance|fa113|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa113|g1|Bit0_G~0_combout\ = (\add_instance|fa96|g1|Bit0_G~0_combout\ & ((\add_instance|fa95|g1|Bit0_G~1_combout\) # (\add_instance|a12:5:and_i|prod~combout\ $ (\add_instance|fa110|x1|uneq~combout\)))) # 
-- (!\add_instance|fa96|g1|Bit0_G~0_combout\ & (\add_instance|fa95|g1|Bit0_G~1_combout\ & (\add_instance|a12:5:and_i|prod~combout\ $ (\add_instance|fa110|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa96|g1|Bit0_G~0_combout\,
	datab => \add_instance|a12:5:and_i|prod~combout\,
	datac => \add_instance|fa110|x1|uneq~combout\,
	datad => \add_instance|fa95|g1|Bit0_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa113|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y7_N9
\add_instance|a16:2:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a16:2:and_i|prod~combout\ = ((\input_vector~combout\(34) & (\input_vector~combout\(63))))

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
	datab => \input_vector~combout\(34),
	datac => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a16:2:and_i|prod~combout\);

-- Location: LC_X10_Y8_N5
\add_instance|fa114|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa114|g1|Bit0_G~0_combout\ = (\add_instance|fa111|x2|uneq~combout\ & ((\add_instance|fa97|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(63) & \input_vector~combout\(33))))) # (!\add_instance|fa111|x2|uneq~combout\ & 
-- (\input_vector~combout\(63) & (\input_vector~combout\(33) & \add_instance|fa97|g1|Bit0_G~0_combout\)))

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
	dataa => \input_vector~combout\(63),
	datab => \input_vector~combout\(33),
	datac => \add_instance|fa111|x2|uneq~combout\,
	datad => \add_instance|fa97|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa114|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y7_N6
\add_instance|fa130|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa130|x2|uneq~combout\ = \add_instance|fa128|x1|uneq~combout\ $ (\add_instance|fa113|g1|Bit0_G~0_combout\ $ (\add_instance|a16:2:and_i|prod~combout\ $ (\add_instance|fa114|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa128|x1|uneq~combout\,
	datab => \add_instance|fa113|g1|Bit0_G~0_combout\,
	datac => \add_instance|a16:2:and_i|prod~combout\,
	datad => \add_instance|fa114|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa130|x2|uneq~combout\);

-- Location: LC_X10_Y8_N1
\add_instance|fa116|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa116|x1|uneq~combout\ = \add_instance|fa111|x2|uneq~combout\ $ (\add_instance|fa97|g1|Bit0_G~0_combout\ $ (\add_instance|a16:1:and_i|prod~combout\ $ (\add_instance|fa99|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa111|x2|uneq~combout\,
	datab => \add_instance|fa97|g1|Bit0_G~0_combout\,
	datac => \add_instance|a16:1:and_i|prod~combout\,
	datad => \add_instance|fa99|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa116|x1|uneq~combout\);

-- Location: LC_X10_Y8_N3
\add_instance|fa117|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa117|g1|Bit0_G~0_combout\ = (\add_instance|fa115|x2|uneq~combout\ & ((\add_instance|fa101|g1|Bit0_G~0_combout\) # (\add_instance|fa100|g1|Bit0_G~0_combout\ $ (\add_instance|fa116|x1|uneq~combout\)))) # (!\add_instance|fa115|x2|uneq~combout\ 
-- & (\add_instance|fa101|g1|Bit0_G~0_combout\ & (\add_instance|fa100|g1|Bit0_G~0_combout\ $ (\add_instance|fa116|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa100|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa116|x1|uneq~combout\,
	datac => \add_instance|fa115|x2|uneq~combout\,
	datad => \add_instance|fa101|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa117|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y8_N0
\add_instance|fa132|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa132|x2|uneq~combout\ = \add_instance|fa131|x1|uneq~combout\ $ (\add_instance|fa116|g1|Bit0_G~0_combout\ $ (\add_instance|fa130|x2|uneq~combout\ $ (\add_instance|fa117|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa131|x1|uneq~combout\,
	datab => \add_instance|fa116|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa130|x2|uneq~combout\,
	datad => \add_instance|fa117|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa132|x2|uneq~combout\);

-- Location: LC_X11_Y8_N0
\add_instance|bkadder|abc_c17|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c17|abc~0_combout\ = (\add_instance|fa118|x2|uneq~combout\ & ((\add_instance|bkadder|abc_gates_g4:0:abc_i|abc~1_combout\) # ((\add_instance|bkadder|abc_gates_g3:1:abc_i|abc~1_combout\) # 
-- (\add_instance|fa104|g1|Bit0_G~0_combout\)))) # (!\add_instance|fa118|x2|uneq~combout\ & (\add_instance|fa104|g1|Bit0_G~0_combout\ & ((\add_instance|bkadder|abc_gates_g4:0:abc_i|abc~1_combout\) # 
-- (\add_instance|bkadder|abc_gates_g3:1:abc_i|abc~1_combout\))))

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
	dataa => \add_instance|fa118|x2|uneq~combout\,
	datab => \add_instance|bkadder|abc_gates_g4:0:abc_i|abc~1_combout\,
	datac => \add_instance|bkadder|abc_gates_g3:1:abc_i|abc~1_combout\,
	datad => \add_instance|fa104|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c17|abc~0_combout\);

-- Location: LC_X11_Y8_N1
\add_instance|fa118|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa118|g1|Bit0_G~0_combout\ = (\add_instance|fa102|g1|Bit0_G~0_combout\ & ((\add_instance|fa103|g1|Bit0_G~0_combout\) # (\add_instance|fa116|x2|uneq~combout\ $ (\add_instance|fa117|x1|uneq~combout\)))) # 
-- (!\add_instance|fa102|g1|Bit0_G~0_combout\ & (\add_instance|fa103|g1|Bit0_G~0_combout\ & (\add_instance|fa116|x2|uneq~combout\ $ (\add_instance|fa117|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa102|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa116|x2|uneq~combout\,
	datac => \add_instance|fa117|x1|uneq~combout\,
	datad => \add_instance|fa103|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa118|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y8_N3
\add_instance|bkadder|sum_xors:17:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:17:sum_xor_i|uneq~combout\ = \add_instance|fa132|x2|uneq~combout\ $ (((\add_instance|bkadder|abc_c17|abc~0_combout\ $ (\add_instance|fa118|g1|Bit0_G~0_combout\))))

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
	dataa => \add_instance|fa132|x2|uneq~combout\,
	datac => \add_instance|bkadder|abc_c17|abc~0_combout\,
	datad => \add_instance|fa118|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:17:sum_xor_i|uneq~combout\);

-- Location: LC_X11_Y8_N5
\add_instance|bkadder|abc_c18|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c18|abc~0_combout\ = (\add_instance|fa132|x2|uneq~combout\ & (!\add_instance|fa118|g1|Bit0_G~0_combout\ & (\add_instance|fa118|x2|uneq~combout\ $ (\add_instance|fa104|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa132|x2|uneq~combout\ & (\add_instance|fa118|g1|Bit0_G~0_combout\ & (\add_instance|fa118|x2|uneq~combout\ $ (\add_instance|fa104|g1|Bit0_G~0_combout\))))

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
	dataa => \add_instance|fa132|x2|uneq~combout\,
	datab => \add_instance|fa118|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa118|x2|uneq~combout\,
	datad => \add_instance|fa104|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c18|abc~0_combout\);

-- Location: LC_X11_Y8_N2
\add_instance|bkadder|abc_c18|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c18|abc~1_combout\ = ((\add_instance|bkadder|abc_c18|abc~0_combout\ & ((\add_instance|bkadder|abc_gates_g3:1:abc_i|abc~1_combout\) # (\add_instance|bkadder|abc_gates_g4:0:abc_i|abc~1_combout\))))

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
	datab => \add_instance|bkadder|abc_gates_g3:1:abc_i|abc~1_combout\,
	datac => \add_instance|bkadder|abc_c18|abc~0_combout\,
	datad => \add_instance|bkadder|abc_gates_g4:0:abc_i|abc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c18|abc~1_combout\);

-- Location: LC_X10_Y8_N9
\add_instance|fa132|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa132|g1|Bit0_G~0_combout\ = (\add_instance|fa116|g1|Bit0_G~0_combout\ & ((\add_instance|fa117|g1|Bit0_G~0_combout\) # (\add_instance|fa131|x1|uneq~combout\ $ (\add_instance|fa130|x2|uneq~combout\)))) # 
-- (!\add_instance|fa116|g1|Bit0_G~0_combout\ & (\add_instance|fa117|g1|Bit0_G~0_combout\ & (\add_instance|fa131|x1|uneq~combout\ $ (\add_instance|fa130|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa131|x1|uneq~combout\,
	datab => \add_instance|fa116|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa130|x2|uneq~combout\,
	datad => \add_instance|fa117|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa132|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y6_N3
\add_instance|fa129|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa129|g1|Bit0_G~0_combout\ = (\add_instance|fa126|x2|uneq~combout\ & ((\add_instance|fa112|g1|Bit0_G~0_combout\) # (\add_instance|fa127|x1|uneq~combout\ $ (\add_instance|fa110|g1|Bit0_G~0_combout\)))) # (!\add_instance|fa126|x2|uneq~combout\ 
-- & (\add_instance|fa112|g1|Bit0_G~0_combout\ & (\add_instance|fa127|x1|uneq~combout\ $ (\add_instance|fa110|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa126|x2|uneq~combout\,
	datab => \add_instance|fa112|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa127|x1|uneq~combout\,
	datad => \add_instance|fa110|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa129|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y6_N8
\add_instance|fa126|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa126|g1|Bit0_G~0_combout\ = (\add_instance|fa122|x2|uneq~0_combout\ & ((\add_instance|fa108|g1|Bit0_G~0_combout\) # (\add_instance|fa123|x1|uneq~combout\ $ (\add_instance|fa107|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa122|x2|uneq~0_combout\ & (\add_instance|fa108|g1|Bit0_G~0_combout\ & (\add_instance|fa123|x1|uneq~combout\ $ (\add_instance|fa107|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa122|x2|uneq~0_combout\,
	datab => \add_instance|fa123|x1|uneq~combout\,
	datac => \add_instance|fa107|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa108|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa126|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y6_N2
\add_instance|fa124|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa124|g1|Bit0_G~0_combout\ = (\add_instance|ha16|a1|prod~combout\ & ((\add_instance|a11:7:and_i|prod~combout\) # ((\input_vector~combout\(59) & \input_vector~combout\(38))))) # (!\add_instance|ha16|a1|prod~combout\ & 
-- (\input_vector~combout\(59) & (\add_instance|a11:7:and_i|prod~combout\ & \input_vector~combout\(38))))

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
	dataa => \input_vector~combout\(59),
	datab => \add_instance|ha16|a1|prod~combout\,
	datac => \add_instance|a11:7:and_i|prod~combout\,
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa124|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y6_N9
\add_instance|fa137|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa137|x1|uneq~combout\ = (\input_vector~combout\(41) & (\input_vector~combout\(57) $ (((\input_vector~combout\(40) & \input_vector~combout\(58)))))) # (!\input_vector~combout\(41) & (\input_vector~combout\(40) & 
-- (\input_vector~combout\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(41),
	datab => \input_vector~combout\(40),
	datac => \input_vector~combout\(58),
	datad => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa137|x1|uneq~combout\);

-- Location: LC_X4_Y5_N9
\add_instance|fa121|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa121|x1|uneq~combout\ = (\input_vector~combout\(42) & (\input_vector~combout\(55) $ (((\input_vector~combout\(41) & \input_vector~combout\(56)))))) # (!\input_vector~combout\(42) & (\input_vector~combout\(41) & 
-- (\input_vector~combout\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(42),
	datab => \input_vector~combout\(41),
	datac => \input_vector~combout\(56),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa121|x1|uneq~combout\);

-- Location: LC_X4_Y5_N7
\add_instance|fa123|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa123|g1|Bit0_G~0_combout\ = (\add_instance|fa106|g1|Bit0_G~0_combout\ & ((\add_instance|fa107|g1|Bit0_G~0_combout\) # (\add_instance|a10:8:and_i|prod~combout\ $ (\add_instance|fa121|x1|uneq~combout\)))) # 
-- (!\add_instance|fa106|g1|Bit0_G~0_combout\ & (\add_instance|fa107|g1|Bit0_G~0_combout\ & (\add_instance|a10:8:and_i|prod~combout\ $ (\add_instance|fa121|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a10:8:and_i|prod~combout\,
	datab => \add_instance|fa121|x1|uneq~combout\,
	datac => \add_instance|fa106|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa107|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa123|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y6_N4
\add_instance|fa140|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa140|x1|uneq~combout\ = \add_instance|fa137|x1|uneq~combout\ $ (\add_instance|fa123|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(39) & \input_vector~combout\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(39),
	datab => \add_instance|fa137|x1|uneq~combout\,
	datac => \add_instance|fa123|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa140|x1|uneq~combout\);

-- Location: LC_X2_Y5_N8
\add_instance|a5:13:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a5:13:and_i|prod~combout\ = ((\input_vector~combout\(45) & ((\input_vector~combout\(52)))))

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
	datab => \input_vector~combout\(45),
	datad => \input_vector~combout\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a5:13:and_i|prod~combout\);

-- Location: LC_X2_Y5_N9
\add_instance|a6:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a6:12:and_i|prod~combout\ = (((\input_vector~combout\(44) & \input_vector~combout\(53))))

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
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a6:12:and_i|prod~combout\);

-- Location: LC_X2_Y5_N2
\add_instance|fa120|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa120|g1|Bit0_G~0_combout\ = (\add_instance|a5:13:and_i|prod~combout\ & ((\add_instance|a6:12:and_i|prod~combout\) # ((\input_vector~combout\(43) & \input_vector~combout\(54))))) # (!\add_instance|a5:13:and_i|prod~combout\ & 
-- (\input_vector~combout\(43) & (\input_vector~combout\(54) & \add_instance|a6:12:and_i|prod~combout\)))

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
	dataa => \add_instance|a5:13:and_i|prod~combout\,
	datab => \input_vector~combout\(43),
	datac => \input_vector~combout\(54),
	datad => \add_instance|a6:12:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa120|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y5_N6
\add_instance|fa136|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa136|x1|uneq~combout\ = \add_instance|fa120|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(42) & ((\input_vector~combout\(56))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(42),
	datab => \add_instance|fa120|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa136|x1|uneq~combout\);

-- Location: LC_X1_Y6_N5
\add_instance|fa122|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa122|g1|Bit0_G~0_combout\ = (\add_instance|fa119|x2|uneq~combout\ & ((\add_instance|fa105|g1|Bit0_G~0_combout\) # (\add_instance|a7:11:and_i|prod~combout\ $ (\add_instance|fa120|x1|uneq~combout\)))) # (!\add_instance|fa119|x2|uneq~combout\ 
-- & (\add_instance|fa105|g1|Bit0_G~0_combout\ & (\add_instance|a7:11:and_i|prod~combout\ $ (\add_instance|fa120|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa119|x2|uneq~combout\,
	datab => \add_instance|fa105|g1|Bit0_G~0_combout\,
	datac => \add_instance|a7:11:and_i|prod~combout\,
	datad => \add_instance|fa120|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa122|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y5_N6
\add_instance|fa121|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa121|g1|Bit0_G~0_combout\ = (\add_instance|a8:10:and_i|prod~combout\ & ((\add_instance|a9:9:and_i|prod~combout\) # ((\input_vector~combout\(40) & \input_vector~combout\(57))))) # (!\add_instance|a8:10:and_i|prod~combout\ & 
-- (\input_vector~combout\(40) & (\add_instance|a9:9:and_i|prod~combout\ & \input_vector~combout\(57))))

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
	dataa => \input_vector~combout\(40),
	datab => \add_instance|a8:10:and_i|prod~combout\,
	datac => \add_instance|a9:9:and_i|prod~combout\,
	datad => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa121|g1|Bit0_G~0_combout\);

-- Location: LC_X2_Y5_N5
\add_instance|a8:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a8:11:and_i|prod~combout\ = (((\input_vector~combout\(43) & \input_vector~combout\(55))))

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
	datac => \input_vector~combout\(43),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a8:11:and_i|prod~combout\);

-- Location: LC_X1_Y6_N7
\add_instance|fa119|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa119|g1|Bit0_G~0_combout\ = (\input_vector~combout\(17) & ((\add_instance|a3:15:and_i|prod~combout\) # ((\input_vector~combout\(51) & \input_vector~combout\(46))))) # (!\input_vector~combout\(17) & (\input_vector~combout\(51) & 
-- (\add_instance|a3:15:and_i|prod~combout\ & \input_vector~combout\(46))))

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
	dataa => \input_vector~combout\(51),
	datab => \input_vector~combout\(17),
	datac => \add_instance|a3:15:and_i|prod~combout\,
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa119|g1|Bit0_G~0_combout\);

-- Location: LC_X2_Y6_N4
\add_instance|a4:15:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a4:15:and_i|prod~combout\ = (((\input_vector~combout\(51) & \input_vector~combout\(47))))

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
	datac => \input_vector~combout\(51),
	datad => \input_vector~combout\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a4:15:and_i|prod~combout\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(18),
	combout => \input_vector~combout\(18));

-- Location: LC_X2_Y6_N0
\add_instance|fa133|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa133|x2|uneq~combout\ = \add_instance|a4:15:and_i|prod~combout\ $ (\input_vector~combout\(18) $ (((\input_vector~combout\(52) & \input_vector~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a4:15:and_i|prod~combout\,
	datab => \input_vector~combout\(18),
	datac => \input_vector~combout\(52),
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa133|x2|uneq~combout\);

-- Location: LC_X2_Y6_N3
\add_instance|fa134|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa134|x1|uneq~combout\ = (\input_vector~combout\(53) & (\input_vector~combout\(45) $ (((\input_vector~combout\(44) & \input_vector~combout\(54)))))) # (!\input_vector~combout\(53) & (((\input_vector~combout\(44) & 
-- \input_vector~combout\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(53),
	datab => \input_vector~combout\(45),
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa134|x1|uneq~combout\);

-- Location: LC_X2_Y6_N5
\add_instance|fa135|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa135|x2|uneq~0_combout\ = \add_instance|a8:11:and_i|prod~combout\ $ (\add_instance|fa119|g1|Bit0_G~0_combout\ $ (\add_instance|fa133|x2|uneq~combout\ $ (\add_instance|fa134|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a8:11:and_i|prod~combout\,
	datab => \add_instance|fa119|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa133|x2|uneq~combout\,
	datad => \add_instance|fa134|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa135|x2|uneq~0_combout\);

-- Location: LC_X3_Y5_N2
\add_instance|fa139|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa139|x2|uneq~combout\ = \add_instance|fa136|x1|uneq~combout\ $ (\add_instance|fa122|g1|Bit0_G~0_combout\ $ (\add_instance|fa121|g1|Bit0_G~0_combout\ $ (\add_instance|fa135|x2|uneq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa136|x1|uneq~combout\,
	datab => \add_instance|fa122|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa121|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa135|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa139|x2|uneq~combout\);

-- Location: LC_X4_Y6_N1
\add_instance|fa142|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa142|x2|uneq~combout\ = \add_instance|fa126|g1|Bit0_G~0_combout\ $ (\add_instance|fa124|g1|Bit0_G~0_combout\ $ (\add_instance|fa140|x1|uneq~combout\ $ (\add_instance|fa139|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa126|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa124|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa140|x1|uneq~combout\,
	datad => \add_instance|fa139|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa142|x2|uneq~combout\);

-- Location: LC_X4_Y6_N0
\add_instance|fa144|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa144|x1|uneq~combout\ = (\add_instance|fa129|g1|Bit0_G~0_combout\ $ (((\add_instance|fa142|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa129|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa142|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa144|x1|uneq~combout\);

-- Location: LC_X8_Y6_N4
\add_instance|a13:6:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a13:6:and_i|prod~combout\ = (\input_vector~combout\(38) & (((\input_vector~combout\(60)))))

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
	dataa => \input_vector~combout\(38),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a13:6:and_i|prod~combout\);

-- Location: LC_X6_Y6_N4
\add_instance|a14:5:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:5:and_i|prod~combout\ = (((\input_vector~combout\(37) & \input_vector~combout\(61))))

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
	datac => \input_vector~combout\(37),
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:5:and_i|prod~combout\);

-- Location: LC_X6_Y6_N1
\add_instance|fa138|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa138|x2|uneq~combout\ = \add_instance|a13:6:and_i|prod~combout\ $ (\add_instance|a14:5:and_i|prod~combout\ $ (((\input_vector~combout\(62) & \input_vector~combout\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(62),
	datab => \add_instance|a13:6:and_i|prod~combout\,
	datac => \add_instance|a14:5:and_i|prod~combout\,
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa138|x2|uneq~combout\);

-- Location: LC_X11_Y7_N9
\add_instance|fa125|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa125|g1|Bit0_G~0_combout\ = (\add_instance|a14:4:and_i|prod~combout\ & ((\add_instance|a13:5:and_i|prod~combout\) # ((\input_vector~combout\(35) & \input_vector~combout\(62))))) # (!\add_instance|a14:4:and_i|prod~combout\ & 
-- (\input_vector~combout\(35) & (\input_vector~combout\(62) & \add_instance|a13:5:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(35),
	datab => \input_vector~combout\(62),
	datac => \add_instance|a14:4:and_i|prod~combout\,
	datad => \add_instance|a13:5:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa125|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y6_N8
\add_instance|fa141|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa141|x1|uneq~combout\ = \add_instance|fa138|x2|uneq~combout\ $ ((((\add_instance|fa125|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa138|x2|uneq~combout\,
	datad => \add_instance|fa125|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa141|x1|uneq~combout\);

-- Location: LC_X3_Y6_N4
\add_instance|fa124|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa124|x1|uneq~combout\ = (\input_vector~combout\(39) & (\input_vector~combout\(58) & ((!\input_vector~combout\(38)) # (!\input_vector~combout\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(39),
	datab => \input_vector~combout\(57),
	datac => \input_vector~combout\(58),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa124|x1|uneq~combout\);

-- Location: LC_X3_Y6_N1
\add_instance|fa127|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa127|g1|Bit0_G~0_combout\ = (\add_instance|fa109|g1|Bit0_G~0_combout\ & ((\add_instance|fa110|g1|Bit0_G~0_combout\) # (\add_instance|a12:6:and_i|prod~combout\ $ (\add_instance|fa124|x1|uneq~combout\)))) # 
-- (!\add_instance|fa109|g1|Bit0_G~0_combout\ & (\add_instance|fa110|g1|Bit0_G~0_combout\ & (\add_instance|a12:6:and_i|prod~combout\ $ (\add_instance|fa124|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a12:6:and_i|prod~combout\,
	datab => \add_instance|fa109|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa124|x1|uneq~combout\,
	datad => \add_instance|fa110|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa127|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y6_N0
\add_instance|a16:3:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a16:3:and_i|prod~combout\ = (((\input_vector~combout\(63) & \input_vector~combout\(35))))

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
	datac => \input_vector~combout\(63),
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a16:3:and_i|prod~combout\);

-- Location: LC_X10_Y7_N8
\add_instance|fa128|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa128|g1|Bit0_G~0_combout\ = (\add_instance|fa111|g1|Bit0_G~0_combout\ & ((\add_instance|fa125|x2|uneq~combout\) # ((\input_vector~combout\(63) & \input_vector~combout\(34))))) # (!\add_instance|fa111|g1|Bit0_G~0_combout\ & 
-- (\input_vector~combout\(63) & (\input_vector~combout\(34) & \add_instance|fa125|x2|uneq~combout\)))

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
	dataa => \input_vector~combout\(63),
	datab => \input_vector~combout\(34),
	datac => \add_instance|fa111|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa125|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa128|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y6_N1
\add_instance|fa143|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa143|x2|uneq~combout\ = \add_instance|fa141|x1|uneq~combout\ $ (\add_instance|fa127|g1|Bit0_G~0_combout\ $ (\add_instance|a16:3:and_i|prod~combout\ $ (\add_instance|fa128|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa141|x1|uneq~combout\,
	datab => \add_instance|fa127|g1|Bit0_G~0_combout\,
	datac => \add_instance|a16:3:and_i|prod~combout\,
	datad => \add_instance|fa128|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa143|x2|uneq~combout\);

-- Location: LC_X10_Y7_N4
\add_instance|fa130|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa130|x1|uneq~combout\ = \add_instance|fa113|g1|Bit0_G~0_combout\ $ (\add_instance|a16:2:and_i|prod~combout\ $ (\add_instance|fa111|g1|Bit0_G~0_combout\ $ (\add_instance|fa125|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa113|g1|Bit0_G~0_combout\,
	datab => \add_instance|a16:2:and_i|prod~combout\,
	datac => \add_instance|fa111|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa125|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa130|x1|uneq~combout\);

-- Location: LC_X10_Y7_N2
\add_instance|fa131|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa131|g1|Bit0_G~0_combout\ = (\add_instance|fa129|x2|uneq~combout\ & ((\add_instance|fa115|g1|Bit0_G~0_combout\) # (\add_instance|fa130|x1|uneq~combout\ $ (\add_instance|fa114|g1|Bit0_G~0_combout\)))) # (!\add_instance|fa129|x2|uneq~combout\ 
-- & (\add_instance|fa115|g1|Bit0_G~0_combout\ & (\add_instance|fa130|x1|uneq~combout\ $ (\add_instance|fa114|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa130|x1|uneq~combout\,
	datab => \add_instance|fa129|x2|uneq~combout\,
	datac => \add_instance|fa115|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa114|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa131|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y7_N7
\add_instance|fa130|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa130|g1|Bit0_G~0_combout\ = (\add_instance|fa113|g1|Bit0_G~0_combout\ & ((\add_instance|fa114|g1|Bit0_G~0_combout\) # (\add_instance|fa128|x1|uneq~combout\ $ (\add_instance|a16:2:and_i|prod~combout\)))) # 
-- (!\add_instance|fa113|g1|Bit0_G~0_combout\ & (\add_instance|fa114|g1|Bit0_G~0_combout\ & (\add_instance|fa128|x1|uneq~combout\ $ (\add_instance|a16:2:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa128|x1|uneq~combout\,
	datab => \add_instance|fa113|g1|Bit0_G~0_combout\,
	datac => \add_instance|a16:2:and_i|prod~combout\,
	datad => \add_instance|fa114|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa130|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y7_N4
\add_instance|fa145|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa145|x2|uneq~combout\ = \add_instance|fa144|x1|uneq~combout\ $ (\add_instance|fa143|x2|uneq~combout\ $ (\add_instance|fa131|g1|Bit0_G~0_combout\ $ (\add_instance|fa130|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa144|x1|uneq~combout\,
	datab => \add_instance|fa143|x2|uneq~combout\,
	datac => \add_instance|fa131|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa130|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa145|x2|uneq~combout\);

-- Location: LC_X11_Y8_N9
\add_instance|bkadder|abc_gates_g1:8:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:8:abc_i|abc~0_combout\ = (\add_instance|fa132|x2|uneq~combout\ & ((\add_instance|fa118|g1|Bit0_G~0_combout\) # ((\add_instance|fa118|x2|uneq~combout\ & \add_instance|fa104|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa132|x2|uneq~combout\ & (\add_instance|fa118|g1|Bit0_G~0_combout\ & (\add_instance|fa118|x2|uneq~combout\ & \add_instance|fa104|g1|Bit0_G~0_combout\)))

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
	dataa => \add_instance|fa132|x2|uneq~combout\,
	datab => \add_instance|fa118|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa118|x2|uneq~combout\,
	datad => \add_instance|fa104|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:8:abc_i|abc~0_combout\);

-- Location: LC_X9_Y7_N2
\add_instance|bkadder|sum_xors:18:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:18:sum_xor_i|uneq~combout\ = \add_instance|fa132|g1|Bit0_G~0_combout\ $ (\add_instance|fa145|x2|uneq~combout\ $ (((\add_instance|bkadder|abc_c18|abc~1_combout\) # 
-- (\add_instance|bkadder|abc_gates_g1:8:abc_i|abc~0_combout\))))

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
	dataa => \add_instance|bkadder|abc_c18|abc~1_combout\,
	datab => \add_instance|fa132|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa145|x2|uneq~combout\,
	datad => \add_instance|bkadder|abc_gates_g1:8:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:18:sum_xor_i|uneq~combout\);

-- Location: LC_X5_Y6_N3
\add_instance|fa143|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa143|g1|Bit0_G~0_combout\ = (\add_instance|fa127|g1|Bit0_G~0_combout\ & ((\add_instance|fa128|g1|Bit0_G~0_combout\) # (\add_instance|fa141|x1|uneq~combout\ $ (\add_instance|a16:3:and_i|prod~combout\)))) # 
-- (!\add_instance|fa127|g1|Bit0_G~0_combout\ & (\add_instance|fa128|g1|Bit0_G~0_combout\ & (\add_instance|fa141|x1|uneq~combout\ $ (\add_instance|a16:3:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa141|x1|uneq~combout\,
	datab => \add_instance|fa127|g1|Bit0_G~0_combout\,
	datac => \add_instance|a16:3:and_i|prod~combout\,
	datad => \add_instance|fa128|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa143|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y6_N4
\add_instance|fa143|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa143|x1|uneq~combout\ = \add_instance|fa138|x2|uneq~combout\ $ (\add_instance|fa127|g1|Bit0_G~0_combout\ $ (\add_instance|a16:3:and_i|prod~combout\ $ (\add_instance|fa125|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa138|x2|uneq~combout\,
	datab => \add_instance|fa127|g1|Bit0_G~0_combout\,
	datac => \add_instance|a16:3:and_i|prod~combout\,
	datad => \add_instance|fa125|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa143|x1|uneq~combout\);

-- Location: LC_X5_Y6_N7
\add_instance|fa144|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa144|g1|Bit0_G~0_combout\ = (\add_instance|fa129|g1|Bit0_G~0_combout\ & ((\add_instance|fa142|x2|uneq~combout\) # (\add_instance|fa143|x1|uneq~combout\ $ (\add_instance|fa128|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa129|g1|Bit0_G~0_combout\ & (\add_instance|fa142|x2|uneq~combout\ & (\add_instance|fa143|x1|uneq~combout\ $ (\add_instance|fa128|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa143|x1|uneq~combout\,
	datab => \add_instance|fa129|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa142|x2|uneq~combout\,
	datad => \add_instance|fa128|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa144|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y5_N8
\add_instance|fa139|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa139|g1|Bit0_G~0_combout\ = (\add_instance|fa122|g1|Bit0_G~0_combout\ & ((\add_instance|fa135|x2|uneq~0_combout\) # (\add_instance|fa136|x1|uneq~combout\ $ (\add_instance|fa121|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa122|g1|Bit0_G~0_combout\ & (\add_instance|fa135|x2|uneq~0_combout\ & (\add_instance|fa136|x1|uneq~combout\ $ (\add_instance|fa121|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa136|x1|uneq~combout\,
	datab => \add_instance|fa122|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa121|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa135|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa139|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y5_N3
\add_instance|fa149|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa149|x1|uneq~combout\ = (\input_vector~combout\(57) & (\input_vector~combout\(42) $ (((\input_vector~combout\(41) & \input_vector~combout\(58)))))) # (!\input_vector~combout\(57) & (\input_vector~combout\(41) & 
-- (\input_vector~combout\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(57),
	datab => \input_vector~combout\(41),
	datac => \input_vector~combout\(58),
	datad => \input_vector~combout\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa149|x1|uneq~combout\);

-- Location: LC_X3_Y5_N5
\add_instance|fa136|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa136|g1|Bit0_G~0_combout\ = (\add_instance|fa120|g1|Bit0_G~0_combout\ & ((\add_instance|fa121|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(42) & \input_vector~combout\(56))))) # (!\add_instance|fa120|g1|Bit0_G~0_combout\ & 
-- (\input_vector~combout\(42) & (\add_instance|fa121|g1|Bit0_G~0_combout\ & \input_vector~combout\(56))))

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
	dataa => \input_vector~combout\(42),
	datab => \add_instance|fa120|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa121|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa136|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y5_N7
\add_instance|fa152|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa152|x1|uneq~combout\ = \add_instance|fa149|x1|uneq~combout\ $ (\add_instance|fa136|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(40) & \input_vector~combout\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(40),
	datab => \add_instance|fa149|x1|uneq~combout\,
	datac => \add_instance|fa136|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa152|x1|uneq~combout\);

-- Location: LC_X2_Y7_N7
\add_instance|a5:15:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a5:15:and_i|prod~combout\ = (\input_vector~combout\(52) & (((\input_vector~combout\(47)))))

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
	dataa => \input_vector~combout\(52),
	datad => \input_vector~combout\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a5:15:and_i|prod~combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(19),
	combout => \input_vector~combout\(19));

-- Location: LC_X2_Y7_N2
\add_instance|fa146|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa146|x2|uneq~combout\ = \add_instance|a5:15:and_i|prod~combout\ $ (\input_vector~combout\(19) $ (((\input_vector~combout\(46) & \input_vector~combout\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(46),
	datab => \add_instance|a5:15:and_i|prod~combout\,
	datac => \input_vector~combout\(19),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa146|x2|uneq~combout\);

-- Location: LC_X2_Y6_N7
\add_instance|fa133|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa133|g1|Bit0_G~0_combout\ = (\add_instance|a4:15:and_i|prod~combout\ & ((\input_vector~combout\(18)) # ((\input_vector~combout\(52) & \input_vector~combout\(46))))) # (!\add_instance|a4:15:and_i|prod~combout\ & (\input_vector~combout\(18) & 
-- (\input_vector~combout\(52) & \input_vector~combout\(46))))

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
	dataa => \add_instance|a4:15:and_i|prod~combout\,
	datab => \input_vector~combout\(18),
	datac => \input_vector~combout\(52),
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa133|g1|Bit0_G~0_combout\);

-- Location: LC_X2_Y6_N8
\add_instance|fa147|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa147|x2|uneq~combout\ = \add_instance|fa146|x2|uneq~combout\ $ (\add_instance|fa133|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(45) & \input_vector~combout\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa146|x2|uneq~combout\,
	datab => \input_vector~combout\(45),
	datac => \add_instance|fa133|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa147|x2|uneq~combout\);

-- Location: LC_X2_Y6_N9
\add_instance|fa135|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa135|g1|Bit0_G~0_combout\ = (\add_instance|fa119|g1|Bit0_G~0_combout\ & ((\add_instance|fa133|x2|uneq~combout\) # (\add_instance|a8:11:and_i|prod~combout\ $ (\add_instance|fa134|x1|uneq~combout\)))) # 
-- (!\add_instance|fa119|g1|Bit0_G~0_combout\ & (\add_instance|fa133|x2|uneq~combout\ & (\add_instance|a8:11:and_i|prod~combout\ $ (\add_instance|fa134|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a8:11:and_i|prod~combout\,
	datab => \add_instance|fa119|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa133|x2|uneq~combout\,
	datad => \add_instance|fa134|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa135|g1|Bit0_G~0_combout\);

-- Location: LC_X2_Y5_N4
\add_instance|a6:13:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a6:13:and_i|prod~combout\ = ((\input_vector~combout\(45) & ((\input_vector~combout\(53)))))

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
	datab => \input_vector~combout\(45),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a6:13:and_i|prod~combout\);

-- Location: LC_X2_Y5_N1
\add_instance|a7:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a7:12:and_i|prod~combout\ = (\input_vector~combout\(54) & (((\input_vector~combout\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(54),
	datac => \input_vector~combout\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a7:12:and_i|prod~combout\);

-- Location: LC_X2_Y5_N7
\add_instance|fa134|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa134|g1|Bit0_G~0_combout\ = (\add_instance|a6:13:and_i|prod~combout\ & ((\add_instance|a7:12:and_i|prod~combout\) # ((\input_vector~combout\(43) & \input_vector~combout\(55))))) # (!\add_instance|a6:13:and_i|prod~combout\ & 
-- (\add_instance|a7:12:and_i|prod~combout\ & (\input_vector~combout\(43) & \input_vector~combout\(55))))

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
	dataa => \add_instance|a6:13:and_i|prod~combout\,
	datab => \add_instance|a7:12:and_i|prod~combout\,
	datac => \input_vector~combout\(43),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa134|g1|Bit0_G~0_combout\);

-- Location: LC_X2_Y5_N0
\add_instance|fa148|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa148|x1|uneq~combout\ = (\add_instance|fa134|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(44) & \input_vector~combout\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa134|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa148|x1|uneq~combout\);

-- Location: LC_X3_Y6_N8
\add_instance|a9:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a9:11:and_i|prod~combout\ = ((\input_vector~combout\(43) & ((\input_vector~combout\(56)))))

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
	datab => \input_vector~combout\(43),
	datad => \input_vector~combout\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a9:11:and_i|prod~combout\);

-- Location: LC_X2_Y6_N2
\add_instance|fa151|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa151|x2|uneq~combout\ = \add_instance|fa147|x2|uneq~combout\ $ (\add_instance|fa135|g1|Bit0_G~0_combout\ $ (\add_instance|fa148|x1|uneq~combout\ $ (\add_instance|a9:11:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa147|x2|uneq~combout\,
	datab => \add_instance|fa135|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa148|x1|uneq~combout\,
	datad => \add_instance|a9:11:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa151|x2|uneq~combout\);

-- Location: LC_X8_Y5_N8
\add_instance|a10:9:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a10:9:and_i|prod~combout\ = (((\input_vector~combout\(41) & \input_vector~combout\(57))))

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
	datac => \input_vector~combout\(41),
	datad => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a10:9:and_i|prod~combout\);

-- Location: LC_X7_Y5_N4
\add_instance|a11:8:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:8:and_i|prod~combout\ = ((\input_vector~combout\(40) & ((\input_vector~combout\(58)))))

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
	datab => \input_vector~combout\(40),
	datad => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:8:and_i|prod~combout\);

-- Location: LC_X7_Y5_N2
\add_instance|fa137|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa137|g1|Bit0_G~0_combout\ = (\add_instance|a10:9:and_i|prod~combout\ & ((\add_instance|a11:8:and_i|prod~combout\) # ((\input_vector~combout\(39) & \input_vector~combout\(59))))) # (!\add_instance|a10:9:and_i|prod~combout\ & 
-- (\input_vector~combout\(39) & (\add_instance|a11:8:and_i|prod~combout\ & \input_vector~combout\(59))))

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
	dataa => \input_vector~combout\(39),
	datab => \add_instance|a10:9:and_i|prod~combout\,
	datac => \add_instance|a11:8:and_i|prod~combout\,
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa137|g1|Bit0_G~0_combout\);

-- Location: LC_X3_Y5_N4
\add_instance|fa154|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa154|x2|uneq~combout\ = \add_instance|fa139|g1|Bit0_G~0_combout\ $ (\add_instance|fa152|x1|uneq~combout\ $ (\add_instance|fa151|x2|uneq~combout\ $ (\add_instance|fa137|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa139|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa152|x1|uneq~combout\,
	datac => \add_instance|fa151|x2|uneq~combout\,
	datad => \add_instance|fa137|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa154|x2|uneq~combout\);

-- Location: LC_X4_Y6_N3
\add_instance|fa142|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa142|g1|Bit0_G~0_combout\ = (\add_instance|fa126|g1|Bit0_G~0_combout\ & ((\add_instance|fa139|x2|uneq~combout\) # (\add_instance|fa124|g1|Bit0_G~0_combout\ $ (\add_instance|fa140|x1|uneq~combout\)))) # 
-- (!\add_instance|fa126|g1|Bit0_G~0_combout\ & (\add_instance|fa139|x2|uneq~combout\ & (\add_instance|fa124|g1|Bit0_G~0_combout\ $ (\add_instance|fa140|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa126|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa124|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa140|x1|uneq~combout\,
	datad => \add_instance|fa139|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa142|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y6_N6
\add_instance|fa156|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa156|x1|uneq~combout\ = ((\add_instance|fa154|x2|uneq~combout\ $ (\add_instance|fa142|g1|Bit0_G~0_combout\)))

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
	datac => \add_instance|fa154|x2|uneq~combout\,
	datad => \add_instance|fa142|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa156|x1|uneq~combout\);

-- Location: LC_X5_Y6_N5
\add_instance|fa141|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa141|g1|Bit0_G~0_combout\ = (\add_instance|fa138|x2|uneq~combout\ & ((\add_instance|fa125|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(63) & \input_vector~combout\(35))))) # (!\add_instance|fa138|x2|uneq~combout\ & 
-- (\add_instance|fa125|g1|Bit0_G~0_combout\ & (\input_vector~combout\(63) & \input_vector~combout\(35))))

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
	dataa => \add_instance|fa138|x2|uneq~combout\,
	datab => \add_instance|fa125|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(63),
	datad => \input_vector~combout\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa141|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y6_N9
\add_instance|a16:4:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a16:4:and_i|prod~combout\ = (((\input_vector~combout\(63) & \input_vector~combout\(36))))

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
	datac => \input_vector~combout\(63),
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a16:4:and_i|prod~combout\);

-- Location: LC_X4_Y6_N5
\add_instance|a12:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:7:and_i|prod~combout\ = ((\input_vector~combout\(59) & ((\input_vector~combout\(39)))))

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
	datab => \input_vector~combout\(59),
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:7:and_i|prod~combout\);

-- Location: LC_X4_Y6_N7
\add_instance|fa140|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa140|g1|Bit0_G~0_combout\ = (\add_instance|fa124|g1|Bit0_G~0_combout\ & ((\add_instance|fa123|g1|Bit0_G~0_combout\) # (\add_instance|a12:7:and_i|prod~combout\ $ (\add_instance|fa137|x1|uneq~combout\)))) # 
-- (!\add_instance|fa124|g1|Bit0_G~0_combout\ & (\add_instance|fa123|g1|Bit0_G~0_combout\ & (\add_instance|a12:7:and_i|prod~combout\ $ (\add_instance|fa137|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a12:7:and_i|prod~combout\,
	datab => \add_instance|fa124|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa123|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa137|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa140|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y6_N7
\add_instance|a14:6:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:6:and_i|prod~combout\ = (\input_vector~combout\(38) & (((\input_vector~combout\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(38),
	datac => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:6:and_i|prod~combout\);

-- Location: LC_X8_Y6_N2
\add_instance|a13:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a13:7:and_i|prod~combout\ = ((\input_vector~combout\(60) & (\input_vector~combout\(39))))

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
	datab => \input_vector~combout\(60),
	datac => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a13:7:and_i|prod~combout\);

-- Location: LC_X8_Y6_N1
\add_instance|fa150|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa150|x2|uneq~combout\ = \add_instance|a14:6:and_i|prod~combout\ $ (\add_instance|a13:7:and_i|prod~combout\ $ (((\input_vector~combout\(37) & \input_vector~combout\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(37),
	datab => \add_instance|a14:6:and_i|prod~combout\,
	datac => \input_vector~combout\(62),
	datad => \add_instance|a13:7:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa150|x2|uneq~combout\);

-- Location: LC_X6_Y6_N2
\add_instance|fa138|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa138|g1|Bit0_G~0_combout\ = (\add_instance|a13:6:and_i|prod~combout\ & ((\add_instance|a14:5:and_i|prod~combout\) # ((\input_vector~combout\(62) & \input_vector~combout\(36))))) # (!\add_instance|a13:6:and_i|prod~combout\ & 
-- (\input_vector~combout\(62) & (\add_instance|a14:5:and_i|prod~combout\ & \input_vector~combout\(36))))

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
	dataa => \input_vector~combout\(62),
	datab => \add_instance|a13:6:and_i|prod~combout\,
	datac => \add_instance|a14:5:and_i|prod~combout\,
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa138|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y6_N3
\add_instance|fa153|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa153|x1|uneq~combout\ = ((\add_instance|fa150|x2|uneq~combout\ $ (\add_instance|fa138|g1|Bit0_G~0_combout\)))

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
	datac => \add_instance|fa150|x2|uneq~combout\,
	datad => \add_instance|fa138|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa153|x1|uneq~combout\);

-- Location: LC_X6_Y6_N8
\add_instance|fa155|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa155|x2|uneq~combout\ = \add_instance|fa141|g1|Bit0_G~0_combout\ $ (\add_instance|a16:4:and_i|prod~combout\ $ (\add_instance|fa140|g1|Bit0_G~0_combout\ $ (\add_instance|fa153|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa141|g1|Bit0_G~0_combout\,
	datab => \add_instance|a16:4:and_i|prod~combout\,
	datac => \add_instance|fa140|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa153|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa155|x2|uneq~combout\);

-- Location: LC_X5_Y6_N2
\add_instance|fa157|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa157|x2|uneq~combout\ = \add_instance|fa143|g1|Bit0_G~0_combout\ $ (\add_instance|fa144|g1|Bit0_G~0_combout\ $ (\add_instance|fa156|x1|uneq~combout\ $ (\add_instance|fa155|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa143|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa144|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa156|x1|uneq~combout\,
	datad => \add_instance|fa155|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa157|x2|uneq~combout\);

-- Location: LC_X9_Y7_N5
\add_instance|bkadder|abc_c19|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c19|abc~0_combout\ = (\add_instance|fa132|g1|Bit0_G~0_combout\ & ((\add_instance|bkadder|abc_c18|abc~1_combout\) # ((\add_instance|fa145|x2|uneq~combout\) # (\add_instance|bkadder|abc_gates_g1:8:abc_i|abc~0_combout\)))) # 
-- (!\add_instance|fa132|g1|Bit0_G~0_combout\ & (\add_instance|fa145|x2|uneq~combout\ & ((\add_instance|bkadder|abc_c18|abc~1_combout\) # (\add_instance|bkadder|abc_gates_g1:8:abc_i|abc~0_combout\))))

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
	dataa => \add_instance|bkadder|abc_c18|abc~1_combout\,
	datab => \add_instance|fa132|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa145|x2|uneq~combout\,
	datad => \add_instance|bkadder|abc_gates_g1:8:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c19|abc~0_combout\);

-- Location: LC_X9_Y7_N8
\add_instance|fa145|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa145|g1|Bit0_G~0_combout\ = (\add_instance|fa131|g1|Bit0_G~0_combout\ & ((\add_instance|fa130|g1|Bit0_G~0_combout\) # (\add_instance|fa144|x1|uneq~combout\ $ (\add_instance|fa143|x2|uneq~combout\)))) # 
-- (!\add_instance|fa131|g1|Bit0_G~0_combout\ & (\add_instance|fa130|g1|Bit0_G~0_combout\ & (\add_instance|fa144|x1|uneq~combout\ $ (\add_instance|fa143|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa144|x1|uneq~combout\,
	datab => \add_instance|fa143|x2|uneq~combout\,
	datac => \add_instance|fa131|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa130|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa145|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y7_N3
\add_instance|bkadder|sum_xors:19:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:19:sum_xor_i|uneq~combout\ = (\add_instance|fa157|x2|uneq~combout\ $ (\add_instance|bkadder|abc_c19|abc~0_combout\ $ (\add_instance|fa145|g1|Bit0_G~0_combout\)))

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
	datab => \add_instance|fa157|x2|uneq~combout\,
	datac => \add_instance|bkadder|abc_c19|abc~0_combout\,
	datad => \add_instance|fa145|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:19:sum_xor_i|uneq~combout\);

-- Location: LC_X9_Y7_N0
\add_instance|bkadder|abc_gates_g2:4:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g2:4:abc_i|abc~0_combout\ = (\add_instance|fa145|g1|Bit0_G~0_combout\ & (!\add_instance|fa157|x2|uneq~combout\ & (\add_instance|fa145|x2|uneq~combout\ $ (\add_instance|fa132|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa145|g1|Bit0_G~0_combout\ & (\add_instance|fa157|x2|uneq~combout\ & (\add_instance|fa145|x2|uneq~combout\ $ (\add_instance|fa132|g1|Bit0_G~0_combout\))))

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
	dataa => \add_instance|fa145|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa157|x2|uneq~combout\,
	datac => \add_instance|fa145|x2|uneq~combout\,
	datad => \add_instance|fa132|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g2:4:abc_i|abc~0_combout\);

-- Location: LC_X9_Y7_N6
\add_instance|bkadder|abc_gates_g1:9:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:9:abc_i|abc~0_combout\ = (\add_instance|fa145|g1|Bit0_G~0_combout\ & ((\add_instance|fa157|x2|uneq~combout\) # ((\add_instance|fa145|x2|uneq~combout\ & \add_instance|fa132|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa145|g1|Bit0_G~0_combout\ & (\add_instance|fa157|x2|uneq~combout\ & (\add_instance|fa145|x2|uneq~combout\ & \add_instance|fa132|g1|Bit0_G~0_combout\)))

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
	dataa => \add_instance|fa145|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa157|x2|uneq~combout\,
	datac => \add_instance|fa145|x2|uneq~combout\,
	datad => \add_instance|fa132|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:9:abc_i|abc~0_combout\);

-- Location: LC_X9_Y7_N7
\add_instance|bkadder|abc_gates_g2:4:abc_i|abc\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g2:4:abc_i|abc~combout\ = ((\add_instance|bkadder|abc_gates_g1:9:abc_i|abc~0_combout\) # ((\add_instance|bkadder|abc_gates_g2:4:abc_i|abc~0_combout\ & \add_instance|bkadder|abc_gates_g1:8:abc_i|abc~0_combout\)))

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
	datab => \add_instance|bkadder|abc_gates_g2:4:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g1:9:abc_i|abc~0_combout\,
	datad => \add_instance|bkadder|abc_gates_g1:8:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g2:4:abc_i|abc~combout\);

-- Location: LC_X5_Y6_N9
\add_instance|fa157|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa157|g1|Bit0_G~0_combout\ = (\add_instance|fa143|g1|Bit0_G~0_combout\ & ((\add_instance|fa144|g1|Bit0_G~0_combout\) # (\add_instance|fa156|x1|uneq~combout\ $ (\add_instance|fa155|x2|uneq~combout\)))) # 
-- (!\add_instance|fa143|g1|Bit0_G~0_combout\ & (\add_instance|fa144|g1|Bit0_G~0_combout\ & (\add_instance|fa156|x1|uneq~combout\ $ (\add_instance|fa155|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa143|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa144|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa156|x1|uneq~combout\,
	datad => \add_instance|fa155|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa157|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y6_N0
\add_instance|fa155|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa155|g1|Bit0_G~0_combout\ = (\add_instance|fa141|g1|Bit0_G~0_combout\ & ((\add_instance|fa140|g1|Bit0_G~0_combout\) # (\add_instance|a16:4:and_i|prod~combout\ $ (\add_instance|fa153|x1|uneq~combout\)))) # 
-- (!\add_instance|fa141|g1|Bit0_G~0_combout\ & (\add_instance|fa140|g1|Bit0_G~0_combout\ & (\add_instance|a16:4:and_i|prod~combout\ $ (\add_instance|fa153|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa141|g1|Bit0_G~0_combout\,
	datab => \add_instance|a16:4:and_i|prod~combout\,
	datac => \add_instance|fa140|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa153|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa155|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y6_N6
\add_instance|fa155|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa155|x1|uneq~combout\ = \add_instance|fa150|x2|uneq~combout\ $ (\add_instance|fa138|g1|Bit0_G~0_combout\ $ (\add_instance|fa140|g1|Bit0_G~0_combout\ $ (\add_instance|a16:4:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa150|x2|uneq~combout\,
	datab => \add_instance|fa138|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa140|g1|Bit0_G~0_combout\,
	datad => \add_instance|a16:4:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa155|x1|uneq~combout\);

-- Location: LC_X6_Y6_N7
\add_instance|fa156|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa156|g1|Bit0_G~0_combout\ = (\add_instance|fa154|x2|uneq~combout\ & ((\add_instance|fa142|g1|Bit0_G~0_combout\) # (\add_instance|fa155|x1|uneq~combout\ $ (\add_instance|fa141|g1|Bit0_G~0_combout\)))) # (!\add_instance|fa154|x2|uneq~combout\ 
-- & (\add_instance|fa142|g1|Bit0_G~0_combout\ & (\add_instance|fa155|x1|uneq~combout\ $ (\add_instance|fa141|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa154|x2|uneq~combout\,
	datab => \add_instance|fa142|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa155|x1|uneq~combout\,
	datad => \add_instance|fa141|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa156|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y6_N5
\add_instance|fa153|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa153|g1|Bit0_G~0_combout\ = (\add_instance|fa138|g1|Bit0_G~0_combout\ & ((\add_instance|fa150|x2|uneq~combout\) # ((\input_vector~combout\(63) & \input_vector~combout\(36))))) # (!\add_instance|fa138|g1|Bit0_G~0_combout\ & 
-- (\input_vector~combout\(63) & (\add_instance|fa150|x2|uneq~combout\ & \input_vector~combout\(36))))

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
	dataa => \input_vector~combout\(63),
	datab => \add_instance|fa138|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa150|x2|uneq~combout\,
	datad => \input_vector~combout\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa153|g1|Bit0_G~0_combout\);

-- Location: LC_X7_Y6_N1
\add_instance|a16:5:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a16:5:and_i|prod~combout\ = ((\input_vector~combout\(63) & (\input_vector~combout\(37))))

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
	datab => \input_vector~combout\(63),
	datac => \input_vector~combout\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a16:5:and_i|prod~combout\);

-- Location: LC_X8_Y6_N0
\add_instance|a13:8:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a13:8:and_i|prod~combout\ = ((\input_vector~combout\(40) & ((\input_vector~combout\(60)))))

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
	datab => \input_vector~combout\(40),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a13:8:and_i|prod~combout\);

-- Location: LC_X8_Y6_N6
\add_instance|a14:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:7:and_i|prod~combout\ = ((\input_vector~combout\(39) & (\input_vector~combout\(61))))

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
	datab => \input_vector~combout\(39),
	datac => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:7:and_i|prod~combout\);

-- Location: LC_X8_Y6_N9
\add_instance|fa161|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa161|x2|uneq~combout\ = \add_instance|a13:8:and_i|prod~combout\ $ (\add_instance|a14:7:and_i|prod~combout\ $ (((\input_vector~combout\(38) & \input_vector~combout\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(38),
	datab => \add_instance|a13:8:and_i|prod~combout\,
	datac => \input_vector~combout\(62),
	datad => \add_instance|a14:7:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa161|x2|uneq~combout\);

-- Location: LC_X8_Y6_N8
\add_instance|fa150|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa150|g1|Bit0_G~0_combout\ = (\add_instance|a13:7:and_i|prod~combout\ & ((\add_instance|a14:6:and_i|prod~combout\) # ((\input_vector~combout\(37) & \input_vector~combout\(62))))) # (!\add_instance|a13:7:and_i|prod~combout\ & 
-- (\input_vector~combout\(37) & (\input_vector~combout\(62) & \add_instance|a14:6:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(37),
	datab => \add_instance|a13:7:and_i|prod~combout\,
	datac => \input_vector~combout\(62),
	datad => \add_instance|a14:6:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa150|g1|Bit0_G~0_combout\);

-- Location: LC_X7_Y6_N6
\add_instance|fa164|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa164|x1|uneq~combout\ = ((\add_instance|fa161|x2|uneq~combout\ $ (\add_instance|fa150|g1|Bit0_G~0_combout\)))

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
	datac => \add_instance|fa161|x2|uneq~combout\,
	datad => \add_instance|fa150|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa164|x1|uneq~combout\);

-- Location: LC_X3_Y5_N9
\add_instance|a12:8:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:8:and_i|prod~combout\ = (((\input_vector~combout\(40) & \input_vector~combout\(59))))

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
	datac => \input_vector~combout\(40),
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:8:and_i|prod~combout\);

-- Location: LC_X3_Y5_N1
\add_instance|fa152|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa152|g1|Bit0_G~0_combout\ = (\add_instance|fa136|g1|Bit0_G~0_combout\ & ((\add_instance|fa137|g1|Bit0_G~0_combout\) # (\add_instance|a12:8:and_i|prod~combout\ $ (\add_instance|fa149|x1|uneq~combout\)))) # 
-- (!\add_instance|fa136|g1|Bit0_G~0_combout\ & (\add_instance|fa137|g1|Bit0_G~0_combout\ & (\add_instance|a12:8:and_i|prod~combout\ $ (\add_instance|fa149|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa136|g1|Bit0_G~0_combout\,
	datab => \add_instance|a12:8:and_i|prod~combout\,
	datac => \add_instance|fa149|x1|uneq~combout\,
	datad => \add_instance|fa137|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa152|g1|Bit0_G~0_combout\);

-- Location: LC_X7_Y6_N5
\add_instance|fa166|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa166|x2|uneq~combout\ = \add_instance|fa153|g1|Bit0_G~0_combout\ $ (\add_instance|a16:5:and_i|prod~combout\ $ (\add_instance|fa164|x1|uneq~combout\ $ (\add_instance|fa152|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa153|g1|Bit0_G~0_combout\,
	datab => \add_instance|a16:5:and_i|prod~combout\,
	datac => \add_instance|fa164|x1|uneq~combout\,
	datad => \add_instance|fa152|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa166|x2|uneq~combout\);

-- Location: LC_X3_Y5_N3
\add_instance|fa154|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa154|g1|Bit0_G~0_combout\ = (\add_instance|fa139|g1|Bit0_G~0_combout\ & ((\add_instance|fa151|x2|uneq~combout\) # (\add_instance|fa152|x1|uneq~combout\ $ (\add_instance|fa137|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa139|g1|Bit0_G~0_combout\ & (\add_instance|fa151|x2|uneq~combout\ & (\add_instance|fa152|x1|uneq~combout\ $ (\add_instance|fa137|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa139|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa152|x1|uneq~combout\,
	datac => \add_instance|fa151|x2|uneq~combout\,
	datad => \add_instance|fa137|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa154|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y6_N5
\add_instance|a9:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a9:12:and_i|prod~combout\ = (\input_vector~combout\(44) & (((\input_vector~combout\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(44),
	datac => \input_vector~combout\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a9:12:and_i|prod~combout\);

-- Location: LC_X2_Y6_N6
\add_instance|fa147|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa147|g1|Bit0_G~0_combout\ = (\add_instance|fa146|x2|uneq~combout\ & ((\add_instance|fa133|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(45) & \input_vector~combout\(54))))) # (!\add_instance|fa146|x2|uneq~combout\ & 
-- (\input_vector~combout\(45) & (\add_instance|fa133|g1|Bit0_G~0_combout\ & \input_vector~combout\(54))))

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
	dataa => \add_instance|fa146|x2|uneq~combout\,
	datab => \input_vector~combout\(45),
	datac => \add_instance|fa133|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa147|g1|Bit0_G~0_combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(20),
	combout => \input_vector~combout\(20));

-- Location: LC_X2_Y7_N4
\add_instance|fa146|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa146|g1|Bit0_G~0_combout\ = (\add_instance|a5:15:and_i|prod~combout\ & ((\input_vector~combout\(19)) # ((\input_vector~combout\(46) & \input_vector~combout\(53))))) # (!\add_instance|a5:15:and_i|prod~combout\ & (\input_vector~combout\(46) & 
-- (\input_vector~combout\(19) & \input_vector~combout\(53))))

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
	dataa => \input_vector~combout\(46),
	datab => \add_instance|a5:15:and_i|prod~combout\,
	datac => \input_vector~combout\(19),
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa146|g1|Bit0_G~0_combout\);

-- Location: LC_X2_Y7_N8
\add_instance|fa158|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa158|x2|uneq~0_combout\ = \input_vector~combout\(20) $ (\add_instance|fa146|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(47) & \input_vector~combout\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(20),
	datab => \input_vector~combout\(47),
	datac => \add_instance|fa146|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa158|x2|uneq~0_combout\);

-- Location: LC_X9_Y6_N2
\add_instance|fa159|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa159|x1|uneq~combout\ = (\input_vector~combout\(54) & (\input_vector~combout\(46) $ (((\input_vector~combout\(45) & \input_vector~combout\(55)))))) # (!\input_vector~combout\(54) & (((\input_vector~combout\(45) & 
-- \input_vector~combout\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(54),
	datab => \input_vector~combout\(46),
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa159|x1|uneq~combout\);

-- Location: LC_X9_Y6_N8
\add_instance|fa162|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa162|x2|uneq~0_combout\ = \add_instance|a9:12:and_i|prod~combout\ $ (\add_instance|fa147|g1|Bit0_G~0_combout\ $ (\add_instance|fa158|x2|uneq~0_combout\ $ (\add_instance|fa159|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a9:12:and_i|prod~combout\,
	datab => \add_instance|fa147|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa158|x2|uneq~0_combout\,
	datad => \add_instance|fa159|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa162|x2|uneq~0_combout\);

-- Location: LC_X2_Y5_N6
\add_instance|a8:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a8:12:and_i|prod~combout\ = (((\input_vector~combout\(44) & \input_vector~combout\(55))))

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
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a8:12:and_i|prod~combout\);

-- Location: LC_X2_Y5_N3
\add_instance|fa148|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa148|g1|Bit0_G~0_combout\ = (\add_instance|a8:12:and_i|prod~combout\ & ((\add_instance|fa134|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(56) & \input_vector~combout\(43))))) # (!\add_instance|a8:12:and_i|prod~combout\ & 
-- (\add_instance|fa134|g1|Bit0_G~0_combout\ & (\input_vector~combout\(56) & \input_vector~combout\(43))))

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
	dataa => \add_instance|a8:12:and_i|prod~combout\,
	datab => \add_instance|fa134|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(56),
	datad => \input_vector~combout\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa148|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y5_N6
\add_instance|fa160|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa160|x1|uneq~combout\ = (\input_vector~combout\(57) & (\input_vector~combout\(43) $ (((\input_vector~combout\(42) & \input_vector~combout\(58)))))) # (!\input_vector~combout\(57) & (\input_vector~combout\(42) & 
-- (\input_vector~combout\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(57),
	datab => \input_vector~combout\(42),
	datac => \input_vector~combout\(58),
	datad => \input_vector~combout\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa160|x1|uneq~combout\);

-- Location: LC_X5_Y5_N2
\add_instance|fa163|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa163|x1|uneq~combout\ = \add_instance|fa148|g1|Bit0_G~0_combout\ $ (\add_instance|fa160|x1|uneq~combout\ $ (((\input_vector~combout\(41) & \input_vector~combout\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa148|g1|Bit0_G~0_combout\,
	datab => \input_vector~combout\(41),
	datac => \add_instance|fa160|x1|uneq~combout\,
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa163|x1|uneq~combout\);

-- Location: LC_X2_Y6_N1
\add_instance|fa151|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa151|g1|Bit0_G~0_combout\ = (\add_instance|fa147|x2|uneq~combout\ & ((\add_instance|fa135|g1|Bit0_G~0_combout\) # (\add_instance|fa148|x1|uneq~combout\ $ (\add_instance|a9:11:and_i|prod~combout\)))) # (!\add_instance|fa147|x2|uneq~combout\ 
-- & (\add_instance|fa135|g1|Bit0_G~0_combout\ & (\add_instance|fa148|x1|uneq~combout\ $ (\add_instance|a9:11:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa147|x2|uneq~combout\,
	datab => \add_instance|fa135|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa148|x1|uneq~combout\,
	datad => \add_instance|a9:11:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa151|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y5_N7
\add_instance|a10:10:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a10:10:and_i|prod~combout\ = ((\input_vector~combout\(42) & (\input_vector~combout\(57))))

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
	datab => \input_vector~combout\(42),
	datac => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a10:10:and_i|prod~combout\);

-- Location: LC_X5_Y5_N4
\add_instance|a11:9:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:9:and_i|prod~combout\ = ((\input_vector~combout\(41) & (\input_vector~combout\(58))))

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
	datab => \input_vector~combout\(41),
	datac => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:9:and_i|prod~combout\);

-- Location: LC_X5_Y5_N1
\add_instance|fa149|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa149|g1|Bit0_G~0_combout\ = (\add_instance|a10:10:and_i|prod~combout\ & ((\add_instance|a11:9:and_i|prod~combout\) # ((\input_vector~combout\(40) & \input_vector~combout\(59))))) # (!\add_instance|a10:10:and_i|prod~combout\ & 
-- (\input_vector~combout\(40) & (\add_instance|a11:9:and_i|prod~combout\ & \input_vector~combout\(59))))

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
	dataa => \input_vector~combout\(40),
	datab => \add_instance|a10:10:and_i|prod~combout\,
	datac => \add_instance|a11:9:and_i|prod~combout\,
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa149|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y5_N8
\add_instance|fa165|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa165|x2|uneq~combout\ = \add_instance|fa162|x2|uneq~0_combout\ $ (\add_instance|fa163|x1|uneq~combout\ $ (\add_instance|fa151|g1|Bit0_G~0_combout\ $ (\add_instance|fa149|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa162|x2|uneq~0_combout\,
	datab => \add_instance|fa163|x1|uneq~combout\,
	datac => \add_instance|fa151|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa149|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa165|x2|uneq~combout\);

-- Location: LC_X7_Y6_N8
\add_instance|fa167|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa167|x1|uneq~combout\ = (\add_instance|fa154|g1|Bit0_G~0_combout\ $ (((\add_instance|fa165|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa154|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa165|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa167|x1|uneq~combout\);

-- Location: LC_X7_Y6_N3
\add_instance|fa168|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa168|x2|uneq~combout\ = \add_instance|fa155|g1|Bit0_G~0_combout\ $ (\add_instance|fa156|g1|Bit0_G~0_combout\ $ (\add_instance|fa166|x2|uneq~combout\ $ (\add_instance|fa167|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa155|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa156|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa166|x2|uneq~combout\,
	datad => \add_instance|fa167|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa168|x2|uneq~combout\);

-- Location: LC_X11_Y8_N6
\add_instance|bkadder|abc_c20|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c20|abc~0_combout\ = (\add_instance|bkadder|abc_c18|abc~0_combout\ & (\add_instance|bkadder|abc_gates_g2:4:abc_i|abc~0_combout\ & ((\add_instance|bkadder|abc_gates_g3:1:abc_i|abc~1_combout\) # 
-- (\add_instance|bkadder|abc_gates_g4:0:abc_i|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|bkadder|abc_c18|abc~0_combout\,
	datab => \add_instance|bkadder|abc_gates_g2:4:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g3:1:abc_i|abc~1_combout\,
	datad => \add_instance|bkadder|abc_gates_g4:0:abc_i|abc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c20|abc~0_combout\);

-- Location: LC_X11_Y5_N8
\add_instance|bkadder|sum_xors:20:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:20:sum_xor_i|uneq~combout\ = \add_instance|fa157|g1|Bit0_G~0_combout\ $ (\add_instance|fa168|x2|uneq~combout\ $ (((\add_instance|bkadder|abc_gates_g2:4:abc_i|abc~combout\) # (\add_instance|bkadder|abc_c20|abc~0_combout\))))

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
	dataa => \add_instance|bkadder|abc_gates_g2:4:abc_i|abc~combout\,
	datab => \add_instance|fa157|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa168|x2|uneq~combout\,
	datad => \add_instance|bkadder|abc_c20|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:20:sum_xor_i|uneq~combout\);

-- Location: LC_X7_Y6_N0
\add_instance|fa168|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa168|g1|Bit0_G~0_combout\ = (\add_instance|fa155|g1|Bit0_G~0_combout\ & ((\add_instance|fa156|g1|Bit0_G~0_combout\) # (\add_instance|fa166|x2|uneq~combout\ $ (\add_instance|fa167|x1|uneq~combout\)))) # 
-- (!\add_instance|fa155|g1|Bit0_G~0_combout\ & (\add_instance|fa156|g1|Bit0_G~0_combout\ & (\add_instance|fa166|x2|uneq~combout\ $ (\add_instance|fa167|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa155|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa156|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa166|x2|uneq~combout\,
	datad => \add_instance|fa167|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa168|g1|Bit0_G~0_combout\);

-- Location: LC_X7_Y6_N2
\add_instance|fa166|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa166|x1|uneq~combout\ = \add_instance|fa152|g1|Bit0_G~0_combout\ $ (\add_instance|a16:5:and_i|prod~combout\ $ (\add_instance|fa161|x2|uneq~combout\ $ (\add_instance|fa150|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa152|g1|Bit0_G~0_combout\,
	datab => \add_instance|a16:5:and_i|prod~combout\,
	datac => \add_instance|fa161|x2|uneq~combout\,
	datad => \add_instance|fa150|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa166|x1|uneq~combout\);

-- Location: LC_X7_Y6_N4
\add_instance|fa167|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa167|g1|Bit0_G~0_combout\ = (\add_instance|fa165|x2|uneq~combout\ & ((\add_instance|fa154|g1|Bit0_G~0_combout\) # (\add_instance|fa166|x1|uneq~combout\ $ (\add_instance|fa153|g1|Bit0_G~0_combout\)))) # (!\add_instance|fa165|x2|uneq~combout\ 
-- & (\add_instance|fa154|g1|Bit0_G~0_combout\ & (\add_instance|fa166|x1|uneq~combout\ $ (\add_instance|fa153|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa165|x2|uneq~combout\,
	datab => \add_instance|fa154|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa166|x1|uneq~combout\,
	datad => \add_instance|fa153|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa167|g1|Bit0_G~0_combout\);

-- Location: LC_X7_Y6_N7
\add_instance|fa166|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa166|g1|Bit0_G~0_combout\ = (\add_instance|fa153|g1|Bit0_G~0_combout\ & ((\add_instance|fa152|g1|Bit0_G~0_combout\) # (\add_instance|a16:5:and_i|prod~combout\ $ (\add_instance|fa164|x1|uneq~combout\)))) # 
-- (!\add_instance|fa153|g1|Bit0_G~0_combout\ & (\add_instance|fa152|g1|Bit0_G~0_combout\ & (\add_instance|a16:5:and_i|prod~combout\ $ (\add_instance|fa164|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa153|g1|Bit0_G~0_combout\,
	datab => \add_instance|a16:5:and_i|prod~combout\,
	datac => \add_instance|fa164|x1|uneq~combout\,
	datad => \add_instance|fa152|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa166|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y5_N0
\add_instance|fa165|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa165|g1|Bit0_G~0_combout\ = (\add_instance|fa162|x2|uneq~0_combout\ & ((\add_instance|fa151|g1|Bit0_G~0_combout\) # (\add_instance|fa163|x1|uneq~combout\ $ (\add_instance|fa149|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa162|x2|uneq~0_combout\ & (\add_instance|fa151|g1|Bit0_G~0_combout\ & (\add_instance|fa163|x1|uneq~combout\ $ (\add_instance|fa149|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa162|x2|uneq~0_combout\,
	datab => \add_instance|fa163|x1|uneq~combout\,
	datac => \add_instance|fa151|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa149|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa165|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y7_N4
\add_instance|fa171|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa171|x1|uneq~combout\ = (\input_vector~combout\(42) & (\input_vector~combout\(59) $ (((\input_vector~combout\(41) & \input_vector~combout\(60)))))) # (!\input_vector~combout\(42) & (\input_vector~combout\(41) & 
-- ((\input_vector~combout\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(42),
	datab => \input_vector~combout\(41),
	datac => \input_vector~combout\(59),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa171|x1|uneq~combout\);

-- Location: LC_X9_Y6_N1
\add_instance|a7:14:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a7:14:and_i|prod~combout\ = (\input_vector~combout\(54) & (((\input_vector~combout\(46)))))

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
	dataa => \input_vector~combout\(54),
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a7:14:and_i|prod~combout\);

-- Location: LC_X9_Y6_N9
\add_instance|a8:13:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a8:13:and_i|prod~combout\ = (((\input_vector~combout\(45) & \input_vector~combout\(55))))

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
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a8:13:and_i|prod~combout\);

-- Location: LC_X9_Y6_N0
\add_instance|fa159|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa159|g1|Bit0_G~0_combout\ = (\add_instance|a7:14:and_i|prod~combout\ & ((\add_instance|a8:13:and_i|prod~combout\) # ((\input_vector~combout\(44) & \input_vector~combout\(56))))) # (!\add_instance|a7:14:and_i|prod~combout\ & 
-- (\input_vector~combout\(44) & (\input_vector~combout\(56) & \add_instance|a8:13:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(44),
	datab => \add_instance|a7:14:and_i|prod~combout\,
	datac => \input_vector~combout\(56),
	datad => \add_instance|a8:13:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa159|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y7_N8
\add_instance|fa173|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa173|x1|uneq~combout\ = \add_instance|fa171|x1|uneq~combout\ $ (\add_instance|fa159|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(40) & \input_vector~combout\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa171|x1|uneq~combout\,
	datab => \input_vector~combout\(40),
	datac => \add_instance|fa159|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa173|x1|uneq~combout\);

-- Location: LC_X9_Y6_N3
\add_instance|fa162|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa162|g1|Bit0_G~0_combout\ = (\add_instance|fa147|g1|Bit0_G~0_combout\ & ((\add_instance|fa158|x2|uneq~0_combout\) # (\add_instance|a9:12:and_i|prod~combout\ $ (\add_instance|fa159|x1|uneq~combout\)))) # 
-- (!\add_instance|fa147|g1|Bit0_G~0_combout\ & (\add_instance|fa158|x2|uneq~0_combout\ & (\add_instance|a9:12:and_i|prod~combout\ $ (\add_instance|fa159|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a9:12:and_i|prod~combout\,
	datab => \add_instance|fa147|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa158|x2|uneq~0_combout\,
	datad => \add_instance|fa159|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa162|g1|Bit0_G~0_combout\);

-- Location: LC_X2_Y7_N6
\add_instance|fa158|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa158|g1|Bit0_G~0_combout\ = (\input_vector~combout\(20) & ((\add_instance|fa146|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(47) & \input_vector~combout\(53))))) # (!\input_vector~combout\(20) & (\input_vector~combout\(47) & 
-- (\add_instance|fa146|g1|Bit0_G~0_combout\ & \input_vector~combout\(53))))

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
	dataa => \input_vector~combout\(20),
	datab => \input_vector~combout\(47),
	datac => \add_instance|fa146|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa158|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y6_N4
\add_instance|a7:15:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a7:15:and_i|prod~combout\ = ((\input_vector~combout\(47) & ((\input_vector~combout\(54)))))

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
	datab => \input_vector~combout\(47),
	datad => \input_vector~combout\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a7:15:and_i|prod~combout\);

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(21),
	combout => \input_vector~combout\(21));

-- Location: LC_X9_Y6_N7
\add_instance|fa169|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa169|x2|uneq~combout\ = \add_instance|a7:15:and_i|prod~combout\ $ (\input_vector~combout\(21) $ (((\input_vector~combout\(55) & \input_vector~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(55),
	datab => \input_vector~combout\(46),
	datac => \add_instance|a7:15:and_i|prod~combout\,
	datad => \input_vector~combout\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa169|x2|uneq~combout\);

-- Location: LC_X10_Y5_N6
\add_instance|a11:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:11:and_i|prod~combout\ = ((\input_vector~combout\(43) & ((\input_vector~combout\(58)))))

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
	datab => \input_vector~combout\(43),
	datad => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:11:and_i|prod~combout\);

-- Location: LC_X10_Y5_N8
\add_instance|fa170|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa170|x1|uneq~combout\ = (\input_vector~combout\(45) & (\input_vector~combout\(56) $ (((\input_vector~combout\(44) & \input_vector~combout\(57)))))) # (!\input_vector~combout\(45) & (\input_vector~combout\(44) & 
-- ((\input_vector~combout\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(45),
	datab => \input_vector~combout\(44),
	datac => \input_vector~combout\(56),
	datad => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa170|x1|uneq~combout\);

-- Location: LC_X10_Y5_N7
\add_instance|fa172|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa172|x2|uneq~0_combout\ = \add_instance|fa158|g1|Bit0_G~0_combout\ $ (\add_instance|fa169|x2|uneq~combout\ $ (\add_instance|a11:11:and_i|prod~combout\ $ (\add_instance|fa170|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa158|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa169|x2|uneq~combout\,
	datac => \add_instance|a11:11:and_i|prod~combout\,
	datad => \add_instance|fa170|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa172|x2|uneq~0_combout\);

-- Location: LC_X12_Y7_N5
\add_instance|a11:10:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:10:and_i|prod~combout\ = (\input_vector~combout\(58) & (((\input_vector~combout\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(58),
	datac => \input_vector~combout\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:10:and_i|prod~combout\);

-- Location: LC_X12_Y7_N9
\add_instance|a10:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a10:11:and_i|prod~combout\ = (\input_vector~combout\(43) & (((\input_vector~combout\(57)))))

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
	dataa => \input_vector~combout\(43),
	datad => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a10:11:and_i|prod~combout\);

-- Location: LC_X12_Y7_N2
\add_instance|fa160|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa160|g1|Bit0_G~0_combout\ = (\add_instance|a11:10:and_i|prod~combout\ & ((\add_instance|a10:11:and_i|prod~combout\) # ((\input_vector~combout\(41) & \input_vector~combout\(59))))) # (!\add_instance|a11:10:and_i|prod~combout\ & 
-- (\input_vector~combout\(41) & (\input_vector~combout\(59) & \add_instance|a10:11:and_i|prod~combout\)))

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
	dataa => \add_instance|a11:10:and_i|prod~combout\,
	datab => \input_vector~combout\(41),
	datac => \input_vector~combout\(59),
	datad => \add_instance|a10:11:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa160|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y7_N3
\add_instance|fa175|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa175|x2|uneq~combout\ = \add_instance|fa173|x1|uneq~combout\ $ (\add_instance|fa162|g1|Bit0_G~0_combout\ $ (\add_instance|fa172|x2|uneq~0_combout\ $ (\add_instance|fa160|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa173|x1|uneq~combout\,
	datab => \add_instance|fa162|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa172|x2|uneq~0_combout\,
	datad => \add_instance|fa160|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa175|x2|uneq~combout\);

-- Location: LC_X10_Y6_N5
\add_instance|fa177|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa177|x1|uneq~combout\ = (\add_instance|fa165|g1|Bit0_G~0_combout\ $ (((\add_instance|fa175|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa165|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa175|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa177|x1|uneq~combout\);

-- Location: LC_X7_Y6_N9
\add_instance|fa164|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa164|g1|Bit0_G~0_combout\ = (\add_instance|fa161|x2|uneq~combout\ & ((\add_instance|fa150|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(63) & \input_vector~combout\(37))))) # (!\add_instance|fa161|x2|uneq~combout\ & 
-- (\input_vector~combout\(63) & (\input_vector~combout\(37) & \add_instance|fa150|g1|Bit0_G~0_combout\)))

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
	dataa => \input_vector~combout\(63),
	datab => \add_instance|fa161|x2|uneq~combout\,
	datac => \input_vector~combout\(37),
	datad => \add_instance|fa150|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa164|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y6_N3
\add_instance|fa161|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa161|g1|Bit0_G~0_combout\ = (\add_instance|a13:8:and_i|prod~combout\ & ((\add_instance|a14:7:and_i|prod~combout\) # ((\input_vector~combout\(38) & \input_vector~combout\(62))))) # (!\add_instance|a13:8:and_i|prod~combout\ & 
-- (\input_vector~combout\(38) & (\input_vector~combout\(62) & \add_instance|a14:7:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(38),
	datab => \add_instance|a13:8:and_i|prod~combout\,
	datac => \input_vector~combout\(62),
	datad => \add_instance|a14:7:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa161|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y6_N9
\add_instance|fa174|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa174|x1|uneq~combout\ = (\add_instance|fa161|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(62) & \input_vector~combout\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(62),
	datac => \add_instance|fa161|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa174|x1|uneq~combout\);

-- Location: LC_X5_Y5_N9
\add_instance|a12:9:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:9:and_i|prod~combout\ = ((\input_vector~combout\(41) & ((\input_vector~combout\(59)))))

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
	datab => \input_vector~combout\(41),
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:9:and_i|prod~combout\);

-- Location: LC_X5_Y5_N5
\add_instance|fa163|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa163|g1|Bit0_G~0_combout\ = (\add_instance|fa148|g1|Bit0_G~0_combout\ & ((\add_instance|fa149|g1|Bit0_G~0_combout\) # (\add_instance|a12:9:and_i|prod~combout\ $ (\add_instance|fa160|x1|uneq~combout\)))) # 
-- (!\add_instance|fa148|g1|Bit0_G~0_combout\ & (\add_instance|fa149|g1|Bit0_G~0_combout\ & (\add_instance|a12:9:and_i|prod~combout\ $ (\add_instance|fa160|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa148|g1|Bit0_G~0_combout\,
	datab => \add_instance|a12:9:and_i|prod~combout\,
	datac => \add_instance|fa160|x1|uneq~combout\,
	datad => \add_instance|fa149|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa163|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y6_N3
\add_instance|a16:6:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a16:6:and_i|prod~combout\ = (((\input_vector~combout\(63) & \input_vector~combout\(38))))

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
	datac => \input_vector~combout\(63),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a16:6:and_i|prod~combout\);

-- Location: LC_X10_Y6_N1
\add_instance|fa176|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa176|x2|uneq~combout\ = \add_instance|fa164|g1|Bit0_G~0_combout\ $ (\add_instance|fa174|x1|uneq~combout\ $ (\add_instance|fa163|g1|Bit0_G~0_combout\ $ (\add_instance|a16:6:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa164|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa174|x1|uneq~combout\,
	datac => \add_instance|fa163|g1|Bit0_G~0_combout\,
	datad => \add_instance|a16:6:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa176|x2|uneq~combout\);

-- Location: LC_X10_Y6_N0
\add_instance|fa178|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa178|x2|uneq~combout\ = \add_instance|fa167|g1|Bit0_G~0_combout\ $ (\add_instance|fa166|g1|Bit0_G~0_combout\ $ (\add_instance|fa177|x1|uneq~combout\ $ (\add_instance|fa176|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa167|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa166|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa177|x1|uneq~combout\,
	datad => \add_instance|fa176|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa178|x2|uneq~combout\);

-- Location: LC_X11_Y5_N4
\add_instance|bkadder|abc_c21|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c21|abc~0_combout\ = (\add_instance|fa157|g1|Bit0_G~0_combout\ & ((\add_instance|bkadder|abc_gates_g2:4:abc_i|abc~combout\) # ((\add_instance|fa168|x2|uneq~combout\) # (\add_instance|bkadder|abc_c20|abc~0_combout\)))) # 
-- (!\add_instance|fa157|g1|Bit0_G~0_combout\ & (\add_instance|fa168|x2|uneq~combout\ & ((\add_instance|bkadder|abc_gates_g2:4:abc_i|abc~combout\) # (\add_instance|bkadder|abc_c20|abc~0_combout\))))

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
	dataa => \add_instance|bkadder|abc_gates_g2:4:abc_i|abc~combout\,
	datab => \add_instance|fa157|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa168|x2|uneq~combout\,
	datad => \add_instance|bkadder|abc_c20|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c21|abc~0_combout\);

-- Location: LC_X11_Y5_N5
\add_instance|bkadder|sum_xors:21:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:21:sum_xor_i|uneq~combout\ = \add_instance|fa168|g1|Bit0_G~0_combout\ $ (\add_instance|fa178|x2|uneq~combout\ $ (((\add_instance|bkadder|abc_c21|abc~0_combout\))))

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
	dataa => \add_instance|fa168|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa178|x2|uneq~combout\,
	datad => \add_instance|bkadder|abc_c21|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:21:sum_xor_i|uneq~combout\);

-- Location: LC_X10_Y6_N2
\add_instance|fa178|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa178|g1|Bit0_G~0_combout\ = (\add_instance|fa167|g1|Bit0_G~0_combout\ & ((\add_instance|fa166|g1|Bit0_G~0_combout\) # (\add_instance|fa177|x1|uneq~combout\ $ (\add_instance|fa176|x2|uneq~combout\)))) # 
-- (!\add_instance|fa167|g1|Bit0_G~0_combout\ & (\add_instance|fa166|g1|Bit0_G~0_combout\ & (\add_instance|fa177|x1|uneq~combout\ $ (\add_instance|fa176|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa167|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa166|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa177|x1|uneq~combout\,
	datad => \add_instance|fa176|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa178|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y5_N0
\add_instance|bkadder|abc_gates_g1:10:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:10:abc_i|abc~0_combout\ = (\add_instance|fa168|g1|Bit0_G~0_combout\ & ((\add_instance|fa178|x2|uneq~combout\) # ((\add_instance|fa157|g1|Bit0_G~0_combout\ & \add_instance|fa168|x2|uneq~combout\)))) # 
-- (!\add_instance|fa168|g1|Bit0_G~0_combout\ & (\add_instance|fa157|g1|Bit0_G~0_combout\ & (\add_instance|fa168|x2|uneq~combout\ & \add_instance|fa178|x2|uneq~combout\)))

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
	dataa => \add_instance|fa168|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa157|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa168|x2|uneq~combout\,
	datad => \add_instance|fa178|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:10:abc_i|abc~0_combout\);

-- Location: LC_X11_Y5_N6
\add_instance|bkadder|abc_c22|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c22|abc~0_combout\ = (\add_instance|fa168|g1|Bit0_G~0_combout\ & (!\add_instance|fa178|x2|uneq~combout\ & (\add_instance|fa157|g1|Bit0_G~0_combout\ $ (\add_instance|fa168|x2|uneq~combout\)))) # 
-- (!\add_instance|fa168|g1|Bit0_G~0_combout\ & (\add_instance|fa178|x2|uneq~combout\ & (\add_instance|fa157|g1|Bit0_G~0_combout\ $ (\add_instance|fa168|x2|uneq~combout\))))

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
	dataa => \add_instance|fa168|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa157|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa168|x2|uneq~combout\,
	datad => \add_instance|fa178|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c22|abc~0_combout\);

-- Location: LC_X11_Y5_N3
\add_instance|bkadder|abc_c22|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c22|abc~1_combout\ = ((\add_instance|bkadder|abc_c22|abc~0_combout\ & ((\add_instance|bkadder|abc_gates_g2:4:abc_i|abc~combout\) # (\add_instance|bkadder|abc_c20|abc~0_combout\))))

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
	datab => \add_instance|bkadder|abc_gates_g2:4:abc_i|abc~combout\,
	datac => \add_instance|bkadder|abc_c22|abc~0_combout\,
	datad => \add_instance|bkadder|abc_c20|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c22|abc~1_combout\);

-- Location: LC_X9_Y6_N6
\add_instance|fa169|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa169|g1|Bit0_G~0_combout\ = (\add_instance|a7:15:and_i|prod~combout\ & ((\input_vector~combout\(21)) # ((\input_vector~combout\(55) & \input_vector~combout\(46))))) # (!\add_instance|a7:15:and_i|prod~combout\ & (\input_vector~combout\(55) & 
-- (\input_vector~combout\(46) & \input_vector~combout\(21))))

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
	dataa => \input_vector~combout\(55),
	datab => \input_vector~combout\(46),
	datac => \add_instance|a7:15:and_i|prod~combout\,
	datad => \input_vector~combout\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa169|g1|Bit0_G~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(22),
	combout => \input_vector~combout\(22));

-- Location: LC_X9_Y4_N7
\add_instance|a8:15:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a8:15:and_i|prod~combout\ = ((\input_vector~combout\(47) & ((\input_vector~combout\(55)))))

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
	datab => \input_vector~combout\(47),
	datad => \input_vector~combout\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a8:15:and_i|prod~combout\);

-- Location: LC_X9_Y4_N4
\add_instance|fa179|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa179|x2|uneq~combout\ = \input_vector~combout\(22) $ (\add_instance|a8:15:and_i|prod~combout\ $ (((\input_vector~combout\(46) & \input_vector~combout\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(22),
	datab => \add_instance|a8:15:and_i|prod~combout\,
	datac => \input_vector~combout\(46),
	datad => \input_vector~combout\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa179|x2|uneq~combout\);

-- Location: LC_X10_Y4_N7
\add_instance|a12:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:11:and_i|prod~combout\ = ((\input_vector~combout\(43) & ((\input_vector~combout\(59)))))

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
	datab => \input_vector~combout\(43),
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:11:and_i|prod~combout\);

-- Location: LC_X10_Y4_N8
\add_instance|fa180|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa180|x1|uneq~combout\ = (\input_vector~combout\(44) & (\input_vector~combout\(58) $ (((\input_vector~combout\(57) & \input_vector~combout\(45)))))) # (!\input_vector~combout\(44) & (\input_vector~combout\(57) & 
-- (\input_vector~combout\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(44),
	datab => \input_vector~combout\(57),
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa180|x1|uneq~combout\);

-- Location: LC_X10_Y4_N0
\add_instance|fa181|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa181|x2|uneq~0_combout\ = \add_instance|fa169|g1|Bit0_G~0_combout\ $ (\add_instance|fa179|x2|uneq~combout\ $ (\add_instance|a12:11:and_i|prod~combout\ $ (\add_instance|fa180|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa169|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa179|x2|uneq~combout\,
	datac => \add_instance|a12:11:and_i|prod~combout\,
	datad => \add_instance|fa180|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa181|x2|uneq~0_combout\);

-- Location: LC_X10_Y5_N5
\add_instance|a9:13:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a9:13:and_i|prod~combout\ = (\input_vector~combout\(45) & (((\input_vector~combout\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(45),
	datac => \input_vector~combout\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a9:13:and_i|prod~combout\);

-- Location: LC_X10_Y5_N4
\add_instance|a10:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a10:12:and_i|prod~combout\ = ((\input_vector~combout\(44) & ((\input_vector~combout\(57)))))

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
	datab => \input_vector~combout\(44),
	datad => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a10:12:and_i|prod~combout\);

-- Location: LC_X10_Y5_N2
\add_instance|fa170|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa170|g1|Bit0_G~0_combout\ = (\add_instance|a9:13:and_i|prod~combout\ & ((\add_instance|a10:12:and_i|prod~combout\) # ((\input_vector~combout\(43) & \input_vector~combout\(58))))) # (!\add_instance|a9:13:and_i|prod~combout\ & 
-- (\input_vector~combout\(43) & (\add_instance|a10:12:and_i|prod~combout\ & \input_vector~combout\(58))))

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
	dataa => \add_instance|a9:13:and_i|prod~combout\,
	datab => \input_vector~combout\(43),
	datac => \add_instance|a10:12:and_i|prod~combout\,
	datad => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa170|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y5_N9
\add_instance|fa182|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa182|x1|uneq~combout\ = (\add_instance|fa170|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(42) & \input_vector~combout\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(42),
	datac => \add_instance|fa170|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa182|x1|uneq~combout\);

-- Location: LC_X10_Y5_N9
\add_instance|fa172|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa172|g1|Bit0_G~0_combout\ = (\add_instance|fa158|g1|Bit0_G~0_combout\ & ((\add_instance|fa169|x2|uneq~combout\) # (\add_instance|a11:11:and_i|prod~combout\ $ (\add_instance|fa170|x1|uneq~combout\)))) # 
-- (!\add_instance|fa158|g1|Bit0_G~0_combout\ & (\add_instance|fa169|x2|uneq~combout\ & (\add_instance|a11:11:and_i|prod~combout\ $ (\add_instance|fa170|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa158|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa169|x2|uneq~combout\,
	datac => \add_instance|a11:11:and_i|prod~combout\,
	datad => \add_instance|fa170|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa172|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y5_N6
\add_instance|a13:9:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a13:9:and_i|prod~combout\ = (((\input_vector~combout\(41) & \input_vector~combout\(60))))

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
	datac => \input_vector~combout\(41),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a13:9:and_i|prod~combout\);

-- Location: LC_X13_Y5_N7
\add_instance|a12:10:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:10:and_i|prod~combout\ = ((\input_vector~combout\(42) & ((\input_vector~combout\(59)))))

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
	datab => \input_vector~combout\(42),
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:10:and_i|prod~combout\);

-- Location: LC_X13_Y5_N8
\add_instance|fa171|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa171|g1|Bit0_G~0_combout\ = (\add_instance|a13:9:and_i|prod~combout\ & ((\add_instance|a12:10:and_i|prod~combout\) # ((\input_vector~combout\(40) & \input_vector~combout\(61))))) # (!\add_instance|a13:9:and_i|prod~combout\ & 
-- (\input_vector~combout\(40) & (\input_vector~combout\(61) & \add_instance|a12:10:and_i|prod~combout\)))

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
	dataa => \add_instance|a13:9:and_i|prod~combout\,
	datab => \input_vector~combout\(40),
	datac => \input_vector~combout\(61),
	datad => \add_instance|a12:10:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa171|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y5_N2
\add_instance|fa184|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa184|x2|uneq~combout\ = \add_instance|fa181|x2|uneq~0_combout\ $ (\add_instance|fa182|x1|uneq~combout\ $ (\add_instance|fa172|g1|Bit0_G~0_combout\ $ (\add_instance|fa171|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa181|x2|uneq~0_combout\,
	datab => \add_instance|fa182|x1|uneq~combout\,
	datac => \add_instance|fa172|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa171|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa184|x2|uneq~combout\);

-- Location: LC_X12_Y7_N6
\add_instance|fa175|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa175|g1|Bit0_G~0_combout\ = (\add_instance|fa162|g1|Bit0_G~0_combout\ & ((\add_instance|fa172|x2|uneq~0_combout\) # (\add_instance|fa173|x1|uneq~combout\ $ (\add_instance|fa160|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa162|g1|Bit0_G~0_combout\ & (\add_instance|fa172|x2|uneq~0_combout\ & (\add_instance|fa173|x1|uneq~combout\ $ (\add_instance|fa160|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa173|x1|uneq~combout\,
	datab => \add_instance|fa162|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa172|x2|uneq~0_combout\,
	datad => \add_instance|fa160|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa175|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y6_N8
\add_instance|fa186|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa186|x1|uneq~combout\ = ((\add_instance|fa184|x2|uneq~combout\ $ (\add_instance|fa175|g1|Bit0_G~0_combout\)))

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
	datac => \add_instance|fa184|x2|uneq~combout\,
	datad => \add_instance|fa175|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa186|x1|uneq~combout\);

-- Location: LC_X10_Y6_N7
\add_instance|a15:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a15:7:and_i|prod~combout\ = (\input_vector~combout\(62) & (((\input_vector~combout\(39)))))

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
	dataa => \input_vector~combout\(62),
	datad => \input_vector~combout\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a15:7:and_i|prod~combout\);

-- Location: LC_X10_Y6_N6
\add_instance|fa176|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa176|x1|uneq~combout\ = \add_instance|fa161|g1|Bit0_G~0_combout\ $ (\add_instance|a15:7:and_i|prod~combout\ $ (\add_instance|fa163|g1|Bit0_G~0_combout\ $ (\add_instance|a16:6:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa161|g1|Bit0_G~0_combout\,
	datab => \add_instance|a15:7:and_i|prod~combout\,
	datac => \add_instance|fa163|g1|Bit0_G~0_combout\,
	datad => \add_instance|a16:6:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa176|x1|uneq~combout\);

-- Location: LC_X10_Y6_N3
\add_instance|fa177|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa177|g1|Bit0_G~0_combout\ = (\add_instance|fa165|g1|Bit0_G~0_combout\ & ((\add_instance|fa175|x2|uneq~combout\) # (\add_instance|fa176|x1|uneq~combout\ $ (\add_instance|fa164|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa165|g1|Bit0_G~0_combout\ & (\add_instance|fa175|x2|uneq~combout\ & (\add_instance|fa176|x1|uneq~combout\ $ (\add_instance|fa164|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa176|x1|uneq~combout\,
	datab => \add_instance|fa165|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa164|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa175|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa177|g1|Bit0_G~0_combout\);

-- Location: LC_X10_Y6_N8
\add_instance|fa176|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa176|g1|Bit0_G~0_combout\ = (\add_instance|fa164|g1|Bit0_G~0_combout\ & ((\add_instance|fa163|g1|Bit0_G~0_combout\) # (\add_instance|fa174|x1|uneq~combout\ $ (\add_instance|a16:6:and_i|prod~combout\)))) # 
-- (!\add_instance|fa164|g1|Bit0_G~0_combout\ & (\add_instance|fa163|g1|Bit0_G~0_combout\ & (\add_instance|fa174|x1|uneq~combout\ $ (\add_instance|a16:6:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa164|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa174|x1|uneq~combout\,
	datac => \add_instance|fa163|g1|Bit0_G~0_combout\,
	datad => \add_instance|a16:6:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa176|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y6_N8
\add_instance|a16:7:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a16:7:and_i|prod~combout\ = (\input_vector~combout\(39) & (((\input_vector~combout\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(39),
	datac => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a16:7:and_i|prod~combout\);

-- Location: LC_X10_Y6_N4
\add_instance|fa174|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa174|g1|Bit0_G~0_combout\ = (\add_instance|fa161|g1|Bit0_G~0_combout\ & ((\add_instance|a15:7:and_i|prod~combout\) # ((\input_vector~combout\(63) & \input_vector~combout\(38))))) # (!\add_instance|fa161|g1|Bit0_G~0_combout\ & 
-- (\add_instance|a15:7:and_i|prod~combout\ & (\input_vector~combout\(63) & \input_vector~combout\(38))))

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
	dataa => \add_instance|fa161|g1|Bit0_G~0_combout\,
	datab => \add_instance|a15:7:and_i|prod~combout\,
	datac => \input_vector~combout\(63),
	datad => \input_vector~combout\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa174|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y6_N0
\add_instance|fa183|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa183|x1|uneq~combout\ = (\input_vector~combout\(61) & (\input_vector~combout\(41) $ (((\input_vector~combout\(62) & \input_vector~combout\(40)))))) # (!\input_vector~combout\(61) & (((\input_vector~combout\(62) & 
-- \input_vector~combout\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(61),
	datab => \input_vector~combout\(41),
	datac => \input_vector~combout\(62),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa183|x1|uneq~combout\);

-- Location: LC_X12_Y7_N7
\add_instance|a14:8:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:8:and_i|prod~combout\ = (((\input_vector~combout\(40) & \input_vector~combout\(61))))

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
	datac => \input_vector~combout\(40),
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:8:and_i|prod~combout\);

-- Location: LC_X12_Y7_N1
\add_instance|fa173|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa173|g1|Bit0_G~0_combout\ = (\add_instance|fa159|g1|Bit0_G~0_combout\ & ((\add_instance|fa160|g1|Bit0_G~0_combout\) # (\add_instance|a14:8:and_i|prod~combout\ $ (\add_instance|fa171|x1|uneq~combout\)))) # 
-- (!\add_instance|fa159|g1|Bit0_G~0_combout\ & (\add_instance|fa160|g1|Bit0_G~0_combout\ & (\add_instance|a14:8:and_i|prod~combout\ $ (\add_instance|fa171|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa159|g1|Bit0_G~0_combout\,
	datab => \add_instance|a14:8:and_i|prod~combout\,
	datac => \add_instance|fa171|x1|uneq~combout\,
	datad => \add_instance|fa160|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa173|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y6_N1
\add_instance|fa185|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa185|x2|uneq~combout\ = \add_instance|a16:7:and_i|prod~combout\ $ (\add_instance|fa174|g1|Bit0_G~0_combout\ $ (\add_instance|fa183|x1|uneq~combout\ $ (\add_instance|fa173|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a16:7:and_i|prod~combout\,
	datab => \add_instance|fa174|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa183|x1|uneq~combout\,
	datad => \add_instance|fa173|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa185|x2|uneq~combout\);

-- Location: LC_X11_Y6_N2
\add_instance|fa187|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa187|x2|uneq~combout\ = \add_instance|fa186|x1|uneq~combout\ $ (\add_instance|fa177|g1|Bit0_G~0_combout\ $ (\add_instance|fa176|g1|Bit0_G~0_combout\ $ (\add_instance|fa185|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa186|x1|uneq~combout\,
	datab => \add_instance|fa177|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa176|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa185|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa187|x2|uneq~combout\);

-- Location: LC_X11_Y6_N6
\add_instance|bkadder|sum_xors:22:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:22:sum_xor_i|uneq~combout\ = \add_instance|fa178|g1|Bit0_G~0_combout\ $ (\add_instance|fa187|x2|uneq~combout\ $ (((\add_instance|bkadder|abc_gates_g1:10:abc_i|abc~0_combout\) # 
-- (\add_instance|bkadder|abc_c22|abc~1_combout\))))

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
	dataa => \add_instance|fa178|g1|Bit0_G~0_combout\,
	datab => \add_instance|bkadder|abc_gates_g1:10:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|abc_c22|abc~1_combout\,
	datad => \add_instance|fa187|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:22:sum_xor_i|uneq~combout\);

-- Location: LC_X10_Y4_N5
\add_instance|a10:13:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a10:13:and_i|prod~combout\ = (((\input_vector~combout\(45) & \input_vector~combout\(57))))

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
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a10:13:and_i|prod~combout\);

-- Location: LC_X10_Y4_N6
\add_instance|a11:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:12:and_i|prod~combout\ = (((\input_vector~combout\(44) & \input_vector~combout\(58))))

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
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:12:and_i|prod~combout\);

-- Location: LC_X10_Y4_N2
\add_instance|fa180|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa180|g1|Bit0_G~0_combout\ = (\add_instance|a10:13:and_i|prod~combout\ & ((\add_instance|a11:12:and_i|prod~combout\) # ((\input_vector~combout\(43) & \input_vector~combout\(59))))) # (!\add_instance|a10:13:and_i|prod~combout\ & 
-- (\input_vector~combout\(43) & (\add_instance|a11:12:and_i|prod~combout\ & \input_vector~combout\(59))))

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
	dataa => \add_instance|a10:13:and_i|prod~combout\,
	datab => \input_vector~combout\(43),
	datac => \add_instance|a11:12:and_i|prod~combout\,
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa180|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y4_N8
\add_instance|fa190|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa190|x1|uneq~combout\ = (\add_instance|fa180|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(59) & \input_vector~combout\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7788",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(59),
	datab => \input_vector~combout\(44),
	datad => \add_instance|fa180|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa190|x1|uneq~combout\);

-- Location: LC_X9_Y4_N6
\add_instance|a9:15:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a9:15:and_i|prod~combout\ = ((\input_vector~combout\(47) & ((\input_vector~combout\(56)))))

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
	datab => \input_vector~combout\(47),
	datad => \input_vector~combout\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a9:15:and_i|prod~combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(23),
	combout => \input_vector~combout\(23));

-- Location: LC_X9_Y4_N8
\add_instance|fa188|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa188|x2|uneq~combout\ = \add_instance|a9:15:and_i|prod~combout\ $ (\input_vector~combout\(23) $ (((\input_vector~combout\(46) & \input_vector~combout\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a9:15:and_i|prod~combout\,
	datab => \input_vector~combout\(23),
	datac => \input_vector~combout\(46),
	datad => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa188|x2|uneq~combout\);

-- Location: LC_X9_Y4_N9
\add_instance|fa179|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa179|g1|Bit0_G~0_combout\ = (\input_vector~combout\(22) & ((\add_instance|a8:15:and_i|prod~combout\) # ((\input_vector~combout\(46) & \input_vector~combout\(56))))) # (!\input_vector~combout\(22) & (\add_instance|a8:15:and_i|prod~combout\ & 
-- (\input_vector~combout\(46) & \input_vector~combout\(56))))

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
	datab => \add_instance|a8:15:and_i|prod~combout\,
	datac => \input_vector~combout\(46),
	datad => \input_vector~combout\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa179|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y4_N3
\add_instance|fa189|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa189|x2|uneq~combout\ = \add_instance|fa188|x2|uneq~combout\ $ (\add_instance|fa179|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(45) & \input_vector~combout\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa188|x2|uneq~combout\,
	datab => \add_instance|fa179|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa189|x2|uneq~combout\);

-- Location: LC_X10_Y4_N9
\add_instance|fa181|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa181|g1|Bit0_G~0_combout\ = (\add_instance|fa169|g1|Bit0_G~0_combout\ & ((\add_instance|fa179|x2|uneq~combout\) # (\add_instance|a12:11:and_i|prod~combout\ $ (\add_instance|fa180|x1|uneq~combout\)))) # 
-- (!\add_instance|fa169|g1|Bit0_G~0_combout\ & (\add_instance|fa179|x2|uneq~combout\ & (\add_instance|a12:11:and_i|prod~combout\ $ (\add_instance|fa180|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa169|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa179|x2|uneq~combout\,
	datac => \add_instance|a12:11:and_i|prod~combout\,
	datad => \add_instance|fa180|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa181|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y4_N9
\add_instance|a13:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a13:11:and_i|prod~combout\ = (((\input_vector~combout\(43) & \input_vector~combout\(60))))

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
	datac => \input_vector~combout\(43),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a13:11:and_i|prod~combout\);

-- Location: LC_X11_Y4_N2
\add_instance|fa192|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa192|x2|uneq~combout\ = \add_instance|fa190|x1|uneq~combout\ $ (\add_instance|fa189|x2|uneq~combout\ $ (\add_instance|fa181|g1|Bit0_G~0_combout\ $ (\add_instance|a13:11:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa190|x1|uneq~combout\,
	datab => \add_instance|fa189|x2|uneq~combout\,
	datac => \add_instance|fa181|g1|Bit0_G~0_combout\,
	datad => \add_instance|a13:11:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa192|x2|uneq~combout\);

-- Location: LC_X13_Y5_N0
\add_instance|fa184|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa184|g1|Bit0_G~0_combout\ = (\add_instance|fa181|x2|uneq~0_combout\ & ((\add_instance|fa172|g1|Bit0_G~0_combout\) # (\add_instance|fa182|x1|uneq~combout\ $ (\add_instance|fa171|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa181|x2|uneq~0_combout\ & (\add_instance|fa172|g1|Bit0_G~0_combout\ & (\add_instance|fa182|x1|uneq~combout\ $ (\add_instance|fa171|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa181|x2|uneq~0_combout\,
	datab => \add_instance|fa182|x1|uneq~combout\,
	datac => \add_instance|fa172|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa171|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa184|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y6_N3
\add_instance|fa194|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa194|x1|uneq~combout\ = (\add_instance|fa192|x2|uneq~combout\ $ (((\add_instance|fa184|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa192|x2|uneq~combout\,
	datad => \add_instance|fa184|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa194|x1|uneq~combout\);

-- Location: LC_X12_Y6_N2
\add_instance|a14:9:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:9:and_i|prod~combout\ = (\input_vector~combout\(61) & (((\input_vector~combout\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(61),
	datac => \input_vector~combout\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:9:and_i|prod~combout\);

-- Location: LC_X12_Y6_N6
\add_instance|a15:8:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a15:8:and_i|prod~combout\ = (\input_vector~combout\(62) & (((\input_vector~combout\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(62),
	datac => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a15:8:and_i|prod~combout\);

-- Location: LC_X12_Y6_N5
\add_instance|fa185|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa185|x1|uneq~combout\ = \add_instance|fa173|g1|Bit0_G~0_combout\ $ (\add_instance|a14:9:and_i|prod~combout\ $ (\add_instance|a15:8:and_i|prod~combout\ $ (\add_instance|a16:7:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa173|g1|Bit0_G~0_combout\,
	datab => \add_instance|a14:9:and_i|prod~combout\,
	datac => \add_instance|a15:8:and_i|prod~combout\,
	datad => \add_instance|a16:7:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa185|x1|uneq~combout\);

-- Location: LC_X12_Y6_N4
\add_instance|fa186|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa186|g1|Bit0_G~0_combout\ = (\add_instance|fa175|g1|Bit0_G~0_combout\ & ((\add_instance|fa184|x2|uneq~combout\) # (\add_instance|fa174|g1|Bit0_G~0_combout\ $ (\add_instance|fa185|x1|uneq~combout\)))) # 
-- (!\add_instance|fa175|g1|Bit0_G~0_combout\ & (\add_instance|fa184|x2|uneq~combout\ & (\add_instance|fa174|g1|Bit0_G~0_combout\ $ (\add_instance|fa185|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa174|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa175|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa185|x1|uneq~combout\,
	datad => \add_instance|fa184|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa186|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y6_N9
\add_instance|fa185|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa185|g1|Bit0_G~0_combout\ = (\add_instance|fa174|g1|Bit0_G~0_combout\ & ((\add_instance|fa173|g1|Bit0_G~0_combout\) # (\add_instance|a16:7:and_i|prod~combout\ $ (\add_instance|fa183|x1|uneq~combout\)))) # 
-- (!\add_instance|fa174|g1|Bit0_G~0_combout\ & (\add_instance|fa173|g1|Bit0_G~0_combout\ & (\add_instance|a16:7:and_i|prod~combout\ $ (\add_instance|fa183|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a16:7:and_i|prod~combout\,
	datab => \add_instance|fa174|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa183|x1|uneq~combout\,
	datad => \add_instance|fa173|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa185|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y5_N5
\add_instance|fa182|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa182|g1|Bit0_G~0_combout\ = (\add_instance|fa171|g1|Bit0_G~0_combout\ & ((\add_instance|fa170|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(42) & \input_vector~combout\(60))))) # (!\add_instance|fa171|g1|Bit0_G~0_combout\ & 
-- (\input_vector~combout\(42) & (\add_instance|fa170|g1|Bit0_G~0_combout\ & \input_vector~combout\(60))))

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
	dataa => \add_instance|fa171|g1|Bit0_G~0_combout\,
	datab => \input_vector~combout\(42),
	datac => \add_instance|fa170|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa182|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y6_N7
\add_instance|fa183|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa183|g1|Bit0_G~0_combout\ = (\add_instance|a14:9:and_i|prod~combout\ & ((\add_instance|a15:8:and_i|prod~combout\) # ((\input_vector~combout\(63) & \input_vector~combout\(39))))) # (!\add_instance|a14:9:and_i|prod~combout\ & 
-- (\input_vector~combout\(63) & (\input_vector~combout\(39) & \add_instance|a15:8:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(63),
	datab => \add_instance|a14:9:and_i|prod~combout\,
	datac => \input_vector~combout\(39),
	datad => \add_instance|a15:8:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa183|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y5_N3
\add_instance|fa191|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa191|x1|uneq~combout\ = (\input_vector~combout\(62) & (\input_vector~combout\(41) $ (((\input_vector~combout\(61) & \input_vector~combout\(42)))))) # (!\input_vector~combout\(62) & (((\input_vector~combout\(61) & 
-- \input_vector~combout\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(62),
	datab => \input_vector~combout\(41),
	datac => \input_vector~combout\(61),
	datad => \input_vector~combout\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa191|x1|uneq~combout\);

-- Location: LC_X13_Y6_N1
\add_instance|a16:8:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a16:8:and_i|prod~combout\ = ((\input_vector~combout\(63) & ((\input_vector~combout\(40)))))

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
	datab => \input_vector~combout\(63),
	datad => \input_vector~combout\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a16:8:and_i|prod~combout\);

-- Location: LC_X13_Y6_N8
\add_instance|fa193|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa193|x2|uneq~combout\ = \add_instance|fa182|g1|Bit0_G~0_combout\ $ (\add_instance|fa183|g1|Bit0_G~0_combout\ $ (\add_instance|fa191|x1|uneq~combout\ $ (\add_instance|a16:8:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa182|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa183|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa191|x1|uneq~combout\,
	datad => \add_instance|a16:8:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa193|x2|uneq~combout\);

-- Location: LC_X13_Y6_N4
\add_instance|fa195|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa195|x2|uneq~combout\ = \add_instance|fa194|x1|uneq~combout\ $ (\add_instance|fa186|g1|Bit0_G~0_combout\ $ (\add_instance|fa185|g1|Bit0_G~0_combout\ $ (\add_instance|fa193|x2|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa194|x1|uneq~combout\,
	datab => \add_instance|fa186|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa185|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa193|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa195|x2|uneq~combout\);

-- Location: LC_X11_Y6_N7
\add_instance|fa187|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa187|g1|Bit0_G~0_combout\ = (\add_instance|fa177|g1|Bit0_G~0_combout\ & ((\add_instance|fa176|g1|Bit0_G~0_combout\) # (\add_instance|fa186|x1|uneq~combout\ $ (\add_instance|fa185|x2|uneq~combout\)))) # 
-- (!\add_instance|fa177|g1|Bit0_G~0_combout\ & (\add_instance|fa176|g1|Bit0_G~0_combout\ & (\add_instance|fa186|x1|uneq~combout\ $ (\add_instance|fa185|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa186|x1|uneq~combout\,
	datab => \add_instance|fa177|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa176|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa185|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa187|g1|Bit0_G~0_combout\);

-- Location: LC_X11_Y6_N1
\add_instance|bkadder|abc_c23|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c23|abc~0_combout\ = (\add_instance|fa178|g1|Bit0_G~0_combout\ & ((\add_instance|bkadder|abc_gates_g1:10:abc_i|abc~0_combout\) # ((\add_instance|bkadder|abc_c22|abc~1_combout\) # (\add_instance|fa187|x2|uneq~combout\)))) # 
-- (!\add_instance|fa178|g1|Bit0_G~0_combout\ & (\add_instance|fa187|x2|uneq~combout\ & ((\add_instance|bkadder|abc_gates_g1:10:abc_i|abc~0_combout\) # (\add_instance|bkadder|abc_c22|abc~1_combout\))))

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
	dataa => \add_instance|fa178|g1|Bit0_G~0_combout\,
	datab => \add_instance|bkadder|abc_gates_g1:10:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|abc_c22|abc~1_combout\,
	datad => \add_instance|fa187|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c23|abc~0_combout\);

-- Location: LC_X11_Y6_N9
\add_instance|bkadder|sum_xors:23:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:23:sum_xor_i|uneq~combout\ = \add_instance|fa195|x2|uneq~combout\ $ (((\add_instance|fa187|g1|Bit0_G~0_combout\ $ (\add_instance|bkadder|abc_c23|abc~0_combout\))))

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
	dataa => \add_instance|fa195|x2|uneq~combout\,
	datac => \add_instance|fa187|g1|Bit0_G~0_combout\,
	datad => \add_instance|bkadder|abc_c23|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:23:sum_xor_i|uneq~combout\);

-- Location: LC_X12_Y4_N6
\add_instance|fa198|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa198|x1|uneq~combout\ = (\input_vector~combout\(43) & (\input_vector~combout\(61) $ (((\input_vector~combout\(42) & \input_vector~combout\(62)))))) # (!\input_vector~combout\(43) & (((\input_vector~combout\(42) & 
-- \input_vector~combout\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(43),
	datab => \input_vector~combout\(61),
	datac => \input_vector~combout\(42),
	datad => \input_vector~combout\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa198|x1|uneq~combout\);

-- Location: LC_X11_Y4_N6
\add_instance|a12:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:12:and_i|prod~combout\ = ((\input_vector~combout\(44) & ((\input_vector~combout\(59)))))

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
	datab => \input_vector~combout\(44),
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:12:and_i|prod~combout\);

-- Location: LC_X11_Y4_N4
\add_instance|fa190|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa190|g1|Bit0_G~0_combout\ = (\add_instance|a12:12:and_i|prod~combout\ & ((\add_instance|fa180|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(43) & \input_vector~combout\(60))))) # (!\add_instance|a12:12:and_i|prod~combout\ & 
-- (\add_instance|fa180|g1|Bit0_G~0_combout\ & (\input_vector~combout\(43) & \input_vector~combout\(60))))

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
	dataa => \add_instance|a12:12:and_i|prod~combout\,
	datab => \add_instance|fa180|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(43),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa190|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y4_N5
\add_instance|a16:9:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a16:9:and_i|prod~combout\ = ((\input_vector~combout\(63) & ((\input_vector~combout\(41)))))

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
	datab => \input_vector~combout\(63),
	datad => \input_vector~combout\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a16:9:and_i|prod~combout\);

-- Location: LC_X12_Y4_N8
\add_instance|a15:9:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a15:9:and_i|prod~combout\ = ((\input_vector~combout\(41) & ((\input_vector~combout\(62)))))

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
	datab => \input_vector~combout\(41),
	datad => \input_vector~combout\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a15:9:and_i|prod~combout\);

-- Location: LC_X12_Y4_N9
\add_instance|a14:10:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:10:and_i|prod~combout\ = (\input_vector~combout\(42) & (((\input_vector~combout\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(42),
	datac => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:10:and_i|prod~combout\);

-- Location: LC_X12_Y4_N1
\add_instance|fa191|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa191|g1|Bit0_G~0_combout\ = (\add_instance|a15:9:and_i|prod~combout\ & ((\add_instance|a14:10:and_i|prod~combout\) # ((\input_vector~combout\(63) & \input_vector~combout\(40))))) # (!\add_instance|a15:9:and_i|prod~combout\ & 
-- (\input_vector~combout\(63) & (\input_vector~combout\(40) & \add_instance|a14:10:and_i|prod~combout\)))

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
	dataa => \add_instance|a15:9:and_i|prod~combout\,
	datab => \input_vector~combout\(63),
	datac => \input_vector~combout\(40),
	datad => \add_instance|a14:10:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa191|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y4_N2
\add_instance|fa200|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa200|x2|uneq~combout\ = \add_instance|fa198|x1|uneq~combout\ $ (\add_instance|fa190|g1|Bit0_G~0_combout\ $ (\add_instance|a16:9:and_i|prod~combout\ $ (\add_instance|fa191|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa198|x1|uneq~combout\,
	datab => \add_instance|fa190|g1|Bit0_G~0_combout\,
	datac => \add_instance|a16:9:and_i|prod~combout\,
	datad => \add_instance|fa191|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa200|x2|uneq~combout\);

-- Location: LC_X11_Y4_N7
\add_instance|fa192|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa192|g1|Bit0_G~0_combout\ = (\add_instance|fa189|x2|uneq~combout\ & ((\add_instance|fa181|g1|Bit0_G~0_combout\) # (\add_instance|fa190|x1|uneq~combout\ $ (\add_instance|a13:11:and_i|prod~combout\)))) # (!\add_instance|fa189|x2|uneq~combout\ 
-- & (\add_instance|fa181|g1|Bit0_G~0_combout\ & (\add_instance|fa190|x1|uneq~combout\ $ (\add_instance|a13:11:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa190|x1|uneq~combout\,
	datab => \add_instance|fa189|x2|uneq~combout\,
	datac => \add_instance|fa181|g1|Bit0_G~0_combout\,
	datad => \add_instance|a13:11:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa192|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y4_N5
\add_instance|fa188|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa188|g1|Bit0_G~0_combout\ = (\add_instance|a9:15:and_i|prod~combout\ & ((\input_vector~combout\(23)) # ((\input_vector~combout\(46) & \input_vector~combout\(57))))) # (!\add_instance|a9:15:and_i|prod~combout\ & (\input_vector~combout\(23) & 
-- (\input_vector~combout\(46) & \input_vector~combout\(57))))

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
	dataa => \add_instance|a9:15:and_i|prod~combout\,
	datab => \input_vector~combout\(23),
	datac => \input_vector~combout\(46),
	datad => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa188|g1|Bit0_G~0_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(24),
	combout => \input_vector~combout\(24));

-- Location: LC_X9_Y4_N0
\add_instance|fa196|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa196|x2|uneq~0_combout\ = \add_instance|fa188|g1|Bit0_G~0_combout\ $ (\input_vector~combout\(24) $ (((\input_vector~combout\(47) & \input_vector~combout\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa188|g1|Bit0_G~0_combout\,
	datab => \input_vector~combout\(47),
	datac => \input_vector~combout\(24),
	datad => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa196|x2|uneq~0_combout\);

-- Location: LC_X9_Y4_N2
\add_instance|fa189|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa189|g1|Bit0_G~0_combout\ = (\add_instance|fa188|x2|uneq~combout\ & ((\add_instance|fa179|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(45) & \input_vector~combout\(58))))) # (!\add_instance|fa188|x2|uneq~combout\ & 
-- (\add_instance|fa179|g1|Bit0_G~0_combout\ & (\input_vector~combout\(45) & \input_vector~combout\(58))))

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
	dataa => \add_instance|fa188|x2|uneq~combout\,
	datab => \add_instance|fa179|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa189|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y5_N4
\add_instance|a13:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a13:12:and_i|prod~combout\ = (((\input_vector~combout\(44) & \input_vector~combout\(60))))

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
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a13:12:and_i|prod~combout\);

-- Location: LC_X9_Y5_N9
\add_instance|fa197|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa197|x1|uneq~combout\ = (\input_vector~combout\(45) & (\input_vector~combout\(59) $ (((\input_vector~combout\(46) & \input_vector~combout\(58)))))) # (!\input_vector~combout\(45) & (\input_vector~combout\(46) & 
-- (\input_vector~combout\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(45),
	datab => \input_vector~combout\(46),
	datac => \input_vector~combout\(58),
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa197|x1|uneq~combout\);

-- Location: LC_X9_Y5_N5
\add_instance|fa199|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa199|x2|uneq~0_combout\ = \add_instance|fa196|x2|uneq~0_combout\ $ (\add_instance|fa189|g1|Bit0_G~0_combout\ $ (\add_instance|a13:12:and_i|prod~combout\ $ (\add_instance|fa197|x1|uneq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa196|x2|uneq~0_combout\,
	datab => \add_instance|fa189|g1|Bit0_G~0_combout\,
	datac => \add_instance|a13:12:and_i|prod~combout\,
	datad => \add_instance|fa197|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa199|x2|uneq~0_combout\);

-- Location: LC_X11_Y4_N5
\add_instance|fa201|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa201|x1|uneq~combout\ = (\add_instance|fa192|g1|Bit0_G~0_combout\ $ ((\add_instance|fa199|x2|uneq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa192|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa199|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa201|x1|uneq~combout\);

-- Location: LC_X13_Y6_N6
\add_instance|fa193|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa193|g1|Bit0_G~0_combout\ = (\add_instance|fa182|g1|Bit0_G~0_combout\ & ((\add_instance|fa183|g1|Bit0_G~0_combout\) # (\add_instance|fa191|x1|uneq~combout\ $ (\add_instance|a16:8:and_i|prod~combout\)))) # 
-- (!\add_instance|fa182|g1|Bit0_G~0_combout\ & (\add_instance|fa183|g1|Bit0_G~0_combout\ & (\add_instance|fa191|x1|uneq~combout\ $ (\add_instance|a16:8:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa182|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa183|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa191|x1|uneq~combout\,
	datad => \add_instance|a16:8:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa193|g1|Bit0_G~0_combout\);

-- Location: LC_X13_Y6_N5
\add_instance|fa193|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa193|x1|uneq~combout\ = \add_instance|fa182|g1|Bit0_G~0_combout\ $ (\add_instance|fa191|x1|uneq~combout\ $ (((\input_vector~combout\(40) & \input_vector~combout\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa182|g1|Bit0_G~0_combout\,
	datab => \input_vector~combout\(40),
	datac => \add_instance|fa191|x1|uneq~combout\,
	datad => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa193|x1|uneq~combout\);

-- Location: LC_X13_Y6_N7
\add_instance|fa194|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa194|g1|Bit0_G~0_combout\ = (\add_instance|fa184|g1|Bit0_G~0_combout\ & ((\add_instance|fa192|x2|uneq~combout\) # (\add_instance|fa183|g1|Bit0_G~0_combout\ $ (\add_instance|fa193|x1|uneq~combout\)))) # 
-- (!\add_instance|fa184|g1|Bit0_G~0_combout\ & (\add_instance|fa192|x2|uneq~combout\ & (\add_instance|fa183|g1|Bit0_G~0_combout\ $ (\add_instance|fa193|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa184|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa183|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa193|x1|uneq~combout\,
	datad => \add_instance|fa192|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa194|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y5_N5
\add_instance|fa202|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa202|x2|uneq~combout\ = \add_instance|fa200|x2|uneq~combout\ $ (\add_instance|fa201|x1|uneq~combout\ $ (\add_instance|fa193|g1|Bit0_G~0_combout\ $ (\add_instance|fa194|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa200|x2|uneq~combout\,
	datab => \add_instance|fa201|x1|uneq~combout\,
	datac => \add_instance|fa193|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa194|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa202|x2|uneq~combout\);

-- Location: LC_X11_Y6_N4
\add_instance|bkadder|abc_gates_g1:11:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:11:abc_i|abc~0_combout\ = (\add_instance|fa195|x2|uneq~combout\ & ((\add_instance|fa187|g1|Bit0_G~0_combout\) # ((\add_instance|fa178|g1|Bit0_G~0_combout\ & \add_instance|fa187|x2|uneq~combout\)))) # 
-- (!\add_instance|fa195|x2|uneq~combout\ & (\add_instance|fa178|g1|Bit0_G~0_combout\ & (\add_instance|fa187|g1|Bit0_G~0_combout\ & \add_instance|fa187|x2|uneq~combout\)))

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
	dataa => \add_instance|fa195|x2|uneq~combout\,
	datab => \add_instance|fa178|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa187|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa187|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:11:abc_i|abc~0_combout\);

-- Location: LC_X11_Y6_N3
\add_instance|bkadder|abc_gates_g2:5:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g2:5:abc_i|abc~0_combout\ = (\add_instance|fa195|x2|uneq~combout\ & (!\add_instance|fa187|g1|Bit0_G~0_combout\ & (\add_instance|fa178|g1|Bit0_G~0_combout\ $ (\add_instance|fa187|x2|uneq~combout\)))) # 
-- (!\add_instance|fa195|x2|uneq~combout\ & (\add_instance|fa187|g1|Bit0_G~0_combout\ & (\add_instance|fa178|g1|Bit0_G~0_combout\ $ (\add_instance|fa187|x2|uneq~combout\))))

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
	dataa => \add_instance|fa195|x2|uneq~combout\,
	datab => \add_instance|fa178|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa187|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa187|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g2:5:abc_i|abc~0_combout\);

-- Location: LC_X11_Y6_N5
\add_instance|bkadder|abc_gates_g3:2:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~0_combout\ = ((\add_instance|bkadder|abc_gates_g1:11:abc_i|abc~0_combout\) # ((\add_instance|bkadder|abc_gates_g1:10:abc_i|abc~0_combout\ & \add_instance|bkadder|abc_gates_g2:5:abc_i|abc~0_combout\)))

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
	datab => \add_instance|bkadder|abc_gates_g1:10:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g1:11:abc_i|abc~0_combout\,
	datad => \add_instance|bkadder|abc_gates_g2:5:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~0_combout\);

-- Location: LC_X11_Y5_N2
\add_instance|bkadder|abc_gates_g3:2:abc_i|abc\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~combout\ = (\add_instance|bkadder|abc_gates_g3:2:abc_i|abc~0_combout\) # ((\add_instance|bkadder|abc_gates_g2:4:abc_i|abc~combout\ & (\add_instance|bkadder|abc_c22|abc~0_combout\ & 
-- \add_instance|bkadder|abc_gates_g2:5:abc_i|abc~0_combout\)))

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
	dataa => \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~0_combout\,
	datab => \add_instance|bkadder|abc_gates_g2:4:abc_i|abc~combout\,
	datac => \add_instance|bkadder|abc_c22|abc~0_combout\,
	datad => \add_instance|bkadder|abc_gates_g2:5:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~combout\);

-- Location: LC_X11_Y5_N9
\add_instance|bkadder|abc_c24|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c24|abc~0_combout\ = ((\add_instance|bkadder|abc_gates_g2:5:abc_i|abc~0_combout\ & (\add_instance|bkadder|abc_c22|abc~0_combout\ & \add_instance|bkadder|abc_c20|abc~0_combout\)))

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
	datab => \add_instance|bkadder|abc_gates_g2:5:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|abc_c22|abc~0_combout\,
	datad => \add_instance|bkadder|abc_c20|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c24|abc~0_combout\);

-- Location: LC_X13_Y6_N9
\add_instance|fa195|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa195|g1|Bit0_G~0_combout\ = (\add_instance|fa186|g1|Bit0_G~0_combout\ & ((\add_instance|fa185|g1|Bit0_G~0_combout\) # (\add_instance|fa194|x1|uneq~combout\ $ (\add_instance|fa193|x2|uneq~combout\)))) # 
-- (!\add_instance|fa186|g1|Bit0_G~0_combout\ & (\add_instance|fa185|g1|Bit0_G~0_combout\ & (\add_instance|fa194|x1|uneq~combout\ $ (\add_instance|fa193|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa194|x1|uneq~combout\,
	datab => \add_instance|fa186|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa185|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa193|x2|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa195|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y5_N2
\add_instance|bkadder|sum_xors:24:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:24:sum_xor_i|uneq~combout\ = \add_instance|fa202|x2|uneq~combout\ $ (\add_instance|fa195|g1|Bit0_G~0_combout\ $ (((\add_instance|bkadder|abc_gates_g3:2:abc_i|abc~combout\) # (\add_instance|bkadder|abc_c24|abc~0_combout\))))

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
	dataa => \add_instance|fa202|x2|uneq~combout\,
	datab => \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~combout\,
	datac => \add_instance|bkadder|abc_c24|abc~0_combout\,
	datad => \add_instance|fa195|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:24:sum_xor_i|uneq~combout\);

-- Location: LC_X12_Y5_N6
\add_instance|bkadder|abc_c25|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c25|abc~0_combout\ = (\add_instance|fa202|x2|uneq~combout\ & ((\add_instance|bkadder|abc_gates_g3:2:abc_i|abc~combout\) # ((\add_instance|bkadder|abc_c24|abc~0_combout\) # (\add_instance|fa195|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa202|x2|uneq~combout\ & (\add_instance|fa195|g1|Bit0_G~0_combout\ & ((\add_instance|bkadder|abc_gates_g3:2:abc_i|abc~combout\) # (\add_instance|bkadder|abc_c24|abc~0_combout\))))

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
	dataa => \add_instance|fa202|x2|uneq~combout\,
	datab => \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~combout\,
	datac => \add_instance|bkadder|abc_c24|abc~0_combout\,
	datad => \add_instance|fa195|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c25|abc~0_combout\);

-- Location: LC_X11_Y4_N1
\add_instance|fa200|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa200|g1|Bit0_G~0_combout\ = (\add_instance|fa190|g1|Bit0_G~0_combout\ & ((\add_instance|fa191|g1|Bit0_G~0_combout\) # (\add_instance|fa198|x1|uneq~combout\ $ (\add_instance|a16:9:and_i|prod~combout\)))) # 
-- (!\add_instance|fa190|g1|Bit0_G~0_combout\ & (\add_instance|fa191|g1|Bit0_G~0_combout\ & (\add_instance|fa198|x1|uneq~combout\ $ (\add_instance|a16:9:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa198|x1|uneq~combout\,
	datab => \add_instance|a16:9:and_i|prod~combout\,
	datac => \add_instance|fa190|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa191|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa200|g1|Bit0_G~0_combout\);

-- Location: LC_X9_Y5_N6
\add_instance|a11:14:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:14:and_i|prod~combout\ = (\input_vector~combout\(58) & (((\input_vector~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(58),
	datac => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:14:and_i|prod~combout\);

-- Location: LC_X9_Y5_N2
\add_instance|a12:13:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:13:and_i|prod~combout\ = (\input_vector~combout\(45) & (((\input_vector~combout\(59)))))

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
	dataa => \input_vector~combout\(45),
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:13:and_i|prod~combout\);

-- Location: LC_X9_Y5_N3
\add_instance|fa197|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa197|g1|Bit0_G~0_combout\ = (\add_instance|a11:14:and_i|prod~combout\ & ((\add_instance|a12:13:and_i|prod~combout\) # ((\input_vector~combout\(44) & \input_vector~combout\(60))))) # (!\add_instance|a11:14:and_i|prod~combout\ & 
-- (\add_instance|a12:13:and_i|prod~combout\ & (\input_vector~combout\(44) & \input_vector~combout\(60))))

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
	dataa => \add_instance|a11:14:and_i|prod~combout\,
	datab => \add_instance|a12:13:and_i|prod~combout\,
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa197|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y4_N4
\add_instance|a14:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:11:and_i|prod~combout\ = (\input_vector~combout\(43) & (((\input_vector~combout\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(43),
	datac => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:11:and_i|prod~combout\);

-- Location: LC_X12_Y4_N0
\add_instance|a15:10:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a15:10:and_i|prod~combout\ = (((\input_vector~combout\(42) & \input_vector~combout\(62))))

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
	datac => \input_vector~combout\(42),
	datad => \input_vector~combout\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a15:10:and_i|prod~combout\);

-- Location: LC_X12_Y4_N7
\add_instance|fa198|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa198|g1|Bit0_G~0_combout\ = (\add_instance|a14:11:and_i|prod~combout\ & ((\add_instance|a15:10:and_i|prod~combout\) # ((\input_vector~combout\(41) & \input_vector~combout\(63))))) # (!\add_instance|a14:11:and_i|prod~combout\ & 
-- (\input_vector~combout\(41) & (\add_instance|a15:10:and_i|prod~combout\ & \input_vector~combout\(63))))

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
	dataa => \add_instance|a14:11:and_i|prod~combout\,
	datab => \input_vector~combout\(41),
	datac => \add_instance|a15:10:and_i|prod~combout\,
	datad => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa198|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y5_N9
\add_instance|fa206|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa206|x2|uneq~combout\ = \add_instance|fa197|g1|Bit0_G~0_combout\ $ (\add_instance|fa198|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(63) & \input_vector~combout\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(63),
	datab => \input_vector~combout\(42),
	datac => \add_instance|fa197|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa198|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa206|x2|uneq~combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(25),
	combout => \input_vector~combout\(25));

-- Location: LC_X7_Y5_N5
\add_instance|a11:15:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a11:15:and_i|prod~combout\ = (((\input_vector~combout\(47) & \input_vector~combout\(58))))

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
	datac => \input_vector~combout\(47),
	datad => \input_vector~combout\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a11:15:and_i|prod~combout\);

-- Location: LC_X7_Y5_N1
\add_instance|fa203|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa203|x2|uneq~combout\ = \input_vector~combout\(25) $ (\add_instance|a11:15:and_i|prod~combout\ $ (((\input_vector~combout\(46) & \input_vector~combout\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(46),
	datab => \input_vector~combout\(25),
	datac => \add_instance|a11:15:and_i|prod~combout\,
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa203|x2|uneq~combout\);

-- Location: LC_X7_Y4_N9
\add_instance|fa204|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa204|x1|uneq~combout\ = (\input_vector~combout\(45) & (\input_vector~combout\(60) $ (((\input_vector~combout\(44) & \input_vector~combout\(61)))))) # (!\input_vector~combout\(45) & (((\input_vector~combout\(44) & 
-- \input_vector~combout\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(45),
	datab => \input_vector~combout\(60),
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa204|x1|uneq~combout\);

-- Location: LC_X7_Y4_N0
\add_instance|a15:11:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a15:11:and_i|prod~combout\ = ((\input_vector~combout\(43) & (\input_vector~combout\(62))))

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
	datab => \input_vector~combout\(43),
	datac => \input_vector~combout\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a15:11:and_i|prod~combout\);

-- Location: LC_X9_Y4_N1
\add_instance|fa196|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa196|g1|Bit0_G~0_combout\ = (\add_instance|fa188|g1|Bit0_G~0_combout\ & ((\input_vector~combout\(24)) # ((\input_vector~combout\(47) & \input_vector~combout\(57))))) # (!\add_instance|fa188|g1|Bit0_G~0_combout\ & (\input_vector~combout\(47) 
-- & (\input_vector~combout\(24) & \input_vector~combout\(57))))

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
	dataa => \add_instance|fa188|g1|Bit0_G~0_combout\,
	datab => \input_vector~combout\(47),
	datac => \input_vector~combout\(24),
	datad => \input_vector~combout\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa196|g1|Bit0_G~0_combout\);

-- Location: LC_X7_Y4_N5
\add_instance|fa205|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa205|x2|uneq~0_combout\ = \add_instance|fa203|x2|uneq~combout\ $ (\add_instance|fa204|x1|uneq~combout\ $ (\add_instance|a15:11:and_i|prod~combout\ $ (\add_instance|fa196|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa203|x2|uneq~combout\,
	datab => \add_instance|fa204|x1|uneq~combout\,
	datac => \add_instance|a15:11:and_i|prod~combout\,
	datad => \add_instance|fa196|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa205|x2|uneq~0_combout\);

-- Location: LC_X9_Y5_N7
\add_instance|fa199|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa199|g1|Bit0_G~0_combout\ = (\add_instance|fa196|x2|uneq~0_combout\ & ((\add_instance|fa189|g1|Bit0_G~0_combout\) # (\add_instance|a13:12:and_i|prod~combout\ $ (\add_instance|fa197|x1|uneq~combout\)))) # 
-- (!\add_instance|fa196|x2|uneq~0_combout\ & (\add_instance|fa189|g1|Bit0_G~0_combout\ & (\add_instance|a13:12:and_i|prod~combout\ $ (\add_instance|fa197|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa196|x2|uneq~0_combout\,
	datab => \add_instance|fa189|g1|Bit0_G~0_combout\,
	datac => \add_instance|a13:12:and_i|prod~combout\,
	datad => \add_instance|fa197|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa199|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y5_N4
\add_instance|fa207|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa207|x1|uneq~combout\ = ((\add_instance|fa205|x2|uneq~0_combout\ $ (\add_instance|fa199|g1|Bit0_G~0_combout\)))

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
	datac => \add_instance|fa205|x2|uneq~0_combout\,
	datad => \add_instance|fa199|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa207|x1|uneq~combout\);

-- Location: LC_X12_Y4_N3
\add_instance|fa200|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa200|x1|uneq~combout\ = \add_instance|a14:11:and_i|prod~combout\ $ (\add_instance|fa190|g1|Bit0_G~0_combout\ $ (\add_instance|a16:9:and_i|prod~combout\ $ (\add_instance|a15:10:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|a14:11:and_i|prod~combout\,
	datab => \add_instance|fa190|g1|Bit0_G~0_combout\,
	datac => \add_instance|a16:9:and_i|prod~combout\,
	datad => \add_instance|a15:10:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa200|x1|uneq~combout\);

-- Location: LC_X11_Y4_N3
\add_instance|fa201|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa201|g1|Bit0_G~0_combout\ = (\add_instance|fa192|g1|Bit0_G~0_combout\ & ((\add_instance|fa199|x2|uneq~0_combout\) # (\add_instance|fa200|x1|uneq~combout\ $ (\add_instance|fa191|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa192|g1|Bit0_G~0_combout\ & (\add_instance|fa199|x2|uneq~0_combout\ & (\add_instance|fa200|x1|uneq~combout\ $ (\add_instance|fa191|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa200|x1|uneq~combout\,
	datab => \add_instance|fa192|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa199|x2|uneq~0_combout\,
	datad => \add_instance|fa191|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa201|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y5_N3
\add_instance|fa208|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa208|x2|uneq~combout\ = \add_instance|fa200|g1|Bit0_G~0_combout\ $ (\add_instance|fa206|x2|uneq~combout\ $ (\add_instance|fa207|x1|uneq~combout\ $ (\add_instance|fa201|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa200|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa206|x2|uneq~combout\,
	datac => \add_instance|fa207|x1|uneq~combout\,
	datad => \add_instance|fa201|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa208|x2|uneq~combout\);

-- Location: LC_X12_Y5_N7
\add_instance|fa202|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa202|g1|Bit0_G~0_combout\ = (\add_instance|fa193|g1|Bit0_G~0_combout\ & ((\add_instance|fa194|g1|Bit0_G~0_combout\) # (\add_instance|fa200|x2|uneq~combout\ $ (\add_instance|fa201|x1|uneq~combout\)))) # 
-- (!\add_instance|fa193|g1|Bit0_G~0_combout\ & (\add_instance|fa194|g1|Bit0_G~0_combout\ & (\add_instance|fa200|x2|uneq~combout\ $ (\add_instance|fa201|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa200|x2|uneq~combout\,
	datab => \add_instance|fa201|x1|uneq~combout\,
	datac => \add_instance|fa193|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa194|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa202|g1|Bit0_G~0_combout\);

-- Location: LC_X12_Y5_N4
\add_instance|bkadder|sum_xors:25:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:25:sum_xor_i|uneq~combout\ = \add_instance|bkadder|abc_c25|abc~0_combout\ $ (\add_instance|fa208|x2|uneq~combout\ $ ((\add_instance|fa202|g1|Bit0_G~0_combout\)))

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
	dataa => \add_instance|bkadder|abc_c25|abc~0_combout\,
	datab => \add_instance|fa208|x2|uneq~combout\,
	datac => \add_instance|fa202|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:25:sum_xor_i|uneq~combout\);

-- Location: LC_X11_Y5_N7
\add_instance|bkadder|abc_gates_g3:2:abc_i|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~1_combout\ = (((\add_instance|bkadder|abc_c22|abc~0_combout\ & \add_instance|bkadder|abc_gates_g2:5:abc_i|abc~0_combout\)))

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
	datac => \add_instance|bkadder|abc_c22|abc~0_combout\,
	datad => \add_instance|bkadder|abc_gates_g2:5:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~1_combout\);

-- Location: LC_X12_Y5_N8
\add_instance|bkadder|abc_c26|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c26|abc~0_combout\ = (\add_instance|fa202|x2|uneq~combout\ & (!\add_instance|fa195|g1|Bit0_G~0_combout\ & (\add_instance|fa208|x2|uneq~combout\ $ (\add_instance|fa202|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa202|x2|uneq~combout\ & (\add_instance|fa195|g1|Bit0_G~0_combout\ & (\add_instance|fa208|x2|uneq~combout\ $ (\add_instance|fa202|g1|Bit0_G~0_combout\))))

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
	dataa => \add_instance|fa202|x2|uneq~combout\,
	datab => \add_instance|fa208|x2|uneq~combout\,
	datac => \add_instance|fa202|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa195|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c26|abc~0_combout\);

-- Location: LC_X11_Y5_N1
\add_instance|bkadder|abc_c26|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c26|abc~1_combout\ = (\add_instance|bkadder|abc_c26|abc~0_combout\ & ((\add_instance|bkadder|abc_gates_g3:2:abc_i|abc~combout\) # ((\add_instance|bkadder|abc_c20|abc~0_combout\ & 
-- \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~combout\,
	datab => \add_instance|bkadder|abc_c20|abc~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g3:2:abc_i|abc~1_combout\,
	datad => \add_instance|bkadder|abc_c26|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c26|abc~1_combout\);

-- Location: LC_X8_Y5_N6
\add_instance|fa208|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa208|g1|Bit0_G~0_combout\ = (\add_instance|fa200|g1|Bit0_G~0_combout\ & ((\add_instance|fa201|g1|Bit0_G~0_combout\) # (\add_instance|fa206|x2|uneq~combout\ $ (\add_instance|fa207|x1|uneq~combout\)))) # 
-- (!\add_instance|fa200|g1|Bit0_G~0_combout\ & (\add_instance|fa201|g1|Bit0_G~0_combout\ & (\add_instance|fa206|x2|uneq~combout\ $ (\add_instance|fa207|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa200|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa206|x2|uneq~combout\,
	datac => \add_instance|fa207|x1|uneq~combout\,
	datad => \add_instance|fa201|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa208|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y5_N1
\add_instance|fa206|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa206|x1|uneq~combout\ = \add_instance|fa197|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(63) & (\input_vector~combout\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(63),
	datab => \input_vector~combout\(42),
	datac => \add_instance|fa197|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa206|x1|uneq~combout\);

-- Location: LC_X8_Y5_N5
\add_instance|fa207|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa207|g1|Bit0_G~0_combout\ = (\add_instance|fa199|g1|Bit0_G~0_combout\ & ((\add_instance|fa205|x2|uneq~0_combout\) # (\add_instance|fa206|x1|uneq~combout\ $ (\add_instance|fa198|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa199|g1|Bit0_G~0_combout\ & (\add_instance|fa205|x2|uneq~0_combout\ & (\add_instance|fa206|x1|uneq~combout\ $ (\add_instance|fa198|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa199|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa206|x1|uneq~combout\,
	datac => \add_instance|fa205|x2|uneq~0_combout\,
	datad => \add_instance|fa198|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa207|g1|Bit0_G~0_combout\);

-- Location: LC_X7_Y5_N9
\add_instance|a12:15:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a12:15:and_i|prod~combout\ = (((\input_vector~combout\(47) & \input_vector~combout\(59))))

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
	datac => \input_vector~combout\(47),
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a12:15:and_i|prod~combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(26),
	combout => \input_vector~combout\(26));

-- Location: LC_X7_Y5_N7
\add_instance|fa209|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa209|x2|uneq~combout\ = \add_instance|a12:15:and_i|prod~combout\ $ (\input_vector~combout\(26) $ (((\input_vector~combout\(46) & \input_vector~combout\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(46),
	datab => \add_instance|a12:15:and_i|prod~combout\,
	datac => \input_vector~combout\(26),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa209|x2|uneq~combout\);

-- Location: LC_X7_Y5_N8
\add_instance|fa203|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa203|g1|Bit0_G~0_combout\ = (\input_vector~combout\(25) & ((\add_instance|a11:15:and_i|prod~combout\) # ((\input_vector~combout\(46) & \input_vector~combout\(59))))) # (!\input_vector~combout\(25) & (\input_vector~combout\(46) & 
-- (\add_instance|a11:15:and_i|prod~combout\ & \input_vector~combout\(59))))

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
	dataa => \input_vector~combout\(46),
	datab => \input_vector~combout\(25),
	datac => \add_instance|a11:15:and_i|prod~combout\,
	datad => \input_vector~combout\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa203|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y5_N0
\add_instance|fa210|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa210|x2|uneq~combout\ = \add_instance|fa209|x2|uneq~combout\ $ (\add_instance|fa203|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(45) & \input_vector~combout\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa209|x2|uneq~combout\,
	datab => \add_instance|fa203|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa210|x2|uneq~combout\);

-- Location: LC_X7_Y4_N4
\add_instance|fa205|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa205|g1|Bit0_G~0_combout\ = (\add_instance|fa203|x2|uneq~combout\ & ((\add_instance|fa196|g1|Bit0_G~0_combout\) # (\add_instance|fa204|x1|uneq~combout\ $ (\add_instance|a15:11:and_i|prod~combout\)))) # (!\add_instance|fa203|x2|uneq~combout\ 
-- & (\add_instance|fa196|g1|Bit0_G~0_combout\ & (\add_instance|fa204|x1|uneq~combout\ $ (\add_instance|a15:11:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa203|x2|uneq~combout\,
	datab => \add_instance|fa204|x1|uneq~combout\,
	datac => \add_instance|a15:11:and_i|prod~combout\,
	datad => \add_instance|fa196|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa205|g1|Bit0_G~0_combout\);

-- Location: LC_X7_Y4_N2
\add_instance|fa212|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa212|x1|uneq~combout\ = (\add_instance|fa210|x2|uneq~combout\ $ ((\add_instance|fa205|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa210|x2|uneq~combout\,
	datac => \add_instance|fa205|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa212|x1|uneq~combout\);

-- Location: LC_X7_Y4_N6
\add_instance|a13:13:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a13:13:and_i|prod~combout\ = (\input_vector~combout\(45) & (((\input_vector~combout\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(45),
	datac => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a13:13:and_i|prod~combout\);

-- Location: LC_X7_Y4_N1
\add_instance|a14:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:12:and_i|prod~combout\ = (((\input_vector~combout\(44) & \input_vector~combout\(61))))

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
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:12:and_i|prod~combout\);

-- Location: LC_X7_Y4_N8
\add_instance|fa204|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa204|g1|Bit0_G~0_combout\ = (\add_instance|a13:13:and_i|prod~combout\ & ((\add_instance|a14:12:and_i|prod~combout\) # ((\input_vector~combout\(62) & \input_vector~combout\(43))))) # (!\add_instance|a13:13:and_i|prod~combout\ & 
-- (\input_vector~combout\(62) & (\input_vector~combout\(43) & \add_instance|a14:12:and_i|prod~combout\)))

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
	dataa => \input_vector~combout\(62),
	datab => \input_vector~combout\(43),
	datac => \add_instance|a13:13:and_i|prod~combout\,
	datad => \add_instance|a14:12:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa204|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y4_N1
\add_instance|a15:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a15:12:and_i|prod~combout\ = ((\input_vector~combout\(62) & (\input_vector~combout\(44))))

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
	datab => \input_vector~combout\(62),
	datac => \input_vector~combout\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a15:12:and_i|prod~combout\);

-- Location: LC_X6_Y4_N0
\add_instance|fa211|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa211|x2|uneq~combout\ = \add_instance|fa204|g1|Bit0_G~0_combout\ $ (\add_instance|a15:12:and_i|prod~combout\ $ (((\input_vector~combout\(43) & \input_vector~combout\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa204|g1|Bit0_G~0_combout\,
	datab => \add_instance|a15:12:and_i|prod~combout\,
	datac => \input_vector~combout\(43),
	datad => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa211|x2|uneq~combout\);

-- Location: LC_X8_Y5_N2
\add_instance|fa206|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa206|g1|Bit0_G~0_combout\ = (\add_instance|fa197|g1|Bit0_G~0_combout\ & ((\add_instance|fa198|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(63) & \input_vector~combout\(42))))) # (!\add_instance|fa197|g1|Bit0_G~0_combout\ & 
-- (\input_vector~combout\(63) & (\input_vector~combout\(42) & \add_instance|fa198|g1|Bit0_G~0_combout\)))

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
	dataa => \input_vector~combout\(63),
	datab => \input_vector~combout\(42),
	datac => \add_instance|fa197|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa198|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa206|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y5_N7
\add_instance|fa213|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa213|x2|uneq~combout\ = \add_instance|fa207|g1|Bit0_G~0_combout\ $ (\add_instance|fa212|x1|uneq~combout\ $ (\add_instance|fa211|x2|uneq~combout\ $ (\add_instance|fa206|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa207|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa212|x1|uneq~combout\,
	datac => \add_instance|fa211|x2|uneq~combout\,
	datad => \add_instance|fa206|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa213|x2|uneq~combout\);

-- Location: LC_X12_Y5_N9
\add_instance|bkadder|abc_gates_g1:12:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:12:abc_i|abc~0_combout\ = (\add_instance|fa208|x2|uneq~combout\ & ((\add_instance|fa202|g1|Bit0_G~0_combout\) # ((\add_instance|fa202|x2|uneq~combout\ & \add_instance|fa195|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa208|x2|uneq~combout\ & (\add_instance|fa202|x2|uneq~combout\ & (\add_instance|fa202|g1|Bit0_G~0_combout\ & \add_instance|fa195|g1|Bit0_G~0_combout\)))

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
	dataa => \add_instance|fa202|x2|uneq~combout\,
	datab => \add_instance|fa208|x2|uneq~combout\,
	datac => \add_instance|fa202|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa195|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:12:abc_i|abc~0_combout\);

-- Location: LC_X8_Y4_N8
\add_instance|bkadder|sum_xors:26:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:26:sum_xor_i|uneq~combout\ = \add_instance|fa208|g1|Bit0_G~0_combout\ $ (\add_instance|fa213|x2|uneq~combout\ $ (((\add_instance|bkadder|abc_c26|abc~1_combout\) # 
-- (\add_instance|bkadder|abc_gates_g1:12:abc_i|abc~0_combout\))))

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
	dataa => \add_instance|bkadder|abc_c26|abc~1_combout\,
	datab => \add_instance|fa208|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa213|x2|uneq~combout\,
	datad => \add_instance|bkadder|abc_gates_g1:12:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:26:sum_xor_i|uneq~combout\);

-- Location: LC_X6_Y5_N3
\add_instance|fa210|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa210|g1|Bit0_G~0_combout\ = (\add_instance|fa209|x2|uneq~combout\ & ((\add_instance|fa203|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(45) & \input_vector~combout\(61))))) # (!\add_instance|fa209|x2|uneq~combout\ & 
-- (\add_instance|fa203|g1|Bit0_G~0_combout\ & (\input_vector~combout\(45) & \input_vector~combout\(61))))

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
	dataa => \add_instance|fa209|x2|uneq~combout\,
	datab => \add_instance|fa203|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa210|g1|Bit0_G~0_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(27),
	combout => \input_vector~combout\(27));

-- Location: LC_X7_Y5_N3
\add_instance|fa209|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa209|g1|Bit0_G~0_combout\ = (\add_instance|a12:15:and_i|prod~combout\ & ((\input_vector~combout\(26)) # ((\input_vector~combout\(46) & \input_vector~combout\(60))))) # (!\add_instance|a12:15:and_i|prod~combout\ & (\input_vector~combout\(46) 
-- & (\input_vector~combout\(26) & \input_vector~combout\(60))))

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
	dataa => \input_vector~combout\(46),
	datab => \add_instance|a12:15:and_i|prod~combout\,
	datac => \input_vector~combout\(26),
	datad => \input_vector~combout\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa209|g1|Bit0_G~0_combout\);

-- Location: LC_X7_Y5_N6
\add_instance|fa214|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa214|x2|uneq~0_combout\ = \input_vector~combout\(27) $ (\add_instance|fa209|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(60) & \input_vector~combout\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(27),
	datab => \input_vector~combout\(60),
	datac => \input_vector~combout\(47),
	datad => \add_instance|fa209|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa214|x2|uneq~0_combout\);

-- Location: LC_X6_Y4_N8
\add_instance|fa216|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa216|x1|uneq~combout\ = ((\add_instance|fa210|g1|Bit0_G~0_combout\ $ (\add_instance|fa214|x2|uneq~0_combout\)))

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
	datac => \add_instance|fa210|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa214|x2|uneq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa216|x1|uneq~combout\);

-- Location: LC_X6_Y4_N9
\add_instance|fa211|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa211|g1|Bit0_G~0_combout\ = (\add_instance|fa204|g1|Bit0_G~0_combout\ & ((\add_instance|a15:12:and_i|prod~combout\) # ((\input_vector~combout\(43) & \input_vector~combout\(63))))) # (!\add_instance|fa204|g1|Bit0_G~0_combout\ & 
-- (\add_instance|a15:12:and_i|prod~combout\ & (\input_vector~combout\(43) & \input_vector~combout\(63))))

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
	dataa => \add_instance|fa204|g1|Bit0_G~0_combout\,
	datab => \add_instance|a15:12:and_i|prod~combout\,
	datac => \input_vector~combout\(43),
	datad => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa211|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y4_N3
\add_instance|fa215|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa215|x1|uneq~combout\ = (\input_vector~combout\(61) & (\input_vector~combout\(46) $ (((\input_vector~combout\(62) & \input_vector~combout\(45)))))) # (!\input_vector~combout\(61) & (((\input_vector~combout\(62) & 
-- \input_vector~combout\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(61),
	datab => \input_vector~combout\(46),
	datac => \input_vector~combout\(62),
	datad => \input_vector~combout\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa215|x1|uneq~combout\);

-- Location: LC_X6_Y4_N6
\add_instance|fa215|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa215|x2|uneq~combout\ = \add_instance|fa215|x1|uneq~combout\ $ ((((\input_vector~combout\(44) & \input_vector~combout\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa215|x1|uneq~combout\,
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa215|x2|uneq~combout\);

-- Location: LC_X7_Y4_N3
\add_instance|fa212|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa212|g1|Bit0_G~0_combout\ = (\input_vector~combout\(63) & (\input_vector~combout\(43) $ (((\input_vector~combout\(62) & \input_vector~combout\(44)))))) # (!\input_vector~combout\(63) & (((\input_vector~combout\(62) & 
-- \input_vector~combout\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(63),
	datab => \input_vector~combout\(43),
	datac => \input_vector~combout\(62),
	datad => \input_vector~combout\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa212|g1|Bit0_G~0_combout\);

-- Location: LC_X7_Y4_N7
\add_instance|fa212|g1|Bit0_G~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa212|g1|Bit0_G~1_combout\ = (\add_instance|fa210|x2|uneq~combout\ & ((\add_instance|fa205|g1|Bit0_G~0_combout\) # (\add_instance|fa212|g1|Bit0_G~0_combout\ $ (\add_instance|fa204|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa210|x2|uneq~combout\ & (\add_instance|fa205|g1|Bit0_G~0_combout\ & (\add_instance|fa212|g1|Bit0_G~0_combout\ $ (\add_instance|fa204|g1|Bit0_G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa212|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa210|x2|uneq~combout\,
	datac => \add_instance|fa205|g1|Bit0_G~0_combout\,
	datad => \add_instance|fa204|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa212|g1|Bit0_G~1_combout\);

-- Location: LC_X6_Y4_N5
\add_instance|fa217|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa217|x2|uneq~combout\ = \add_instance|fa216|x1|uneq~combout\ $ (\add_instance|fa211|g1|Bit0_G~0_combout\ $ (\add_instance|fa215|x2|uneq~combout\ $ (\add_instance|fa212|g1|Bit0_G~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa216|x1|uneq~combout\,
	datab => \add_instance|fa211|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa215|x2|uneq~combout\,
	datad => \add_instance|fa212|g1|Bit0_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa217|x2|uneq~combout\);

-- Location: LC_X8_Y4_N5
\add_instance|bkadder|abc_c27|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c27|abc~0_combout\ = (\add_instance|fa208|g1|Bit0_G~0_combout\ & ((\add_instance|bkadder|abc_c26|abc~1_combout\) # ((\add_instance|fa213|x2|uneq~combout\) # (\add_instance|bkadder|abc_gates_g1:12:abc_i|abc~0_combout\)))) # 
-- (!\add_instance|fa208|g1|Bit0_G~0_combout\ & (\add_instance|fa213|x2|uneq~combout\ & ((\add_instance|bkadder|abc_c26|abc~1_combout\) # (\add_instance|bkadder|abc_gates_g1:12:abc_i|abc~0_combout\))))

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
	dataa => \add_instance|bkadder|abc_c26|abc~1_combout\,
	datab => \add_instance|fa208|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa213|x2|uneq~combout\,
	datad => \add_instance|bkadder|abc_gates_g1:12:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c27|abc~0_combout\);

-- Location: LC_X8_Y5_N0
\add_instance|fa213|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa213|g1|Bit0_G~0_combout\ = (\add_instance|fa207|g1|Bit0_G~0_combout\ & ((\add_instance|fa206|g1|Bit0_G~0_combout\) # (\add_instance|fa212|x1|uneq~combout\ $ (\add_instance|fa211|x2|uneq~combout\)))) # 
-- (!\add_instance|fa207|g1|Bit0_G~0_combout\ & (\add_instance|fa206|g1|Bit0_G~0_combout\ & (\add_instance|fa212|x1|uneq~combout\ $ (\add_instance|fa211|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa207|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa212|x1|uneq~combout\,
	datac => \add_instance|fa211|x2|uneq~combout\,
	datad => \add_instance|fa206|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa213|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y4_N6
\add_instance|bkadder|sum_xors:27:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:27:sum_xor_i|uneq~combout\ = \add_instance|fa217|x2|uneq~combout\ $ (((\add_instance|bkadder|abc_c27|abc~0_combout\ $ (\add_instance|fa213|g1|Bit0_G~0_combout\))))

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
	dataa => \add_instance|fa217|x2|uneq~combout\,
	datac => \add_instance|bkadder|abc_c27|abc~0_combout\,
	datad => \add_instance|fa213|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:27:sum_xor_i|uneq~combout\);

-- Location: LC_X6_Y4_N7
\add_instance|fa217|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa217|g1|Bit0_G~0_combout\ = (\add_instance|fa211|g1|Bit0_G~0_combout\ & ((\add_instance|fa212|g1|Bit0_G~1_combout\) # (\add_instance|fa216|x1|uneq~combout\ $ (\add_instance|fa215|x2|uneq~combout\)))) # 
-- (!\add_instance|fa211|g1|Bit0_G~0_combout\ & (\add_instance|fa212|g1|Bit0_G~1_combout\ & (\add_instance|fa216|x1|uneq~combout\ $ (\add_instance|fa215|x2|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa216|x1|uneq~combout\,
	datab => \add_instance|fa211|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa215|x2|uneq~combout\,
	datad => \add_instance|fa212|g1|Bit0_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa217|g1|Bit0_G~0_combout\);

-- Location: LC_X8_Y4_N4
\add_instance|bkadder|abc_gates_g2:6:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g2:6:abc_i|abc~0_combout\ = (\add_instance|fa217|x2|uneq~combout\ & (!\add_instance|fa213|g1|Bit0_G~0_combout\ & (\add_instance|fa213|x2|uneq~combout\ $ (\add_instance|fa208|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa217|x2|uneq~combout\ & (\add_instance|fa213|g1|Bit0_G~0_combout\ & (\add_instance|fa213|x2|uneq~combout\ $ (\add_instance|fa208|g1|Bit0_G~0_combout\))))

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
	dataa => \add_instance|fa217|x2|uneq~combout\,
	datab => \add_instance|fa213|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa213|x2|uneq~combout\,
	datad => \add_instance|fa208|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g2:6:abc_i|abc~0_combout\);

-- Location: LC_X8_Y4_N7
\add_instance|bkadder|abc_c28|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c28|abc~0_combout\ = (((\add_instance|bkadder|abc_gates_g2:6:abc_i|abc~0_combout\ & \add_instance|bkadder|abc_c26|abc~1_combout\)))

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
	datac => \add_instance|bkadder|abc_gates_g2:6:abc_i|abc~0_combout\,
	datad => \add_instance|bkadder|abc_c26|abc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c28|abc~0_combout\);

-- Location: LC_X6_Y5_N4
\add_instance|a14:14:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:14:and_i|prod~combout\ = (((\input_vector~combout\(46) & \input_vector~combout\(61))))

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
	datac => \input_vector~combout\(46),
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:14:and_i|prod~combout\);

-- Location: LC_X6_Y5_N7
\add_instance|a15:13:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a15:13:and_i|prod~combout\ = (\input_vector~combout\(62) & (((\input_vector~combout\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(62),
	datac => \input_vector~combout\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a15:13:and_i|prod~combout\);

-- Location: LC_X6_Y5_N8
\add_instance|fa215|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa215|g1|Bit0_G~0_combout\ = (\add_instance|a14:14:and_i|prod~combout\ & ((\add_instance|a15:13:and_i|prod~combout\) # ((\input_vector~combout\(44) & \input_vector~combout\(63))))) # (!\add_instance|a14:14:and_i|prod~combout\ & 
-- (\add_instance|a15:13:and_i|prod~combout\ & (\input_vector~combout\(44) & \input_vector~combout\(63))))

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
	dataa => \add_instance|a14:14:and_i|prod~combout\,
	datab => \add_instance|a15:13:and_i|prod~combout\,
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa215|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y4_N1
\add_instance|a14:15:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a14:15:and_i|prod~combout\ = (\input_vector~combout\(47) & (((\input_vector~combout\(61)))))

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
	dataa => \input_vector~combout\(47),
	datad => \input_vector~combout\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a14:15:and_i|prod~combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(28),
	combout => \input_vector~combout\(28));

-- Location: LC_X4_Y4_N0
\add_instance|fa218|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa218|x2|uneq~combout\ = \add_instance|a14:15:and_i|prod~combout\ $ (\input_vector~combout\(28) $ (((\input_vector~combout\(62) & \input_vector~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(62),
	datab => \add_instance|a14:15:and_i|prod~combout\,
	datac => \input_vector~combout\(28),
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa218|x2|uneq~combout\);

-- Location: LC_X7_Y5_N0
\add_instance|fa214|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa214|g1|Bit0_G~0_combout\ = (\input_vector~combout\(27) & ((\add_instance|fa209|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(60) & \input_vector~combout\(47))))) # (!\input_vector~combout\(27) & (\input_vector~combout\(60) & 
-- (\input_vector~combout\(47) & \add_instance|fa209|g1|Bit0_G~0_combout\)))

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
	dataa => \input_vector~combout\(27),
	datab => \input_vector~combout\(60),
	datac => \input_vector~combout\(47),
	datad => \add_instance|fa209|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa214|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y5_N6
\add_instance|fa219|x1|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa219|x1|uneq~combout\ = (\add_instance|fa218|x2|uneq~combout\ $ ((\add_instance|fa214|g1|Bit0_G~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|fa218|x2|uneq~combout\,
	datac => \add_instance|fa214|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa219|x1|uneq~combout\);

-- Location: LC_X6_Y4_N4
\add_instance|a16:12:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a16:12:and_i|prod~combout\ = (((\input_vector~combout\(44) & \input_vector~combout\(63))))

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
	datac => \input_vector~combout\(44),
	datad => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a16:12:and_i|prod~combout\);

-- Location: LC_X6_Y4_N2
\add_instance|fa216|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa216|g1|Bit0_G~0_combout\ = (\add_instance|fa210|g1|Bit0_G~0_combout\ & ((\add_instance|fa214|x2|uneq~0_combout\) # (\add_instance|a16:12:and_i|prod~combout\ $ (\add_instance|fa215|x1|uneq~combout\)))) # 
-- (!\add_instance|fa210|g1|Bit0_G~0_combout\ & (\add_instance|fa214|x2|uneq~0_combout\ & (\add_instance|a16:12:and_i|prod~combout\ $ (\add_instance|fa215|x1|uneq~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa210|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa214|x2|uneq~0_combout\,
	datac => \add_instance|a16:12:and_i|prod~combout\,
	datad => \add_instance|fa215|x1|uneq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa216|g1|Bit0_G~0_combout\);

-- Location: LC_X6_Y5_N1
\add_instance|a16:13:and_i|prod\ : maxv_lcell
-- Equation(s):
-- \add_instance|a16:13:and_i|prod~combout\ = (((\input_vector~combout\(45) & \input_vector~combout\(63))))

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
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|a16:13:and_i|prod~combout\);

-- Location: LC_X6_Y5_N9
\add_instance|fa220|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa220|x2|uneq~combout\ = \add_instance|fa215|g1|Bit0_G~0_combout\ $ (\add_instance|fa219|x1|uneq~combout\ $ (\add_instance|fa216|g1|Bit0_G~0_combout\ $ (\add_instance|a16:13:and_i|prod~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa215|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa219|x1|uneq~combout\,
	datac => \add_instance|fa216|g1|Bit0_G~0_combout\,
	datad => \add_instance|a16:13:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa220|x2|uneq~combout\);

-- Location: LC_X8_Y4_N9
\add_instance|bkadder|abc_gates_g1:13:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:13:abc_i|abc~0_combout\ = (\add_instance|fa217|x2|uneq~combout\ & ((\add_instance|fa213|g1|Bit0_G~0_combout\) # ((\add_instance|fa213|x2|uneq~combout\ & \add_instance|fa208|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa217|x2|uneq~combout\ & (\add_instance|fa213|g1|Bit0_G~0_combout\ & (\add_instance|fa213|x2|uneq~combout\ & \add_instance|fa208|g1|Bit0_G~0_combout\)))

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
	dataa => \add_instance|fa217|x2|uneq~combout\,
	datab => \add_instance|fa213|g1|Bit0_G~0_combout\,
	datac => \add_instance|fa213|x2|uneq~combout\,
	datad => \add_instance|fa208|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:13:abc_i|abc~0_combout\);

-- Location: LC_X8_Y4_N2
\add_instance|bkadder|abc_gates_g2:6:abc_i|abc\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g2:6:abc_i|abc~combout\ = ((\add_instance|bkadder|abc_gates_g1:13:abc_i|abc~0_combout\) # ((\add_instance|bkadder|abc_gates_g2:6:abc_i|abc~0_combout\ & \add_instance|bkadder|abc_gates_g1:12:abc_i|abc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|bkadder|abc_gates_g1:13:abc_i|abc~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g2:6:abc_i|abc~0_combout\,
	datad => \add_instance|bkadder|abc_gates_g1:12:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g2:6:abc_i|abc~combout\);

-- Location: LC_X5_Y4_N8
\add_instance|bkadder|sum_xors:28:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:28:sum_xor_i|uneq~combout\ = \add_instance|fa217|g1|Bit0_G~0_combout\ $ (\add_instance|fa220|x2|uneq~combout\ $ (((\add_instance|bkadder|abc_c28|abc~0_combout\) # (\add_instance|bkadder|abc_gates_g2:6:abc_i|abc~combout\))))

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
	dataa => \add_instance|fa217|g1|Bit0_G~0_combout\,
	datab => \add_instance|bkadder|abc_c28|abc~0_combout\,
	datac => \add_instance|fa220|x2|uneq~combout\,
	datad => \add_instance|bkadder|abc_gates_g2:6:abc_i|abc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:28:sum_xor_i|uneq~combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(29),
	combout => \input_vector~combout\(29));

-- Location: LC_X4_Y4_N9
\add_instance|fa218|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa218|g1|Bit0_G~0_combout\ = (\add_instance|a14:15:and_i|prod~combout\ & ((\input_vector~combout\(28)) # ((\input_vector~combout\(62) & \input_vector~combout\(46))))) # (!\add_instance|a14:15:and_i|prod~combout\ & (\input_vector~combout\(62) 
-- & (\input_vector~combout\(28) & \input_vector~combout\(46))))

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
	dataa => \input_vector~combout\(62),
	datab => \add_instance|a14:15:and_i|prod~combout\,
	datac => \input_vector~combout\(28),
	datad => \input_vector~combout\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa218|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y4_N6
\add_instance|fa221|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa221|x2|uneq~0_combout\ = \input_vector~combout\(29) $ (\add_instance|fa218|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(47) & \input_vector~combout\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(47),
	datab => \input_vector~combout\(29),
	datac => \add_instance|fa218|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa221|x2|uneq~0_combout\);

-- Location: LC_X6_Y5_N5
\add_instance|fa219|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa219|g1|Bit0_G~0_combout\ = (\add_instance|fa214|g1|Bit0_G~0_combout\ & ((\add_instance|fa218|x2|uneq~combout\) # ((\input_vector~combout\(45) & \input_vector~combout\(63))))) # (!\add_instance|fa214|g1|Bit0_G~0_combout\ & 
-- (\add_instance|fa218|x2|uneq~combout\ & (\input_vector~combout\(45) & \input_vector~combout\(63))))

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
	dataa => \add_instance|fa214|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa218|x2|uneq~combout\,
	datac => \input_vector~combout\(45),
	datad => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa219|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y4_N7
\add_instance|fa222|x2|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa222|x2|uneq~combout\ = \add_instance|fa221|x2|uneq~0_combout\ $ (\add_instance|fa219|g1|Bit0_G~0_combout\ $ (((\input_vector~combout\(63) & \input_vector~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(63),
	datab => \input_vector~combout\(46),
	datac => \add_instance|fa221|x2|uneq~0_combout\,
	datad => \add_instance|fa219|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa222|x2|uneq~combout\);

-- Location: LC_X5_Y4_N4
\add_instance|bkadder|abc_c29|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c29|abc~0_combout\ = (\add_instance|fa217|g1|Bit0_G~0_combout\ & ((\add_instance|bkadder|abc_c28|abc~0_combout\) # ((\add_instance|fa220|x2|uneq~combout\) # (\add_instance|bkadder|abc_gates_g2:6:abc_i|abc~combout\)))) # 
-- (!\add_instance|fa217|g1|Bit0_G~0_combout\ & (\add_instance|fa220|x2|uneq~combout\ & ((\add_instance|bkadder|abc_c28|abc~0_combout\) # (\add_instance|bkadder|abc_gates_g2:6:abc_i|abc~combout\))))

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
	dataa => \add_instance|fa217|g1|Bit0_G~0_combout\,
	datab => \add_instance|bkadder|abc_c28|abc~0_combout\,
	datac => \add_instance|fa220|x2|uneq~combout\,
	datad => \add_instance|bkadder|abc_gates_g2:6:abc_i|abc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c29|abc~0_combout\);

-- Location: LC_X6_Y5_N2
\add_instance|fa220|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa220|g1|Bit0_G~0_combout\ = (\add_instance|fa215|g1|Bit0_G~0_combout\ & ((\add_instance|fa216|g1|Bit0_G~0_combout\) # (\add_instance|fa219|x1|uneq~combout\ $ (\add_instance|a16:13:and_i|prod~combout\)))) # 
-- (!\add_instance|fa215|g1|Bit0_G~0_combout\ & (\add_instance|fa216|g1|Bit0_G~0_combout\ & (\add_instance|fa219|x1|uneq~combout\ $ (\add_instance|a16:13:and_i|prod~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|fa215|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa219|x1|uneq~combout\,
	datac => \add_instance|fa216|g1|Bit0_G~0_combout\,
	datad => \add_instance|a16:13:and_i|prod~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa220|g1|Bit0_G~0_combout\);

-- Location: LC_X5_Y4_N7
\add_instance|bkadder|sum_xors:29:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:29:sum_xor_i|uneq~combout\ = (\add_instance|fa222|x2|uneq~combout\ $ (\add_instance|bkadder|abc_c29|abc~0_combout\ $ (\add_instance|fa220|g1|Bit0_G~0_combout\)))

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
	datab => \add_instance|fa222|x2|uneq~combout\,
	datac => \add_instance|bkadder|abc_c29|abc~0_combout\,
	datad => \add_instance|fa220|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:29:sum_xor_i|uneq~combout\);

-- Location: LC_X4_Y4_N5
\add_instance|fa222|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa222|g1|Bit0_G~0_combout\ = (\add_instance|fa221|x2|uneq~0_combout\ & ((\add_instance|fa219|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(63) & \input_vector~combout\(46))))) # (!\add_instance|fa221|x2|uneq~0_combout\ & 
-- (\input_vector~combout\(63) & (\input_vector~combout\(46) & \add_instance|fa219|g1|Bit0_G~0_combout\)))

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
	dataa => \input_vector~combout\(63),
	datab => \input_vector~combout\(46),
	datac => \add_instance|fa221|x2|uneq~0_combout\,
	datad => \add_instance|fa219|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa222|g1|Bit0_G~0_combout\);

-- Location: LC_X4_Y4_N8
\add_instance|fa221|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa221|g1|Bit0_G~0_combout\ = (\input_vector~combout\(29) & ((\add_instance|fa218|g1|Bit0_G~0_combout\) # ((\input_vector~combout\(47) & \input_vector~combout\(62))))) # (!\input_vector~combout\(29) & (\input_vector~combout\(47) & 
-- (\add_instance|fa218|g1|Bit0_G~0_combout\ & \input_vector~combout\(62))))

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
	datab => \input_vector~combout\(29),
	datac => \add_instance|fa218|g1|Bit0_G~0_combout\,
	datad => \input_vector~combout\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa221|g1|Bit0_G~0_combout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(30),
	combout => \input_vector~combout\(30));

-- Location: LC_X4_Y4_N4
\add_instance|fa223|x2|uneq~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa223|x2|uneq~0_combout\ = \add_instance|fa221|g1|Bit0_G~0_combout\ $ (\input_vector~combout\(30) $ (((\input_vector~combout\(47) & \input_vector~combout\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(47),
	datab => \add_instance|fa221|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(30),
	datad => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa223|x2|uneq~0_combout\);

-- Location: LC_X5_Y4_N3
\add_instance|bkadder|abc_gates_g5|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g5|abc~0_combout\ = (\add_instance|fa217|g1|Bit0_G~0_combout\ & (!\add_instance|fa220|x2|uneq~combout\ & (\add_instance|fa222|x2|uneq~combout\ $ (\add_instance|fa220|g1|Bit0_G~0_combout\)))) # 
-- (!\add_instance|fa217|g1|Bit0_G~0_combout\ & (\add_instance|fa220|x2|uneq~combout\ & (\add_instance|fa222|x2|uneq~combout\ $ (\add_instance|fa220|g1|Bit0_G~0_combout\))))

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
	dataa => \add_instance|fa217|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa222|x2|uneq~combout\,
	datac => \add_instance|fa220|x2|uneq~combout\,
	datad => \add_instance|fa220|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g5|abc~0_combout\);

-- Location: LC_X8_Y4_N3
\add_instance|bkadder|abc_gates_g5|abc~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g5|abc~1_combout\ = (\add_instance|bkadder|abc_gates_g5|abc~0_combout\ & ((\add_instance|bkadder|abc_gates_g2:6:abc_i|abc~combout\) # ((\add_instance|bkadder|abc_c26|abc~1_combout\ & 
-- \add_instance|bkadder|abc_gates_g2:6:abc_i|abc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|bkadder|abc_c26|abc~1_combout\,
	datab => \add_instance|bkadder|abc_gates_g5|abc~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g2:6:abc_i|abc~0_combout\,
	datad => \add_instance|bkadder|abc_gates_g2:6:abc_i|abc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g5|abc~1_combout\);

-- Location: LC_X5_Y4_N6
\add_instance|bkadder|abc_gates_g1:14:abc_i|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g1:14:abc_i|abc~0_combout\ = (\add_instance|fa222|x2|uneq~combout\ & ((\add_instance|fa220|g1|Bit0_G~0_combout\) # ((\add_instance|fa217|g1|Bit0_G~0_combout\ & \add_instance|fa220|x2|uneq~combout\)))) # 
-- (!\add_instance|fa222|x2|uneq~combout\ & (\add_instance|fa217|g1|Bit0_G~0_combout\ & (\add_instance|fa220|x2|uneq~combout\ & \add_instance|fa220|g1|Bit0_G~0_combout\)))

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
	dataa => \add_instance|fa217|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa222|x2|uneq~combout\,
	datac => \add_instance|fa220|x2|uneq~combout\,
	datad => \add_instance|fa220|g1|Bit0_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g1:14:abc_i|abc~0_combout\);

-- Location: LC_X5_Y4_N5
\add_instance|bkadder|sum_xors:30:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:30:sum_xor_i|uneq~combout\ = \add_instance|fa222|g1|Bit0_G~0_combout\ $ (\add_instance|fa223|x2|uneq~0_combout\ $ (((\add_instance|bkadder|abc_gates_g5|abc~1_combout\) # 
-- (\add_instance|bkadder|abc_gates_g1:14:abc_i|abc~0_combout\))))

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
	dataa => \add_instance|fa222|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa223|x2|uneq~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g5|abc~1_combout\,
	datad => \add_instance|bkadder|abc_gates_g1:14:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:30:sum_xor_i|uneq~combout\);

-- Location: LC_X4_Y4_N2
\add_instance|fa223|g1|Bit0_G~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fa223|g1|Bit0_G~0_combout\ = (\add_instance|fa221|g1|Bit0_G~0_combout\ & ((\input_vector~combout\(30)) # ((\input_vector~combout\(47) & \input_vector~combout\(63))))) # (!\add_instance|fa221|g1|Bit0_G~0_combout\ & (\input_vector~combout\(47) 
-- & (\input_vector~combout\(30) & \input_vector~combout\(63))))

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
	datab => \add_instance|fa221|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(30),
	datad => \input_vector~combout\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fa223|g1|Bit0_G~0_combout\);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(31),
	combout => \input_vector~combout\(31));

-- Location: LC_X5_Y4_N9
\add_instance|bkadder|abc_c31|abc~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_c31|abc~0_combout\ = (\add_instance|fa222|g1|Bit0_G~0_combout\ & ((\add_instance|fa223|x2|uneq~0_combout\) # ((\add_instance|bkadder|abc_gates_g5|abc~1_combout\) # (\add_instance|bkadder|abc_gates_g1:14:abc_i|abc~0_combout\)))) # 
-- (!\add_instance|fa222|g1|Bit0_G~0_combout\ & (\add_instance|fa223|x2|uneq~0_combout\ & ((\add_instance|bkadder|abc_gates_g5|abc~1_combout\) # (\add_instance|bkadder|abc_gates_g1:14:abc_i|abc~0_combout\))))

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
	dataa => \add_instance|fa222|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa223|x2|uneq~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g5|abc~1_combout\,
	datad => \add_instance|bkadder|abc_gates_g1:14:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_c31|abc~0_combout\);

-- Location: LC_X5_Y4_N0
\add_instance|bkadder|sum_xors:31:sum_xor_i|uneq\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|sum_xors:31:sum_xor_i|uneq~combout\ = (\add_instance|fa223|g1|Bit0_G~0_combout\ $ (\input_vector~combout\(31) $ (\add_instance|bkadder|abc_c31|abc~0_combout\)))

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
	datab => \add_instance|fa223|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(31),
	datad => \add_instance|bkadder|abc_c31|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|sum_xors:31:sum_xor_i|uneq~combout\);

-- Location: LC_X5_Y4_N2
\add_instance|bkadder|abc_gates_g5|abc~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g5|abc~2_combout\ = (\add_instance|fa222|g1|Bit0_G~0_combout\ & ((\add_instance|fa223|x2|uneq~0_combout\) # ((\add_instance|bkadder|abc_gates_g5|abc~1_combout\) # 
-- (\add_instance|bkadder|abc_gates_g1:14:abc_i|abc~0_combout\)))) # (!\add_instance|fa222|g1|Bit0_G~0_combout\ & (\add_instance|fa223|x2|uneq~0_combout\ & ((\add_instance|bkadder|abc_gates_g5|abc~1_combout\) # 
-- (\add_instance|bkadder|abc_gates_g1:14:abc_i|abc~0_combout\))))

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
	dataa => \add_instance|fa222|g1|Bit0_G~0_combout\,
	datab => \add_instance|fa223|x2|uneq~0_combout\,
	datac => \add_instance|bkadder|abc_gates_g5|abc~1_combout\,
	datad => \add_instance|bkadder|abc_gates_g1:14:abc_i|abc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g5|abc~2_combout\);

-- Location: LC_X5_Y4_N1
\add_instance|bkadder|abc_gates_g5|abc~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|bkadder|abc_gates_g5|abc~3_combout\ = ((\add_instance|fa223|g1|Bit0_G~0_combout\ & ((\input_vector~combout\(31)) # (\add_instance|bkadder|abc_gates_g5|abc~2_combout\))) # (!\add_instance|fa223|g1|Bit0_G~0_combout\ & 
-- (\input_vector~combout\(31) & \add_instance|bkadder|abc_gates_g5|abc~2_combout\)))

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
	datab => \add_instance|fa223|g1|Bit0_G~0_combout\,
	datac => \input_vector~combout\(31),
	datad => \add_instance|bkadder|abc_gates_g5|abc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|bkadder|abc_gates_g5|abc~3_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|xor_gates_p0:0:xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:1:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:2:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:3:sum_xor_i|uneq~0_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:4:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:5:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:6:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:7:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:8:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:9:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:10:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:11:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(11));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:12:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(12));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:13:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(13));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:14:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(14));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:15:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(15));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:16:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(16));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:17:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(17));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:18:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(18));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:19:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(19));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:20:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(20));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:21:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(21));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:22:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(22));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:23:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(23));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:24:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(24));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:25:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(25));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:26:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(26));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:27:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(27));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:28:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(28));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:29:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(29));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:30:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(30));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|sum_xors:31:sum_xor_i|uneq~combout\,
	oe => VCC,
	padio => ww_output_vector(31));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|bkadder|abc_gates_g5|abc~3_combout\,
	oe => VCC,
	padio => ww_output_vector(32));
END structure;


