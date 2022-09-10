// fixed array - declaring, initializing and displaying 

module learning_array;
  
  int numbers[6];
  int numbers2[6] = '{1,3,4,5,6,7};
  
  initial begin
    foreach(numbers[i])
        numbers[i] = i;
    foreach(numbers[i])
      $display(numbers[i]);
    foreach(numbers2[i])
      $display(numbers2[i]);
  end
  
  
endmodule