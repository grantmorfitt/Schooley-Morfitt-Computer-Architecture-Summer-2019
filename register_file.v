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
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Mon Jul 15 20:39:21 2019"

module register_file(
	WR,
	Clock,
	Reset,
	AA,
	BA,
	D,
	DA,
	A,
	B,
	R0,
	R1,
	R2,
	R3,
	R4,
	R5,
	R6,
	R7
);


input wire	WR;
input wire	Clock;
input wire	Reset;
input wire	[2:0] AA;
input wire	[2:0] BA;
input wire	[15:0] D;
input wire	[2:0] DA;
output wire	[15:0] A;
output wire	[15:0] B;
output wire	[15:0] R0;
output wire	[15:0] R1;
output wire	[15:0] R2;
output wire	[15:0] R3;
output wire	[15:0] R4;
output wire	[15:0] R5;
output wire	[15:0] R6;
output wire	[15:0] R7;

wire	[15:0] R_ALTERA_SYNTHESIZED0;
wire	[15:0] R_ALTERA_SYNTHESIZED1;
wire	[15:0] R_ALTERA_SYNTHESIZED2;
wire	[15:0] R_ALTERA_SYNTHESIZED3;
wire	[15:0] R_ALTERA_SYNTHESIZED4;
wire	[15:0] R_ALTERA_SYNTHESIZED5;
wire	[15:0] R_ALTERA_SYNTHESIZED6;
wire	[15:0] R_ALTERA_SYNTHESIZED7;
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
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_0 = 1;




Four_x_sixteen_decoder	b2v_inst(
	.enable(SYNTHESIZED_WIRE_0),
	.select(DA),
	.out0(SYNTHESIZED_WIRE_4),
	.out1(SYNTHESIZED_WIRE_5),
	.out2(SYNTHESIZED_WIRE_6),
	.out3(SYNTHESIZED_WIRE_7),
	.out4(SYNTHESIZED_WIRE_8),
	.out5(SYNTHESIZED_WIRE_9),
	.out6(SYNTHESIZED_WIRE_10),
	.out7(SYNTHESIZED_WIRE_11));



reg_16bit	b2v_inst10(
	.clk(Clock),
	.enable(SYNTHESIZED_WIRE_1),
	.reset(Reset),
	.d(D),
	.q(R_ALTERA_SYNTHESIZED5));


reg_16bit	b2v_inst11(
	.clk(Clock),
	.enable(SYNTHESIZED_WIRE_2),
	.reset(Reset),
	.d(D),
	.q(R_ALTERA_SYNTHESIZED6));


reg_16bit	b2v_inst12(
	.clk(Clock),
	.enable(SYNTHESIZED_WIRE_3),
	.reset(Reset),
	.d(D),
	.q(R_ALTERA_SYNTHESIZED7));

assign	SYNTHESIZED_WIRE_12 = WR & SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_13 = WR & SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_14 = WR & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_15 = WR & SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_16 = WR & SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_1 = WR & SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_2 = WR & SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_3 = WR & SYNTHESIZED_WIRE_11;


sixteen_to_one_mux16bit	b2v_inst3(
	.clock(Clock),
	.m0(R_ALTERA_SYNTHESIZED0),
	.m1(R_ALTERA_SYNTHESIZED1),
	.m2(R_ALTERA_SYNTHESIZED2),
	.m3(R_ALTERA_SYNTHESIZED3),
	.m4(R_ALTERA_SYNTHESIZED4),
	.m5(R_ALTERA_SYNTHESIZED5),
	.m6(R_ALTERA_SYNTHESIZED6),
	.m7(R_ALTERA_SYNTHESIZED7),
	.select(BA),
	.ans(B));


sixteen_to_one_mux16bit	b2v_inst4(
	.clock(Clock),
	.m0(R_ALTERA_SYNTHESIZED0),
	.m1(R_ALTERA_SYNTHESIZED1),
	.m2(R_ALTERA_SYNTHESIZED2),
	.m3(R_ALTERA_SYNTHESIZED3),
	.m4(R_ALTERA_SYNTHESIZED4),
	.m5(R_ALTERA_SYNTHESIZED5),
	.m6(R_ALTERA_SYNTHESIZED6),
	.m7(R_ALTERA_SYNTHESIZED7),
	.select(AA),
	.ans(A));


reg_16bit	b2v_inst5(
	.clk(Clock),
	.enable(SYNTHESIZED_WIRE_12),
	.reset(Reset),
	.d(D),
	.q(R_ALTERA_SYNTHESIZED0));


reg_16bit	b2v_inst6(
	.clk(Clock),
	.enable(SYNTHESIZED_WIRE_13),
	.reset(Reset),
	.d(D),
	.q(R_ALTERA_SYNTHESIZED1));


reg_16bit	b2v_inst7(
	.clk(Clock),
	.enable(SYNTHESIZED_WIRE_14),
	.reset(Reset),
	.d(D),
	.q(R_ALTERA_SYNTHESIZED2));


reg_16bit	b2v_inst8(
	.clk(Clock),
	.enable(SYNTHESIZED_WIRE_15),
	.reset(Reset),
	.d(D),
	.q(R_ALTERA_SYNTHESIZED3));


reg_16bit	b2v_inst9(
	.clk(Clock),
	.enable(SYNTHESIZED_WIRE_16),
	.reset(Reset),
	.d(D),
	.q(R_ALTERA_SYNTHESIZED4));

assign	R0 = R_ALTERA_SYNTHESIZED0;
assign	R1 = R_ALTERA_SYNTHESIZED1;
assign	R2 = R_ALTERA_SYNTHESIZED2;
assign	R3 = R_ALTERA_SYNTHESIZED3;
assign	R4 = R_ALTERA_SYNTHESIZED4;
assign	R5 = R_ALTERA_SYNTHESIZED5;
assign	R6 = R_ALTERA_SYNTHESIZED6;
assign	R7 = R_ALTERA_SYNTHESIZED7;

endmodule