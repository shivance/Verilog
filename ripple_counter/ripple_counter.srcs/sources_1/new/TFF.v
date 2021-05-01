module TFF(q,qbar,clk,clr);
    output q,qbar;
    input clk,clr;
    
    DFF D(.q(q),.qbar(qbar),.d(qbar),.clk(clk),.clr(clr));
endmodule