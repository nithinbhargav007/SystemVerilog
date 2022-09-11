// understanding all the array and queue methods
//Dynamic Array methods - size , delete
//Associative array methods - num, delete, exists, first, last, next, prev 


module arrays;
  
  int darray[];
  string sarray[string];
  string myname;
  
  initial begin
  sarray = {"Name": "Nithin", "Age":"28", "DOB":"dec3"};
    darray = new[5];
    darray='{1,2,3,4};
    
    
    //display the size of the dynamic array
    
    $display("The size of the dynamic array is %0d", darray.size);
    
    //display number of elements in the associative array
    
    $display("The number of elements in the associative array is %0d", sarray.num);
    
    //delete the dynamic array and display the size again
    
    darray.delete;
    $display("The size of the dynamic array is %0d", darray.size);
    
    //delete the assoiciative array and display the number of elements
    
    sarray.delete;
    $display("the number of elements in the associative array is %0d",sarray.num);
    
    //reassigning the values
    
    sarray = {"Name": "Nithin", "Age":"28", "DOB":"dec3"};
    darray = new[5];
    darray='{1,2,3,4};
    
    //displaying the associative array
    
    foreach(sarray[i])
      $display("The element w.r.t index %0s is %0s", i, sarray[i]);
    
    //deleting only one index of the associative array
    
    sarray.delete("Name");
    
   //displaying the associative arrray, please note that associative array elements are displayed in alphabetical order if index values
    
    foreach(sarray[i])
      $display("The element w.r.t index %0s is %0s", i, sarray[i]);
    
    //check if an index exists in the associative array
    
    if(sarray.exists("Age"))
      $display("True");
    
    sarray = {"Name": "Nithin", "Age":"28", "DOB":"dec3"};
    
    
    
  end
  
endmodule
