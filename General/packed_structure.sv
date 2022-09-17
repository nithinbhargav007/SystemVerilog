//system verilog structure

module tb;
  
  typedef struct packed {
   int a;
    int b;
    bit c;
  }my_struct;
  
  initial begin
    my_struct str;
    str = '{1,1,1};
    $display("str = %p", str);
  end
endmodule