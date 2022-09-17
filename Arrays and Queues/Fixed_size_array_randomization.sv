//array randomization - fixed size

class arr_rand_class;
  
  rand int  arr1 [7:0][3:0];
  rand int  arr2 [7:0][7:0];
  
  function void display;
    $display("arr1 = %p", arr1);
    $display("arr2 = %p", arr2);
  endfunction
  
endclass

module tb;
  initial begin
    arr_rand_class C;
    C= new;
    C.randomize();
    C.display;
  end
  
endmodule