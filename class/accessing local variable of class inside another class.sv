//class 1
class class_name1;
  local int data1 = 32; 
  function void assignval(input int data1);
    this.data1 = data1;
  endfunction
    
  function int giveres();
    return data1;
  endfunction
   
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
  class_name2 handler_name2;
  initial begin
    handler_name2 = new();
    handler_name2.handler_name1.assignval(3);
    $display("updated value of data is %0d",handler_name2.handler_name1.giveres);
    
    
    
    
  end
endmodule
