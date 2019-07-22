module Processor_tb;

reg clock,reset;
wire [15:0] R0,R1,R2,R3,R4,R5,R6,R7;
wire [4:0] FS_VIZ;
wire [2:0]AA_VIZ,BA_VIZ,DA_VIZ;
wire [3:0]status_VIZ;
wire [1:0] PS_VIZ;
wire [15:0] K_VIZ;
wire[46:0] ControlWord_VIZ;
wire WR_VIZ,C0_VIZ,PCSEL_VIZ,EN_ALU_VIZ,EN_ADDRESS_ALU_VIZ,IR_EN_VIZ,EN_ADDRESS_PC_VIZ,EN_PC_VIZ,MW_VIZ,MR_VIZ,BSEL_VIZ,ROM_EN_VIZ,EN_B_VIZ;
wire [15:0]addressbuz_VIZ;
wire [15:0]databus_VIZ;
Processor Processor_tb(clock,reset,R0,R1,R2,R3,R4,R5,R6,R7,PS_VIZ,databus_VIZ,addressbuz_VIZ,WR_VIZ,ControlWord_VIZ,K_VIZ,AA_VIZ,BA_VIZ,DA_VIZ,status_VIZ,FS_VIZ,C0_VIZ,PCSEL_VIZ,EN_ALU_VIZ,EN_ADDRESS_ALU_VIZ,IR_EN_VIZ,EN_ADDRESS_PC_VIZ,EN_PC_VIZ,MW_VIZ,MR_VIZ,BSEL_VIZ,ROM_EN_VIZ,EN_B_VIZ);

initial begin

clock <= 1'b0;
        forever
        #10 clock = ~clock;
end

initial begin
reset <= 1'b1;
#10
reset <=1'b0;


#1000 $stop;
end





endmodule