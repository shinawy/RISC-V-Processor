// file: shift_one.v
// author: @maco

`timescale 1ns/1ns

module shift_one(input [31:0] in, output [31:0] out);

assign out={in[30:0],1'b0};

endmodule