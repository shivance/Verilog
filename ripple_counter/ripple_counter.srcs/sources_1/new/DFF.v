module DFF(q,qbar,d,clk,clr);
    output q,qbar;
    input d,clk,clr;
    wire s,sbar,r,rbar,cbar;
    assign cbar=~clr;
    
    assign sbar=~(rbar & s);
    assign s=~(cbar & sbar & ~clk);
    assign r=~(rbar & ~clk & s);
    assign rbar=~(r & cbar & d);
    
    assign q=~(s & qbar);
    assign qbar=~(q & r & cbar);
endmodule 