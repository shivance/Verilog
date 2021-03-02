`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2021 04:29:41
// Design Name: 
// Module Name: adder_subtractor_tb
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


module adder_subtractor_tb;
    wire s_d,c_b_out;reg a,b,c_b_in,add_sub;
    
    adder_subtractor AS(.s_d(s_d),.c_b_out(c_b_out),.a(a),.b(b),.c_b_in(c_b_in),.add_sub(add_sub));
    
    initial #500 $finish;
    initial begin
        a = 1'b0 ;b = 1'b0; c_b_in = 1'b0;add_sub = 1'b1;
    end
    
    always #100 a = ~a;
    always #50 b = ~b;
    always #25 c_b_in = ~c_b_in;
endmodule
