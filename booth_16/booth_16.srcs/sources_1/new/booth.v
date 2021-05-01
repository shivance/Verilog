`timescale 1ns / 1ps


module booth( input clk,reset,
           input [15:0] A,B,
          output reg [31:0] out
    );
    
    //reg [2:0] c = 0;
    reg [2:0] m [7:0]; //bit-pair recoded 
    
    wire [16:0] B1; //append 1'b0 at the end of Multiplier
    assign B1 = {B , 1'b0};
    
    wire [15:0] inv_a;
    assign inv_a = (~A) + 1'b1;
    
    wire [16:0] inv_a2;
   assign inv_a2 = {inv_a , 1'b0};

    
    integer i,ct=0;
            
        integer j;
        reg [31:0] c [7:0];
    //    reg zflag=1'b1,aflag= 1'b0,bflag = 1'b1,xflag=1'b1,yflag=1'b1;
    
    ////////////////////////////////////////////////////////////////
    always @(posedge clk)
        begin
        $monitor("time=",$time , " m[0]=%b , m[1]=%b , m[2]=%b , m[3]=%b , inv_a=%b, inv_a2=%b ", m[0] , m[1] , m[2] , m[3], inv_a, inv_a2);
            if(reset) 
            begin
             //out = 0;
              for(i=0 ; i<8 ; i = i+1)
               begin
                   c[i] = 0;
               end
            end  
                      
            else
            begin  
                ct = 0;     //evaluating bit pair recoded multiplier
               for(i=1; i<16; i = i+2)
                    begin
                      case({B1[i+1], B1[i], B1[i-1]})
                        3'b000,3'b111 : m[ct] = 0;
                        3'b001,3'b010 : m[ct] = +1;        
                        3'b011 : m[ct] = +2;
                        3'b100 : m[ct] = -2;
                        3'b101,3'b110 : m[ct] = -1;    
                        default: $display("Wrong signal !!!");
                      endcase    
                      ct = ct+1;                                
                    end                                       
            end
         end

        always @(posedge clk)
        //initial
        #20 begin
        
                for(j=0; j<8 ; j=j+1)                
                begin 
                    case (m[j])
                        3'b000 : c[j] = 0;
                        3'b001 : c[j] = { {16{A[15]}} , A }; 
                        3'b111 : c[j] = { {16{inv_a[15]}} ,inv_a  };  //-1
                        3'b010 : c[j] = { {16{A[15]}} , A , 1'b0};   //+2
                        3'b110 : c[j] = { {16{inv_a2[16]}} , inv_a2};  //-2
                   endcase
                  //$display("complete me aaaya! j=%d , m[j]=%b, c[j]=%b", j , m[j] , c[j]);
                end
                        //$finish;
                end
        
        integer k;
        //reg bflag = 1;
        
        always @(posedge clk)
        #40
         begin
                for(k=0 ; k<8 ; k = k+1)      
                begin
                    case(k)
                     0 :  c[k] = c[k]<<0; 
                     1 :  c[k] = c[k]<<2; 
                     2 :  c[k] = c[k]<<4; 
                     3 :  c[k] = c[k]<<6;  
                     4 :  c[k] = c[k]<<8; 
                     5 :  c[k] = c[k]<<10; 
                     6 :  c[k] = c[k]<<12;  
                     7 :  c[k] = c[k]<<14;  
                     default : $display("bitpair block me error");      
                    endcase  
                   $display($time ," yowhatsapp,  k=%d, c[k]=%b  ,", k , c[k] );                  
                end 
                out = c[0] + c[1] + c[2] + c[3] + c[4] + c[5] + c[6] + c[7];
          end
          
         // assign 
    
endmodule
