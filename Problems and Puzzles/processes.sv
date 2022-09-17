// Code your testbench here
// or browse Examples
module tb;
  initial begin
    
    fork
      $display("%0t : ENTERED FORK", $time);
     // PROCESS 1
      begin
      $display("%0t : task1 has started",$time);
      #15
      $display("%0t : task1 has completed",$time);
      end
    
    //PROCESS 2
      begin
      $display("%0t : task2 has started",$time);
      #35
      $display("%0t : task2 has completed",$time);
      end
    
    // PROCESS 3
      begin
      $display("%0t : task3 has started",$time);
      #50
      $display("%0t : task3 has completed",$time);
      end
      
    join
    $display("%0t : EXITED FORK",$time);
    
  end
  
  
endmodule