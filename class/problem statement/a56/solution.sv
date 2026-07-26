class class_name;
//datamemeber
  bit [3:0] data1;
  bit [3:0] data2;
  bit [3:0] data3;
  
  //assigning value to member using function
  function void function_name(bit[3:0] data1,bit [3:0] data2,bit [3:0] data3);
    this.data1=data1;
    this.data2=data2;
    this.data3=data3;
  endfunction
  
  task task_name();
    int sum;
    $display ("value are %0d , %0d and %0d", data1,data2 ,data3);
    sum = data1+data2+data3;
    $display("value of sum is %0d ",sum);
  endtask
  
  
endclass
module module_name;
  class_name handler_name;
  initial begin
    handler_name = new();
    handler_name.function_name(15,15,15);
    handler_name.task_name();
  end
endmodule
