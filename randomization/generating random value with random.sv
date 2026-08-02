//class1
class generator;
  rand bit [3:0] a , b ; //randc generate uniquestion random number for a variable 
  bit[3:0] y;
  
endclass

//module
module module1;
  generator handler;
  int status;
  
  initial begin
    handler=new();
    for(int i=0;i<10; i++) begin
      status = handler.randomize();
      $display("value of a is %0d and b is %0d %0d",handler.a,handler.b,status);
      
    end
    
  end
  
endmodule
