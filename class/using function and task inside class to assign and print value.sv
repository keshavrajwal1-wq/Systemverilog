class class_name;
  //members
  int data1 ;
  int data2;
  int data3;
  
  function new( input  int data1 , input int data2 , input int data3 );
    this.data1 = data1 ;
    this.data2 = data2 ;
    this.data3 = data3 ;
  endfunction
  
  task display();
    $display( "value of data1 is %0d , data2 is %0d  and data3 is %0d ", data1, data2,data3);
  endtask
    
  
endclass;

module module_name ;
  
  class_name handler_name ;
  
  initial begin
    handler_name = new (106,1,999);
    handler_name.display;
    
  end
  
endmodule
