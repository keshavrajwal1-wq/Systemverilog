`timescale 1ns/1ps

module clk_gen();
  reg clk1= 0;
  reg clk2=0;
  
  always #5 clk1=~clk1;
  
  real phase = 10;
  real ton=5;
  real toff=5;
  
initial begin
#phase;
while (1) begin
  clk2 = 0;
  #ton;
  clk2 = 1;
  #toff;
end
end
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end
initial begin
  #200;
  $finish;
end
