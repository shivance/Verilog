module tb;
    reg clk;
    reg [7:0]a,b;
    reg [3:0]f;integer i;
    wire zr,ob;wire [7:0]o;
    always #1 clk=~clk;
    ALU Anshuman(clk,a,b,f,ob,zr,o);
    initial begin
    clk=1'b1;a=8'd140;b=8'd121;f=4'd0;
    //#2 f=4'd1;#2 f=4'd2;#2 f=4'd3;#2 f=4'd4;#2 f=4'd5;#2 f=4'd6;#2 f=4'd7;#2 f=4'd8;#2 f=4'd9;#2 f=4'd10;
    //#2 f=4'd11;#2 f=4'd12;#2 f=4'd13;#2 f=4'd14;#2 f=4'd15;#2 f=4'd15;#2 a=8'd6;b=8'd5;f=4'd14;
    
    for (i=1;i<16;i=i+1) 
        #2 f=i;
end
endmodule