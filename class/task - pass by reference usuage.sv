module tb;
 
  bit [1:0] a;
  bit[1:0] b;

  //use of automatic and ref to pass by reference
 task automatic swap(  ref bit [1:0] a, b);  //use of " to use global variable as reference any time a task is called the global variable changes
 //" automatic " creates new local variable in this case "temp" , so that if multiple times a task is called temp value wont interfere to each other
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
