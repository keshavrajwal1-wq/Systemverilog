class generator;
  
  bit [3:0] a = 5,b =7;
  bit wr = 1;
  bit en = 1;
  bit [4:0] s = 12;
  
  function void display();
    $display("a:%0d b:%0d wr:%0b en:%0b s:%0d", a,b,wr,en,s);
  endfunction
  function generator variable;
    variable = new();
    variable.a =a;
    variable.b=b;
    variable.wr=wr;
    variable.en=en;
    variable.s=s;
  endfunction
 
endclass
module module_name;
  generator handler1;
  generator handler2;
initial begin
  handler1 = new();
  handler2 = new();
  handler2=handler1.variable;
  handler1.a=0;
  handler2.display();
   handler1.display();
  
  
end
endmodule
  
  
  
