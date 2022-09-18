//Question:  write the code for the class and the test-bench code to generate a few objects. Here is an example of a simple Packet class that has array of bytes (8-bits) as its payload. Apart from the payload, the other fields are DA (destination address), SA (source address) and LEN (Length). To prevent data corruption, there is one byte of FCS (frame check sequence) field, which is XOR of all the data bytes in the payload (a very simple implementation). Generate 5 packets and display them in a neat manner.

//Solution: Given is the code for Packet class (Packet.sv) and a testbench code (tb_top.sv). Writing the properties (data members) of the class is straight forward, whereas writing constraint is tricky, especially the LEN field which cannot be more than 8’hff (255 decimal). Here is the solution and the simulation result using Synopsys VCS simulator.

class packet;
  rand byte payload[7:0];
  rand bit DA[10:0];
  rand bit SA[10:0];
  rand int length;
  bit FCS;
  
  constraint packet_features  {length inside {[0:255]} ;}
  
  function void display;
    FCS = payload.xor;
    $write("The packet generated is :");
    $write("Payload : %p	Destination Address: %0p	Source Address : %0p	length of Data:%0d	FCS : %0b",payload,DA,SA,length,FCS);
    $display;
  endfunction
  
endclass

module testbench;
  initial begin
    repeat(5) begin
      packet P = new;
      P.randomize();
      P.display;
    end
  end
  
endmodule