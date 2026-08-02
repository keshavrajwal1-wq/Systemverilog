//class1
class generator;
  rand bit [3:0] a , b ; //randc generate unique random number for a variable 
  bit[3:0] y;
  //constraint x{a>15;}
  
endclass

//module
module module1;
  generator handler;
  int status;
  
  initial begin
    handler=new();
    
    for(int i=0;i<10; i++) begin
      assert (handler.randomize()) else begin
      $display("randomization fails at %0t",$time);
        $finish;
      end
    
     $display("value of a is %0d and b is %0d",handler.a,handler.b);
    end
   end
  
endmodule
