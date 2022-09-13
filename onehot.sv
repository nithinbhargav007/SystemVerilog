// Code your testbench here
// or browse Examples

class num;
  
    rand int number;
    rand int count;
    
  function find_count();
    count = $onehot(number);
    endfunction
    
  function display();
    $display("Number : 32'h%0h", number);
    $display("Number: %0b", number);
    $display("count : %0d", count);
  endfunction
  
endclass


module top;
  
  initial begin
  num r1 = new;
    r1.randomize;
    r1.find_count;
    r1.display;
    
    
  end
  
  
endmodule