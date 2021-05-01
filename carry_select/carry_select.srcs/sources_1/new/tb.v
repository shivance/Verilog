//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2021 13:40:08
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
    reg[7:0] a,b; wire[8:0] sum;
    csa8 A(a,b,sum);
    initial begin 
        a = 8'd125;b = 8'd30;
        #10 a = 8'd201;b = 8'd90;
        #10 a = 8'd59; b = 8'd95;
        #10 a = 8'd70; b = 8'd14;
        #10 a = 8'd0; b = 8'd0;
        $finish;
     end;
endmodule
