`timescale 1ns / 1ps

module ripple_carry_adder_tb;

  reg [2:0] A, B;  // Input signals A and B, 3 bits each
  reg c_in;       // Carry-in signal
  wire [2:0] S;    // Output sum, 3 bits
  wire carry_out;  // Carry-out signal

  ripple_carry_adder uut(  // Instantiation of the ripple carry adder
    .A(A),                // Connect A to the A port of the adder
    .B(B),                // Connect B to the B port of the adder
    .c_in(c_in),          // Connect c_in to the carry-in port of the adder
    .S(S),                // Connect S to the output sum port of the adder
    .carry_out(carry_out) // Connect carry_out to the carry-out port of the adder
  );
  
  // Stimulus generation
  initial begin
    repeat(3) begin  // Generate 3 test cases
      A = $random;   // Assign a random 3-bit value to A
      B = $random;   // Assign a random 3-bit value to B
      c_in = 0;      // Set the carry-in to 0
      #100;          // Wait for 100 time units before the next test case
    end
    repeat(3) begin  // Generate 3 test cases
      A = $random;   // Assign a random 3-bit value to A
      B = $random;   // Assign a random 3-bit value to B
      c_in = 1;      // Set the carry-in to 1
      #100;          // Wait for 100 time units before the next test case
    end
    $finish;          // Finish the simulation
  end

endmodule

