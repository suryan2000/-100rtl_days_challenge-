`timescale 1ns / 1ps

module D_FF(
    input      clk       , //clk input
    input      d         , //data input
    output reg q)        ; //q output

always@(posedge clk)begin  // Use a clocked always block
     q<=d                ; // copy d to q at every positive edge of clk
    end
endmodule
