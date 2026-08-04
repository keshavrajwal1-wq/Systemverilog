//class
class class1;
  bit [3:0] a , b ;
  bit[3:0]c ;
  
  extern constraint data;
  
  extern function void function_name();
  
endclass

    constraint class1::data {
      a <12 ;a>2;
      b inside {[1:5]};
      
    };
    function void class1::function_name();
      $display(" value of a and b are  %0d and %0d",a,b);
      
    endfunction
      
    
    
    
    
//module
module module_name();
  class1 h1;
  initial begin
    h1=new();
    for (int i=0;i<10;i++) begin
      h1.randomize;
      h1.function_name;
    end
    
    
    
  end
endmodule
