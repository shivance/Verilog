`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2021 16:46:30
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
    reg [3:0]I;reg s0,s1;
    wire Y;
    mux M(.I(I),.s0(s0),.s1(s1),.Y(Y));
    
    initial begin
        I = 4'b1010;
        #10 $display("I0=%b I1=%b I2=%b I3=%b",I[0],I[1],I[2],I[3]);
        s1=0;s0=0;
        
        #10 $display("s1=%b s0=%b Y=%b\n",s1,s0,Y);
        s1=0;s0=1;
        
        #10 $display("s1=%b s0=%b Y=%b\n",s1,s0,Y);
        s1=1;s0=0;
        
        #10 $display("s1=%b s0=%b Y=%b\n",s1,s0,Y);
        s1=1;s0=1;
        
        #10 $display("s1=%b s0=%b Y=%b\n",s1,s0,Y);
    end
    
endmodule
