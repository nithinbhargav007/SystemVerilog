//Static members are created during elaboration itself
//Side effect- we can access static property from null handle without having a class instance

module tb_top;

class parent;

static int x;
static real y;

function set(int a, real b);
x=a;
  y=b;
endfunction

function get;
  $display("The value of X and Y is %0d and %.5f", x,y);
endfunction

  static function int multiply;
    x=x*x;
    y=y*y;
    return x*y;
  endfunction
endclass


initial begin
parent p1 = new;
  parent p2=new;
  p1.set(5,71.8);
p2.get;
  $display(p2.multiply);
  p1.get;
end


endmodule