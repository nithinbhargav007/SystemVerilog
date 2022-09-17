module tb_top;

class parent;
 int ctype;
 int atype;

 function func;
   $display("parent function called");
 endfunction

endclass


class child extends parent;

 function func;
   $display("child function called");
   super.func;
 endfunction

endclass

initial begin

child c1=new;
c1.func;    

end

endmodule