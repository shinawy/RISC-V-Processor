//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 11/13/2020 08:47:01 PM
//// Design Name: 
//// Module Name: mux8
//// Project Name: 
//// Target Devices: 
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2020 08:47:01 PM
// Design Name: 
// Module Name: mux8
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


module mux8(input [31:0]in1,in2,in3,in4, in5, input [3:0] sel, output reg [31:0] res);
    always@(*)
        
        begin
        //    case (sel)
        //        4'b0000 :res=in1;
        //        4'b0100:res=in2;
        //        4'b1000:res=in3;
        //        4'b: res=in4;
        //        4'b: res=in5;
        //        default : res=in4;
        //    endcase 
        res=0;
        
           
          if (sel[3:2]==2'b01)
               res=in2;
           else if(sel[3:2]==2'b10) begin
               res=in3;
               end
         else 
             begin 
                if(sel[1:0]==2'b10)
                         res=in5;
                else if(sel[1:0]==2'b01)
                         res=in4;
                else if(sel[1:0]==2'b00)
                        res=in1;
               
             end     
        
        
        end 
endmodule




























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


//module mux8(input [31:0]in1,in2,in3,in4, in5, input [3:0] sel, output reg [31:0] res);
//    always@(*)
        
//        begin
//        //    case (sel)
//        //        4'b0000 :res=in1;
//        //        4'b0100:res=in2;
//        //        4'b1000:res=in3;
//        //        4'b: res=in4;
//        //        4'b: res=in5;
//        //        default : res=in4;
//        //    endcase 
//        res=0;
//        if(sel[1:0]==2'b10)
//            res=in5;
//         else if(sel[1:0]==2'b01)
//            res=in4;
//         else 
//             begin 
//                if(sel[3:2]==2'b00)
//                    res=in1;
//                else if (sel[3:2]==2'b01)
//                    res=in2;
//                else if(sel[3:2]==2'b10) begin
//                    res=in3;
//                    end
//             end     
        
        
//        end 
//endmodule





