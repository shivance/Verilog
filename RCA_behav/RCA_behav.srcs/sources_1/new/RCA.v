module RCA(input[3:0]A,B,input cin,output[3:0]S,output cout);
    wire[4:0]c; assign c[0]=cin;
    genvar i;generate for(i=0;i<4;i=i+1)
             begin : r_loop
                wire t1,t2,t3;
                xor g1(t1,A[i],B[i]),g2(S[i],t1,c[1]);
                and g3(t2,A[i],B[i]),g4(t3,t1,c[i]);
                or g5(c[i+1],t2,t3);
              end
            endgenerate              
    assign cout= c[4];
endmodule
