`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2021 14:52:09
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb;
    reg [0:7]Y;
    wire x0,x1,x2;
    parameter t = 300;
    encoder E(.Y(Y),.x0(x0),.x1(x1),.x2(x2));
    
    initial #t $finish;
    
    initial begin
        Y = 'd1;
        #t Y = 'd2;
        #t Y = 'd4;
        #t Y = 'd8;
        #t Y = 'd16;
        #t Y = 'd32;
        #t Y = 'd64;
        #t Y = 'd128;
     end
endmodule
