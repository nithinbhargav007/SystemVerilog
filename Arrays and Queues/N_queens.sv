class N_Queen;
  
  rand int Q[0:7];
  
  //constraint sating that Queens Q[0] to Q[7] can tale values only between 0 and 7
  constraint value {foreach(Q[i]) Q[i] inside {[1:8]};}
  
  //no two queens can have the same value
  constraint not_equal 
  { foreach(Q[i])
    foreach(Q[j])
      if(i!=j)
        Q[i]!=Q[j]; }
  
  //no two queens can occupy the same diagonal
  
  constraint not_diagonal
  {foreach(Q[i])
    foreach(Q[j])
      if(i!=j)
        !((Q[i]-Q[j]) inside {(i-j),(j-i)});  
         
}
  
   function void display;
   $display("Queens positions are : %p", Q);
   endfunction

endclass

module tb;
  
  initial begin
    N_Queen N = new;
    N.randomize();
    N.display;
  end
endmodule