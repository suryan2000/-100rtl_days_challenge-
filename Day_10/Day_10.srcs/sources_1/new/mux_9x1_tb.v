`timescale 1ns / 1ps

module mux_9x1_tb ;

reg  [15:0] a,b,c,d,e,f,g,h,i;
reg  [3:0] sel;
wire [15:0] y;

mux_9x1 uut(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.i(i),.sel(sel),.y(y));

always begin
    a=16'd1;
    b=16'd2;
    c=16'd3;
    d=16'd4;
    e=16'd5;
    f=16'd6;
    g=16'd7;
    h=16'd8;
    i=16'd9;
    

end

initial 
begin
    #10
    sel=4'd0;
     #10
    sel=4'd3;
     #10
    sel=4'd6;
     #10
    sel=4'd8;
   $finish;  
end

endmodule
