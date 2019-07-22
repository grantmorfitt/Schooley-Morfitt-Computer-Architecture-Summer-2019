module ControlUnitIF(ControlWord);

output [46:0] ControlWord;

assign ControlWord = {2'b01,3'b000,3'b000,3'b000,5'b00000,1'b0,1'b0,1'b1,1'b0,1'b0,2'b00,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,16'b0,1'b0};

//assign ControlWord = {2'b00,3'bxxx,3'bxxx,3'bxxx,5'bxxxxx,1'b0,1'b0,1'b1,1'b0,1'b1,2'b10,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,16'd12,1'b0};


//This is JUMP to test if this BULLSHIT
//assign ControlWord = {2'b00,3'd4,3'bxxx,3'bxxx,5'bxxxxx,1'b0,1'bx,1'b1,1'bx,1'b0,2'b10,1'b0,1'b1,1'bx,1'b1,1'b0,1'b0,1'b1,16'bx,1'b0};

endmodule

module Mux4to148bit(F, S, I0, I1, I2, I3);
	parameter N = 47;
	input [N-1:0]I0, I1, I2, I3;
	input [1:0]S;
	output [N-1:0]F;
	
	assign F = S[1] ? (S[0] ? I3 : I2) : (S[0] ? I1 : I0);
	
endmodule



