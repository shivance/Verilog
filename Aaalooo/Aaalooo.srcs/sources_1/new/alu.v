`timescale 1ns / 1ps
module ALU(
input clk,
input [7:0]a,
input [7:0]b,
input [3:0]f,
output reg ob,zr,
output reg [7:0]out
);
reg [8:0]out_temp;
always @(posedge clk) begin
out_temp=8'd0;
case(f)
4'd0: out=8'd0;
4'd1: out=8'd1;
4'd2: out=a;
4'd3: out=b;
4'd4: out=~a;
4'd5: out=~b;
4'd6: out=a|b;
4'd7: out=a&b;
4'd8: out=~(a|b);
4'd9: out=~(a&b);
4'd10: out=(a<b)?1:0;
4'd11: out=(a>b)?1:0;
4'd12: out=-a;
4'd13: out=-b;
4'd14: begin out_temp=a+b; out=out_temp[7:0]; end
4'd15: out=a-b;
endcase
ob=out_temp[8];   //overflow flag
zr=~(|out);           //zero flag
end
endmodule

