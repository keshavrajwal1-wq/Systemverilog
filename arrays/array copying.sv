module arr_copy();
  int  arr1[10];  /// both array should be of same length and same datatype 
  int arr2[10];
  initial begin 
    for(int i = 0; i<10 ; i++) begin
      arr1[i]= i;
      end
    arr2=arr1; //comparing two array
    $display("array 2 is : %p" ,arr2);
  end
endmodule
