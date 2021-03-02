`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2021 12:21:49
// Design Name: 
// Module Name: parity_chkr
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


module parity_chkr(input x,input [7:0]D,output Yo,output Ye);
    wire even_par_error,Ye,Yo;
    parity_gen P(D,Ye,Yo);
    assign even_par_error = (x^Ye); //even_parity error indicator
endmodule
