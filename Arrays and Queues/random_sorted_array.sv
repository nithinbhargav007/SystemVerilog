//write a program to generate a random size array in ascending order in system verilog

class array_gen;
  
  rand int array[];
  
  constraint array_constraint {
    array.size() inside {[5:10]};
    foreach(array[i])
      array[i] inside{[1:50]};
  }
  
  constraint array_element{    
    foreach(array[i])
      if(i>0)
        array[i]>array[i-1];
     }
  
endclass

module tb_top;
  
  initial begin
    array_gen A;
    A = new;
    A.randomize();
    foreach(A.array[i])
      $display(A.array[i]);
  end
  
endmodule

