`timescale 1ns / 1ps

module A_tb;

reg    x,y    ;
wire   z      ;

//instantiation
A uut(
.x(x)         ,
.y(y)         ,
.z(z)
);

initial begin

    x=1'b0   ;   y=1'b0  ;
#10 x=1'b0   ;   y=1'b1  ;
#10 x=1'b1   ;   y=1'b0  ;
#10 x=1'b1   ;   y=1'b1  ;
#10  $finish;
end
endmodule
