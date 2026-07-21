module test();
  bit [2:0] data1 = 3'b010;
  bit [2:0] data2 = 3'b111;
  function void function_name();
    $display("value of a : %0d ,value of b: %0d", data1,data2);
  endfunction
  
  initial begin
    function_name;
  end
    
  
endmodule
