`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2021 12:10:13
// Design Name: 
// Module Name: parity_gen
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


module parity_gen(input [7:0]D, output Ye,Yo);
    assign Ye = D[0]^D[1]^D[2]^D[3]^D[4]^D[5]^D[6]^D[7];
    assign Yo = ~Ye;
endmodule
