module counter(input clk,clr,m,l,[15:0]D,output reg[15:0]Q);
    always@(posedge clr,negedge clk,posedge l,posedge m)
        begin
            if (clr) Q<=16'b0000000000000000;
            else if (l!=0) Q<=D;
            else if (m) Q<=Q+1;
            else Q<=Q-1;    
        end 
endmodule