//enums in system verilog
//enum methods are first, last, next, next(N), prev, prev(N), num, name

module learn_enum;
  
  typedef enum {red, green , blue, yellow, brown, purple, orange} colors;
  
  initial begin
    colors c1;
    c1=c1.last;
    for (int i=c1.num; i>0;i--) begin
      $display("The value of element %0d is %0s",i,c1.name);
      c1=c1.prev(2);
    end
  end

endmodule