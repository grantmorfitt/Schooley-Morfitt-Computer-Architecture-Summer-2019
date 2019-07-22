module InstructionRegister(clk, enable, d, reset, q);

input clk;
input enable;
input reset;
input [15:0] d;
output reg [15:0] q;

always @ (posedge clk or posedge reset)
begin
    if (reset == 1) begin
        q <= 0;
    end else if (enable == 1) begin
        q <= d;
    end
end                
endmodule