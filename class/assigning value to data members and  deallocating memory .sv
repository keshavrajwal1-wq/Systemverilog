class class_name;
  reg [2:0] data1;
  reg [1:0] data2;
  
endclass

module tb;
  class_name handler ;
  initial begin 
    handler = new();  //constructor ,allocating memory to data memebr of class
    handler.data1 = 3'b110;
    handler.data2 = 2'b10;
   
    
    $display(" data 1 :%0b  data 2 : %0b", handler.data1 , handler.data2);
    
    #10
    handler = null;//dellocating memory 
     $display(" data 1 :%0d  data 2 : %0d", handler.data1 , handler.data2);
    
  end
  
endmodule
