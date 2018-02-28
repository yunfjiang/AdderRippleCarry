`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2018 09:57:01 AM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
 input x,
 input y,
 input cin,
 
 output A, 
 output cout
 );
 wire n1, n2, n3;
 xor(n1,x,y);
 xor(A,n1,cin);
 and(n2,n1,cin);
 and(n3,x,y);
 or(cout,n2,n3); 
 

endmodule