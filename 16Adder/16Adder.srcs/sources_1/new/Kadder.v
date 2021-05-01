//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2021 13:14:04
// Design Name: 
// Module Name: Kadder
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


module Kadder(input [15:0]a,b, output [16:0]sum);
    wire [8:0] s1,s2;
    kogge k1(a[7:0],b[7:0],1'b0,s1[8:0]),
           k2(a[15:8],b[15:8],s1[8],s2[8:0]);
    assign sum = {s2[8:0],s1[7:0]};
endmodule
