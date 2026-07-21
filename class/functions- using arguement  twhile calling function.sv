module test();
  /*bit [2:0] data1 = 3'b011;
  bit [2:0] data2 = 3'b111;*/
  bit [3:0] result =0;
  function bit [3:0] function_name( input bit [2:0] data1 ,data2);
    return data1 + data2;
  endfunction
  
  initial begin
    result =function_name(3'b101,3'b110);
    $display ("%0d ", result);
  end
    
  
endmodule
