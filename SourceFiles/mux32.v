// file: mux32.v
// author: Mahmoud A Elshinawy created on Wednesday October 21th

`timescale 1ns/1ns

module mux32(input [31:0] a [0:31], input [4:0] sel, output[31:0] out );

assign out= a[sel];

endmodule