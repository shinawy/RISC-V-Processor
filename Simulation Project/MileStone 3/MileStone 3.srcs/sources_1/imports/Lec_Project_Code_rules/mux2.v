// file: mux2.v
// author: Mahmoud A Elshinawy created on Wednesday October 21th

`timescale 1ns/1ns

module mux2(input a,
b,
sel,
 output out);

    assign out=(a&~sel)|(b&sel);

endmodule