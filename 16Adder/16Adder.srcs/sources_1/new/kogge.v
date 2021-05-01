module kogge(
input [7:0]a,
input [7:0]b,
input cin,
output [8:0]s
);
wire [7:0]c;
wire [7:0]sum;
wire [31:0]prop;
wire [31:0]gen;

assign prop[0]=a[0]^b[0];
assign gen[0]=(a[0]&b[0])|(prop[0]&cin);
assign prop[1]=a[1]^b[1];
assign gen[1]=a[1]&b[1];
assign prop[2]=a[2]^b[2];
assign gen[2]=a[2]&b[2];
assign prop[3]=a[3]^b[3];
assign gen[3]=a[3]&b[3];
assign prop[4]=a[4]^b[4];
assign gen[4]=a[4]&b[4];
assign prop[5]=a[5]^b[5];
assign gen[5]=a[5]&b[5];
assign prop[6]=a[6]^b[6];
assign gen[6]=a[6]&b[6];
assign prop[7]=a[7]^b[7];
assign gen[7]=a[7]&b[7];


assign prop[8]=prop[7]&prop[6];
assign gen[8]=gen[7]|prop[7]&gen[6];
assign prop[9]=prop[6]&prop[5];
assign gen[9]=gen[6]|prop[6]&gen[5];
assign prop[10]=prop[5]&prop[4];
assign gen[10]=gen[5]|prop[5]&gen[4];
assign prop[11]=prop[4]&prop[3];
assign gen[11]=gen[4]|prop[4]&gen[3];
assign prop[12]=prop[3]&prop[2];
assign gen[12]=gen[3]|prop[3]&gen[2];
assign prop[13]=prop[2]&prop[1];
assign gen[13]=gen[2]|prop[2]&gen[1];
assign prop[14]=prop[1]&prop[0];
assign gen[14]=gen[1]|prop[1]&gen[0];


assign c[0]=(cin&prop[0])|gen[0];
assign sum[0]=cin^prop[0];
assign c[1]=gen[14];
assign sum[1]=c[0]^prop[1];

assign prop[15]=prop[8]&prop[10];
assign gen[15]=gen[8]|prop[8]&gen[10];
assign prop[16]=prop[9]&prop[11];
assign gen[16]=gen[9]|prop[9]&gen[11];
assign prop[17]=prop[10]&prop[12];
assign gen[17]=gen[10]|prop[10]&gen[12];
assign prop[18]=prop[11]&prop[13];
assign gen[18]=gen[11]|prop[11]&gen[13];
assign prop[19]=prop[12]&prop[14];
assign gen[19]=gen[12]|prop[12]&gen[14];
assign prop[20]=prop[13]&prop[0];
assign gen[20]=gen[13]|prop[13]&gen[0];



assign c[2]=gen[20];
assign sum[2]=c[1]^prop[2];
assign c[3]=gen[19];
assign sum[3]=c[2]^prop[3];

assign prop[21]=prop[15]&prop[19];
assign gen[21]=gen[15]|prop[15]&gen[19];
assign prop[22]=prop[16]&prop[20];
assign gen[22]=gen[16]|prop[16]&gen[20];
assign prop[23]=prop[17]&prop[14];
assign gen[23]=gen[17]|prop[17]&gen[14];
assign prop[24]=prop[18]&prop[0];
assign gen[24]=gen[18]|prop[18]&gen[0];


assign c[4]=gen[24];
assign sum[4]=c[3]^prop[4];
assign c[5]=gen[23];
assign sum[5]=c[4]^prop[5];
assign c[6]=gen[22];
assign sum[6]=c[5]^prop[6];
assign c[7]=gen[21];
assign sum[7]=c[6]^prop[7];

assign s={c[7],sum[7:0]};
endmodule