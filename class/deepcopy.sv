// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples


//class 1
class class1;
  int data1 = 12;
  
  function class1 function_name1();
    function_name1= new();
    function_name1.data1 = data1;
    
  endfunction
  
endclass


//class 2
class class2;
  int data2 = 24;
  
  
   
  function class2 function_name2();
    function_name2= new();
    function_name2.data2= data2;
    function_name2.handler3=handler3.function_name1();
  endfunction
    
    
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
    handler2 = new();
    handler2.data2= 10;
    handler2.handler3.data1=24;
   
    $display("value of out class 1 data member is %0d",handler1.data2);
    $display("value of out class 2 data member is %0d",handler2.data2);
    $display("value of inside class 1 data member is %0d",handler1.handler3.data1);
   
    $display("value of inside class 2 data member is %0d",handler2.handler3.data1);
    
  end
  
endmodule
