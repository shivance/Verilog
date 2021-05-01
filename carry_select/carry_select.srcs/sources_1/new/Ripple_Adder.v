module Ripple_Adder(input [3:0]a,b,input cin,output [3:0]s,c,output[4:0] sum);
    FA A1(a[0],b[0],cin,s[0],c[0]),
       A2(a[1],b[1],c[0],s[1],c[1]),
       A3(a[2],b[2],c[1],s[2],c[2]),
       A4(a[3],b[3],c[2],s[3],c[3]);
    assign sum = {c[4],s[3:0]};
endmodule