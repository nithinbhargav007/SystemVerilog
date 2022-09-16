//Try to schedule a 90-min meeting for 3 people based on their calendars of the current week (5 days)
//30-min per slot
//You can define the data structure representing the individual calendars
//Try and come up with an algorithm to search for a 90-min slot that’s available to all 3 people
//Think about corner cases!

//consider the time to be interger and availability to be a string

class schedule_meeting;

  string st;
  rand bit k;
  
  function display_cal(string arr[int]);
    int i;
    if(arr.first(i)) do
      $write("%04d : %0s \t",i,arr[i]);
    while (arr.next(i));
    $display();
  endfunction

  
endclass

module schedule_meeting;
  string cal1[int];
  string cal2[int];
  string cal3[int];
  int i,j,k;
  
initial begin
    schedule_meeting s = new;
  
  
 
  for (int i=0; i < 2401; i = i+150)
    begin
      s.randomize();
      if(s.k ==0)
        cal1[i] = "AVAILABLE";
      else
        cal1[i] = "NOT_AVAILABLE";
    end
   $display( "FIRST PERSON CALENDAR LOOKS LIKE THIS : " );
  s.display_cal(cal1);
  
  
  for (int j=0; j < 2401; j = j+150)
    begin
      s.randomize();
      if(s.k ==0)
        cal2[j] = "AVAILABLE";
      else
        cal2[j] = "NOT_AVAILABLE";
    end
  $display("SECOND PERSON CALENDAR LOOKS LIKE THIS : ");
  s.display_cal(cal2);
  
  
  for (int k=0; k < 2401; k = k+150)
    begin
      s.randomize();
      if(s.k ==0)
        cal3[k] = "AVAILABLE";
      else
        cal3[k] = "NOT_AVAILABLE";
    end
  
  $display("THIRD PERSON CALENDAR LOOKS LIKE THIS : ");
  s.display_cal(cal3);
 
  foreach(cal1[i])
    begin
      if(cal1[i] ==cal2[i] && cal2[i] ==cal3[i])
        $display("Time slot %04d is available to schedule",i);
      else
      $display("No free time slot available to schedule at %0d",i);
    end
  end
  
endmodule