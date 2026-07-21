module test();
  
  function integer unsigned function_name(integer unsigned a,integer unsigned b);
    return a*b;
  endfunction
    
    initial begin
      
      $display("value : %0d",function_name(5,3));
    end
               endmodule
