module tb;
    reg D,clk,clr; wire Q;
    DFF DF(.D(D),.clk(clk),.clr(clr),.Q(Q));
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        clr=1'b1;D=1'b0;
        #5 clr = 1'b0;
        #50 clr = 1'b1;
        #20 D = 1'b1;
        #43 D = 1'b0;
        #100 D = 1'b1;    
    end    
endmodule