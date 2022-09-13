// Interview Question
// Fill in the code below

class my_sequencer;
  int id;
endclass : my_sequencer

class my_sequence;
  task start (my_sequencer seqr);
    int delay = $urandom_range(1,10);
    $display("time: %d, starting sequence on sequencer with id:%d", $time, seqr.id);
    #(delay * 1us);
    $display("time: %d, finishing sequence on sequencer with id:%d", $time, seqr.id);
  endtask : start
endclass : my_sequence


module top;
  initial begin
    my_sequencer seqr;
    my_sequencer seqr_q[$];
    my_sequence seq_my[];
    static  int num_of_seqr = $urandom_range(3,5);
    $display("number=%d",num_of_seqr);
    seq_my=new[num_of_seqr];
    for (int i = 0; i < num_of_seqr; i++) begin
      seqr = new;
      seqr.id = i;
      seqr_q.push_back(seqr);
    end

    fork begin  
     for (int i = 0; i < num_of_seqr; i++) begin
      automatic int inst=i;
        fork
      begin
         seq_my[inst]= new;
         seq_my[inst].start(seqr_q.pop_back);
      end
      join_none;
        end
        
      wait fork;
      end
   join

    $display("time: %d, end reached", $time);
  end
endmodule