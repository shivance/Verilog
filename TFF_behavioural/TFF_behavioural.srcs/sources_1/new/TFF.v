module TFF(input T,clk,clr,output reg Q);
    always@(negedge clk, negedge clr)
    begin
        if (~clk) Q<=1'b0;
        else if (T) Q<=~Q;
        else Q<=Q;
    end
endmodule