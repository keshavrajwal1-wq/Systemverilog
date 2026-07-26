//class 1
class class_name1;
  int data1 = 32;  
  function void display();
    
    $display("value of data is %0d",data1);
  endfunction
  
 
  
endclass

//class 2
class class_name2;
  class_name1 handler_name1;
  function new();
    handler_name1 = new();
    handler_name1.display();
  endfunction
 
 
  
endclass

//module
module module_name();
  int new_data=1090;
  class_name2 handler_name2;
  initial begin
    handler_name2 = new();
    handler_name2.handler_name1.data1 = 1090;
    $display("updated value  of data %0d",handler_name2.handler_name1.data1);
    
    
    
  end
endmodule
