module GPIO_Peripheral(Read_In,Load_Out,Load_DIR,clk,reset,addressbus,databus,IO,R_IN,R_OUT,R_DIR,IN_TEST,OUT_TEST);

input Read_In,Load_Out,Load_DIR,clk,reset;
input [7:0] addressbus;
inout [15:0] databus, IO;
output [15:0] R_IN,R_OUT,R_DIR;
output IN_TEST,OUT_TEST;

wire IN;
wire OUT;
wire DIR;
wire NOT_reset;

assign NOT_reset = ~ reset;
assign IN_TEST = IN;
assign OUT_TEST = OUT;


// address parameters
parameter ADDRESS_IN = 8'b00000100;
parameter ADDRESS_OUT = 8'b00000101;
parameter ADDRESS_DIR = 8'b00000110;


// address detection circuits
wire in_address, out_address, dir_address;
assign in_address = (addressbus == ADDRESS_IN) ? 1'b1 : 1'b0;
assign out_address = (addressbus == ADDRESS_OUT) ? 1'b1 : 1'b0;
assign dir_address = (addressbus == ADDRESS_DIR) ? 1'b1 : 1'b0;

// AND gates with address detection
assign IN = in_address && Read_In;
assign OUT = out_address && Load_Out;
assign DIR = dir_address && Load_DIR;

// tri-state buffers
wire [15:0] Q_DIR, Q_OUT, Q_IN;
wire [15:0] D_DIR, D_OUT, D_IN;

assign IO = Q_DIR ? Q_OUT : 16'bz;
assign databus = IN ? Q_IN : 16'bz;

//assign D_IN = Read_In ? IO : 16'bz;
//assign D_OUT = Load_Out ? databus : 16'bz;
//assign D_DIR = Load_DIR ? databus : 16'bz;

assign R_IN = Q_IN;
assign R_OUT = Q_OUT;
assign R_DIR = Q_DIR;

reg_16bit in0(clk, 1'b1, IO, NOT_reset, Q_IN);
reg_16bit out0(clk, OUT, databus, NOT_reset, Q_OUT);
reg_16bit dir0(clk, DIR, databus, NOT_reset, Q_DIR);



endmodule