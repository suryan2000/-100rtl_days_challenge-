`timescale 1ns / 1ps

module _100_bit_adder_tb;

  reg [99:0] p ;
  reg [99:0] q ;  
  reg c_in;       
  wire [99:0] s;   
  wire c_out;  

  ripple_carry_adder uut(  
    .p(p),               
    .q(q),                
    .c_in(c_in),          
    .s(s),                
    .c_out(c_out) 
  );
  
  // Stimulus generation
  initial begin
    
      p = 100'b11111111111111110000000000000;   
      q = 100'b00000000000;   
      c_in = 0;     
      #100;          
      p = 100'b11111111111111111110000000000;   
      q = 100'b101101100101111010101101010111;   
      c_in = 1;      
      #100;          
    $finish;          
  end

endmodule
