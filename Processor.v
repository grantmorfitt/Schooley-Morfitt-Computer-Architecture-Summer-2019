module Processor(clk,reset,R0,R1,R2,R3,R4,R5,R6,R7,PS_VIZ,databus_VIZ,addressbuz_VIZ,WR_VIZ,ControlWord_VIZ,K_VIZ,AA_VIZ,BA_VIZ,DA_VIZ,status_VIZ,FS_VIZ,C0_VIZ,PCSEL_VIZ,EN_ALU_VIZ,EN_ADDRESS_ALU_VIZ,IR_EN_VIZ,EN_ADDRESS_PC_VIZ,EN_PC_VIZ,MW_VIZ,MR_VIZ,BSEL_VIZ,ROM_EN_VIZ,EN_B_VIZ);
input clk,reset;
output [15:0]R0,R1,R2,R3,R4,R5,R6,R7;
wire [15:0] K;
wire [46:0] ControlWord;
wire [2:0] AA,BA,DA;
wire [3:0] status;
wire [4:0]FS;
wire C0,PCSEL,EN_ALU,EN_ADDRESS_ALU,IR_EN,EN_ADDRESS_PC,EN_PC,MW,MR,BSEL,ROM_EN,EN_B,WR;
wire [1:0] PS;
wire [15:0] IR;

output [2:0]AA_VIZ,BA_VIZ,DA_VIZ;
output [3:0] status_VIZ;
output [4:0] FS_VIZ;
output [15:0] K_VIZ;
output [1:0] PS_VIZ;
output C0_VIZ,WR_VIZ,PCSEL_VIZ,EN_ALU_VIZ,EN_ADDRESS_ALU_VIZ,IR_EN_VIZ,EN_ADDRESS_PC_VIZ,EN_PC_VIZ,MW_VIZ,MR_VIZ,BSEL_VIZ,ROM_EN_VIZ,EN_B_VIZ;
output [46:0] ControlWord_VIZ;

output [15:0] addressbuz_VIZ;
output [15:0]databus_VIZ;

assign IR_VIZ = IR;
assign AA_VIZ = AA;
assign BA_VIZ = BA;
assign DA_VIZ = DA;
assign status_VIZ = status;
assign FS_VIZ = FS;
assign C0_VIZ = C0;
assign PCSEL_VIZ = PCSEL;
assign EN_ALU_VIZ = EN_ALU;
assign EN_ADDRESS_ALU_VIZ = EN_ADDRESS_ALU;
assign IR_EN_VIZ = IR_EN;
assign EN_ADDRESS_PC_VIZ = EN_ADDRESS_PC;
assign EN_PC_VIZ = EN_PC;
assign EN_B_VIZ = EN_B;
assign MW_VIZ = MW;
assign MR_VIZ = MR;
assign BSEL_VIZ = BSEL;
assign ROM_EN_VIZ = ROM_EN;
assign K_VIZ = K;
assign ControlWord_VIZ = ControlWord;
assign WR_VIZ = WR;
assign PS_VIZ = PS;

datapath datapathinst(addressbuz_VIZ,databus_VIZ,AA,BA,DA,WR,FS,C0,reset,status,clk,R0,R1,R2,R3,R4,R5,R6,R7,K,PCSEL,PS,EN_ALU,EN_ADDRESS_ALU,IR_EN,IR,EN_ADDRESS_PC,EN_PC,MW,MR,BSEL,ROM_EN,EN_B);

ControlUnit controlunitinst(reset,clk,status,IR,ControlWord);

//SA	SB	DR/DA	FS	C0	reset	"EN_AddressALU"	EN_Address_PC	EN_ALU	EN_PC	PS	IL	WR	BSEL	PCSEL	MR	MW	ROM_EN	K	EN_B
//Hey buddy, you gotta make sure you do these in order sooo
		//NS = ControlWord[46:45];
assign AA = ControlWord[44:42];
assign BA = ControlWord[41:39];
assign DA = ControlWord[38:36];
assign FS = ControlWord[35:31];
assign C0 = ControlWord[30];
assign EN_ADDRESS_ALU = ControlWord[29];
assign EN_ADDRESS_PC = ControlWord[28];
assign EN_ALU = ControlWord[27];
assign EN_PC = ControlWord[26];
assign PS = ControlWord[25:24];
assign IR_EN = ControlWord[23];
assign WR = ControlWord[22];
assign BSEL = ControlWord[21];
assign PCSEL = ControlWord[20];
assign MR = ControlWord[19];
assign MW = ControlWord[18];
assign ROM_EN = ControlWord[17];
assign K = ControlWord[16:1]; 
assign EN_B = ControlWord[0];

//we're missing two guys so..figure that out


endmodule
