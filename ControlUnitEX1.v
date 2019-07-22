//2nd Cycle 'Shizzle
//YEEEHaw.
module ControlUnitEX1(ControlWord,IR,status);
input [3:0] status;
input [15:0]IR;
output reg [46:0] ControlWord;

always @(*) begin
        case ({IR[13],IR[12],IR[11]})
            /*BRN*/ 3'b111  : if (status[1] == 1'b1) begin
                                ControlWord = {2'b00,IR[10:8],3'b000,3'b000,5'b01000,1'b0,1'b0,1'b0,1'b0,1'b0,2'b10,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,8'b0,IR[7:0],1'b0};
											end else begin
											ControlWord = {2'b00,3'b000,3'b000,3'b000,5'b00000,1'b0,1'b0,1'b0,1'b0,1'b0,2'b01,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,16'b0,1'b0};
											end
									 
            
            /*BRZ*/ 3'b110  : ControlWord = {2'b00,3'b000,3'b000,3'b000,5'b00000,1'b0,  1'b0 ,1'b0,1'b1,1'b0,1'b0,2'b10,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,8'b0,IR[7:0],1'b0};
        
                        3'b001  : case(IR[9])
                        /*LDR*/     1'b0    : ControlWord = {2'b00,IR[5:3],3'b111,3'b000,5'b01000,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,2'b00,1'b0,1'b0,1'b1,1'b0, 1'b1,1'b0,1'b0,16'b0,1'b0};
                    
                        /*STR*/     1'b1    : ControlWord = {2'b00,IR[8:6],3'b111,3'b000,5'b01000,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,2'b01,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,16'b0,1'b0};
                                   endcase
            /*LDI*/ 3'b100  : ControlWord = {2'b00,3'b0,3'b000,IR[10:8],5'b00100,1'b0,1'b1,1'b0,1'b0,1'b0,2'b01,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,8'b0,IR[7:0],1'b0};          
        endcase
        
//10100
end
endmodule