//queues


module tb;
  initial begin
    int q[$];
    q.push_front(5);  //  5
    q.push_front(4);  //  4  5
    q.push_back(3);   //  4  5  3
    q.push_front(10); //  10 4  5  3
    q.push_back(8);   //  10 4  5  3  8
    q.pop_back();     //  10 4  5  3
    q.pop_front();    //  4  5  3
    q.push_front(11); //  11 4  5  3
    
    
    foreach(q[i])
      $display("Q element: %0d", q[i]); // 11 4 5 3
    $display(q.size); //4
    q.insert(0,100);//insert 100 at 0th position
        foreach(q[i])
          $display("Q element: %0d", q[i]); //100 11 4 5 3
  end
  
endmodule