module arr_compare();
  int  arr1[];
  
  initial begin 
    //changing size of array using new[]
    //arr1 of size 5
    arr1 = new[5];
    for (int i = 0 ;i < 5; i++) begin
      arr1[i] = 5*i;
    end
    $display ("element of array : %0p", arr1);
    
    
    //when we change the size of array, the last created array gets deleted  
    //arr1 of size 30
    arr1 = new[30](arr1);    //arr1 copyes  the elemnt of last array into new one
    $display ("element of array : %0p", arr1);
    
   /*
    arr1.delete();//delete array element
    
    for (int i = 0 ;i < 5; i++) begin
      arr1[i] = 5*i;
    end
    
    $display ("element of array : %0p", arr1);
    */
  end
  
endmodule

  
