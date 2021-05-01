module mux41(input s0,s1,input [3:0]X,output Y);
    assign Y = (~s0&~s1&X[0]) | (~s0&s1&X[2]) | (s0&~s1&X[1]) | (s0&s1&X[3]);
endmodule