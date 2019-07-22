module ControlUnit(reset,clock,status,IR,ControlWord);

input reset,clock;
input [3:0] status;
input [15:0] IR;
output[46:0] ControlWord;

wire [46:0] IF_WIRE,EX0_WIRE,EX1_WIRE;
wire [1:0] STATE_SEL;

ControlUnitIF IF(IF_WIRE);
ControlUnitEX0 EX0(status,EX0_WIRE,IR);
ControlUnitEX1 EX1(EX1_WIRE,IR,status);

Mux4to148bit Mux(ControlWord, STATE_SEL, IF_WIRE,EX0_WIRE, EX1_WIRE, 47'bz);

ControlState ControlState (reset,clock,STATE_SEL,ControlWord[46:45]);

endmodule

