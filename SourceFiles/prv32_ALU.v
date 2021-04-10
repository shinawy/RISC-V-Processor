`include "defines.v"

module shifter (input [31:0] a,
 input [4:0] shamt,input [1:0] alufunc,
  output reg [31:0] shifted);

always@(*) begin
case(alufunc)
2'b00: shifted=a << shamt;
2'b01:shifted=a>> shamt;
2'b10:shifted=a>>>shamt;
default: shifted=a;
endcase
end





endmodule

module prv32_ALU(
	input   wire [31:0] a, b,
	input   wire [4:0]  shamt,
	output  reg  [31:0] r,
	output  wire        cf, zf, vf, sf,
	input   wire [3:0]  alufn, input Rtype
);

    wire [31:0] add, sub, op_b;
    wire cfa, cfs;
    
    assign op_b = (~b);
    
    assign {cf, add} = alufn[0] ? (a + op_b + 1'b1) : (a + b);
    
    assign zf = (add == 0);
    assign sf = add[31];
    assign vf = (a[31] ^ (op_b[31]) ^ add[31] ^ cf);
    
    reg[31:0] sh; wire[31:0]sh1,sh2;
    shifter shifter0(a, shamt, alufn[1:0], sh1);
    shifter shifter1(a, b[4:0], alufn[1:0],  sh2);
    always @(*)begin
    case (Rtype)
    0:sh=sh1;
    1:sh=sh2;
    endcase   
    
    
    end
    always @ (*) begin
        r = 0;
        (* parallel_case *)
        case (alufn)
            // arithmetic
            4'b00_00 : r = add;
            4'b00_01 : r = add;
            4'b00_11 : r = b;
            // logic
            4'b01_00:  r = a | b;
            4'b01_01:  r = a & b;
            4'b01_11:  r = a ^ b;
            // shift
            4'b10_00:  r=sh;
            4'b10_01:  r=sh;
            4'b10_10:  r=sh;
            // slt & sltu
            4'b11_01:  r = {31'b0,(sf != vf)}; 
            4'b11_11:  r = {31'b0,(~cf)};            	
        endcase
    end
endmodule