//store the 6 winning numbers in an array
//generate a random winning number 
//add constraint that make sure 5 numbers of the generated arrray matches with 5 numbers of winning array elements

class lottery;
  
  rand int win[5:0];
  rand int towin[5:0];
  int zero_to_ninetynine = $urandom_range(0,99);
  int zero_to_five = $urandom_range(0,5);
  
  constraint winnning_numbers {foreach(win[i])
    							win[i] inside {[0:99]};
                              }
  
  constraint second_winning_numbers {foreach(win[i])
    									towin[i] == win[i];
                                     }
  
  function get_winning_numbers;
    $write("Winning numbers are 	   : " );
    foreach(win[i])
      $write("%0d ", win[i]);
  endfunction
  
    function get_second_winning_numbers;
      $write("\nSecond Winning numbers are : ");
      foreach(towin[i])
        $write("%0d ", towin[i]);
  endfunction
  
endclass



module lottery;
  initial begin 
  lottery L1 = new;

    L1.randomize();
    L1.get_winning_numbers;
    L1.towin[L1.zero_to_five] = L1.zero_to_ninetynine;
    L1.get_second_winning_numbers;
  end
endmodule