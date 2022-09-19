

module myarray;
  int a[] = '{1,4,6,7,8,4};
  initial begin
    $display("%0d", a.sum() with (32'(item>=4))); 
    $display("%0d", a.product() with (int'(item==4?item:1))); 
   
  end

  
endmodule