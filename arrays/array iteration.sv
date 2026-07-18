module arr_iter();
  //port declaration
  int arr1[10];
  int arr2[6];
  int i;
  //procedural block 
  initial begin
    //array iteration using for loop
    for (i = 0 ; i < 10 ; i ++) begin
      arr1[i]=i;
    end
    $display ( "elemnt of arr1 are : %0p", arr1 );

    //array iteration using for each 
    foreach (arr2[j]) begin
      arr2[j] = j*2;
    end
    $display("element of arr2 are : %0p", arr2 );

  end
  endmodule  
