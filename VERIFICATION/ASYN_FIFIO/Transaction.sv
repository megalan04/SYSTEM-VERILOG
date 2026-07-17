class transaction;

  rand bit wrst;
  rand bit rrst;

  rand bit we;
  rand bit re;

  rand bit [7:0] w_data;
  bit  [7:0] r_dout;

  bit full;
  bit empty;

  constraint c1 {
    we dist {0:=3, 1:=15};
    re dist {0:=3, 1:=15};
    (we == 0) -> (w_data == 0);
  }

  function void display_write(string name = "WRITE_TRANSACTION");
    $display("----------------------------------------");
    $display("%s", name);
    $display("we     = %0b", we);
    $display("w_data = %0h", w_data);
    $display("full   = %0b", full);
    $display("wrst   = %0b", wrst);
    $display("----------------------------------------");
  endfunction

  function void display_read(string name = "READ_TRANSACTION");
    $display("----------------------------------------");
    $display("%s", name);
    $display("re     = %0b", re);
    $display("r_dout = %0h", r_dout);
    $display("empty  = %0b", empty);
    $display("rrst   = %0b", rrst);
    $display("----------------------------------------");
  endfunction

endclass
