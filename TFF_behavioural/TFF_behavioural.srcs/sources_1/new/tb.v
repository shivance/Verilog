module tb;
    wire Q;reg T,clk,clr;
    TFF TF(T,clk,clr,Q);
    
    initial begin
        clk=1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin 
        clr=1'b0;T=1'b1;
        #50 clr = 1'b1; T=1'b0;
        #100 T = 1'b1;
    end
    
endmodule