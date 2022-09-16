//class randomization
class randclass;
  
  rand int p1;
  rand bit [7:0] p2;
  
endclass

module tb;
initial begin
  randclass R;
  R=new;
  R.p1.rand_mode(0);
  if(R.randomize())
    $display("The value p1 and p2 is %0d and %0b", R.p1,R.p2);
  else
    $display("randomization has failed");
end
  
endmodule

