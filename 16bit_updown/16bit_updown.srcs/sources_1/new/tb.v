module tb;
    wire[15:0] Q;reg [15:0] D; reg clk,clr,m,l;
    counter cnt(clk,clr,D,m,l,Q);
    initial #500 $finish;
    initial begin 
            clk=1'b0;
            forever #5 clk=~clk;
        end
    
    initial begin
            clr = 1'b1;l=1'b0;m = 1'b1;
            D = 16'b0;
            #15 m = 1'b0;
            #30 clr = 1'b0;
            #50 D = 16'b100110011001;
            #30 m = 1'b0;
            #20 l = 1'b1;
            #20 D = 16'b101010101010;
            #20 l = 1'b0;
            #20 m = 1'b1;
     end

endmodule