module tb;
    wire[3:0]S;wire cout;reg[3:0] A,B; reg cin;
    initial #500 $finish;
    
    CLA cla(cin,A,B,cout,S);
    initial begin
        A = 4'b1010;B=4'b1001;cin=1'b0;
        #200 cin=1'b1;
        #200 A = 4'd5; B = 4'd9;
        #200 cin = 1'b0;
    end
endmodule