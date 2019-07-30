module GPIO_CASE(address, out);
//Tristate is on the output of this romcase.
  input  [7:0] address;
  output reg [15:0] out;
  always @(address) //Update block whenever address changes
  begin
	 case (address)
		8'h00:  out = 16'b1010100000000100; // [ST] Calls address to activate R_IN by 					
		8'h01:  out = 16'b1010000000000100; // [LDI] Reads the memory and write to R0
		8'h02:  out = 16'b1100100000001101; // [LRI] Write value to R1 (12)
		8'h03:  out = 16'b1010100100000110; // [STI] Write R1 to address 6 to activate R_DIR
		8'h05:  out = 16'b1101000000000110; // [LRI] Write value to R2 (6)
		8'h06:  out = 16'b1010101000000101; // [STI] Write R2 to address 5 for R_OUT
		
		default: out =16'b0000000000000000;
	 endcase
  end
  
endmodule