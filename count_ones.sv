module count_ones;
  initial begin
    int number;
    int count;
    int multiple_ones;
    
    number = $random();
    
    $display("the number in hex is 32'h%h",number);
    $display("the number in binary is 32'b%0b", number);
    
    count = $countones(number);
    multiple_ones = $onehot(number);
    $display("the number of one's in the given number is %0d", count);
    if(multiple_ones ==1)
      $display("the number contains only one 1");
    else
      $display("the number contains more than one 1's.");
    
  end
endmodule