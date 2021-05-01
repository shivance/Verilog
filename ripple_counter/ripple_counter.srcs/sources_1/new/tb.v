module tb;
    wire [3:0] Q;
    reg clk,clr,M;
    parameter st=400;
    
    ripple_counter RC1(Q,clk,clr,M);
    
    initial #st $finish;
    
    initial
        begin
            clr=1'b1;M=1'b0;
        #34 clr=1'b0;M=1'b1;
        #81 M=1'b0;
        #200 clr=1'b1;
        #50 clr=1'b0;
        //#304 M=1'b1;
        end
        
    initial
        begin
            clk=1'b0;
            forever #5 clk=~clk;
        end
        
endmodule