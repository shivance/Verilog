`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2021 18:43:42
// Design Name: 
// Module Name: operatn
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


module operatn(input prpn,gn,pprev,gprev,output pnext,gnext);
    assign gnext=gn|(prpn&gprev), pnext=pprev&prpn;
endmodule
