//base class
class parentclass;
  int data1 = 101;
  virtual function void display(); // using virtual keyword , if two method have same name we can access method of child class by giving it priority
     $display("data 1 is %0d",data1);
  endfunction
endclass

//child class
class childclass extends parentclass;
  int data2 = 12;
  function void display();
    $display("data 2 is %0d",data2);
  endfunction
endclass

//module
module module_name();
  parentclass handler1;
  childclass handler2;
  initial begin
    handler1 = new();
    handler2 = new();
    handler1 = handler2; //extend handler1 with handler2 means handler 2 has access to parentclass member but not otherwise
   
    
    handler2.data2=71;
    handler1.display();
    handler2.display();
   
    
    
  end
endmodule
