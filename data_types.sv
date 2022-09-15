//system verilog data types


module data_types;
  
  wire a;
  reg b;
  real c;
  integer d;
  time e;
  parameter DATA;
  string s = "Hello World";
  
  initial begin
    #5;
    e= $time;
    $display("Value is %0d %0d %0d %0d %0d %0d %0s",a,b,c,d,e,DATA,s);
    
  end
  
endmodule