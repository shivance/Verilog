`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2021 16:45:43
// Design Name: 
// Module Name: mux
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


module mux(input [3:0]I,input s0,input s1,output Y);
    assign Y = ((~s1)&(~s0)&I[0]) | ((~s1)&s0&I[1] ) | (s1&(~s0)&I[2]) | (s1&s0&I[3]);
endmodule
