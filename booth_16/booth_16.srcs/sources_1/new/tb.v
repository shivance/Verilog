module tb;
    reg [15:0] a,b;
    reg clk,rst;
    wire [31:0] res;

    booth Anshuman(clk,rst,a,b,res);

    initial begin
        clk=1'b0;a=0;b=0;rst=0;
        forever #5 clk = ~clk;
        end
        
     initial begin
        #10 rst=0;a=16'd91;b=16'd111;
        #100 rst=1;
        #10 rst=0;a=16'd45;b=4'd44;
        #100 rst=1;
        #10 rst=0;a=16'd75;b=16'd12;
        #100 $finish;
    end      
endmodule