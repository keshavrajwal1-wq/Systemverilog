class class_name;
  bit [7:0 ] a;
  bit [7:0 ] b;
  bit [7:0 ] c;
  
  function new( input bit [ 7:0 ] a, input bit [ 7:0 ] b , input bit [ 7:0 ] c);
    
    this.a = a;
    this.b = b;
    this.c = c;
    endfunction
endclass

module module_name ;
  
  class_name handler_name;
  initial begin
    handler_name = new ( 2,4,56) ;
    $display("value of a : %0d value of b : %0d value of c :%0d" , handler_name.a,handler_name.b,handler_name.c);
    
  end
  
endmodule
