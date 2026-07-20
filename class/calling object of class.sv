class class_name;
  reg [2:0] data1;
  reg [1:0] data2;
  
endclass

module tb;
  class_name handler ;
  initial begin 
    handler = new();//constructor
    $display(" data 1 :%0d  data 2 : %0d", handler.data1 , handler.data2);
  end
  
endmodule
