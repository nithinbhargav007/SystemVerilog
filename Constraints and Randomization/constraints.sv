//containts -  if statement, conditional implication,   weighted with range, weighted with value , inside, outside, contraint mode , read and write values of the constraints etc


module constraint_tb;
  
  class myclass;
    
    rand bit [3:0] p1;
    rand bit [3:0] p2;
    rand bit [3:0] p3;
    rand bit [3:0] p4;
    rand bit [3:0] p5;
    rand bit [3:0] p6;
    rand bit [3:0] p7;
    rand bit [3:0] p8;
    rand bit [3:0] p9;
    rand bit mode1;
     rand bit mode2;
    //if statement 
    constraint if_constraint {  if(mode1==0)
      								p1 ==0;
                              else if (mode1 ==1) 
                                	if(p2==0 && p3 ==0)
                                  		p1 == 0;
                              		else 
                                      p1 inside {4,5,6,7};
                              		
                             }  
    
    
    //conditional implication
    
    constraint implication  {mode2 ==1 -> p4 inside {0,1,2,3};
                             mode2 ==0 -> p4 inside {5,6,7,8};}
    
    //weighted
    
    constraint weight { p5 dist {0:=50,1:=100};}
    constraint weightd { p6 dist {0:/50,1:/100};}
    
    //inside and outside
    
    constraint ins { p7 inside {9,10,11,12};}
    constraint out { !(p8 inside {9,10,11,12});}
    
  endclass
  
  
  initial begin
    myclass c1 = new;
    for(int i=0; i<20; i++) begin
      c1.randomize();
      $display(" P7: %0d   p8:%0d",c1.p7,c1.p8);
    end
    
  end
  
  
  
  
endmodule