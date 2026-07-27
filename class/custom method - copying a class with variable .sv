//class1
class class_name1;
  int data1 = 32;
  bit [7:0] data2 =27;
  
  function class_name1 function_name;
    function_name = new();
    function_name.data1 = data1+2;
    
  endfunction
  
endclass

//module
module module_name();
  class_name1 handler_name1;
  class_name1 handler_name2;
  initial begin
    handler_name1 = new();
    handler_name2 = new();
    handler_name2= handler_name1.function_name;
    $display("value of data1 and data 2 is: %0d ",handler_name2.data1);
    
  end
endmodule
