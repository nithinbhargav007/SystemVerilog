//blocking and non-blocking assignments

module bnb;
  
  logic clk;
  int a;
  int b;
  int c;
  int x;
  int y;
  
       always @(*)
     begin
    $display("Time unit :%0t : A: %0d B: %0d C: %0d X: %0d Y: %0d",$time,a,b,c,x,y);
    end
  
  initial begin
    a=10;
    b=5;
    c=15;
    
    x <= a+b;
    a=b;
    #5;
    y <= a+b+x;
    #15;   
    x <= a+b;
    #10;
    y <= a+b+x;
    #20;
    b=a;
    x <= a+b;
    #5;
    y <= a+b+x;
    #10;
  end
endmodule : bnb