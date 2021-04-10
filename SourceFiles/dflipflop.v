// file: dflipflop.v
// author: Mahmoud A Elshinawy created on Wednesday October 21th

`timescale 1ns/1ns

module dflipflop
(
    input clk,
 input rst,
 input D, 
output reg Q);
always @ (posedge clk or posedge rst) begin // Asynchronous Reset
    if (rst)
    Q <= 1'b0;
    else
    Q <= D;
end
endmodule