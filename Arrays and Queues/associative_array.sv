module tb;
  initial begin
    int array[string];
    array = '{"nithin":27, "mom":52, "grandma":72};
    foreach(array[i])
      $display("Index : %0s  Value : %0d", i, array[i]);
    if(array.exists("grandma"))
       $display("The value 72 exists in the array");
    $display("The number of elements in the associative array is %0d", array.num);
       
    
  end
endmodule