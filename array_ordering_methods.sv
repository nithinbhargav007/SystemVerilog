//array ordering methods

module array_ordering;
  
  int arr1[] ;
  
  function void display(int a[]);
    $write("The array looks like this : \t");
    foreach(a[i])
      $write("%0d\t",a[i]);
    $display();
  endfunction
  
  initial begin
    arr1 = {2,1,4,5,7,9,3,6,6,7,8};
    arr1.sort();
    display(arr1);
    arr1.rsort();
    display(arr1);
    arr1.reverse();
    display(arr1);
    arr1.shuffle();
    display(arr1);
  end
  
  
endmodule