//array initialization and assigning
//fixed - packed and unpacked
//dynamic arrays
//associative arrays


module arrays;
  //packed array
  bit [7:0]a1;
  //unpacked array
  int a2[7:0];
  //dynamic array
  int a3[];
  
  initial begin
    $display("Inside the body of the module");
    
    //initialize a packed array
    foreach(a1[i])
      begin
        a1[i] = $urandom_range(0,1);
      end
    
    //display the packed array
    foreach(a1[i])
      begin
        $display("The value of array1 elements are %0b",a1[i]);
      end

        //initialize a unpacked array
    foreach(a2[i])
      begin
        a2[i] = $urandom_range(6500000,7000000);
      end
    
        //display the unpacked array
    foreach(a2[i])
      begin
        $display("The value of array1 elements are %0d",a2[i]);
      end
    
  end
  
  
endmodule