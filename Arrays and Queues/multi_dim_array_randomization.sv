class array_rand;
  
  rand int arr1 [5:0];
  rand int arr2 [2:0][2:0];
  rand int arr3 [2:0][2:0];
  rand int arr4 [2:0][2:0];
  
  constraint arr1c {foreach(arr1[i])  arr1[i] ==i;}
  constraint arr2c {arr2.sum() == 20;}
  constraint arr3c {foreach(arr3[i,j])  arr3[i][j] == i+j;}
  constraint arr4c {foreach(arr4[m,n]) { arr4[m][n] > 10 ; arr4[m][n] < 20; arr4.sum==100; }}
  
  function void display;
    $display("arr1: %p", arr1);
    $display("arr2: %p", arr2);
    $display("arr3: %p", arr3);
    $display("arr4: %p", arr4);
  endfunction
  
endclass

module tb;
  initial begin
    array_rand R = new;
    R.randomize();
    R.display;
    
  end
  
endmodule