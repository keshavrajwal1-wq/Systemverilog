class class1;
  randc bit [3:0] a , b ;
  bit [3:0] y;
  
  constraint data_a {a==5;}
  constraint data_b {b>2}
  
  
endclass

module module_name;
  class1 handler1;
  initial begin
    handler1=new();
    for (int i = 0 ; i<10 ;i++ ) begin
      handler1.randomize();
      $display("value of a is %0d and b is %0d",handler1.a,handler1.b);
    end
    
  end
  
endmodule
