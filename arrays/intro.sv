`timescale 1ns /1ps
module test();
  bit arr1[8];
  bit arr2[]= {1,0,0,1};
  
  initial begin
    $display (" size of arr1 is :%0d",$size(arr1));
    $display ("size of arr2 is : %0d",$size(arr2));
  end

  
endmodule
