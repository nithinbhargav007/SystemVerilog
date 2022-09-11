//understanding queue methods - size, insert, delete, push front, pop front , push back, pop back
// bounded queue and unbounded queue


module queues;
  
  int q[$]; //declaring a unbounded queue of infinite elements
  int bq[$:3]; //declaring a bounded queue of 3 elements
  
  function dq(int a[$]);
    for(int i=1; i<=a.size;i++)
      $display("Element %0d of the queue is %0d", i,a[i-1]);
  endfunction
  
  initial begin;

    
    bq.push_front(4);
    bq.push_front(3);
    bq.push_front(2);
    bq.push_front(1);
    bq.push_back(5);

    dq(bq);
  end
  
  
endmodule