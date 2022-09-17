//Write a program using dynamic arrays
//first array : number of elements should be 20, values of the elements within should be between 30 and 40
//second array : Sum of all elements should be >100
//third array : sum of all elements should be > 100
//fourth array : Size of the array should be same Aas the other three arrays

class arrays;
  
  rand int array1[];
  rand int array2[];
  rand int array3[];
  rand int array4[];
  
  //constraints w.r.t. array size
  
  constraint array_size { array1.size ==20;
                         array2.size ==20;
                         array3.size ==20;
                         }
  //constraint w.r.t values of elements for array1
  
  constraint array1_value { foreach(array1[i])
    							array1[i] inside {[30:40]};
   }
  
  //constraint for second and third array
  
  constraint array_sum {array2.sum <100 && array2.sum>0 ; 
                        array3.sum>100 && array3.sum<200;}
  
  //constraint for fourth array size
  
  constraint array4_size {array4.size inside {[19:21]};
                          array4.size != array1.size;
                          array4.size != array2.size;
                          array4.size != array3.size;}
  
  function get_array();
    $display("Array 1 elements are %0p",array1);
    $display("Array 2 elements are %0p",array2);
    $display("Array 3 elements are %0p",array3);
    $display("Array 4 elements are %0p",array4);

  endfunction
  
endclass


module tb;
  
  initial begin
    arrays a1 = new;
    a1.randomize();
    $display(a1.array1.size);
    $display(a1.array2.size);
    $display(a1.array3.size);
    $display(a1.array4.size);
    $display(a1.array2.sum);
    $display(a1.array3.sum);
    a1.get_array;
    
  end
  
endmodule