`timescale 1ns / 1ps


module A(
input   x    ,
input   y    ,
output  z
             );
            
assign z=(x^y)&x;  //MODULE ASSSIGNMENT
endmodule
