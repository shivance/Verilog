module PISO(input clk,rst,en,[3:0]in,output reg out);
    reg[3:0] mem;
    always@(posedge clk) begin
        if (rst) begin 
            out=1'b0;mem = in;
            end
        else if (en) begin
            out = mem[0];
            mem = mem>>1;
            end
    end              
endmodule
