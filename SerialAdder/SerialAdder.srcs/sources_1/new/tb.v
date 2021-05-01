module tb;
    reg clk,rst;reg [3:0] A;reg[3:0]B;
    wire [3:0] out;wire cout;wire [4:0]res;
    Serial Add(clk,rst,A,B,out,cout,res);
    always #1 clk = ~clk;
    initial begin
        clk=1'b1;rst=1'b1;
        A=4'b0101;B=4'b0010;
        #10 rst=1'b0;
        #10 $finish;
     end
     
endmodule