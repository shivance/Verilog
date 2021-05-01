`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2021 14:49:38
// Design Name: 
// Module Name: encoder
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


module encoder(input [0:7]Y, output x0,x1,x2);
    assign x0 = Y[7] | Y[5] | Y[3] | Y[1],
           x1 = Y[7] | Y[6] | Y[3] | Y[2],
           x2 = Y[7] | Y[6] | Y[5] | Y[4];

endmodule
