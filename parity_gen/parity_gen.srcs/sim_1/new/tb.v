`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2021 12:25:52
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
    wire Y;reg [7:0] D;
    reg x = 8'b10101010;
    parity_chkr P(x,D,Y);
    
    initial 
        D = 8'b00000000;
        always #256 D[7] = ~D[7];
        always #128 D[6] = ~D[6];
        always #64 D[5] = ~D[5];
        always #32 D[4] = ~D[4];
        always #16 D[3] = ~D[3];
        always #8 D[2] = ~D[2];
        always #4 D[1] = ~D[1];
        always #2 D[0] = ~D[0];
endmodule
