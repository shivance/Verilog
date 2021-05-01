module tb;
    reg[15:0] a,b; wire [16:0] sum;
    Kadder test(a,b,sum);
    initial begin
        a = 16'd3124; b = 16'd900;
        #100 a=16'd1111; b = 16'd1002;
        #100 a= 16'd1234; b = 16'd94;
        #100 a= 16'd128; b=16'd122;
        #100 a= 16'd444; b=16'd122;
        #100 a= 16'd756; b=16'd657;
        #100 a= 16'd1999; b=16'd1;
        #100 a= 16'd415; b=16'd415;
        //$finish;
     end
endmodule