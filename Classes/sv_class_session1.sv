// Code your testbench here
// or browse Examples


module class_tb;

  
  class parent;
   int x;
   real y; 
    
    function set(int x, int y);
      this.x=x;
      this.y=y;
    endfunction
    
    extern function get;

  endclass
      function parent::get;
      $display("The value of X and Y is %0d and %0d",x,y);
        $display("extern get called");
    endfunction
      
      
  initial begin
    parent p1;
    $display(p1);
    p1 = new;
    $display(p1);
    p1.set(5,10);
    $display(p1);
    p1.get;
    
  end
  
endmodule