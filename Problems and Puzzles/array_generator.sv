//Question: This problem was asked in an interview setting to generate integer array of size between 10 and 20 with each element between 1 and 100. One last requirement was that the array contains elements that are unique. The solution should show the class and its constraints to generate the array. The second part of the problem is to generate the same array with bare programming i.e., without using Systemverilog constraints.

//The solution for both parts are shown below with a test-bench code for actual generation of integer array. The simulation transcripts are also shown below. Let us look at both the solutions.

class array_generator;
  
  rand int array[];
  
  constraint array_constraints {array.size inside {[10:20]};  
                                foreach(array[i]) 
                                  array[i] inside {[1:100]}; 
                                unique{array}; }
  
endclass

module tb_top;
  int array2[];
  int size;
  initial begin
    array_generator A ;
    A = new;
    A.randomize();
    $display("The number of elements in the array is %0d", A.array.size);
    $display("The Array is : %p", A.array);
    
    
    size = $urandom_range(20,10);
    array2 = new[size];
    foreach(array2[i])
      array2[i] = $urandom_range(100,1);
    
    $display("The number of elements in the array 2 is %0d",array2.size);
    $display("The Array 2 is : %p", array2);
    
  end
endmodule