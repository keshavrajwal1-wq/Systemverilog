//shallow copy

//class 1
class class1;
  int data1 = 12;
  
  task display();
    $display("value of data1 is : %0d",data1);
    
  endtask
  
endclass


//class 2
class class2;
  int data2 = 24;
  
  class1 handler3;
  function new();
    handler3 = new();
  
    
  endfunction
  
  
endclass


//module
module mod_name();
  class2 handler1;
  class2 handler2;
  initial begin
    handler1 = new();
    handler2 = new handler1;
    handler1.handler3.data1 = 23;
    handler1.handler3.display;
    handler2.handler3.display;
    handler1.data2=1;
    $display("%0d",handler2.data2);
   
    
  end
  
endmodule
