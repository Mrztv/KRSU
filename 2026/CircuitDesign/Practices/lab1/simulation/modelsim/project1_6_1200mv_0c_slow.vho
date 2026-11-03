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

-- DATE "10/13/2026 14:10:30"

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

ENTITY 	project2 IS
    PORT (
	F : OUT std_logic;
	x : IN std_logic;
	y : IN std_logic;
	z : IN std_logic
	);
END project2;

-- Design Ports Information
-- F	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF project2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \z~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;

BEGIN

F <= ww_F;
ww_x <= x;
ww_y <= y;
ww_z <= z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y20_N9
\F~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~0_combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\x~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\z~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z,
	o => \z~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\y~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: LCCOMB_X6_Y24_N8
\inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\x~input_o\ & (!\z~input_o\ & \y~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datac => \z~input_o\,
	datad => \y~input_o\,
	combout => \inst~0_combout\);

ww_F <= \F~output_o\;
END structure;


