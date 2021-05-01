module tb;
    wire[3:0] S; wire cout;
    reg[3:0] A,B; reg cin;
    
    //RCA rca(.A(A),.B(B),.cin(cin),.S(S),.cout(cout));
    RCA rca(A,B,cin,S,cout);
    
    initial begin
        A=4'd10;B=4'd9;cin=1'b0;
        #50 A=4'd5;B=4'd1;
        #50 A=4'd10;B=4'd0;cin=1'b1;
        #50 A=4'd7;B=4'd7;
    end
    
endmodule