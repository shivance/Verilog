module kogge_tb;
    reg[7:0] a,b;
    wire [7:0] sum;wire cout;
    kogge AD(a,b,sum,cout);
    initial begin
        a=7'd25; b=7'd30;
        #20 a = 7'd21; b = 7'd11;
        #20 a = 7'd44; b = 7'd35;
        #20 a = 7'd28; b = 7'd2;
        #20 a = 7'd45; b = 7'd120 ;
        //$finish;
    end
endmodule