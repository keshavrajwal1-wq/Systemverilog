`timescale 1ns/1ps 

//module start 
module custom_clk();
  reg clk1 = 0;
  reg clk2 = 0;
  
  real ton;
  real toff;
  real pout;
  real period;
  
  
  //clk generation for clk1
  always #5 clk1 = ~clk1;
  
  
  //we will generate two task one to take parameter for clk2 and another for generation of clk2
  
  //task for paramter
  
  task param (input real frequency , input real phase ,input real dutycycle,output real period, output real ton ,output real toff,   output real pout);
    
  pout= phase;
    period = 1_000_000_000.0/frequency;
    ton = period * dutycycle;
    toff= period - ton;
  endtask
  
  
  //for clk2 generation
  task clk2_gen(input real ton, input real toff,input real pout);
    #pout;
    while(1)begin
    clk2=1'b1;
    #ton;
    clk2=1'b0;
    #toff;
    end
  endtask
  
  //calling task 
  initial begin
    param(43_000_000.0, 10, 0.3,period,ton,toff,pout);
    clk2_gen(ton,toff,pout);
  end
  
  
  //module termination
  initial begin
    #200;
    $finish;
  end
    //ep wave
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, custom_clk);
end
endmodule
