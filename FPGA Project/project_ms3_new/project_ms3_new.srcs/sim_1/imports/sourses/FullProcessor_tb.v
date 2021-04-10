`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 05:18:27 PM
// Design Name: 
// Module Name: FullProcessor_tb
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


module FullProcessor_tb();
    reg clk, rst;
    
    FullProcessorPipelined test(clk, rst);
    
    
    
    initial begin 
    rst=1; 
    #40;
    rst=0;
    end 
    
    initial begin
    clk = 0;
    forever #50 clk = ~clk;
    end
    
endmodule
