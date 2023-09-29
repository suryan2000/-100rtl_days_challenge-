`timescale 1ns / 1ps


module day_1_tb;

reg t_in1,t_in2,t_in3;
wire t_out;

day_1 dut(t_out,t_in1,t_in2,t_in3);

initial
begin

t_in1=0;t_in2=0;t_in3=0;
#10
t_in1=0;t_in2=1;t_in3=1;
#10
t_in1=1;t_in2=0;t_in3=0;
#10
t_in1=1;t_in2=1;t_in3=1;
#10
$stop;
end

endmodule
