`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2018 01:01:02 PM
// Design Name: 
// Module Name: Adder3
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


module Adder3(
    input [2:0] X,
    input [2:0] Y,
    output [2:0] sum
    );
    
    assign sum = X + Y;
endmodule
