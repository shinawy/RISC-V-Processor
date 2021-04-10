`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2020 11:56:13 PM
// Design Name: 
// Module Name: clkdivider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clkdivider(input clk, output outclk);
reg internal=0;
always @(posedge clk)begin
internal=~internal;
end
assign outclk= internal;
endmodule
