// system verilog associate array methods

module associative_array;
  string sarray[string];
  
  
  
  
  initial begin
    sarray = '{"name" : "nithin", "dob"  : "december 3", "town" : "mysore", "age"  : "27"};
    begin
    string s;
    if(sarray.first(s))
      $display("The first element of the array with index %0s is %0s", s, sarray[s]);
    end
      begin
     string a = "age" ;
        if(sarray.next(a))
          $display("The next element of the array after age is %0s with value %0s", a, sarray[a]);
    end
    
          begin
     string p = "dob" ;
            if(sarray.prev(p))
              $display("The previous element of the array before dob is %0s with value %0s", p, sarray[p]);
    end
  end
  
endmodule