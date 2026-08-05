class class1;
  rand bit  a ;
  rand bit [3:0] b;
  constraint data {
    a dist { 0 := 10 , 1 := 90};
    b dist{ 0 :=10 ,[1:12] :/ 120,[13:15] :=10};
  }
  
  
endclass

module module_name;
  class1 handler1;
  initial begin 
    handler1 = new();
    
    for (int i=0;i<16;i++) begin
      handler1.randomize();
      $display(" value of a is %0d and b is %0d",handler1.a , handler1.b);
    end
  end
endmodule
  
  
