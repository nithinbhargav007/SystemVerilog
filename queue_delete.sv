// Given a queue of widget classes
//Write a program that will delete only the widgets that has their to_remove bit set to 1
//Display the queue once all the required widgets are deleted from it


class widget;
  int id;
  bit to_remove;
endclass: widget

module top;
  
  widget q[$];
  initial begin 
    widget w;
    int num= $urandom_range(4,6);
    for(int i=0;i<num;i++) begin
      w = new;
      w.id = i;
      w.to_remove = $urandom_range(0,1);
      q.push_back(w);
      $display("Widget id : %0d , to_remove : %0b", q[$].id, q[$].to_remove); 
    end
    
    
    for(int i=0;i<q.size;i++)
        if(q[i].to_remove == 1'b1)
          begin
            q.delete(i);
            i--;
          end
      //display the queue after deletion
          
      foreach(q[i])
            $display("Display : q[i].id = %0d , q[i].to_remove = %0b", q[i].id, q[i].to_remove);
    

   for(int j=0;j<q.size;j++)
      begin
        if(q[j].to_remove == 1'b1)
        $display("There is an entry in the queue which is still not removed");
        break;
      end
         $display("All the required entries in the queue are removed");
     
  end
  
  
  
endmodule
  
  
  
  
  