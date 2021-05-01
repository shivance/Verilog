module  USR(input m_in,l_in,clk,clr,[15:0]Ip,[1:0]s,output reg[15:0]Ap);
    always@(negedge clk,posedge clr)
        begin 
            if (clr) Ap=16'd0;
            else 
                begin
                    case(s)
                        2'b00:Ap<=Ap;
                        2'b01:Ap={m_in,Ap[15:1]};
                        2'b10:Ap={Ap[14:0],l_in};
                        2'b11:Ap<=Ip;
                    endcase
                end
        end
endmodule