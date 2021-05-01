module DFF(input clk,rst,en,d,output reg q);
    always@(posedge clk)
        begin if (rst) q <= 1'b0;
              else if (en) q <= d;
         end
endmodule

module FA(input a,b,cin,output sum,cout);
    assign {cout,sum} = a+b+cin;
endmodule

module PISO(input clk,rst,en,[3:0]in,output reg out);
    reg[3:0] mem;
    always@(posedge clk) begin
        if (rst) begin 
            out<=1'b0;mem <= in;
            end
        else if (en) begin
            out <= mem[0];
            mem <= mem>>1;
            end
    end              
endmodule


module Serial(input clk,rst,[3:0]a,[3:0]b,output reg[3:0]sum,output reg cout,output reg[4:0] res);
    reg en; wire aout,bout,cin,c,s;
    reg [2:0]cnt;
    PISO p1(clk,rst,en,a,aout), p2(clk,rst,en,b,bout);
    FA F(aout,bout,cin,s,c);
    DFF D(clk,rst,en,c,cin);
    
    always@(posedge clk) 
    begin
        if (rst)
            begin 
                en=1'b1;
                cnt=3'b0000;
                sum=4'b0000;
                cout=1'b0;
            end
        else if(cnt>4'd4) en = 1'b0;
        else if (en) 
            begin 
            cout<=c;
            cnt<=cnt+1;
            sum<=sum>>1;
            sum[3]<=s;
        end
     res = {cout,sum};
    end
endmodule