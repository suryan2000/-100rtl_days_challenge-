`timescale 1ns / 1ps



module mux_256x1(
input [255:0] in     ,
input [7:0]   sel    ,
output   reg  y
    );
always@(*)begin
      y = in[sel]    ;
 end
endmodule
