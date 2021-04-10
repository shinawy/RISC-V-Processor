// file: muxarray.v
// author: Mahmoud A Elshinawy created on Wednesday October 21th

`timescale 1ns/1ns

module muxarray #(parameter N=32)(input [N-1:0] a, input [N-1:0] b, input sel, output [N-1:0]out);
genvar i;

generate

    for ( i=0; i<N;i=i+1)
    begin
        mux2 mod1(a[i] ,b[i], sel, out[i]);
    end
endgenerate

endmodule