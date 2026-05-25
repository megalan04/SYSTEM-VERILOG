class transaction;
  rand bit d;
  rand bit rst;
  
  bit q;
  
  function void display(string RCB);
    $display("time=%0t [%s] d=%b rst=%b  q=%b",$time,RCB,d,rst,q );
  endfunction
  
endclass
