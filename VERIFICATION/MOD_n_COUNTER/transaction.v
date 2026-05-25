class transaction;
  rand bit rst;
  bit[3:0] q;
  
  function void display(string MEK);
    $display("[%s] rst=%b q=%b",MEK,rst,q);
  endfunction
  constraint rst_count{rst dist{1:=30,0:=70};}
endclass
