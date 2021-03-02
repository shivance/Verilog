`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2021 21:38:54
// Design Name: 
// Module Name: MUX16_1
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


module MUX16_1(input [3:0]s,input [15:0]X,output Y);
    wire [3:0] Z;
    mux41 m1(s[0],s[1],X[3:0],Z[0]),
          m2(s[0],s[1],X[7:4],Z[1]),
          m3(s[0],s[1],X[11:8],Z[2]),
          m4(s[0],s[1],X[15:12],Z[3]);
    mux41 m5(s[2],s[3],Z,Y);
endmodule
