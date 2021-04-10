// file: ALU32bit.v
// author: @maco

`timescale 1ns/1ns

module ALU32bit (
input [31:0] in1, in2,
input [3:0] aluSel,
output reg [31:0] result, output reg zero );

wire [31:0] sum,sub,andres,orres;
ripple0 mod1(in1,in2,0,sum);
ripple0 mod2(in1,in2,1,sub);
and32 mod3(in1,in2,andres);
or32 mod4(in1,in2,orres);

always @(*) begin  
zero=0;
case (aluSel)
4'b0010: result=sum;
4'b0110: result= sub;
4'b0000: result=andres;
4'b0001: result=orres;
default: result=0;
endcase

if (result==0) 
zero=1;

end



endmodule

