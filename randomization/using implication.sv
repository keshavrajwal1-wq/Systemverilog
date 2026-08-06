class class_name;
  rand bit a , b ;
  constraint constraint_name{
    a dist{ 0:=50 ,1:=50};
    b dist{0 := 30 ,1:=10};
    
  }
  constraint constraint_name2{
    ( a==0 ) -> (b==1);
    
    
  }
  
endclass

module module_naame();
  class_name handler1;
  initial begin
    
    handler1 = new();
    
    for (int i =0 ;i<10;i++) begin
      handler1.randomize();
      $display( "a : %0d b : %0d", handler1.a,handler1.b);
      
    end
    
  end
  
