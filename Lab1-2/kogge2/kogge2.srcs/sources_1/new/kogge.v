module kogge(input [7:0]a,b,output [7:0]s, output cout);
    wire [7:0] c,sum;
    wire [31:0] prpn,gn;
    assign prpn[0] = a[0]^b[0],gn[0]=a[0]&b[0],
           prpn[1] = a[1]^b[1],gn[1]=a[1]&b[1],
           prpn[2] = a[2]^b[2],gn[2]=a[2]&b[2],
           prpn[3] = a[3]^b[3],gn[3]=a[3]&b[3],
           prpn[4] = a[4]^b[4],gn[4]=a[4]&b[4],
           prpn[5] = a[5]^b[5],gn[5]=a[5]&b[5],
           prpn[6] = a[6]^b[6],gn[6]=a[6]&b[6],
           prpn[7] = a[7]^b[7],gn[7]=a[7]&b[7];
    assign gn[8] = gn[7] | prpn[7] & gn[6], prpn[8] = prpn[6] & prpn[7],
           gn[9] = gn[6] | prpn[6] & gn[5], prpn[9] = prpn[5] & prpn[6],
           gn[10] = gn[5] | prpn[5] & gn[4] , prpn[10] = prpn[4] & prpn[5],
           gn[11] = gn[4] | prpn[4] & gn[3] , prpn[11] = prpn[3] & prpn[4],
           gn[12] = gn[3] | prpn[3] & gn[2] , prpn[12] = prpn[2] & prpn[3],
           gn[13] = gn[2] | prpn[2] & gn[1] , prpn[13] = prpn[1] & prpn[2],
           gn[14] = gn[1] | prpn[1] & gn[0] , prpn[14] = prpn[0] & prpn[1];
    wire cin = 1'b0;
    assign c[0] = gn[0], c[1] = gn[14], sum[0]=cin^prpn[0],sum[1]=c[0]^prpn[1];
    
    assign gn[15] = gn[8] | prpn[8] & gn[10], prpn[15] = prpn[8] & prpn[10],
           gn[16] = gn[9] | prpn[9] & gn[11], prpn[16] = prpn[9] & prpn[11], 
           gn[17] = gn[10] | prpn[10] & gn[12] , prpn[17] = prpn[10] & prpn[12],
           gn[18] = gn[11] | prpn[11] & gn[13] , prpn[18] = prpn[11] & prpn[13],
           gn[19] = gn[12] | prpn[12] & gn[14] , prpn[19] = prpn[12] & prpn[14],
           gn[20] = gn[13] | prpn[13] & gn[0] , prpn[20] = prpn[13] & prpn[0];
                 
     assign c[2] = gn[20] , c[3] = gn[19] , sum[2] = c[1]^prpn[2], sum[3] = c[2] ^prpn[3];
     
     assign gn[21] = gn[15] | prpn[15] & gn[19] , prpn[21] = prpn[15] & prpn[19], 
            gn[22] = gn[16] | prpn[16] & gn[20] , prpn[22] = prpn[16] & prpn[20],
            gn[23] = gn[17] | prpn[17] & gn[14] , prpn[23] = prpn[17] & prpn[14],
            gn[24] = gn[18] | prpn[18] & gn[0] , prpn[24] = prpn[18] & prpn[0];
     
     assign c[4] = gn[24] , c[5] = gn[23] , c[6] = gn[22] , c[7] = gn[21],
            sum[4] = c[3] ^ prpn[4] , sum[5] = c[4]^prpn[5], sum[6] = c[5]^prpn[6], sum[7] = c[6]^prpn[7];
    
     assign s = sum[7:0], cout = s[7];
    
endmodule