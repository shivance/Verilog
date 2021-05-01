module Kadder16(input [15:0]a,b, output [16:0]sum);
    wire [8:0] s1,s2;
    kogge k1(a[7:0],b[7:0],1'b0,s1[8:0]),
           k2(a[15:8],b[15:8],s1[8],s2[8:0]);
    assign sum = {s2[8:0],s1[7:0]};
endmodule