module tb;
    reg m_in,l_in,clk,clr; reg [15:0] Ip;
    reg [15:0]Ap; reg [1:0]s;
    
    USR Register(m_in,l_in,clk,clr,Ip,Ap);
    
    initial begin
        clk=1'b0;
        forever #5 clk=~clk;
    end
    
    initial begin
        clk = 1'b1; s = 2'b00; Ip = 16'd0;Ap=16'b0;
        #35 clr = 1'b0;
        #35 s = 2'b10;
        #70 s = 2'b11; m_in = 1'b1;
        #35 m_in = 1'b0;
        #35 l_in = 1'b1;
        #35 s = 2'b10;
        #35 l_in = 1'b0;
        #35 s = 2'b00;
     end
endmodule