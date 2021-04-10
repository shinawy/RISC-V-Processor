`timescale 1ns / 1ps
// author: Mahmoud A Elshinawy created on Wednesday October 21th

module mux4(
input [31:0]a, 
input [31:0]b, 
input [31:0]c, 
input[1:0] sel,
output reg[31:0]res

    );
  
always@(*)
begin
    case (sel)
        2'b00 :res=a;
        2'b01 :res=b;
        2'b10 :res=c;
        default : res=0;
    endcase 
end 
endmodule
