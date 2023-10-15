`timescale 1ns / 1ps



module half_adder_tb      ;
reg   a , b               ;
wire  out , carry_out     ;

half_adder uut(.a(a),.b(b),.out(out),.carry_out(carry_out))  ;

initial begin
       a=1'b0 ; b=1'b0 ;
#10    a=1'b0 ; b=1'b1 ;
#10    a=1'b1 ; b=1'b0 ;
#10    a=1'b1 ; b=1'b1 ;
#10
$finish                ;
    
end
endmodule
