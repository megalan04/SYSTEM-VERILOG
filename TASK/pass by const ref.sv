module tb;

  task automatic display_data(const ref int a);

    $display("Inside Task = %0d", a);

  //   a = 100;   // ERROR: Cannot modify a const ref argument

  endtask

  initial begin

    int x = 10;

    $display("Before Task = %0d", x);

    display_data(x);

    $display("After Task = %0d", x);

  end

endmodule
