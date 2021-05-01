module DFF(input D,clk,clr,output reg Q);
    always@(negedge clk,negedge clr)
    begin
        if (~clr) Q<=1'b0;
        else Q<=D;
    end 
endmodule
