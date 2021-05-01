module Radder16(input[15:0]a,b,output [16:0]sum);
    wire [8:0] s1,s2;wire [15:0] c;
    Ripple_Adder r1(a[7:0],b[7:0],1'b0,s1[8:0],c[7:0]),
           r2(a[15:8],b[15:8],s1[8],s2[8:0],c[15:8]);
           
    assign sum = {s2[8:0],s1[7:0]};
endmodule   