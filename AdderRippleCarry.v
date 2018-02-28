`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2018 08:02:01 PM
// Design Name: 
// Module Name: AdderRippleCarry
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


module AdderRippleCarry
#(parameter n = 4)
( output reg [n:0] ff,
 
  input [n:0] X,
  input [n:0] Y
    );
    wire [2:0] carry;
           genvar i;
           FullAdder f(X[0],Y[0],1'b0,ff[0],carry[0]);
           generate 
           for(i=1;i<=n;i=i+1)
             begin
                FullAdder f(X[i],Y[i],carry[i-1],ff[i],carry[i]);
                //assign carry=t;
             end
           endgenerate
       
endmodule
