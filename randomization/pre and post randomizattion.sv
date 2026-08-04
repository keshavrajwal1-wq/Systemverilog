//class
class class1;
  rand bit [3:0] a , b ;
  bit [3:0] c ;
  bit [3:0] min , max;
  
  function void pre_randomize( bit [3:0] min, bit [3:0] max);
    this.min=min;
    this.max=max;
  endfunction
  
  constraint data { 
    a inside {[min:max]};
    b inside {[min:max]};
  }
  
  function void post_randomize();
    $display(" value of a  is %0d and b is %0d",a,b);
    endfunction
  
endclass
      
    
    
    
    
//module
module module_name();
  class1 h1;
  initial begin
    h1=new();
    for (int i=0;i<10;i++) begin
      h1.pre_randomize(3,11);
      h1.randomize();
      
      
    end
    
    
    
  end
endmodule
