`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2021 14:10:38
// Design Name: 
// Module Name: decder
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


module decder(input x0,x1,output [0:3] Y);
assign Y[0] = ~((~x1)&(~x0)),
       Y[1] = ~((~x1)&(x0)),
       Y[2] = ~((x1)&(~x0)),
       Y[3] = ~(x1&x0); 
endmodule
