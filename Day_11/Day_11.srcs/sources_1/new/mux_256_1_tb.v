`timescale 1ns / 1ps

module mux_256_1_tb                      ;

reg [255:0] in                           ;
reg [7:0]   sel                          ;
wire        y                            ;
mux_256x1 uut(.in(in),.sel(sel),.y(y))   ;

initial begin
   in=256'hf3f6f920fcfa5                 ;
   
      sel = 8'd1                         ;     
 #10  sel = 8'd2                         ;   
 #10  sel = 8'd3                         ;
 #10  sel = 8'd4                         ;
 #10  sel = 8'd5                         ;   
 #10  sel = 8'd6                         ;
 #10 
   $finish                               ;
 end 
endmodule
