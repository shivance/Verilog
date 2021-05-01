module Bot;
    reg [15:0] X,Y;
    reg en;
    wire [31:0] Z;

    boothmul Anshuman(Z,X,Y,en);

    initial begin
        X = 0;Y = 0;en = 0;
        // Wait 100 ns for global reset to finish
        #100 en=1'b1;
        #100 X=4'd15; Y=4'd7;
        #100 X=4'd9;Y=4'd2;
        #100 X=4'd1;Y=4'd4;
        #100 X=4'd3;Y=4'd11;
        #100 X=4'd10;Y=4'd10;
        $finish;
    end      
endmodule