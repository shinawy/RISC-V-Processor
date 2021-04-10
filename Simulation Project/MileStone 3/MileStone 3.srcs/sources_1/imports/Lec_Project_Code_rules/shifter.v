// file: shifter.v
// author: Mahmoud A Elshinawy created on Wednesday October 21th

`timescale 1ns/1ns


module shifter (
  input [31:0] a,
 input [4:0] shamt,
 input [1:0] alufunc,
  output reg [31:0] shifted);

always@(*) begin
case(alufunc)
2'b00: shifted=a << shamt;
2'b01:shifted=a>> shamt;
2'b10:shifted=a>>>shamt;
default: shifted=a;
endcase
end
//assign shamt = 2;
//assign a=a<< shamt;
//assign shifted= a;






endmodule





