module CLA(input cin,input [3:0] A,B,output reg cout,output reg[3:0]S);
    reg[3:0] p,g,c;
    always@(S,A,B,cin)
        begin p = A^B;g=A&B;
            fork
                c[0]=cin;
                c[1]=g[0]|(p[0]&cin);
                c[2]=g[1]|(p[1]&g[0]) | (p[1]&p[0]&cin);
                c[3]=g[2]|(p[2]&g[1])|(p[2]&p[1]&g[0])|(p[2]&p[1]&p[0]&cin);
                cout=g[3]|(p[3]&g[2])|(p[3]&p[2]&p[1]&g[0])|(p[3]&p[2]&p[1]&p[0]&cin);
            join
        S=p^c;
        end
endmodule