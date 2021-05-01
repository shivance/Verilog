module tb;
  reg signed [15:0]num1;
  reg signed [15:0]num2;
  wire signed [31:0]sum;
v16 m(num1,num2,sum);
initial begin
num1=16'd9;num2=16'd161;
#100 num1=16'd11;num2=16'd12;
#100 num1=16'd31;num2=16'd21;
#100 num1=16'd55;num2=16'd5;
$finish;
  $monitor("c= %d", sum);
end
endmodule