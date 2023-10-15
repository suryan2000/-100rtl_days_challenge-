`timescale 1ns / 1ps

//defining full adder module
module full_adder(

input  x              ,
input  y              ,
input  carry_in       ,
output sum            ,
output carry_out
)                     ;

assign    sum=x^y^carry_in                      ;  //sum
assign    carry_out=x&y |y&carry_in |carry_in&x ;  //carry
endmodule


//defining top module 100 bit adder
module _100_bit_adder(
  input [99:0] p,
  input [99:0] q,
  input c_in,
  output [99:0] s,
  output  c_out
);
 
  wire [99:0] carry;    
       //assigning values to first full adder
 full_adder FA(.x(p[0]),.y(q[0]),.carry_in(c_in),.sum(s[0]),.carry_out(carry[0]));
genvar i;
       //for loop for rest of the 99 full adders
generate
  for (i=1;i<100;i=i+1) begin

    full_adder FA(.x(p[i]),.y(q[i]),.carry_in(carry[i-1]),.sum(s[i]),.carry_out(carry[i]));

end
endgenerate

assign c_out=carry[99];

endmodule
