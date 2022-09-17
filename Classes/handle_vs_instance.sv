class class_a;
  virtual function void print();
    $display("class_a");
  endfunction : print
endclass : class_a

class class_b extends class_a;
  virtual function void print(); 
    $display("class_b");
  endfunction : print
endclass : class_b

module top;
  initial begin
    
    // 1) what gets displayed for each print(), explain why
    $display("1");
    begin
      class_a a;
      class_b b;

      a = new;
      b = new;
      a.print();
      b.print();
    end
    
    // 2) what gets displayed for each print(), explain why
    $display("2");
    begin
      class_a a;
      class_b b;

      b = new;
      a = b;
      a.print();
      b.print();
    end
    
    // 3) what gets displayed for each print(), explain why
    $display("3");
    begin
      class_a a;
      class_a a2;
      class_b b;
      class_b b2;
      
      b = new;
      a = b;
      a2 = a;
      $cast(b2, a);
      a2.print();
      b2.print();
    end 

  end
endmodule 

// 4) If we remove virtual from the extended class, how does that change things?
// 5) If we remove virtual from both classes, how does that change things?


// Answer:

// 1) what gets displayed for each print(), explain why

// Answer:
// class_a
// class_b

// Reason : These are direct calls to the methods of individual classes

// 2) what gets displayed for each print(), explain why

// Answer:
// class_b
// class_b

// Reason: Here we can notice a line "a=b". Here, a is holding an instance of the b class. However, when we call the print method --> it gets resolved based on the instance type and not the handle type. This is because "virtual" method is used. Hence, it prints class_b for the first time. 
// For the second "class_b" print --> its a direct call to the print method.

//  3) what gets displayed for each print(), explain why

// Answer:
// class_b
// class_b

// Reason: a is carrying an instance of the b class. Now, a2 carries an instance of the b class. With the $cast--> b2 carries instance of the a which in turn carries instance of the b class. Hence, it prints class_b both times


// 4) If we remove virtual from the extended class, how does that change things?

// If we remove virtual from extended class method, it will still be virtual by default.  because, if a parent class method is virtual --> all the derived class methods of that parent class with same name becomes virtual.

// 5) If we remove virtual from both classes, how does that change things?

// It would definitely change things because now the print method is resolved based on handle type and not instance type. Because of this the answer for question 2 will become class_a, class_b  and question 3 will become class_a, class_b

// Please refer this video by Brian from Cadence for a complete understanding of handle type and instance type : https://www.youtube.com/watch?v=KWCOxI0mL80