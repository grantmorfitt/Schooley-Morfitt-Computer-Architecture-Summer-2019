module sixteen_to_one_mux16bit (select, m0,m1,m2,m3,m4,m5,m6,m7,clock, ans);

input[2:0] select;
input[15:0] m0;
input[15:0] m1;
input[15:0] m2;
input[15:0] m3;
input[15:0] m4;
input[15:0] m5;
input[15:0] m6;
input[15:0] m7;

input clock;

output reg[15:0] ans;

wire[2:0] select;

wire clk;
assign clk = ~clock;

always @(*)


begin
	case(select)
	
 3'b000 : ans = m0;
 3'b001 : ans = m1;
 3'b010 : ans = m2;
 3'b011 : ans = m3;
 3'b100 : ans = m4;
 3'b101 : ans = m5;
 3'b110 : ans = m6;
 3'b111 : ans = m7;
 
	endcase
end

endmodule