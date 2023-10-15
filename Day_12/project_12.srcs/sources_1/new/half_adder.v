`timescale 1ns / 1ps

module half_adder(
input    a                    ,
input    b                    ,
output   out                  ,
output   carry_out)           ;
    
assign   out       =  a ^ b   ;
assign   carry_out =  a & b   ;
endmodule
