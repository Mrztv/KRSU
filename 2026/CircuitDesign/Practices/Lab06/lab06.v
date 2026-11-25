// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
// CREATED		"Tue Nov 24 01:00:32 2026"

module lab06(
	X0_2,
	X1_2,
	X2_2,
	X3_2,
	X0_1,
	X1_1,
	X2_1,
	X3_1,
	A2,
	B2,
	C2,
	D2,
	E2,
	F2,
	G2,
	A,
	B,
	C,
	D,
	E,
	F,
	G,
	A3,
	B3,
	C3,
	D3,
	E3,
	F3,
	G3,
	A4,
	B4,
	C4,
	D4,
	E4,
	F4,
	G4
);


input wire	X0_2;
input wire	X1_2;
input wire	X2_2;
input wire	X3_2;
input wire	X0_1;
input wire	X1_1;
input wire	X2_1;
input wire	X3_1;
output wire	A2;
output wire	B2;
output wire	C2;
output wire	D2;
output wire	E2;
output wire	F2;
output wire	G2;
output wire	A;
output wire	B;
output wire	C;
output wire	D;
output wire	E;
output wire	F;
output wire	G;
output wire	A3;
output wire	B3;
output wire	C3;
output wire	D3;
output wire	E3;
output wire	F3;
output wire	G3;
output wire	A4;
output wire	B4;
output wire	C4;
output wire	D4;
output wire	E4;
output wire	F4;
output wire	G4;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;





seven_seg_decoder	b2v_inst(
	.X0(X0_1),
	.X1(X1_1),
	.X2(X2_1),
	.X3(X3_1),
	.A(A),
	.B(B),
	.C(C),
	.D(D),
	.E(E),
	.F(F),
	.G(G));


seven_seg_decoder	b2v_inst1(
	.X0(X0_2),
	.X1(X1_2),
	.X2(X2_2),
	.X3(X3_2),
	.A(A2),
	.B(B2),
	.C(C2),
	.D(D2),
	.E(E2),
	.F(F2),
	.G(G2));


adder_4bit	b2v_inst2(
	.X3(X3_1),
	.Y3(X3_2),
	.X2(X2_1),
	.Y2(X2_2),
	.X1(X1_1),
	.Y1(X1_2),
	.X0(X0_1),
	.Y0(X0_2),
	
	.S0(SYNTHESIZED_WIRE_0),
	.S1(SYNTHESIZED_WIRE_1),
	.S2(SYNTHESIZED_WIRE_2),
	.S3(SYNTHESIZED_WIRE_3),
	.Co(SYNTHESIZED_WIRE_4));


bcd_converter	b2v_inst4(
	.S0(SYNTHESIZED_WIRE_0),
	.S1(SYNTHESIZED_WIRE_1),
	.S2(SYNTHESIZED_WIRE_2),
	.S3(SYNTHESIZED_WIRE_3),
	.C0(SYNTHESIZED_WIRE_4),
	.N2X3(SYNTHESIZED_WIRE_8),
	.N2X2(SYNTHESIZED_WIRE_7),
	.N2X1(SYNTHESIZED_WIRE_6),
	.N2X0(SYNTHESIZED_WIRE_5),
	.N1X3(SYNTHESIZED_WIRE_12),
	.N1X2(SYNTHESIZED_WIRE_11),
	.N1X1(SYNTHESIZED_WIRE_10),
	.N1X0(SYNTHESIZED_WIRE_9));


seven_seg_decoder	b2v_inst5(
	.X0(SYNTHESIZED_WIRE_5),
	.X1(SYNTHESIZED_WIRE_6),
	.X2(SYNTHESIZED_WIRE_7),
	.X3(SYNTHESIZED_WIRE_8),
	.A(A4),
	.B(B4),
	.C(C4),
	.D(D4),
	.E(E4),
	.F(F4),
	.G(G4));


seven_seg_decoder	b2v_inst6(
	.X0(SYNTHESIZED_WIRE_9),
	.X1(SYNTHESIZED_WIRE_10),
	.X2(SYNTHESIZED_WIRE_11),
	.X3(SYNTHESIZED_WIRE_12),
	.A(A3),
	.B(B3),
	.C(C3),
	.D(D3),
	.E(E3),
	.F(F3),
	.G(G3));


endmodule
