class class_name;
  rand int a , b;
  rand bit[3:0] raddr , waddr;
  
  constraint constraint_name{
    a inside {[4: 8]};
    b inside {[0:3]};
    a dist { [4:7] :/ 70,8 :=20};
    b dist { 0 :=20, [1:3] :=10};
    
    (a== 8) <-> (b ==1);
    
    if (a inside {[4:6]}) {
      raddr inside {[1:7]};
      waddr == 0;}
    else {
        raddr inside {[8:15]};
      waddr ==1;}
     }
  
endclass

module module_name();
  class_name handler1;
  initial begin
    handler1=new();
     
    for (int i = 0 ; i<20;i++) begin
        if(handler1.randomize()) begin
          $display("a =%0d b = %0d raddr =%0d waddr =%0d", handler1.a ,handler1.b,handler1.raddr,handler1.waddr);
      end
    
    else begin
      $display("randomization failed");
      $finish;
      end
    end
    
  end
endmodule
