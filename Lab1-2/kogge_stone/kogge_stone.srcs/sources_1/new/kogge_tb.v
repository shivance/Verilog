module tb;
    reg [7:0]a,b;
    wire [8:0]sum;
    kogge adder(a,b,sum);
    
    initial begin
        a=7'd25;b=7'd30;
        #10 a=7'd21;b=7'd11;
        #10 a=7'd44;b=7'd35;
        #10 a=7'd28;b=7'd2;
        #10 a=7'd45;b=7'd70;
    end
endmodule