module tb;

reg s,clk,rst;wire z;
 
seqDet Anshuman (s,clk,rst,z);

always #5 clk = ~ clk;  

initial begin
fork 
    clk = 1'b0;
    rst = 1'b1;
    #15 rst = 1'b0;
begin  
    #12 s = 0;#10 s = 0 ; #10 s = 1 ; #10 s = 0 ;
    #12 s = 1;#10 s = 1 ; #10 s = 0 ; #10 s = 1 ;
    #12 s = 1;#10 s = 0 ; #10 s = 0 ; #10 s = 1 ;
    #12 s = 0;#10 s = 1 ; #10 s = 1 ; #10 s = 0 ;
    #10 $finish;
end
join   
end  
endmodule