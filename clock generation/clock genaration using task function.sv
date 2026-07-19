`timescale 1ns/1ps

module clk_gen();
  reg clk1= 0;
  reg clk2=0;
  
  always #5 clk1=~clk1;
  
  task clk_generation (input real phase, input real ton, input real toff) ;
#phase;
while (1) begin
  clk2 = 0;
  #ton;
  clk2 = 1;
  #toff;
end
  endtask
    
    
initial begin
  clk_generation(4,7,7);
end
    
    
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end
initial begin
  #200;
  $finish;
end
  
  
endmodule
    
