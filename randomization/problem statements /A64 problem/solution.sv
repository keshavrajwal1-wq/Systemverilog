class generator;
  
  rand bit rst;
  rand bit wr;
  
  constraint constraintname{
    rst dist {0 :/ 30, 1 :/70};
    wr dist {0 :/50 , 1:/50};               
  }

endclass

module module_name();
  generator handler;
  initial begin
    handler= new();
    for( int i = 0 ; i<20 ;i++) begin
      handler.randomize();
      $display(" rst : %0d wr : %0d",handler.rst,handler.wr);
    end
  end
endmodule
