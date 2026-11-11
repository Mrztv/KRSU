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

-- DATE "11/10/2026 00:33:36"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	farmer_problem IS
    PORT (
	A : OUT std_logic;
	F : IN std_logic;
	C : IN std_logic;
	G : IN std_logic;
	W : IN std_logic
	);
END farmer_problem;

-- Design Ports Information
-- A	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF farmer_problem IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \G~input_o\ : std_logic;
SIGNAL \F~input_o\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;

BEGIN

A <= ww_A;
ww_F <= F;
ww_C <= C;
ww_G <= G;
ww_W <= W;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X19_Y29_N30
\A~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOIBUF_X0_Y23_N8
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\W~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\G~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G,
	o => \G~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\F~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F,
	o => \F~input_o\);

-- Location: LCCOMB_X1_Y24_N0
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\G~input_o\ & (!\F~input_o\ & ((\C~input_o\) # (\W~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \W~input_o\,
	datac => \G~input_o\,
	datad => \F~input_o\,
	combout => \WideOr0~0_combout\);

ww_A <= \A~output_o\;
END structure;


