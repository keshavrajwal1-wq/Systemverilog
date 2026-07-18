module test();
  int arr[10];
  int i;
  
initial begin 
  for (i = 0 ; i <10 ; i++) begin
    arr[i] = i*i;
    
  end
  
  for (i = 0 ; i <10 ; i++) begin
    $display( "arr[%d] = %d ", i , arr[i]);
  
end
end

  
endmodule
