module tb;
 
  bit [1:0] a;
  bit[1:0] b;

  
  task swap( input bit [1:0] a, b);
 bit [1:0]temp;
  temp= a;
  a = b;
  b= temp;
  $display(" value of a and b : %0d , %0d", a , b);
  endtask


initial begin 
  a= 1;
  b=2;
  swap(a,b);
  $display(" actual value of a and b : %0d %0d", a,b);
  
end
  endmodule
