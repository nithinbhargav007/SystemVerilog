//Q. Two parts problem. Part I: Using SystemVerilog, create a simple Packet class that has a variable length (2 to 5 bytes long) payload. There is an additional constraint that the sum of all payload bytes is 100. Part II: Write a testbench to generate 5 (five) such packets.

class payload;
 
  rand byte payload [];
  
  constraint payload_len {payload.size inside {[2:5]};}
  
  constraint payload_sum {payload.sum == 100;}
  
  constraint payload_poitive_numbers { foreach(payload[i]) payload[i] inside {[1:100]};}
  
  function void display_payload;
    $display("The payload is of %0d bytes length", payload.size);
    $write("The payload elements are : ");
    foreach(payload[i])
      $write("%0d \t", payload[i]);
    $display();
  endfunction
  
endclass

module testbench_top;
  
  initial begin
    for(int i=0; i < 5; i++) begin
      payload P=new;
      if(P.randomize) begin
        $display("Packet %0d created", i);
          P.display_payload;
          end
      else
          $display("Randomization has failed");
      end

  end
  
endmodule