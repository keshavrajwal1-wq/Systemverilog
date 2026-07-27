//class1
class class1;
  int var1= 41;
endclass

/*class2
class class2;
  
endclass*/

//module
module module1;
  class1 handler1;
  class1 handler2;
  initial begin
    handler1 = new();
    $display("value of data is %0d ",handler1.var1);
    handler2 = new handler1;
    handler2.var1 = 16;
    $display("value of data later is %0d",handler2.var1);
    
  end
  
endmodule
