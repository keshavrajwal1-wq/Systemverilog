`timescale 1ns /1ps
module test();
  int arr1[4];
  int arr2[6];
  int arr3[6];
  
  initial begin
    //display all elemnt of an array using %0p
    //initialise using distinct element 
    arr1= '{1,2,3,4};
    $display (" element of array 1 are : %0p", arr1);
    
    //initialise using reptitive 
    arr2 = '{6{1}};
    $display ("element of array 2 are : %0p", arr2);
    
    //initialize using default
    arr3 = '{default: 0 };
    $display("elemnt of array 3  are : %0p", arr3);
    
  end

  
endmodule
