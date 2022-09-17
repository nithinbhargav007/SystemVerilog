class array_rand;
  
  rand int arr1 [ 7:0];
  
  constraint iter {foreach(arr1[i])
    arr1[i] ==i;}
  
  function void display;
    $display("arr1: %p", arr1);
  endfunction
  
  function void post_randomize;
    arr1.shuffle;
  endfunction
  
endclass

module tb;
  initial begin
    array_rand R = new;
    R.randomize();
    R.display;
    
  end
  
endmodule