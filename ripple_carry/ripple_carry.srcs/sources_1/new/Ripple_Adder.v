`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2021 22:21:53
// Design Name: 
// Module Name: Ripple_Adder
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


module Ripple_Adder(input [3:0]a,b,input cin,output [3:0]s,c);
    FA A1(a[0],b[0],cin,s[0],c[0]),
       A2(a[1],b[1],c[0],s[1],c[1]),
       A3(a[2],b[2],c[1],s[2],c[2]),
       A4(a[3],b[3],c[2],s[3],c[3]);
endmodule
