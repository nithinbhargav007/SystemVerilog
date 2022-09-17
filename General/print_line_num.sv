//code to print current line number
module line_no;
  initial begin 
    $display("------------------------------------------");
    $display("\t Line Number = %0d",`__LINE__);
    $display("------------------------------------------");
  end
endmodule