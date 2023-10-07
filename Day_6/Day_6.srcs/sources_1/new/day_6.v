`timescale 1ns / 1ps

//module A of day 4
module A(
input   x    ,
input   y    ,
output  z
             );
            
assign z=x&(x^y);
endmodule

//module B of day 5 
module B(

input     x   ,
input     y   ,
output    z
              );
                            
assign z=~(x^y);              
endmodule

module day_6(
input x,
input y,
output z
);
wire A1,B1,A2,B2;

//instatntiation of A module
A IA1(.z(A1),.x(x),.y(y));
//instatntiation of B 
B IB1(.z(B1),.x(x),.y(y));
//instatntiation of A module
A IA2(.z(A2),.x(x),.y(y));
//instatntiation of B 
B IB2(.z(B2),.x(x),.y(y));


assign z=(A1|B1)^(A2&B2);
endmodule
