//lottery problem
 
class lottery;
  
  rand int num [5:0];
  constraint match {num[1]==num[2]; num[2]==num[3];num[3]==num[4];num[4]==num[5];}
  constraint second_winner { foreach(num[i]) num[i] inside {[0:99]};}
  function get;
    foreach(num[i])
      $display(num[i]);
  endfunction
  
endclass
  
module tb;
  initial begin
    lottery s=new;
      s.randomize;
      s.get;
  end
endmodule
