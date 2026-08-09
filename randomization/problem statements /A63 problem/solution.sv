class generator;
  
  rand bit [4:0] a;
  rand bit [5:0] b;
  
  constraint constraint_name{

    a inside {[0:8]};
    b inside {[0:5]};
    
  }
  
 
  
endclass

module module_name();
  generator handler;
  int count;
  initial begin
    handler = new();
    for(int i=0;i<20;i++) begin
      assert(handler.randomize()) else count++;
      $display(" value a : %0d value b :%0d ", handler.a
               ,handler.b);
    end
    $display("radomization failed %0d times",count);
  end
endmodule
