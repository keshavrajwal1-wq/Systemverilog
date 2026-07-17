`timescale 1ns/1ps
module data_types();
  
  time clk1 = 0;
  realtime clk2 = 0;
   initial begin
     #17.546;
     
     clk1= $time;
     $display("current simulation time is : %t",clk1);
      clk2= $realtime;
     $display ("current simulation in floating point is :%t",clk2);
end
  
endmodule
