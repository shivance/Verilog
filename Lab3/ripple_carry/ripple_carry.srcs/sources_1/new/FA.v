module FA(input a,b,cin,output s,cout);
    assign s = a^b^cin,
        cout = (a&b) | ((a^b)&cin);
endmodule