`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2021 22:57:05
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
    reg[7:0]a,b;wire [7:0]s,c;
    wire[8:0] sum;wire cin = 1'b0;
    
    Adder8bit A(a,b,cin,s,c,sum);
    
    initial begin
        a = 8'd17;b = 8'd12;
        #5 a = 8'd70 ; b = 8'd58;
        #5 a = 8'd120; b = 8'd97;
        #5 a = 8'd61; b = 8'd31;
        #5 a = 8'd5; b = 8'd3;
        $finish;
    end 
endmodule
