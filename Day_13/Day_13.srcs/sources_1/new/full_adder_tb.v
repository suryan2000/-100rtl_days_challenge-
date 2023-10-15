`timescale 1ns / 1ps

module full_adder_tb ;

reg    a , b , c_in  ;
wire   out , c_out   ;

full_adder uut(.a(a),.b(b),.c_in(c_in),.out(out),.c_out(c_out));

initial begin
     a=1'b0 ; b=1'b0 ; c_in=1'b0 ;
#10  a=1'b0 ; b=1'b0 ; c_in=1'b1 ; 
#10  a=1'b0 ; b=1'b1 ; c_in=1'b0 ; 
#10  a=1'b0 ; b=1'b1 ; c_in=1'b1 ; 
#10  a=1'b1 ; b=1'b0 ; c_in=1'b0 ; 
#10  a=1'b1 ; b=1'b0 ; c_in=1'b1 ; 
#10  a=1'b1 ; b=1'b1 ; c_in=1'b0 ; 
#10  a=1'b1 ; b=1'b1 ; c_in=1'b1 ; 
#10 
$finish     ;
end
endmodule
