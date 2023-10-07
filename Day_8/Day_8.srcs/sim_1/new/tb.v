`timescale 1ns / 1ps

module tb               ;
  reg  [2:0] A          ;
  wire [1:0] B          ;
  
  Polpulation_count uut(.A(A),.B(B));

  initial begin
   
        A = 3'b000      ;
    #10 A = 3'b001      ;
    #10 A = 3'b010      ;
    #10 A = 3'b011      ;
    #10 A = 3'b100      ;
    #10 A = 3'b101      ;
    #10 A = 3'b110      ;
    #10 A = 3'b111      ;
    #10                         

    $finish                                ;
  end

endmodule
