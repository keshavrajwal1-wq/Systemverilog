
`timescale 1ns/1ps

module m2to1mux(
  input a, b , sel ,
  output y)
;
  
   reg temp ;
  
  always @(*)begin 
    if (sel ==0 )
      temp = a;
    else
      temp = b;
  end
    
    assign y = temp;
    
  
endmodule
