module random_test;
  
  class myclass;
  rand bit[3:0] ctype;
  randc bit atype;
  endclass
  
  initial begin
  myclass c1 = new;
    c1.rand_mode(0);
    for(int i=0;i<4;i++) begin
    c1.randomize();
      $display("The value of ctype : %0b and atype : %0b", c1.ctype, c1.atype);
    end
    c1.ctype.rand_mode(1);
    for(int i=0;i<4;i++) begin
    c1.randomize();
      $display("The value of ctype : %0b and atype : %0b", c1.ctype, c1.atype);
    end
    c1.rand_mode(1);
    for(int i=0;i<4;i++) begin
    c1.randomize();
      $display("The value of ctype : %0b and atype : %0b", c1.ctype, c1.atype);
    end
  end
  
endmodule