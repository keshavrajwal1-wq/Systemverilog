class class_name;
  rand bit [ 7: 0 ] x , y , z;
 
  constraint constraint_name {
    x inside {[0:50]};
    y inside {[0:50]};
    z inside {[0:50]};

  }
 
endclass

module module_name();
  class_name handler_name;
  initial begin
    handler_name = new();
 
  for (int i = 0 ; i <20 ; i++ ) begin
    handler_name.randomize();
    $display("x = %0d y = %0d z = %0d", handler_name.x , handler_name.y , handler_name.z);
    #20;
  end
  end
 
endmodule
