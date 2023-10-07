`timescale 1ns / 1ps

module mux2_1(
input [99:0]a          ,
input [99:0]b          ,
input sel              ,
output [99:0]y
 );
 
 assign y= sel ? b : a ;
 
endmodule
