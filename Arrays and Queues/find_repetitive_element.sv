//write a program to find if the array is having repetitive items

class array_gen;
  
  int array[] = '{1,2,3,4,5,5,6,7};
  int j=0;

  function find_unique;
    
    array.sort();
    
    do begin
         
    	foreach(array[i])
      		if(i!=0)
              if(array[i] == array[i-1])
              		$display("The array has repetitive element");
              		break;
         j++;
    end while(j<array.size());
      
  endfunction
endclass

module tb_top;
  
  initial begin
    array_gen A;
    A = new;
    A.find_unique;
  end
  
endmodule

