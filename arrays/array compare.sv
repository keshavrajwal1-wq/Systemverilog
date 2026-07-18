module arr_compare();
  int  arr1[4] = '{1,4,3,4} ; /// both array should be of same length and same datatype 
  int arr2[4] ='{1,2,3,4};
  int status ;
  initial begin 
    status = (arr1 == arr2);
    $display ("status : %0d", status);
    $display (" status 1 means same , else false");
    
  end
endmodule
