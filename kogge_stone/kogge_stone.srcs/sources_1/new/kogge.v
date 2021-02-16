`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2021 18:40:17
// Design Name: 
// Module Name: kogge
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


module kogge(input [7:0]a,b,output [8:0]s);
    wire [7:0]c,sum; wire [31:0]prpn,gn;
    node pg1(a[0],b[0],prpn[0],gn[0]),
        pg2(a[1],b[1],prpn[1],gn[1]),
        pg3(a[2],b[2],prpn[2],gn[2]),
        pg4(a[3],b[3],prpn[3],gn[3]),
        pg5(a[4],b[4],prpn[4],gn[4]),
        pg6(a[5],b[5],prpn[5],gn[5]),
        pg7(a[6],b[6],prpn[6],gn[6]),
        pg8(a[7],b[7],prpn[7],gn[7]);

    operatn o1(prpn[7],gn[7],prpn[6],gn[6],prpn[8],gn[8]),
        o2(prpn[6],gn[6],prpn[5],gn[5],prpn[9],gn[9]),
        o3(prpn[5],gn[5],prpn[4],gn[4],prpn[10],gn[10]),
        o4(prpn[4],gn[4],prpn[3],gn[3],prpn[11],gn[11]),
        o5(prpn[3],gn[3],prpn[2],gn[2],prpn[12],gn[12]),
        o6(prpn[2],gn[2],prpn[1],gn[1],prpn[13],gn[13]),
        o7(prpn[1],gn[1],prpn[0],gn[0],prpn[14],gn[14]);

    wire cin=1'b0;

    assign c[0]=gn[0],   sum[0]=cin^prpn[0],
           c[1]=gn[14],  sum[1]=c[0]^prpn[1];

    operatn o8(prpn[8],gn[8],prpn[10],gn[10],prpn[15],gn[15]),
        o9(prpn[9],gn[9],prpn[11],gn[11],prpn[16],gn[16]),
        o10(prpn[10],gn[10],prpn[12],gn[12],prpn[17],gn[17]),
        o11(prpn[11],gn[11],prpn[13],gn[13],prpn[18],gn[18]),
        o12(prpn[12],gn[12],prpn[14],gn[14],prpn[19],gn[19]),
        o13(prpn[13],gn[13],prpn[0],gn[0],prpn[20],gn[20]);

    assign c[2]=gn[20],c[3]=gn[19],sum[2]=c[1]^prpn[2],sum[3]=c[2]^prpn[3];

    operatn o14(prpn[15],gn[15],prpn[19],gn[19],prpn[21],gn[21]),
        o15(prpn[16],gn[16],prpn[20],gn[20],prpn[22],gn[22]),
        o16(prpn[17],gn[17],prpn[14],gn[14],prpn[23],gn[23]),
        o17(prpn[18],gn[18],prpn[0],gn[0],prpn[24],gn[24]);

    assign c[4]=gn[24],c[5]=gn[23],c[6]=gn[22],c[7]=gn[21];
    assign sum[4]=c[3]^prpn[4], sum[5]=c[4]^prpn[5], sum[6]=c[5]^prpn[6],sum[7]=c[6]^prpn[7];

    assign s={c[7],sum[7:0]};
endmodule
