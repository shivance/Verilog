`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2021 19:21:36
// Design Name: 
// Module Name: MUX2_1
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


module MUX2_1(input[3:0] a,b, input s, output reg[3:0] o);
    always@(a,b,s) 
        begin
            case(s)
                1'b0 : o = a;
                1'b1 : o = b;
            endcase
        end
endmodule
