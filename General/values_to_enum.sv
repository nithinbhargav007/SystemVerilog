//enums in system verilog
//enum methods are first, last, next, next(N), prev, prev(N), num, name

module learn_enum;
  
  typedef enum {red=1, green=3 , blue=4, yellow=6, brown, purple=10, orange} colors;
  
  initial begin
    colors c1;
    c1=c1.first;
    for (int i=0; i< c1.num; i++) begin
      $display("The name of the element is %0s and value is %0d",c1.name,c1);
      c1=c1.next;
    end
  end

endmodule