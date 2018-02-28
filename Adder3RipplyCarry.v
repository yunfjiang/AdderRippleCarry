`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2018 10:04:54 AM
// Design Name: 
// Module Name: Adder3RipplyCarry
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


module Adder3RipplyCarry(
input [2:0] X,
input [2:0] Y,
output [2:0]sum
    );
    wire [2:0] carry;
       genvar i;
       FullAdder f(X[0],Y[0],1'b0,sum[0],carry[0]);
       generate 
       for(i=1;i<=3;i=i+1)
         begin
            FullAdder f(X[i],Y[i],carry[i-1],sum[i],carry[i]);
            //assign carry=t;
         end
       endgenerate
    endmodule