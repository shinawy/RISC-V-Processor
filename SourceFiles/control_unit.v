// file: control_unit.v
// author: Mahmoud A Elshinawy created on Wednesday October 21th

`timescale 1ns/1ns

module control_unit(

input [4:0] instr,
 output reg Rtype,
Branch, 
MemRead,
 MemtoReg,
  MemWrite,
 ALUSrc,
 RegWrite,
jal,
 output reg [1:0] ALUOp);

always @(*) begin 
    Rtype= (instr==5'b01100);
    Branch = (instr==5'b11000);
    MemRead = (instr==5'b00000);
    MemtoReg= (instr==5'b00000);
    MemWrite= (instr==5'b01000);
    ALUSrc= (instr== 5'b00000)||(instr==5'b01000) || (instr==5'b01101) || (instr==5'b00101)|| (instr==5'b00100);
//    RegWrite= (instr== 5'b00000)||(instr==5'b01100)||(instr==5'b00100);
    RegWrite= (instr!= 5'b11000)&& (instr!=5'b01000);
    jal= (instr==5'b11011) || (instr==5'b11001);


    case(instr)

        5'b01100: ALUOp=2'b10;
        5'b00100:ALUOp=2'b10;
        5'b11000: ALUOp=2'b01;
        default:  ALUOp=2'b00;  //default add operation

    endcase



end

endmodule