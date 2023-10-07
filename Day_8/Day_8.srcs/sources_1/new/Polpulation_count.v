`timescale 1ns / 1ps

module Polpulation_count(
input  wire [2:0] A,                   //input  3 bit  vector
output wire [1:0] B                    //outbut 2 bit vector
    )                                                              ;
    
assign    B[1] =  (A[2]|A[0]) & (A[2]|A[1]) & (A[1]|A[0])          ;
assign    B[0] =  A[2] & (~(A[1]^A[0])) | ((~A[2]) & (A[1]^A[0]))  ;

endmodule
