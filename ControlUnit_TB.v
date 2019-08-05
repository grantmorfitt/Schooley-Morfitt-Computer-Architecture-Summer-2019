module ControlUnit_TB();
reg clock, reset;
reg [3:0] status;
reg [15:0] IR;
wire [46:0] ControlWord;

ControlUnit dut(reset, clock, status, IR, ControlWord);

initial begin
        clock <= 1'b0;
        forever
        #15 clock = ~clock;
          
end
          
 initial begin
    status <= 4'b0;
    IR <= 16'b0101110100011010 ; // OR R[3] and R[2] and store on R[4]
    #50
    IR <= 16'b0000110000000101 ; // R[4]← R[4] + 16'd5
    #50
    IR <= 16'b1111000000000111; // R[6]← 16'd7
    #50
    IR <= 16'b1011110100000000; // Cond.R[5] == NEG (BRN)
    #50
    IR <= 16'b10111xxx00000000; // PC← PC+ se AD (BRN)
    
    #100 $stop;
    
    end
endmodule