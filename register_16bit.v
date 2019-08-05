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
// CREATED		"Tue Jun 11 17:57:45 2019"

module register_16bit(
	not_reset1,
	Clk1,
	load1,
	D1,
	Q1
);


input wire	not_reset1;
input wire	Clk1;
input wire	load1;
input wire	[15:0] D1;
output wire	[15:0] Q1;

reg	[15:0] Q_ALTERA_SYNTHESIZED1;
wire	SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_16 = 1;




always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[12] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[12] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[12] <= D1[12];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[6] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[6] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[6] <= D1[6];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[4] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[4] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[4] <= D1[4];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[2] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[2] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[2] <= D1[2];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[0] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[0] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[0] <= D1[0];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[1] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[1] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[1] <= D1[1];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[3] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[3] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[3] <= D1[3];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[5] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[5] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[5] <= D1[5];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[7] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[7] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[7] <= D1[7];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[9] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[9] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[9] <= D1[9];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[11] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[11] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[11] <= D1[11];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[13] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[13] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[13] <= D1[13];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[15] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[15] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[15] <= D1[15];
	end
end



always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[14] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[14] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[14] <= D1[14];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[10] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[10] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[10] <= D1[10];
	end
end


always@(posedge Clk1 or negedge not_reset1 or negedge SYNTHESIZED_WIRE_16)
begin
if (!not_reset1)
	begin
	Q_ALTERA_SYNTHESIZED1[8] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	Q_ALTERA_SYNTHESIZED1[8] <= 1;
	end
else
if (load1)
	begin
	Q_ALTERA_SYNTHESIZED1[8] <= D1[8];
	end
end

assign	Q1 = Q_ALTERA_SYNTHESIZED1;

endmodule
