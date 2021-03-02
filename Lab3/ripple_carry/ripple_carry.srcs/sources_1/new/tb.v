`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2021 22:22:49
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
    reg[3:0] a,b;wire[3:0]s,c;wire cin;
    Ripple_Adder A(.a(a),.b(b),.cin(cin),.s(s),.c(c));
    assign cin = 1'b0;
    initial begin
        a = 4'd7; b = 4'd5;
        #10 a = 4'd1; b = 4'd9;
        #10 a = 4'd15; b = 4'd7;
        #10 a = 4'd0;b = 4'd1;
        #10 a = 4'd11;b = 4'd11;
        #10 a = 4'd7; b = 4'd15;
        $finish;
    end
endmodule
