//displaying a associative array

module aarr;
  
  string sarray[string];
  string i;
  
  initial begin
        sarray["name"] = "nithin";
    sarray["town"] = "mysore";
    sarray["age"] = "28";
    sarray["gender"] = "male";

    // printing the array in forward manner
    
    if(sarray.first(i)) do
      $display("The index and element of the array is %0s : %0s", i, sarray[i]);
    while(sarray.next(i));
    
    //printing the array in reverse manner
    
    if(sarray.last(i)) do
      $display("The index and element of the array is %0s : %0s", i, sarray[i]);
    while(sarray.prev(i));
    
  end
  
  
endmodule :aarr