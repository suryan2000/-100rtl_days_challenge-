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
    
      p = $random;   
      q = $random;
      c_in = 0;     
      #100;          
               
    $finish;          
  end

endmodule
