`timescale 1ns / 1ps



module Population_count_tb;

reg [2:0] a;
reg  [1:0] b;

Population_count uut (.A(a[2:0]), .B(b[1:0]));

initial begin
    a = 3'b000;
    #100
    a = 3'b001;
    #100
    a = 3'b010;
    #100
    a = 3'b011;
    #100
    a = 3'b100;
    #100
    a = 3'b101;
    #100
    a = 3'b110;
    #100

    #100
    $finish;
end



endmodule
