`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2021 14:17:47
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;
    reg x0,x1;
    wire [3:0] Y;
    parameter t = 300;
    decder D(.x0(x0),.x1(x1),.Y(Y));
    
    initial #t $finish;
    
    // initialize both i/p with zeros
    initial begin 
        x0 = 1'b0; 
        x1 = 1'b0; // initialize both i/p with zeros
    end
    
    always #20 x0 = ~x0;
    always #40 x1 = ~x1; 

endmodule
