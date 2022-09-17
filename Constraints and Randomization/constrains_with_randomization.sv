//class randomization
class randclass;
  
  rand int p1;
  rand bit [7:0] p2;
  bit mode=1;
  constraint c1 {p1 inside {[0:200]};}
  
  constraint c3 { mode ==1 -> p1 inside {[0:100]};}
  constraint c4 { mode ==1 -> p2 dist {[0:50]:=90, [51:100]:=10};}
  
  
endclass

module tb;
initial begin
  randclass R;
  R=new;
  if(R.randomize())
    $display("The value p1 and p2 is %0d and %0d", R.p1,R.p2);
  else
    $display("randomization has failed");
end
  
endmodule

