module Four_x_sixteen_decoder(select, enable, out0, out1, out2, out3, out4, out5, out6, out7);

input [2:0] select;
input enable;
output reg out0;
output reg out1;
output reg out2;
output reg out3;
output reg out4;
output reg out5;
output reg out6;
output reg out7;


always @(select or enable)begin

	if(enable)
	begin
	{out0, out1, out2, out3, out4, out5, out6, out7} = 1'b0;
	
		case(select)
		3'b000: out0=1'b1;
		3'b001: out1=1'b1;
		3'b010: out2=1'b1;
		3'b011: out3=1'b1;
		3'b100: out4=1'b1;
		3'b101: out5=1'b1;
		3'b110: out6=1'b1;
		3'b111: out7=1'b1;
	
		default {out0, out1, out2, out3, out4, out5, out6, out7} = 1'b0;
		endcase
	end
	else
	{out0, out1, out2, out3, out4, out5, out6, out7} = 1'b0;
end



endmodule