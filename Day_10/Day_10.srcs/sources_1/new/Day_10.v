`timescale 1ns / 1ps

module mux_9x1(

input   [15:0] a,b,c,d,e,f,g,h,i,
input   [3:0]  sel,
output  [15:0] y)                ;

assign y = (sel == 4'd0) ?   a   :
           (sel == 4'd1) ?   b   :
           (sel == 4'd2) ?   c   :
           (sel == 4'd3) ?   d   :
           (sel == 4'd4) ?   e   :
           (sel == 4'd5) ?   f   :
           (sel == 4'd6) ?   g   :
           (sel == 4'd7) ?   h   :
           (sel == 4'd8) ?   i   :
                       16'hffff  ;
 
endmodule
