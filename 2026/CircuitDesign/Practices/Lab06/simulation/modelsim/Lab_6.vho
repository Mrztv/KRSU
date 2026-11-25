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

-- DATE "11/24/2026 01:12:30"

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

ENTITY 	lab06 IS
    PORT (
	A2 : OUT std_logic;
	X0_2 : IN std_logic;
	X1_2 : IN std_logic;
	X2_2 : IN std_logic;
	X3_2 : IN std_logic;
	B2 : OUT std_logic;
	C2 : OUT std_logic;
	D2 : OUT std_logic;
	E2 : OUT std_logic;
	F2 : OUT std_logic;
	G2 : OUT std_logic;
	A : OUT std_logic;
	X0_1 : IN std_logic;
	X1_1 : IN std_logic;
	X2_1 : IN std_logic;
	X3_1 : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic;
	A3 : OUT std_logic;
	B3 : OUT std_logic;
	C3 : OUT std_logic;
	D3 : OUT std_logic;
	E3 : OUT std_logic;
	F3 : OUT std_logic;
	G3 : OUT std_logic;
	A4 : OUT std_logic;
	B4 : OUT std_logic;
	C4 : OUT std_logic;
	D4 : OUT std_logic;
	E4 : OUT std_logic;
	F4 : OUT std_logic;
	G4 : OUT std_logic;
	N2X3 : OUT std_logic;
	N2X2 : OUT std_logic;
	N2X1 : OUT std_logic;
	N2X0 : OUT std_logic;
	N1X0 : OUT std_logic;
	N1X1 : OUT std_logic;
	N1X2 : OUT std_logic;
	N1X3 : OUT std_logic
	);
END lab06;

-- Design Ports Information
-- A2	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C2	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E2	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G2	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C3	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E3	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F3	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G3	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C4	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E4	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F4	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G4	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N2X3	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N2X2	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N2X1	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N2X0	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N1X0	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N1X1	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N1X2	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N1X3	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X0_2	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X1_2	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X2_2	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X3_2	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X0_1	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X1_1	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X2_1	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X3_1	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab06 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_X0_2 : std_logic;
SIGNAL ww_X1_2 : std_logic;
SIGNAL ww_X2_2 : std_logic;
SIGNAL ww_X3_2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_C2 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_E2 : std_logic;
SIGNAL ww_F2 : std_logic;
SIGNAL ww_G2 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_X0_1 : std_logic;
SIGNAL ww_X1_1 : std_logic;
SIGNAL ww_X2_1 : std_logic;
SIGNAL ww_X3_1 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_C3 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_E3 : std_logic;
SIGNAL ww_F3 : std_logic;
SIGNAL ww_G3 : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL ww_B4 : std_logic;
SIGNAL ww_C4 : std_logic;
SIGNAL ww_D4 : std_logic;
SIGNAL ww_E4 : std_logic;
SIGNAL ww_F4 : std_logic;
SIGNAL ww_G4 : std_logic;
SIGNAL ww_N2X3 : std_logic;
SIGNAL ww_N2X2 : std_logic;
SIGNAL ww_N2X1 : std_logic;
SIGNAL ww_N2X0 : std_logic;
SIGNAL ww_N1X0 : std_logic;
SIGNAL ww_N1X1 : std_logic;
SIGNAL ww_N1X2 : std_logic;
SIGNAL ww_N1X3 : std_logic;
SIGNAL \A2~output_o\ : std_logic;
SIGNAL \B2~output_o\ : std_logic;
SIGNAL \C2~output_o\ : std_logic;
SIGNAL \D2~output_o\ : std_logic;
SIGNAL \E2~output_o\ : std_logic;
SIGNAL \F2~output_o\ : std_logic;
SIGNAL \G2~output_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \A3~output_o\ : std_logic;
SIGNAL \B3~output_o\ : std_logic;
SIGNAL \C3~output_o\ : std_logic;
SIGNAL \D3~output_o\ : std_logic;
SIGNAL \E3~output_o\ : std_logic;
SIGNAL \F3~output_o\ : std_logic;
SIGNAL \G3~output_o\ : std_logic;
SIGNAL \A4~output_o\ : std_logic;
SIGNAL \B4~output_o\ : std_logic;
SIGNAL \C4~output_o\ : std_logic;
SIGNAL \D4~output_o\ : std_logic;
SIGNAL \E4~output_o\ : std_logic;
SIGNAL \F4~output_o\ : std_logic;
SIGNAL \G4~output_o\ : std_logic;
SIGNAL \N2X3~output_o\ : std_logic;
SIGNAL \N2X2~output_o\ : std_logic;
SIGNAL \N2X1~output_o\ : std_logic;
SIGNAL \N2X0~output_o\ : std_logic;
SIGNAL \N1X0~output_o\ : std_logic;
SIGNAL \N1X1~output_o\ : std_logic;
SIGNAL \N1X2~output_o\ : std_logic;
SIGNAL \N1X3~output_o\ : std_logic;
SIGNAL \X1_2~input_o\ : std_logic;
SIGNAL \X2_2~input_o\ : std_logic;
SIGNAL \X3_2~input_o\ : std_logic;
SIGNAL \X0_2~input_o\ : std_logic;
SIGNAL \inst1|WideOr0~0_combout\ : std_logic;
SIGNAL \inst1|WideOr1~0_combout\ : std_logic;
SIGNAL \inst1|WideOr2~0_combout\ : std_logic;
SIGNAL \inst1|WideOr3~0_combout\ : std_logic;
SIGNAL \inst1|WideOr4~0_combout\ : std_logic;
SIGNAL \inst1|WideOr5~0_combout\ : std_logic;
SIGNAL \inst1|WideOr6~0_combout\ : std_logic;
SIGNAL \X3_1~input_o\ : std_logic;
SIGNAL \X2_1~input_o\ : std_logic;
SIGNAL \X0_1~input_o\ : std_logic;
SIGNAL \X1_1~input_o\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|WideOr4~0_combout\ : std_logic;
SIGNAL \inst|WideOr5~0_combout\ : std_logic;
SIGNAL \inst|WideOr6~0_combout\ : std_logic;
SIGNAL \inst2|inst6|inst3~0_combout\ : std_logic;
SIGNAL \inst2|inst7|inst3~0_combout\ : std_logic;
SIGNAL \inst2|inst6|inst3~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst3~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst2~combout\ : std_logic;
SIGNAL \inst2|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst2|inst7|inst2~0_combout\ : std_logic;
SIGNAL \inst4|N1X2~0_combout\ : std_logic;
SIGNAL \inst4|N1X3~0_combout\ : std_logic;
SIGNAL \inst2|inst8|inst~combout\ : std_logic;
SIGNAL \inst4|N1X1~0_combout\ : std_logic;
SIGNAL \inst6|WideOr0~0_combout\ : std_logic;
SIGNAL \inst6|WideOr1~0_combout\ : std_logic;
SIGNAL \inst6|WideOr2~0_combout\ : std_logic;
SIGNAL \inst6|WideOr3~0_combout\ : std_logic;
SIGNAL \inst6|WideOr4~0_combout\ : std_logic;
SIGNAL \inst6|WideOr5~0_combout\ : std_logic;
SIGNAL \inst6|WideOr6~0_combout\ : std_logic;
SIGNAL \inst5|Decoder0~0_combout\ : std_logic;
SIGNAL \inst5|Decoder0~1_combout\ : std_logic;
SIGNAL \inst4|N2X0~0_combout\ : std_logic;
SIGNAL \inst5|Decoder0~2_combout\ : std_logic;
SIGNAL \inst4|N2X1~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_N2X1~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \inst2|inst8|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_WideOr6~0_combout\ : std_logic;

BEGIN

A2 <= ww_A2;
ww_X0_2 <= X0_2;
ww_X1_2 <= X1_2;
ww_X2_2 <= X2_2;
ww_X3_2 <= X3_2;
B2 <= ww_B2;
C2 <= ww_C2;
D2 <= ww_D2;
E2 <= ww_E2;
F2 <= ww_F2;
G2 <= ww_G2;
A <= ww_A;
ww_X0_1 <= X0_1;
ww_X1_1 <= X1_1;
ww_X2_1 <= X2_1;
ww_X3_1 <= X3_1;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
G <= ww_G;
A3 <= ww_A3;
B3 <= ww_B3;
C3 <= ww_C3;
D3 <= ww_D3;
E3 <= ww_E3;
F3 <= ww_F3;
G3 <= ww_G3;
A4 <= ww_A4;
B4 <= ww_B4;
C4 <= ww_C4;
D4 <= ww_D4;
E4 <= ww_E4;
F4 <= ww_F4;
G4 <= ww_G4;
N2X3 <= ww_N2X3;
N2X2 <= ww_N2X2;
N2X1 <= ww_N2X1;
N2X0 <= ww_N2X0;
N1X0 <= ww_N1X0;
N1X1 <= ww_N1X1;
N1X2 <= ww_N1X2;
N1X3 <= ww_N1X3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst4|ALT_INV_N2X1~0_combout\ <= NOT \inst4|N2X1~0_combout\;
\inst6|ALT_INV_WideOr6~0_combout\ <= NOT \inst6|WideOr6~0_combout\;
\inst6|ALT_INV_WideOr5~0_combout\ <= NOT \inst6|WideOr5~0_combout\;
\inst6|ALT_INV_WideOr4~0_combout\ <= NOT \inst6|WideOr4~0_combout\;
\inst6|ALT_INV_WideOr3~0_combout\ <= NOT \inst6|WideOr3~0_combout\;
\inst6|ALT_INV_WideOr0~0_combout\ <= NOT \inst6|WideOr0~0_combout\;
\inst2|inst8|ALT_INV_inst~combout\ <= NOT \inst2|inst8|inst~combout\;
\inst|ALT_INV_WideOr6~0_combout\ <= NOT \inst|WideOr6~0_combout\;
\inst1|ALT_INV_WideOr6~0_combout\ <= NOT \inst1|WideOr6~0_combout\;

-- Location: IOOBUF_X21_Y29_N2
\A2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \A2~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\B2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \B2~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\C2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \C2~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\D2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \D2~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\E2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \E2~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\F2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \F2~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\G2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \G2~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\A~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr0~0_combout\,
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
	i => \inst|WideOr1~0_combout\,
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
	i => \inst|WideOr2~0_combout\,
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
	i => \inst|WideOr3~0_combout\,
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
	i => \inst|WideOr4~0_combout\,
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
	i => \inst|WideOr5~0_combout\,
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
	i => \inst|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\A3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \A3~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\B3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \B3~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\C3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \C3~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\D3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \D3~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\E3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \E3~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\F3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \F3~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\G3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \G3~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\A4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \A4~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\B4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B4~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\C4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \C4~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\D4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \D4~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\E4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|N2X0~0_combout\,
	devoe => ww_devoe,
	o => \E4~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\F4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Decoder0~2_combout\,
	devoe => ww_devoe,
	o => \F4~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\G4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_N2X1~0_combout\,
	devoe => ww_devoe,
	o => \G4~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\N2X3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N2X3~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\N2X2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N2X2~output_o\);

-- Location: IOOBUF_X37_Y29_N16
\N2X1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|N2X1~0_combout\,
	devoe => ww_devoe,
	o => \N2X1~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\N2X0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|N2X0~0_combout\,
	devoe => ww_devoe,
	o => \N2X0~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\N1X0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|N1X3~0_combout\,
	devoe => ww_devoe,
	o => \N1X0~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\N1X1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|N1X2~0_combout\,
	devoe => ww_devoe,
	o => \N1X1~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\N1X2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|N1X1~0_combout\,
	devoe => ww_devoe,
	o => \N1X2~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\N1X3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst8|ALT_INV_inst~combout\,
	devoe => ww_devoe,
	o => \N1X3~output_o\);

-- Location: IOIBUF_X0_Y22_N15
\X1_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X1_2,
	o => \X1_2~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\X2_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X2_2,
	o => \X2_2~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\X3_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X3_2,
	o => \X3_2~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\X0_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X0_2,
	o => \X0_2~input_o\);

-- Location: LCCOMB_X23_Y28_N16
\inst1|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~0_combout\ = (\X2_2~input_o\ & (!\X1_2~input_o\ & (\X3_2~input_o\ $ (!\X0_2~input_o\)))) # (!\X2_2~input_o\ & (\X0_2~input_o\ & (\X1_2~input_o\ $ (!\X3_2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1_2~input_o\,
	datab => \X2_2~input_o\,
	datac => \X3_2~input_o\,
	datad => \X0_2~input_o\,
	combout => \inst1|WideOr0~0_combout\);

-- Location: LCCOMB_X23_Y28_N10
\inst1|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr1~0_combout\ = (\X1_2~input_o\ & ((\X0_2~input_o\ & ((\X3_2~input_o\))) # (!\X0_2~input_o\ & (\X2_2~input_o\)))) # (!\X1_2~input_o\ & (\X2_2~input_o\ & (\X3_2~input_o\ $ (\X0_2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1_2~input_o\,
	datab => \X2_2~input_o\,
	datac => \X3_2~input_o\,
	datad => \X0_2~input_o\,
	combout => \inst1|WideOr1~0_combout\);

-- Location: LCCOMB_X23_Y28_N12
\inst1|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr2~0_combout\ = (\X2_2~input_o\ & (\X3_2~input_o\ & ((\X1_2~input_o\) # (!\X0_2~input_o\)))) # (!\X2_2~input_o\ & (\X1_2~input_o\ & (!\X3_2~input_o\ & !\X0_2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1_2~input_o\,
	datab => \X2_2~input_o\,
	datac => \X3_2~input_o\,
	datad => \X0_2~input_o\,
	combout => \inst1|WideOr2~0_combout\);

-- Location: LCCOMB_X23_Y28_N22
\inst1|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr3~0_combout\ = (\X1_2~input_o\ & ((\X2_2~input_o\ & ((\X0_2~input_o\))) # (!\X2_2~input_o\ & (\X3_2~input_o\ & !\X0_2~input_o\)))) # (!\X1_2~input_o\ & (!\X3_2~input_o\ & (\X2_2~input_o\ $ (\X0_2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1_2~input_o\,
	datab => \X2_2~input_o\,
	datac => \X3_2~input_o\,
	datad => \X0_2~input_o\,
	combout => \inst1|WideOr3~0_combout\);

-- Location: LCCOMB_X23_Y28_N0
\inst1|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr4~0_combout\ = (\X1_2~input_o\ & (((!\X3_2~input_o\ & \X0_2~input_o\)))) # (!\X1_2~input_o\ & ((\X2_2~input_o\ & (!\X3_2~input_o\)) # (!\X2_2~input_o\ & ((\X0_2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1_2~input_o\,
	datab => \X2_2~input_o\,
	datac => \X3_2~input_o\,
	datad => \X0_2~input_o\,
	combout => \inst1|WideOr4~0_combout\);

-- Location: LCCOMB_X23_Y28_N2
\inst1|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr5~0_combout\ = (\X1_2~input_o\ & (!\X3_2~input_o\ & ((\X0_2~input_o\) # (!\X2_2~input_o\)))) # (!\X1_2~input_o\ & (\X0_2~input_o\ & (\X2_2~input_o\ $ (!\X3_2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1_2~input_o\,
	datab => \X2_2~input_o\,
	datac => \X3_2~input_o\,
	datad => \X0_2~input_o\,
	combout => \inst1|WideOr5~0_combout\);

-- Location: LCCOMB_X23_Y28_N4
\inst1|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr6~0_combout\ = (\X0_2~input_o\ & ((\X3_2~input_o\) # (\X1_2~input_o\ $ (\X2_2~input_o\)))) # (!\X0_2~input_o\ & ((\X1_2~input_o\) # (\X2_2~input_o\ $ (\X3_2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1_2~input_o\,
	datab => \X2_2~input_o\,
	datac => \X3_2~input_o\,
	datad => \X0_2~input_o\,
	combout => \inst1|WideOr6~0_combout\);

-- Location: IOIBUF_X0_Y23_N8
\X3_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X3_1,
	o => \X3_1~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\X2_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X2_1,
	o => \X2_1~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\X0_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X0_1,
	o => \X0_1~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\X1_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X1_1,
	o => \X1_1~input_o\);

-- Location: LCCOMB_X24_Y28_N0
\inst|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (\X3_1~input_o\ & (\X0_1~input_o\ & (\X2_1~input_o\ $ (\X1_1~input_o\)))) # (!\X3_1~input_o\ & (!\X1_1~input_o\ & (\X2_1~input_o\ $ (\X0_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X3_1~input_o\,
	datab => \X2_1~input_o\,
	datac => \X0_1~input_o\,
	datad => \X1_1~input_o\,
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X24_Y28_N2
\inst|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr1~0_combout\ = (\X3_1~input_o\ & ((\X0_1~input_o\ & ((\X1_1~input_o\))) # (!\X0_1~input_o\ & (\X2_1~input_o\)))) # (!\X3_1~input_o\ & (\X2_1~input_o\ & (\X0_1~input_o\ $ (\X1_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X3_1~input_o\,
	datab => \X2_1~input_o\,
	datac => \X0_1~input_o\,
	datad => \X1_1~input_o\,
	combout => \inst|WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y28_N4
\inst|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (\X3_1~input_o\ & (\X2_1~input_o\ & ((\X1_1~input_o\) # (!\X0_1~input_o\)))) # (!\X3_1~input_o\ & (!\X2_1~input_o\ & (!\X0_1~input_o\ & \X1_1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X3_1~input_o\,
	datab => \X2_1~input_o\,
	datac => \X0_1~input_o\,
	datad => \X1_1~input_o\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X24_Y28_N22
\inst|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (\X1_1~input_o\ & ((\X2_1~input_o\ & ((\X0_1~input_o\))) # (!\X2_1~input_o\ & (\X3_1~input_o\ & !\X0_1~input_o\)))) # (!\X1_1~input_o\ & (!\X3_1~input_o\ & (\X2_1~input_o\ $ (\X0_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X3_1~input_o\,
	datab => \X2_1~input_o\,
	datac => \X0_1~input_o\,
	datad => \X1_1~input_o\,
	combout => \inst|WideOr3~0_combout\);

-- Location: LCCOMB_X24_Y28_N8
\inst|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr4~0_combout\ = (\X1_1~input_o\ & (!\X3_1~input_o\ & ((\X0_1~input_o\)))) # (!\X1_1~input_o\ & ((\X2_1~input_o\ & (!\X3_1~input_o\)) # (!\X2_1~input_o\ & ((\X0_1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X3_1~input_o\,
	datab => \X2_1~input_o\,
	datac => \X0_1~input_o\,
	datad => \X1_1~input_o\,
	combout => \inst|WideOr4~0_combout\);

-- Location: LCCOMB_X24_Y28_N10
\inst|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr5~0_combout\ = (\X2_1~input_o\ & (\X0_1~input_o\ & (\X3_1~input_o\ $ (\X1_1~input_o\)))) # (!\X2_1~input_o\ & (!\X3_1~input_o\ & ((\X0_1~input_o\) # (\X1_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X3_1~input_o\,
	datab => \X2_1~input_o\,
	datac => \X0_1~input_o\,
	datad => \X1_1~input_o\,
	combout => \inst|WideOr5~0_combout\);

-- Location: LCCOMB_X24_Y28_N12
\inst|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr6~0_combout\ = (\X0_1~input_o\ & ((\X3_1~input_o\) # (\X2_1~input_o\ $ (\X1_1~input_o\)))) # (!\X0_1~input_o\ & ((\X1_1~input_o\) # (\X3_1~input_o\ $ (\X2_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X3_1~input_o\,
	datab => \X2_1~input_o\,
	datac => \X0_1~input_o\,
	datad => \X1_1~input_o\,
	combout => \inst|WideOr6~0_combout\);

-- Location: LCCOMB_X24_Y28_N24
\inst2|inst6|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst6|inst3~0_combout\ = (\X2_2~input_o\ & \X2_1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2_2~input_o\,
	datad => \X2_1~input_o\,
	combout => \inst2|inst6|inst3~0_combout\);

-- Location: LCCOMB_X24_Y28_N18
\inst2|inst7|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst7|inst3~0_combout\ = (\X1_2~input_o\ & ((\X0_2~input_o\) # ((\X0_1~input_o\) # (\X1_1~input_o\)))) # (!\X1_2~input_o\ & (\X1_1~input_o\ & ((\X0_2~input_o\) # (\X0_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1_2~input_o\,
	datab => \X0_2~input_o\,
	datac => \X0_1~input_o\,
	datad => \X1_1~input_o\,
	combout => \inst2|inst7|inst3~0_combout\);

-- Location: LCCOMB_X24_Y28_N28
\inst2|inst6|inst3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst6|inst3~1_combout\ = (\inst2|inst7|inst3~0_combout\ & ((\X2_2~input_o\) # (\X2_1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2_2~input_o\,
	datab => \X2_1~input_o\,
	datad => \inst2|inst7|inst3~0_combout\,
	combout => \inst2|inst6|inst3~1_combout\);

-- Location: LCCOMB_X24_Y28_N16
\inst2|inst|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst|inst3~0_combout\ = (\X3_1~input_o\ & ((\inst2|inst6|inst3~0_combout\) # ((\X3_2~input_o\) # (\inst2|inst6|inst3~1_combout\)))) # (!\X3_1~input_o\ & (\X3_2~input_o\ & ((\inst2|inst6|inst3~0_combout\) # (\inst2|inst6|inst3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X3_1~input_o\,
	datab => \inst2|inst6|inst3~0_combout\,
	datac => \X3_2~input_o\,
	datad => \inst2|inst6|inst3~1_combout\,
	combout => \inst2|inst|inst3~0_combout\);

-- Location: LCCOMB_X24_Y28_N30
\inst2|inst|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst|inst2~combout\ = \X3_1~input_o\ $ (\X3_2~input_o\ $ (((\inst2|inst6|inst3~0_combout\) # (\inst2|inst6|inst3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X3_1~input_o\,
	datab => \inst2|inst6|inst3~0_combout\,
	datac => \X3_2~input_o\,
	datad => \inst2|inst6|inst3~1_combout\,
	combout => \inst2|inst|inst2~combout\);

-- Location: LCCOMB_X24_Y28_N26
\inst2|inst6|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst6|inst2~0_combout\ = \X2_2~input_o\ $ (\X2_1~input_o\ $ (\inst2|inst7|inst3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2_2~input_o\,
	datab => \X2_1~input_o\,
	datad => \inst2|inst7|inst3~0_combout\,
	combout => \inst2|inst6|inst2~0_combout\);

-- Location: LCCOMB_X24_Y28_N20
\inst2|inst7|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst7|inst2~0_combout\ = \X1_2~input_o\ $ (\X1_1~input_o\ $ (((\X0_2~input_o\) # (\X0_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1_2~input_o\,
	datab => \X0_2~input_o\,
	datac => \X0_1~input_o\,
	datad => \X1_1~input_o\,
	combout => \inst2|inst7|inst2~0_combout\);

-- Location: LCCOMB_X30_Y28_N18
\inst4|N1X2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|N1X2~0_combout\ = (\inst2|inst|inst3~0_combout\ & ((\inst2|inst6|inst2~0_combout\ & (\inst2|inst|inst2~combout\)) # (!\inst2|inst6|inst2~0_combout\ & ((!\inst2|inst7|inst2~0_combout\))))) # (!\inst2|inst|inst3~0_combout\ & 
-- (\inst2|inst6|inst2~0_combout\ & ((\inst2|inst7|inst2~0_combout\) # (!\inst2|inst|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst3~0_combout\,
	datab => \inst2|inst|inst2~combout\,
	datac => \inst2|inst6|inst2~0_combout\,
	datad => \inst2|inst7|inst2~0_combout\,
	combout => \inst4|N1X2~0_combout\);

-- Location: LCCOMB_X30_Y28_N4
\inst4|N1X3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|N1X3~0_combout\ = (\inst2|inst|inst2~combout\ & (!\inst2|inst7|inst2~0_combout\ & (\inst2|inst|inst3~0_combout\ $ (!\inst2|inst6|inst2~0_combout\)))) # (!\inst2|inst|inst2~combout\ & (\inst2|inst|inst3~0_combout\ & (!\inst2|inst6|inst2~0_combout\ & 
-- \inst2|inst7|inst2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst3~0_combout\,
	datab => \inst2|inst|inst2~combout\,
	datac => \inst2|inst6|inst2~0_combout\,
	datad => \inst2|inst7|inst2~0_combout\,
	combout => \inst4|N1X3~0_combout\);

-- Location: LCCOMB_X24_Y28_N6
\inst2|inst8|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst8|inst~combout\ = \X0_1~input_o\ $ (\X0_2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X0_1~input_o\,
	datad => \X0_2~input_o\,
	combout => \inst2|inst8|inst~combout\);

-- Location: LCCOMB_X30_Y28_N8
\inst4|N1X1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|N1X1~0_combout\ = (\inst2|inst|inst2~combout\ & ((\inst2|inst6|inst2~0_combout\ & ((!\inst2|inst7|inst2~0_combout\))) # (!\inst2|inst6|inst2~0_combout\ & (\inst2|inst|inst3~0_combout\ & \inst2|inst7|inst2~0_combout\)))) # 
-- (!\inst2|inst|inst2~combout\ & ((\inst2|inst|inst3~0_combout\ & (!\inst2|inst6|inst2~0_combout\ & !\inst2|inst7|inst2~0_combout\)) # (!\inst2|inst|inst3~0_combout\ & ((\inst2|inst7|inst2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst3~0_combout\,
	datab => \inst2|inst|inst2~combout\,
	datac => \inst2|inst6|inst2~0_combout\,
	datad => \inst2|inst7|inst2~0_combout\,
	combout => \inst4|N1X1~0_combout\);

-- Location: LCCOMB_X30_Y28_N22
\inst6|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|WideOr0~0_combout\ = (\inst4|N1X2~0_combout\ & ((\inst4|N1X1~0_combout\) # (\inst4|N1X3~0_combout\ $ (!\inst2|inst8|inst~combout\)))) # (!\inst4|N1X2~0_combout\ & ((\inst2|inst8|inst~combout\) # (\inst4|N1X3~0_combout\ $ (\inst4|N1X1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|N1X2~0_combout\,
	datab => \inst4|N1X3~0_combout\,
	datac => \inst2|inst8|inst~combout\,
	datad => \inst4|N1X1~0_combout\,
	combout => \inst6|WideOr0~0_combout\);

-- Location: LCCOMB_X30_Y28_N0
\inst6|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|WideOr1~0_combout\ = (\inst4|N1X3~0_combout\ & ((\inst2|inst8|inst~combout\ & (\inst4|N1X2~0_combout\)) # (!\inst2|inst8|inst~combout\ & ((\inst4|N1X1~0_combout\))))) # (!\inst4|N1X3~0_combout\ & (\inst4|N1X2~0_combout\ & 
-- (\inst2|inst8|inst~combout\ $ (!\inst4|N1X1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|N1X2~0_combout\,
	datab => \inst4|N1X3~0_combout\,
	datac => \inst2|inst8|inst~combout\,
	datad => \inst4|N1X1~0_combout\,
	combout => \inst6|WideOr1~0_combout\);

-- Location: LCCOMB_X30_Y28_N2
\inst6|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|WideOr2~0_combout\ = (\inst4|N1X2~0_combout\ & (\inst4|N1X3~0_combout\ & ((\inst2|inst8|inst~combout\) # (\inst4|N1X1~0_combout\)))) # (!\inst4|N1X2~0_combout\ & (!\inst4|N1X3~0_combout\ & (\inst2|inst8|inst~combout\ & \inst4|N1X1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|N1X2~0_combout\,
	datab => \inst4|N1X3~0_combout\,
	datac => \inst2|inst8|inst~combout\,
	datad => \inst4|N1X1~0_combout\,
	combout => \inst6|WideOr2~0_combout\);

-- Location: LCCOMB_X30_Y28_N28
\inst6|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|WideOr3~0_combout\ = (\inst4|N1X1~0_combout\ & ((\inst4|N1X2~0_combout\ & ((\inst2|inst8|inst~combout\))) # (!\inst4|N1X2~0_combout\ & ((!\inst2|inst8|inst~combout\) # (!\inst4|N1X3~0_combout\))))) # (!\inst4|N1X1~0_combout\ & 
-- ((\inst4|N1X3~0_combout\) # (\inst4|N1X2~0_combout\ $ (\inst2|inst8|inst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|N1X2~0_combout\,
	datab => \inst4|N1X3~0_combout\,
	datac => \inst2|inst8|inst~combout\,
	datad => \inst4|N1X1~0_combout\,
	combout => \inst6|WideOr3~0_combout\);

-- Location: LCCOMB_X30_Y28_N14
\inst6|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|WideOr4~0_combout\ = (\inst4|N1X1~0_combout\ & (((\inst4|N1X3~0_combout\) # (\inst2|inst8|inst~combout\)))) # (!\inst4|N1X1~0_combout\ & ((\inst4|N1X2~0_combout\ & (\inst4|N1X3~0_combout\)) # (!\inst4|N1X2~0_combout\ & 
-- ((\inst2|inst8|inst~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|N1X2~0_combout\,
	datab => \inst4|N1X3~0_combout\,
	datac => \inst2|inst8|inst~combout\,
	datad => \inst4|N1X1~0_combout\,
	combout => \inst6|WideOr4~0_combout\);

-- Location: LCCOMB_X30_Y28_N16
\inst6|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|WideOr5~0_combout\ = (\inst4|N1X2~0_combout\ & ((\inst2|inst8|inst~combout\) # (\inst4|N1X3~0_combout\ $ (!\inst4|N1X1~0_combout\)))) # (!\inst4|N1X2~0_combout\ & ((\inst4|N1X3~0_combout\) # ((\inst2|inst8|inst~combout\ & 
-- !\inst4|N1X1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|N1X2~0_combout\,
	datab => \inst4|N1X3~0_combout\,
	datac => \inst2|inst8|inst~combout\,
	datad => \inst4|N1X1~0_combout\,
	combout => \inst6|WideOr5~0_combout\);

-- Location: LCCOMB_X30_Y28_N26
\inst6|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|WideOr6~0_combout\ = (\inst2|inst8|inst~combout\ & ((\inst4|N1X1~0_combout\) # (\inst4|N1X2~0_combout\ $ (\inst4|N1X3~0_combout\)))) # (!\inst2|inst8|inst~combout\ & ((\inst4|N1X3~0_combout\) # (\inst4|N1X2~0_combout\ $ (\inst4|N1X1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|N1X2~0_combout\,
	datab => \inst4|N1X3~0_combout\,
	datac => \inst2|inst8|inst~combout\,
	datad => \inst4|N1X1~0_combout\,
	combout => \inst6|WideOr6~0_combout\);

-- Location: LCCOMB_X30_Y28_N12
\inst5|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~0_combout\ = (\inst2|inst|inst3~0_combout\ & (!\inst2|inst|inst2~combout\ & (!\inst2|inst6|inst2~0_combout\))) # (!\inst2|inst|inst3~0_combout\ & (\inst2|inst|inst2~combout\ & ((\inst2|inst6|inst2~0_combout\) # 
-- (\inst2|inst7|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst3~0_combout\,
	datab => \inst2|inst|inst2~combout\,
	datac => \inst2|inst6|inst2~0_combout\,
	datad => \inst2|inst7|inst2~0_combout\,
	combout => \inst5|Decoder0~0_combout\);

-- Location: LCCOMB_X30_Y28_N30
\inst5|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~1_combout\ = (\inst2|inst|inst3~0_combout\ & ((\inst2|inst|inst2~combout\ & ((!\inst2|inst7|inst2~0_combout\) # (!\inst2|inst6|inst2~0_combout\))) # (!\inst2|inst|inst2~combout\ & (\inst2|inst6|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst3~0_combout\,
	datab => \inst2|inst|inst2~combout\,
	datac => \inst2|inst6|inst2~0_combout\,
	datad => \inst2|inst7|inst2~0_combout\,
	combout => \inst5|Decoder0~1_combout\);

-- Location: LCCOMB_X30_Y28_N24
\inst4|N2X0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|N2X0~0_combout\ = (\inst2|inst|inst3~0_combout\ & ((\inst2|inst|inst2~combout\ & (\inst2|inst6|inst2~0_combout\ & \inst2|inst7|inst2~0_combout\)) # (!\inst2|inst|inst2~combout\ & (!\inst2|inst6|inst2~0_combout\)))) # (!\inst2|inst|inst3~0_combout\ 
-- & (\inst2|inst|inst2~combout\ & ((\inst2|inst6|inst2~0_combout\) # (\inst2|inst7|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst3~0_combout\,
	datab => \inst2|inst|inst2~combout\,
	datac => \inst2|inst6|inst2~0_combout\,
	datad => \inst2|inst7|inst2~0_combout\,
	combout => \inst4|N2X0~0_combout\);

-- Location: LCCOMB_X30_Y28_N10
\inst5|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~2_combout\ = (\inst2|inst|inst3~0_combout\) # ((\inst2|inst|inst2~combout\ & ((\inst2|inst6|inst2~0_combout\) # (\inst2|inst7|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst3~0_combout\,
	datab => \inst2|inst|inst2~combout\,
	datac => \inst2|inst6|inst2~0_combout\,
	datad => \inst2|inst7|inst2~0_combout\,
	combout => \inst5|Decoder0~2_combout\);

-- Location: LCCOMB_X30_Y28_N20
\inst4|N2X1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|N2X1~0_combout\ = (\inst2|inst|inst3~0_combout\ & ((\inst2|inst6|inst2~0_combout\) # (\inst2|inst|inst2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst3~0_combout\,
	datac => \inst2|inst6|inst2~0_combout\,
	datad => \inst2|inst|inst2~combout\,
	combout => \inst4|N2X1~0_combout\);

ww_A2 <= \A2~output_o\;

ww_B2 <= \B2~output_o\;

ww_C2 <= \C2~output_o\;

ww_D2 <= \D2~output_o\;

ww_E2 <= \E2~output_o\;

ww_F2 <= \F2~output_o\;

ww_G2 <= \G2~output_o\;

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_F <= \F~output_o\;

ww_G <= \G~output_o\;

ww_A3 <= \A3~output_o\;

ww_B3 <= \B3~output_o\;

ww_C3 <= \C3~output_o\;

ww_D3 <= \D3~output_o\;

ww_E3 <= \E3~output_o\;

ww_F3 <= \F3~output_o\;

ww_G3 <= \G3~output_o\;

ww_A4 <= \A4~output_o\;

ww_B4 <= \B4~output_o\;

ww_C4 <= \C4~output_o\;

ww_D4 <= \D4~output_o\;

ww_E4 <= \E4~output_o\;

ww_F4 <= \F4~output_o\;

ww_G4 <= \G4~output_o\;

ww_N2X3 <= \N2X3~output_o\;

ww_N2X2 <= \N2X2~output_o\;

ww_N2X1 <= \N2X1~output_o\;

ww_N2X0 <= \N2X0~output_o\;

ww_N1X0 <= \N1X0~output_o\;

ww_N1X1 <= \N1X1~output_o\;

ww_N1X2 <= \N1X2~output_o\;

ww_N1X3 <= \N1X3~output_o\;
END structure;


