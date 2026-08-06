class class_name;
  rand bit wr;
  rand bit en;
  
  constraint wr1 {
    wr dist {0 := 50 , 1 :=20};
  }
  
  constraint en1{
    en dist {0 := 30 , 1 :=20};
   }
  constraint eq1{
    (wr == 0) -> (en == 1);
  }
  
endclass

module module_name();
  class_name handler1;
  initial begin
    handler1 = new();
    handler1.eq1.constraint_mode(0);
    $display(" constraint mode : %0d ", handler1.eq1.constraint_mode());
    for (int i = 0 ; i<10 ;i++) begin
      handler1.randomize();
      $display("value of wr %0d and en %0d", handler1.wr , handler1.en);
     end
   end 
endmodule
