module register_file_tb;

reg clock, reset, write;
reg [3:0] AA, BA, DA;
reg [15:0] D;
wire [15:0] A, B, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, RA, RB, RC, RD, RE, RF;

register_file dut( 
.WR(write),
.Clock(clock),
.Reset(reset),
.AA(AA),
.BA(BA),
.D(D),
.DA(DA),
.A(A),
.B(B),
.R0(R0),
.R1(R1),
.R2(R2),
.R3(R3),
.R4(R4),
.R5(R5),
.R6(R6),
.R7(R7),
.R8(R8),
.R9(R9),
.RA(RA),
.RB(RB),
.RC(RC),
.RD(RD),
.RE(RE),
.RF(RF)

);

// generate clock
	initial
	begin
		
		clock <= 1'b0;
		forever
		#10 clock = ~clock;
	end


// stimulus
initial begin
	
	//reset = 1'b1;
	//#2 reset = 1'b0;
	DA = 4'd0;
	AA = 1'b0;
	BA = 4'b0;
	write = 1'b0;
	
	forever begin
	D = $random;
	
	#50 write = 1'b1;
	#20 DA = 4'd1;
	#20 DA = 4'd2;
	#20 DA = 4'd3;
	#20 DA = 4'd4;
	#20 DA = 4'd5;
	#20 DA = 4'd6;
	#20 DA = 4'd7;
	#20 DA = 4'd8;
	#20 DA = 4'd9;
	#20 DA = 4'd10;
	#20 DA = 4'd11;
	#20 DA = 4'd12;
	#20 DA = 4'd13;
	#20 DA = 4'd14;
	#20 DA = 4'd15;
	#20 DA = 4'd1;
	
	
	
	
	
	#1000 $stop;
	

	
		// each 20 steps new random numbers will be inputed 
		//#20 D = $random;
		//DA = DA + 4'b1;  // sequence through destination addresses
		//AA = $random;
		//BA = $random;
		//write = $random;
	
		end
	end
	

	
endmodule
	 
	
	
	
	
