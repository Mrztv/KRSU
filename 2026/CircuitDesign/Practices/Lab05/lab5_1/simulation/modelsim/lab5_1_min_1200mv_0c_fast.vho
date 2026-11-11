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

-- DATE "11/10/2026 22:12:53"

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

ENTITY 	task IS
    PORT (
	A : OUT std_logic;
	C0 : IN std_logic;
	C1 : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic
	);
END task;

-- Design Ports Information
-- A	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF task IS
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
SIGNAL ww_C0 : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \C0~input_o\ : std_logic;
SIGNAL \C1~input_o\ : std_logic;
SIGNAL \inst|F~0_combout\ : std_logic;
SIGNAL \inst|D~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_D~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_F~0_combout\ : std_logic;

BEGIN

A <= ww_A;
ww_C0 <= C0;
ww_C1 <= C1;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
G <= ww_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_D~0_combout\ <= NOT \inst|D~0_combout\;
\inst|ALT_INV_F~0_combout\ <= NOT \inst|F~0_combout\;

-- Location: IOOBUF_X21_Y29_N23
\A~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_F~0_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\B~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0~input_o\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0~input_o\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\D~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_D~0_combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\E~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_D~0_combout\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\F~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|F~0_combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\G~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1~input_o\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOIBUF_X14_Y29_N8
\C0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C0,
	o => \C0~input_o\);

-- Location: IOIBUF_X23_Y29_N29
\C1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C1,
	o => \C1~input_o\);

-- Location: LCCOMB_X20_Y28_N24
\inst|F~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|F~0_combout\ = \C0~input_o\ $ (\C1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0~input_o\,
	datad => \C1~input_o\,
	combout => \inst|F~0_combout\);

-- Location: LCCOMB_X20_Y28_N10
\inst|D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|D~0_combout\ = (\C0~input_o\ & \C1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0~input_o\,
	datad => \C1~input_o\,
	combout => \inst|D~0_combout\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_F <= \F~output_o\;

ww_G <= \G~output_o\;
END structure;


