//parent class

class class1;
  int data1= 41;
  
  function void function1();
    $display("value of data1 is : %0d",data1);
  endfunction
  
endclass

//child class
class class2 extends class1;
  int data2 = 90;
  
  
endclass

//module
module module1;
  class2 handler1;
  initial begin 
    handler1 = new();
    $display("%0d",handler1.data1);
    handler1.data2= 60;
    $display("%0d",handler1.data2);
    
  end
endmodule
