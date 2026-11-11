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

-- DATE "11/10/2026 15:44:11"

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

ENTITY 	seven_seg_decoder IS
    PORT (
	A : BUFFER std_logic;
	B : BUFFER std_logic;
	C : BUFFER std_logic;
	D : BUFFER std_logic;
	E : BUFFER std_logic;
	F : BUFFER std_logic;
	G : BUFFER std_logic;
	X0 : IN std_logic;
	X1 : IN std_logic;
	X2 : IN std_logic;
	X3 : IN std_logic
	);
END seven_seg_decoder;

-- Design Ports Information
-- A	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X1	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X2	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X3	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seven_seg_decoder IS
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
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_X0 : std_logic;
SIGNAL ww_X1 : std_logic;
SIGNAL ww_X2 : std_logic;
SIGNAL ww_X3 : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \X0~input_o\ : std_logic;
SIGNAL \X3~input_o\ : std_logic;
SIGNAL \X1~input_o\ : std_logic;
SIGNAL \X2~input_o\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr6~0_combout\ : std_logic;

BEGIN

A <= ww_A;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
G <= ww_G;
ww_X0 <= X0;
ww_X1 <= X1;
ww_X2 <= X2;
ww_X3 <= X3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WideOr6~0_combout\ <= NOT \WideOr6~0_combout\;

-- Location: IOOBUF_X21_Y29_N23
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

-- Location: IOOBUF_X21_Y29_N30
\B~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~0_combout\,
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
	i => \WideOr2~0_combout\,
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
	i => \WideOr3~0_combout\,
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
	i => \WideOr4~0_combout\,
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
	i => \WideOr5~0_combout\,
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
	i => \ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\X0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X0,
	o => \X0~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\X3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X3,
	o => \X3~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\X1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X1,
	o => \X1~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\X2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X2,
	o => \X2~input_o\);

-- Location: LCCOMB_X27_Y25_N16
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\X3~input_o\ & (\X0~input_o\ & (\X1~input_o\ $ (\X2~input_o\)))) # (!\X3~input_o\ & (!\X1~input_o\ & (\X0~input_o\ $ (\X2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X27_Y25_N18
\WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\X3~input_o\ & ((\X0~input_o\ & (\X1~input_o\)) # (!\X0~input_o\ & ((\X2~input_o\))))) # (!\X3~input_o\ & (\X2~input_o\ & (\X0~input_o\ $ (\X1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X27_Y25_N12
\WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\X3~input_o\ & (\X2~input_o\ & ((\X1~input_o\) # (!\X0~input_o\)))) # (!\X3~input_o\ & (!\X0~input_o\ & (\X1~input_o\ & !\X2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X27_Y25_N14
\WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\X1~input_o\ & ((\X0~input_o\ & ((\X2~input_o\))) # (!\X0~input_o\ & (\X3~input_o\ & !\X2~input_o\)))) # (!\X1~input_o\ & (!\X3~input_o\ & (\X0~input_o\ $ (\X2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X27_Y25_N0
\WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\X1~input_o\ & (\X0~input_o\ & (!\X3~input_o\))) # (!\X1~input_o\ & ((\X2~input_o\ & ((!\X3~input_o\))) # (!\X2~input_o\ & (\X0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X27_Y25_N2
\WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\X0~input_o\ & (\X3~input_o\ $ (((\X1~input_o\) # (!\X2~input_o\))))) # (!\X0~input_o\ & (!\X3~input_o\ & (\X1~input_o\ & !\X2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X27_Y25_N4
\WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\X0~input_o\ & ((\X3~input_o\) # (\X1~input_o\ $ (\X2~input_o\)))) # (!\X0~input_o\ & ((\X1~input_o\) # (\X3~input_o\ $ (\X2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \X3~input_o\,
	datac => \X1~input_o\,
	datad => \X2~input_o\,
	combout => \WideOr6~0_combout\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_F <= \F~output_o\;

ww_G <= \G~output_o\;
END structure;


