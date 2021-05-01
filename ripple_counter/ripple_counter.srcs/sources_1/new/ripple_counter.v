module ripple_counter(Q,clk,clr,M);
    output [3:0] Q;
    input clk,clr,M;
    wire [2:0] w1;
    wire [2:0] w2,w3;
    TFF F1(.q(w3[0]),.qbar(w2[0]),.clk(clk),.clr(clr));
    TFF F2(.q(w3[1]),.qbar(w2[1]),.clk(w1[0]),.clr(clr));
    TFF F3(.q(w3[2]),.qbar(w2[2]),.clk(w1[1]),.clr(clr));
    TFF F4(.q(Q[3]),.clk(w1[2]),.clr(clr));
    
    assign w1[0]=(~M & w3[0])|(M & w2[0]);
    assign w1[1]=(~M & w3[1])|(M & w2[1]);
    assign w1[2]=(~M & w3[2])|(M & w2[2]);
    
    assign Q[0]=w3[0],
           Q[1]=w3[1],
           Q[2]=w3[2];
endmodule