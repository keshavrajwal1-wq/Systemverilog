// Code your testbench here
// or browse Examples

module test();
  
   bit[4:0] yin;
  bit[3:0] ain,bin;
  bit clk = 1;
  
  //generating clock
  
  //task for adding a and b
  always #5 clk = ~clk;
  task add( );
    yin = ain+bin;
    $display("sum of a= %0d and b = %0d is %0d",ain,bin,yin);
  endtask
 
  //task for randomly generating  a and b and calling add task
  task timed_simulation();
   
   
    ain = $urandom;
    bin=$urandom;
    add();
    
  endtask 
//for termination of module
   initial begin
      #100 ;
     $finish;
   end
    
     
  //for recalling of task function on every posedge
  always@(posedge clk)begin
    timed_simulation();
 end
  
  
endmodule
