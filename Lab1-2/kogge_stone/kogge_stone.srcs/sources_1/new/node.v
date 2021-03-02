module node(input a,b,output P,G);
    assign P=a^b,G=a&b;
endmodule