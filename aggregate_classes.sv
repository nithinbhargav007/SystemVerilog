module tb_top;

class child;
bit [5:0] addr;
int ctype;
bit atype;

function new(bit [5:0] addr, int ctype, bit atype);
this.addr=addr;
this.ctype=ctype;
this.atype=atype;
endfunction

function get;
$display("The value of Addr : %0b, Ctype : %0d, atype : %0s",addr, ctype, atype);
endfunction
  
  
endclass

class parent;

child ch1,ch2;

function new(bit [5:0] a1, bit[5:0] a2, int b1, int b2, bit c1, bit c2);
ch1 = new(a1,b1,c1);
ch2 = new(a2,b2,c2);
endfunction

extern function get;
  endclass

function parent::get;
  $display("C1 : The value of Addr : %0b, Ctype : %0d, atype : %0b",ch1.addr, ch1.ctype, ch1.atype);
  $display("C2 : The value of Addr : %0b, Ctype : %0d, atype : %0b",ch2.addr, ch2.ctype, ch2.atype);
endfunction




initial begin
parent p1 = new(6'b0110,6'b1110, 10,15,1, 0);
p1.get;
end


endmodule