`timescale 1ns / 1ps

module day_9_tb                          ;
  reg   [99:0]a, b                       ;
  reg   sel=0                            ;
  wire  [99:0]y                          ;

  // Instantiate the 2:1 mux module
  mux2_1 uut(.a(a),.b(b),.sel(sel),.y(y));
 //changinig value of sel continuously
 always begin
 #5 sel=~sel                            ;
 end
  // Stimulus generation
  initial begin
   
    a = 99'd37                          ;
    b = 99'd21                          ;
    #10
    a = 99'd15                          ;
    b = 99'd55;
    #10
    
    $finish                             ;
  end
endmodule