`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2021 04:27:52
// Design Name: 
// Module Name: adder_subtractor
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


module adder_subtractor(output s_d,c_b_out,input a,b,c_b_in,add_sub);
    wire cry,brw;
    
    assign s_d = (a^b^c_b_in),
           cry = (a&b) | (b&c_b_in) | (a&c_b_in),
           brw = (a&b) | (b&c_b_in) | (a & c_b_in),
           c_b_out = add_sub ? brw : cry;
           
endmodule
