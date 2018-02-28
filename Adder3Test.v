`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2018 01:15:12 PM
// Design Name: 
// Module Name: Adder3Test
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


module Adder3Test();
    reg [2:0] X;
    reg [2:0] Y;
    reg [2:0] sum;
//    integer i, k;
//    Adder3 dut(X, Y);
//    initial begin

//        // exhaustively test the circuit

//        for (i = 0; i < 2; i = i +1) begin

//                for (k = 0; k< 2; k = k+1) begin



//               X = i;
//               Y = k;
//               #1; // delay 1 ns
//               if(sum != (X+Y)) $error("Failed ");
//       end

//        end


  //  end'
  integer i,j,k;
  Adder3RippleCarry dut(X,Y);
  initial begin
  for (i=0;i<8;i=i+1) begin
      for (k = 0; k< 8; k = k+1) begin
  
  
  
                 X = i;
                 Y = k;
                 #1; // delay 1 ns
                 if(sum != (X+Y)) $error("Failed ");
         end
         end
         end
endmodule
