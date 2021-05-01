module ha(a, b, sum, carry);
// a and b are inputs
input a;
input b;
output sum;
output carry;
assign carry=a&b;
assign sum=a^b;
endmodule

module v2(a,b,c);
input [1:0]a;
input [1:0]b;
output [3:0]c;
wire [3:0]c;
wire [3:0]temp;
//stage 1
// four multiplication operation of bits accourding to vedic logic done using and gates 
assign c[0]=a[0]&b[0]; 
assign temp[0]=a[1]&b[0];
assign temp[1]=a[0]&b[1];
assign temp[2]=a[1]&b[1];
//stage two 
// using two half adders 
ha z1(temp[0],temp[1],c[1],temp[3]);
ha z2(temp[2],temp[3],c[2],c[3]);
endmodule

module v4(a,b,c);
input [3:0]a;
input [3:0]b;
output [7:0]c;

wire [3:0]q0,q1,q2,q3;	
wire [5:0]temp;
wire [5:0]q4;
wire [6:0]q5;
wire [6:0]q6;

v2 z1(a[1:0],b[1:0],q0[3:0]),
z2(a[3:2],b[1:0],q1[3:0]),
z3(a[1:0],b[3:2],q2[3:0]),
z4(a[3:2],b[3:2],q3[3:0]);

assign q4=q1+q0[3:2];
assign temp ={q3[3:0],2'b0};
assign q5=temp+q2;
assign q6=q5[5:0]+q4[5:0];

assign c[1:0]=q0[1:0];
assign c[7:2]=q6[5:0];
endmodule

module v8(a,b,c);
input [7:0]a;
input [7:0]b;
output [15:0]c;

wire [7:0]q0,q1,q2,q3;	
wire [7:0]temp;

wire [12:0]q4;
wire [12:0]q5;
wire [12:0]q6;

v4 z1(a[3:0],b[3:0],q0[7:0]);
v4 z2(a[7:4],b[3:0],q1[7:0]);
v4 z3(a[3:0],b[7:4],q2[7:0]);
v4 z4(a[7:4],b[7:4],q3[7:0]);

assign q4=q1+q0[7:4];
assign temp={q3,4'b0000};
assign q5=temp+q2;
assign q6=q5[11:0]+q4[11:0];

assign c[3:0]=q0[3:0];
assign c[15:4]=q6[11:0];
endmodule


module v16(a,b,c);
input signed [15:0]a;
input signed [15:0]b;
output signed [31:0]c;

wire [15:0]q0,q1,q2,q3;	
wire [15:0]temp;
wire [24:0]q4;
wire [24:0]q5;
wire [24:0]q6;
v8 z1(a[7:0],b[7:0],q0[15:0]);
v8 z2(a[15:8],b[7:0],q1[15:0]);
v8 z3(a[7:0],b[15:8],q2[15:0]);
v8 z4(a[15:8],b[15:8],q3[15:0]);

assign q4=q1+q0[15:8];
assign temp={q3,8'b00000000};
assign q5=temp+q2;
assign q6=q5[23:0]+q4[23:0];
 
assign c[7:0]=q0[7:0];
assign c[31:8]=q6[23:0];
endmodule

