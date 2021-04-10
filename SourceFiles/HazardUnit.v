`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2020 05:26:31 PM
// Design Name: 
// Module Name: HazardUnit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module HazardUnit(
input [4:0]IF_ID_Rs1,
IF_ID_Rs2,
 ID_EX_Rd,
 input ID_EX_MemRead, 
 output reg stall);
  
always@(*) begin
    stall=0;// added and it can be messing things up
    if ( ((IF_ID_Rs1==ID_EX_Rd) || (IF_ID_Rs2==ID_EX_Rd)) 
    && ID_EX_MemRead && (ID_EX_Rd != 0))
        stall = 1;

  
  end
  
  
  
  
  
  
  
endmodule
