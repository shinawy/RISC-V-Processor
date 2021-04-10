// file: and32.v
// author: Mahmoud A Elshinawy created on Wednesday October 21th

`timescale 1ns/1ns

module and32 #(parameter N=32)(

input [N-1:0] a, 
input [N-1:0]b, 
output [N-1:0] out);
genvar i;
generate 
    for (i=0;i<N; i=i+1) begin 
    assign out[i]= a[i] & b[i];
    end
endgenerate

endmodule