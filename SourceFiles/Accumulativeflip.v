// file: Accumulativeflip.v
// author: @maco

`timescale 1ns/1ns

module Accumulativeflip #(parameter N=32)
(input [N-1:0] a, input clk, input rst, input sel, output[N-1:0] out );
wire [N-1:0] out_before;
genvar i;

generate

for ( i=0; i<N;i=i+1)
begin
mux2 mod1(out[i] ,a[i], sel, out_before[i]);
dflipflop mod2(clk,rst,out_before[i], out[i]);

end
endgenerate

endmodule