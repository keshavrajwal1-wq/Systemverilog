
module swap_ref();
  
  function automatic void passbyref(/*const */ ref bit [2:0] a, b);   //use of const wont change the variable value
    bit [2:0] temp;
    temp = a;
    a = b;
    b = temp;
    $display ("swapped value of a nd b are : %0d %0d", a,b);
  endfunction
  
  bit [2:0] a;
  bit [2:0] b;
  
  initial begin
    a = 3;
    b= 5;
    passbyref(a,b);
    $display("global value of a and b are :%0d,%0d", a, b);
    
  end
  
  
  
  
endmodule
