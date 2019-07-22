module ControlUnitEX0(status,ControlWord,IR); 
input [3:0] status;
input [15:0]IR;
output reg [46:0] ControlWord;
always @(IR)begin
case (IR[15])
    1'b1 : case (IR[14])
    /*LRI*/ 1'b1: ControlWord = {2'b00,3'b000,3'b000,IR[13:11],5'b01000,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,5'b0,IR[10:0],1'b0};
                        
                1'b0: case({IR[14],IR[13]})
                
                        2'b01 : case({IR[12],IR[11]})
                        /*LDI*/ 2'b00 : ControlWord = {2'b10,3'b0,3'b000,IR[10:8],5'b00100,1'b0,1'b1,1'b0,1'b0,1'b0,2'b00,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,8'b0,IR[7:0],1'b0}; 
                        /*STI*/ 2'b01 : ControlWord = {2'b00,3'b000,IR[10:8],3'b000,5'b00100,1'b0,1'b1,1'b0,1'b0,1'b0,2'b01,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,8'b0,IR[7:0],1'b1};
                        /*BRZ*/ 
										  2'b10   : if (status[0] == 1) begin
                                                    ControlWord = {2'b10,IR[10:8],3'b111,3'b000,5'b01000,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,2'b00,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,16'b0,1'b0};
                                                end 
                                                else begin
                                                    ControlWord = {2'b10,IR[10:8],3'b111,3'b000,5'b01000,1'b0, 1'b0,1'b0,1'b0,1'b0,1'b0,2'b00,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,16'b0,1'b0};
                                                end
                                                
					 /*BRN*/ 			2'b11 : ControlWord = {2'b10,IR[10:8],3'b000,3'b000,5'b01000,1'b0,1'b0,1'b0,1'b0,1'b0,2'b00,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,16'b0,1'b0};
                                    
                                    endcase
                        2'b00 : case({IR[12],IR[11],IR[10],IR[9]})
                                /*JUMP*/    4'b1101 : ControlWord = {2'b00,IR[5:3],3'b000,3'b000,5'b00000,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,2'b10,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,16'b0,1'b0};
                                /*LDR*/  4'b0100 : ControlWord = {2'b10,IR[5:3],3'b111,3'b000,5'b01000,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,2'b00,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,16'b0,1'b0};
                                /*STR*/ 4'b0101 : ControlWord = {2'b10,IR[5:3],3'b111,IR[8:6],5'b01000,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,2'b00,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,16'b0,1'b0};
                                            default : ControlWord = 46'b0;  
                                    endcase
                        
                        endcase
                default : ControlWord = 46'b0;  
            endcase
            
    1'b0 : case ( {IR[15],IR[14],IR[13] })
    
                3'b000 :    case({IR[12],IR[11]})
                
                    /*ADI*/     2'b01 : ControlWord = {2'b00,IR[10:8],3'b000,IR[10:8],5'b01000,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,8'bz,IR[7:0],1'b0};
                                
                    /*SBI*/     2'b10 : ControlWord = {2'b00,IR[10:8],3'b000,IR[10:8],5'b01001,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,8'bz,IR[7:0],1'b0};
                                
                    /*ANDI*/        2'b11 : ControlWord = {2'b00,IR[10:8],3'b000,IR[10:8],5'b00000,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,8'bz,IR[7:0],1'b0};
                                    default : ControlWord = 46'b0;      
                                
                                endcase
                
                3'b001 :    case({IR[12],IR[11]})
                            
                    /*ORI*/     2'b01 : ControlWord = {2'b00,IR[10:8],3'b000,IR[10:8],5'b00100,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,8'b0,IR[7:0],1'b0};
                                
                    /*XRI*/     2'b10 : ControlWord = {2'b00,IR[10:8],3'b000,IR[10:8],5'b01100,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,8'b0,IR[7:0],1'b0};
                                    default : ControlWord = 46'b0;  
                                endcase
                
                3'b011 :    case({IR[12],IR[11],IR[10],IR[9]}) 
                                
                    /*INC*/     4'b0000 : ControlWord = {2'b00,IR[5:3],3'b000,IR[8:6],5'b01000,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,16'd1,1'b0};
                                    
                    /*ADD*/     4'b0100 : ControlWord = {2'b00,IR[5:3],IR[2:0],IR[8:6],5'b01000,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,16'b0,1'b0};
                                    
                    /*SUB*/     4'b0110 : ControlWord = {2'b00,IR[5:3],IR[2:0],IR[8:6],5'b01001,1'b1,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,16'b0,1'b0};
                                    
                    /*DEC*/     4'b0010 : ControlWord = {2'b00,IR[5:3],3'b000,IR[8:6],5'b01001,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,16'd1,1'b0};
                                
                    /*NEG*/     4'b0001 : ControlWord = {2'b00,IR[5:3],3'b000,IR[8:6],5'b01011,1'b0,1'b0,1'b0   ,1'b1,1'b0,2'b01,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,16'd1,1'b0};
                                    
                    /*SHR*/     4'b1001 : ControlWord = {2'b00,IR[5:3],3'b000,IR[8:6],5'b10100,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,13'bz,IR[2:0],1'b0};
                                    
                    /*SHL*/     4'b1000 : ControlWord = {2'b00,IR[5:3],3'b000,IR[8:6],5'b10000,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,13'b0,IR[2:0],1'b0};
                                    
                                    default : ControlWord = 46'b0;  
                                endcase
                3'b010 : case({IR[12],IR[11],IR[10],IR[9]}) 
                                
                /*CLR*/     4'b0000 : ControlWord = {2'b00,3'b000,3'b000,IR[8:6],5'b00000,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,16'b0,1'b0};
                                
                /*SET*/     4'b1111 : ControlWord = {2'b00,3'b000,3'b000,IR[8:6],5'b00101,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,16'b0,1'b1,1'b0};
                                
                /*NOT*/     4'b0011 : ControlWord = {2'b00,IR[5:3],IR[2:0],IR[8:6],5'b00110,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,16'b0,1'b0};
                                
                /*AND*/     4'b1000 : ControlWord = {2'b00,IR[5:3],IR[2:0],IR[8:6],5'b00000,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,16'b0,1'b0};
                                
                /*OR*/      4'b1110 : ControlWord = {2'b00,IR[5:3],IR[2:0],IR[8:6],5'b00100,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0 ,2'b01,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,16'b0,1'b0};
                                
                /*XOR*/     4'b0110 : ControlWord = {2'b00,IR[5:3],IR[2:0],IR[8:6],5'b01100,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,16'b0,1'b0};
                    
                /*MOVA*/        4'b1100 : ControlWord = {2'b00,IR[5:3],3'b000,IR[8:6],5'b00100,1'b0,1'b0,1'b0,1'b0, 1'b1, 1'b0, 2'b01,1'b0,1'b1,1'b0,1'b0,1'b01,1'b0,1'b0   ,16'b0,1'b0};
                
                                
                /*MOVB*/        4'b1010 : ControlWord = {2'b00,IR[2:0],IR[8:6],5'b00000,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,2'b01,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,16'b0,1'b0};
                                
                                default : ControlWord = 46'b0;  
                            endcase
                
                default : ControlWord = 46'b0;  
            endcase
            
            
        default : ControlWord = 46'b0;  
endcase
end
endmodule