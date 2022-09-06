module tb_top;
  
class baseframe;
   
  function iam;
    $display("I am baseframe");
  endfunction
  
endclass

  class shortframe extends baseframe;
  int s1;
  
    function iam;
      $display("I am shortframe");
  endfunction
endclass
  
  
  initial begin
    baseframe bf;
    shortframe sf = new;
    shortframe sf2;
    bf=sf;
    $cast(sf2,bf);
    sf2.iam;
    
  end
  
  
  endmodule