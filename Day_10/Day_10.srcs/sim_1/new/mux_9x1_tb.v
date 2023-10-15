`timescale 1ns / 1ps

module mux_9x1_tb                                ;

reg  [15:0] a,b,c,d,e,f,g,h,i                    ;
reg  [3:0] sel                                   ;
wire [15:0] y                                    ;

mux_9x1 uut(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),
            .g(g),.h(h),.i(i),.sel(sel),.y(y))   ;

always begin
 #1 a = 16'd0       ;
    b = 16'd1       ;
    c = 16'd2       ;
    d = 16'd3       ;
    e = 16'd4       ;
    f = 16'd5       ;
    g = 16'd6       ;
    h = 16'd7       ;
    i = 16'd8       ;
end

initial 
begin
  #1    sel = 4'd0  ;          
  #10   sel = 4'd3  ;         
  #10   sel = 4'd6  ;         
  #10   sel = 4'd12 ;        
  #10   sel = 4'd15 ;        
  #10   
   $finish          ;  
end
endmodule
