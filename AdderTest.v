`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2018 08:31:39 PM
// Design Name: 
// Module Name: AdderTest
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


module AdderTest();
    reg [4:0] X;
    reg [4:0] Y;
    reg [4:0] sum;
     integer i,j,k;
     AdderRippleCarry #(4) dut(X,Y);
     initial begin
     for (i=0;i<16;i=i+1) begin
         for (k = 0; k< 16; k = k+1) begin
                    X = i;
                    Y = k;
                    #1; // delay 1 ns
                    if(sum != (X+Y)) $error("Failed ");
            end
            end
            end
   endmodule

