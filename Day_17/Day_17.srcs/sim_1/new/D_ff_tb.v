`timescale 1ns / 1ps

module D_ff_tb                       ;

reg d                                ;
reg clk                              ;
wire q                               ;

D_FF uut(.d(d),.q(q),.clk(clk))      ;

always 
    #5 clk=~clk                      ;
    
initial begin
    clk = 0                          ;
    d   = 0                          ;

    #10 d = 1                        ;   // Apply data input
    #10 d = 0                        ;   // Change data input
    #10
 $finish                             ;
end
endmodule
