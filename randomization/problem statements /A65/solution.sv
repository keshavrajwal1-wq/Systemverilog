class generator;
  
  rand bit [3:0] addr;
  rand bit wr;
  
  constraint constraint_name{
    
    (wr == 0) -> ( addr inside {[0:7]});
    (wr == 1 )-> (addr inside{[8:15]});
    
  }
  
endclass
module module_name();
  generator handler;
  initial begin
    handler = new();
    for (int i = 0 ; i <20 ; i++) begin
      handler.randomize();
      $display(" wr : %0d addr : %0d", handler.wr , handler.addr);
      
    end
  end
endmodule
