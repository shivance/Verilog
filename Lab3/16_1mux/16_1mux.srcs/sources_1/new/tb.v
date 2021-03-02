`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2021 21:52:53
// Design Name: 
// Module Name: tb
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


module tb;
    reg [15:0] D;reg [3:0] S;
    wire Y;
    MUX16_1 M(D,S,Y);
    initial begin 
        D = 16'b0000111111000011;
        S = 4'b0000;
        #10 S = 4'b0100;
        #10 S = 4'b1000;
        #10 S = 4'b1001;
        #10 S = 4'b0110;
        #10 S = 4'b1111;
        $finish;
     end
endmodule
