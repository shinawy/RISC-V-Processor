


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2020 04:49:14 PM
// Design Name: 
// Module Name: ForwardingUnit
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


module ForwardingUnit(

input MEM_WB_RegWrite,
 input [4:0] EX_MEM_Rd,
  ID_EX_Rs1,
  ID_EX_Rs2,
  MEM_WB_Rd,
  output reg forwardA,
  forwardB);
  
//  initial begin 
//  forwardA=0;
//  forwardB=0;
  
//  end
  
  always@(*) begin
  forwardA=0;
  forwardB=0;
  
   if ( MEM_WB_RegWrite &&(MEM_WB_Rd != 0)
     &&(MEM_WB_Rd == ID_EX_Rs1) )
     forwardA =1;
     
     else 
        forwardA=0;
       
     
   if ( MEM_WB_RegWrite &&(MEM_WB_Rd != 0)
    &&(MEM_WB_Rd == ID_EX_Rs2) )
    forwardB = 1;
    else 
            forwardB=0;
    
  

  end
  
  
  
  
  
  
  
endmodule

//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 11/02/2020 04:49:14 PM
//// Design Name: 
//// Module Name: ForwardingUnit
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module ForwardingUnit(
//input EX_MEM_RegWrite,
//input MEM_WB_RegWrite,
// input [4:0] EX_MEM_Rd,
//  ID_EX_Rs1,
//  ID_EX_Rs2,
//  MEM_WB_Rd,
//  output reg [1:0] forwardA,
//  forwardB);
  
////  initial begin 
////  forwardA=0;
////  forwardB=0;
  
////  end
  
//  always@(*) begin
//  forwardA=0;
//  forwardB=0;
//  if ( EX_MEM_RegWrite &&(EX_MEM_Rd != 0)
//  &&(EX_MEM_Rd == ID_EX_Rs1) )
//  forwardA = 2'b10;
//   else if (
//   MEM_WB_RegWrite 
//   &&(MEM_WB_Rd != 0)
//  &&(MEM_WB_Rd == ID_EX_Rs1) 
//  && !( EX_MEM_RegWrite &&(EX_MEM_Rd != 0)
//  &&(EX_MEM_Rd == ID_EX_Rs1) )
  
//  )
//  forwardA = 2'b01;
  
//  else   forwardA=0;

//  if ( EX_MEM_RegWrite &&(EX_MEM_Rd != 0)
//  &&(EX_MEM_Rd == ID_EX_Rs2) )
//  forwardB = 2'b10;
  
//  else if (
//   MEM_WB_RegWrite 
//   &&(MEM_WB_Rd != 0)
//  &&(MEM_WB_Rd == ID_EX_Rs2) 
//  && !( EX_MEM_RegWrite &&(EX_MEM_Rd != 0)
//  &&(EX_MEM_Rd == ID_EX_Rs2) )  
//  )
//  forwardB = 2'b01;
////  if ( MEM_WB_RegWrite &&(MEM_WB_Rd != 0)
////  &&(MEM_WB_Rd == ID_EX_Rs2) 
////  &&!( EX_MEM_RegWrite &&(EX_MEM_Rd != 0))
////  &&(EX_MEM_Rd == ID_EX_Rs2) )
////  forwardB = 2'b01;
//  else   forwardB=0;

//  end
  
  
  
  
  
  
  
//endmodule