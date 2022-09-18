//This program is used to generate a fibonacci series for an array of random length

class fibgen;
  
  rand int array[];
  
  constraint size {array.size() inside {[5:10]};}
  
  constraint elements {
    foreach(array[i]) 
    	if(i==0) array[i] == 0;
    else if(i==1) array[i] ==1;
    else array[i] == array[i-1] + array[i-2];
  }
  
  function void display();
    $write("The array is : ");
    foreach(array[i])
      $write("%0d \t",array[i]);
    $display();
  endfunction
  
endclass

module tb;
  initial begin
    fibgen F = new;
    F.randomize();
    $display("The size of the dynamic array is %0d", F.array.size);
    F.display;
    end
  
endmodule