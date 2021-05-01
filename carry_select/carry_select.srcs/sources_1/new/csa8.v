module csa8(input[7:0]a,b,output [8:0] sc);
    wire [11:0]s,c;wire[18:0] sum;
    Ripple_Adder r1(a[3:0],b[3:0],1'b0,s[3:0],c[3:0],sum[4:0]),
                 r2(a[7:4],b[7:4],1'b0,s[7:4],c[7:4],sum[9:5]),
                 r3(a[7:4],b[7:4],1'b1,s[11:8],c[11:8],sum[14:10]);
    MUX2_1 m1(s[7:4],s[11:8],c[3],sum[18:15]);
    assign cout = c[11]&(c[3]|c[7]),sc={cout,sum[18:15],sum[3:0]};
endmodule