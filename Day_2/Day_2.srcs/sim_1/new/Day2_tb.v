`timescale 1ns / 1ps

module day2_tb;

reg p1a_t,p1b_t,p1c_t,p1d_t,p2a_t,p2b_t,p2c_t,p2d_t;
wire p1y_t,p2y_t;

Day_2 dut(p1y_t,p2y_t,p1a_t,p1b_t,p1c_t,p1d_t,p2a_t,p2b_t,p2c_t,p2d_t);

initial
begin
p1a_t=0;p1b_t=0;p1c_t=0;p1d_t=0;p2a_t=0;p2b_t=0;p2c_t=0;p2d_t=0;
#10
p1a_t=1;p1b_t=1;p1c_t=0;p1d_t=0;p2a_t=0;p2b_t=0;p2c_t=1;p2d_t=1;
#10
p1a_t=1;p1b_t=0;p1c_t=1;p1d_t=0;p2a_t=0;p2b_t=1;p2c_t=0;p2d_t=1;
#10
p1a_t=1;p1b_t=1;p1c_t=0;p1d_t=1;p2a_t=1;p2b_t=0;p2c_t=1;p2d_t=1;
#10
p1a_t=0;p1b_t=1;p1c_t=1;p1d_t=0;p2a_t=1;p2b_t=0;p2c_t=0;p2d_t=1;
#10
p1a_t=1;p1b_t=1;p1c_t=1;p1d_t=1;p2a_t=1;p2b_t=1;p2c_t=1;p2d_t=1;
#10
$stop;
end
endmodule
