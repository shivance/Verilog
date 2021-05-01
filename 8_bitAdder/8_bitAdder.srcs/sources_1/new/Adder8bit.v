module Adder8bit(input [7:0]a,b,input cin,output [7:0] s,c,output [8:0]sum);
    //reg[7:0] a,b;wire [7:0] s,c;
    
    Ripple_Adder R1(a[3:0],b[3:0],cin,s[3:0],c[3:0]),
                 R2(a[7:4],b[7:4],c[3],s[7:4],c[7:4]);
                 
    assign sum = {c[7],s};
endmodule