module ControlState(reset,clock,out,in);
input reset,clock;
input [1:0]in;
output reg [1:0] out;


always @ (posedge clock) begin

case (in)

	2'b00 : out = in; //IF
	
	2'b01 : out = in; //EX0
	
	2'b10 : out = in; //EX1
	
	default : out = 2'b00;
	
endcase

end




endmodule
