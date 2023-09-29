`timescale 1ns / 1ps


module day_1(out,in1,in2,in3);

input in1,in2,in3;
output out;
wire out1;

assign out1=~(in1^in2);
assign out= in3^out1;
endmodule
