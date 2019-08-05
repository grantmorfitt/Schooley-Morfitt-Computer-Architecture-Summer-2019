module Datapath_tb;

reg clock;
wire WR, C0, reset;
reg [34:0]ControlWord; //YOU GOTTA SET THESE BITS DUMBO
reg [15:0]K; //We'll manually set the constant for now
wire [3:0] SA, SB, DA;
wire [2:0] NS;
wire [4:0] FS;
wire [3:0] status;
wire [15:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,IR_OUT;
wire [1:0] PS;
wire PCSEL,EN_ALU,ENADDRESS_ALU,IR_EN,ENADDRESS_PC,EN_PC,MW,MR,BSEL,ROM_EN,EN_B;

datapath DataPath_tb(SA,SB,DA,WR,FS,C0,reset,status,clock,R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,RA,RB,RC,RD,RE,RF,K,PCSEL,PS,EN_ALU,ENADDRESS_ALU,IR_EN,IR_OUT,ENADDRESS_PC,EN_PC, MW, MR, BSEL,ROM_EN,EN_B,NS);

assign {NS,SA,SB,DA,WR,FS,C0,reset,PCSEL,PS,EN_ALU,ENADDRESS_ALU,IR_EN,ENADDRESS_PC,EN_PC,MW,MR,BSEL,ROM_EN} = ControlWord;

initial begin
        clock <= 1'b0;
        forever
        #10 clock = ~clock;
end


initial begin

//SA,SB,DA,WR,FS,C0,reset,PCSEL,PS,EN_ALU,ENADDRESS_ALU,IR_EN,ENADDRESS_PC,EN_PC,MW,MR,BSEL,ROM_EN
ControlWord <= {2'b00,4'b0000, 4'b0000,4'b0000,1'b0,5'b00000, 1'b1 ,1'b1,1'b0,2'b00, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}; //RESET 

#30

K = 16'd12; //It's divisible by four so we can jump instructions and see if that works

ControlWord <= {4'b0000, 4'b0000,4'b0001,1'b1,5'b01000, 1'b0 ,1'b0,1'b0,2'b01, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1,1'b0,1'b0,1'b0,1'b0,1'b0};


//SA,SB,DA,WR,FS,C0,reset,PCSEL,PS,EN_ALU,ENADDRESS_ALU,IR_EN,ENADDRESS_PC,EN_PC,MW,MR,BSEL,ROM_EN

//M[K] <--- [K]
//ControlWord <= {4'b0000, 4'b0000,4'b0000,1'b0,5'b01000, 1'b1 ,1'b0,1'b0,2'b01, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0,1'b1,1'b0,1'b1,1'b0};
#60

//ControlWord <= {4'b0000, 4'b0000,4'b0000,1'b0,5'b01000, 1'b1 ,1'b0,1'b0,2'b01, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0,1'b0,1'b0,1'b1,1'b0}; 

#60 

//R[3] <----- M[K]
//ControlWord <= {4'b0000, 4'b0000,4'b0011,1'b1,5'b01000, 1'b1,1'b0,1'b0,2'b01, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0,1'b0,1'b1,1'b1,1'b0}; 

#60
K = 16'd9;
//R[4] <-----K[d9]
//ControlWord <= {4'b0000, 4'b0000,4'b0100,1'b1,5'b01000,1'b1,1'b0,1'b0,2'b01,1'b1, 1'b1, 1'b0, 1'b0, 1'b0,1'b0,1'b0,1'b1,1'b0};

#60
K = 16'b1111111111000000;

//ControlWord <= {4'b0000, 4'b0000,4'b0101,1'b1,5'b00101,1'b1,1'b0,1'b0,2'b01, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0,1'b0,1'b0,1'b1,1'b0};

#700 $stop;

end	 



endmodule