// file: RippleCarryAdder.v
// author: @maco

`timescale 1ns/1ns

module FullAdder(s,c,x,y,cin);
input x,y,cin;
output s,c;
assign s=x^y^cin;
wire f,g,h;
assign f=x&y;
assign g=y&cin;
assign h=x&cin;
assign c=f|g|h;
endmodule


module ripple0 #(parameter N=32)(input [N-1:0] a, input [N-1:0]b,input cin, output [N:0] out); // when the very first carry input is equal to 0
wire [N:0] carry;
wire [N-1:0] sum;
assign carry[0]=cin;
genvar i;

generate

for ( i=0; i<N;i=i+1)
begin
FullAdder full_inst(.s(sum[i]),.c(carry[i+1]),.x(a[i]),.y(b[i]^cin),.cin(carry[i]));
end
endgenerate

assign out ={carry[N],sum};


endmodule