
class class_name ;
  //data member or variable 
  bit [7:0] a = 0;
  shortint b = 0;
  int c = 0;
  
  function  new( input bit [7:0] a = 0, input shortint b = 0, input real c = 0);  //new is a method called cnstrucot used to create object and initialize them at the same moment
    this.a = a;
    this.b = b;
    this.c = c;    //"this" is used that it easy to distinguish between arguement and variable
  endfunction
  
endclass


module data_assgn();
 class_name handler;    //assignin methodg handler
    
  initial begin
   /* handler = new(23, 17,11);  //initialize using position */
    handler = new( .a(25),.b(21),.c(7));
    
    $display(" value is : %0d , %0d,%0d", handler.a,handler.b,handler.c);
    
  end
  
  
endmodule
  
