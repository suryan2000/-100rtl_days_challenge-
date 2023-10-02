`timescale 1ns / 1ps

module day_5(

input     x   ,
input     y   ,
output    z
              );

//xnor(z,x,y);              
assign z=~(x^y);
              
endmodule
