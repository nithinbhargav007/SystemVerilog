//class polymorphism


class superclass;
  
 virtual function display;
    $display("Inside Super class");
  endfunction
  
endclass

class parentclass extends superclass;
  function display;
    $display("Inside Parent class");
  endfunction
endclass

class childclass extends parentclass;
  function display;
    $display("Inside Child class");
  endfunction
endclass

module polymorphism;
  
  initial begin
    superclass s = new;
    parentclass p = new;
    childclass c= new;
    superclass s2;
    parentclass p2;
    s2 = p;// here s2 handle of superclass holds the instance of the parent class
    //$cast(p2,s2);
     s2.display; //prints the display of parent class
    
    s.display;
    p.display;
    c.display;
    
    
  end
  
endmodule