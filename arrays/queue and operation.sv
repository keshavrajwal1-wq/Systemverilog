
module arr_compare();
  int  arr1[$];  // $ means queue
  int j ;
  initial begin 
    // adding elemnt to queue not need of  (')
    arr1 = { 1, 2 ,3 };  
    $display ( " %0p", arr1); 
    
    // adding elemnt to the front of queue 
    arr1.push_front(4);
    $display ( " %0p", arr1); 
    
    // adding elemnt to the back of queue 
    arr1.push_back(5);
    $display ( " %0p", arr1); 
    
    //adding elemnt at an index
    arr1.insert(3,10);
    $display ( " %0p", arr1);// 3 is the index, 10 is the element
    
    //removing lement from front
    j = arr1.pop_front(); // j represent  the value of popped element
    $display ( " %0p", arr1);
    $display ("%0d", j);
    
    //removing elemnt from back
    j = arr1.pop_back();
    $display ( " %0p", arr1);
    $display ("%0d", j);
     
    //removing element from index
    arr1.delete(2);
    $display ( " %0p", arr1);
    
  end
 
  
endmodule

  
