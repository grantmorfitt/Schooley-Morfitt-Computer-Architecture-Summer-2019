module datapath(addressbus_VIZ,databus_VIZ,AA,BA,DA,WR,FS,C0,reset,status,clk,R0,R1,R2,R3,R4,R5,R6,R7,K,PCSEL,PS,EN_ALU,EN_ADDRESS_ALU,IR_EN,IR_OUT,ENADDRESS_PC,EN_PC,MW,MR,BSEL,ROM_EN,EN_B);

//----------Input | Outputs----------
input [2:0] AA,BA,DA;
input [4:0] FS;
input [1:0] PS;
input [15:0] K;
input C0,reset,clk,WR,EN_ALU,EN_ADDRESS_ALU,IR_EN,MW,MR,PCSEL,ENADDRESS_PC,EN_PC,BSEL,ROM_EN,EN_B;

output [3:0]status;
output [15:0] R0,R1,R2,R3,R4,R5,R6,R7; //Visualization of the individual registers
output [15:0] IR_OUT; //Output of the IR to the Control Unit

//----TESTING SIGNALS
output [15:0]addressbus_VIZ;
output [15:0]databus_VIZ;
//-----------------------------------

wire [15:0] A,B,BBusWire,F; // ALU | REG datapath wires

wire [15:0] datapath;

wire [15:0] addressbus;		//Eight bit address bus

assign addressbus_VIZ = addressbus;
assign databus_VIZ = datapath;

ALU_LEGv8 ALU(A, BBusWire, FS, C0, F , status); //output of ALU is F which feeds into the below tri-state buffers


assign BBusWire = BSEL ? K : B; 

assign datapath = EN_ALU ? F : 16'dz; //Enable ALU tri-state buffer(DATAPATH)

assign addressbus = EN_ADDRESS_ALU ? F : 8'dz; //EN ALU to Address Bus(ADDRES_BUS)

assign datapath = EN_B ? B : 16'dz;

register_file RegisterInst(WR,clk,reset,AA,BA,datapath,DA,A,B,R0,R1,R2,R3,R4,R5,R6,R7);

InstructionRegister InstructionRegisterInst(clk, IR_EN, datapath, reset, IR_OUT);

ram RAMInst(clk,addressbus[7:0],datapath,1'b1 ,MW,MR);


//--------Program Counter wires and things below-----//
wire [15:0]PCIN, PCOUT;

assign PCIN = PCSEL ? K : A;

assign datapath = EN_PC ? PCOUT : 16'bz;

assign addressbus = ENADDRESS_PC ? PCOUT : 16'bz;

ProgramCounter ProgramCounterInst(PCOUT, PCIN, PS, clk, reset);
//----------ROM BELOW--------------
wire [15:0] ROM_WIRE_OUT;

assign datapath = ROM_EN ? ROM_WIRE_OUT : 16'bz;

rom ROMInst(ROM_WIRE_OUT,addressbus[7:0]);
	
endmodule

