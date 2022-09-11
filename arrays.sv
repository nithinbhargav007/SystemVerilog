//Understanding how to create , declare , assign and display arrays

module all_array;
  
  //fixed array
  int farray [7:0];
  
  //packed array - note : we should use only the packed data types which are bit, logic , byte
  
  bit [7:0] parray;
  
  //unpacked array - same as fixed array above
  
  //dynamic array
  
  real darray[];
  real darray2[];
  
  //queue 
  
  int queue[$];
  
  initial begin 
    //code to initialize elements
    
    //inititalize fixed array and make elements same as indices of the array
    
    foreach(farray[i])
      begin
        farray[i] = i;
      end
    
    //display fixed array
    
    foreach(farray[i])
      begin
        $display("Fixed array : The value of element at Index %0d is %0d", i, farray[i]);
     end
    
    //initialize packed array
    
    foreach(parray[i])
      begin
        parray[i] = $urandom_range(0,1);
      end
    
    //display packed array
    
    foreach(parray[i])
      begin
        $display("Packed array : The value of element at Index %0d is %0d", i, parray[i]);
     end
    
  
  //initialize a dynamic array of 10 elements
  
  darray = new[10];
  
  //assign values to the dynamic array
  
  foreach(darray[i])
      begin
        darray[i] = darray.size()-i;
      end
  
  //display values of the dynamic array
  
  foreach(darray[i])
      begin
        $display("Dynamic array : The value of element at Index %0d is %0d", i, darray[i]);
     end
    
    //increasing the size of the original dynamic array to 15 elements but keeping the elements as it is
    
    darray2 = new[15](darray);
    
    //assigning 5 remaining elements of the second dynamic array
    
    for(int i=darray.size(); i< darray.size()+5;i++)
      darray2[i] = i;
  
    //displaying the elements of the second dynamic array - notice how the 10 elements taken from first dynamic array is still intact
    
    foreach(darray2[i])
      begin
        $display("Dynamic array 2 : The value of element at Index %0d is %0d", i, darray2[i]);
     end
  end
endmodule