module seqDet(input x,clk,reset,output reg z);

 parameter O0 = 0 , O1 = 1 , O2 = 2 , O3 = 3 ;
 reg [1:0] Present,Next ;


 always @ (posedge clk or posedge reset)
   if (reset)
     Present <= O0;  
   else
     Present <= Next;
   

 always @ (posedge clk or posedge reset)
   if (reset)
     z <= 1'b0;
   else
     z <= (Present == O3) && x;
 
  
 always @ (*)
  begin
    case(Present)
        O0 : Next = x ? O1 : O0 ;
        O1 : Next = x ? O1 : O2 ;
        O2 : Next = x ? O3 : O0 ;
        O3 : Next = x ? O1 : O2 ;
    endcase
  $monitor(Present);
  end
  
 endmodule