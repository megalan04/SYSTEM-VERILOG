module equality_operator;

  logic [1:0]a=2'b1x;
  logic [1:0]b=2'b10;

  initial begin
    $display("a==b:%0b",a==b);
    $display("a!=b:%0b",a!=b);
    $display("a===b:%0b",a===b);
    $display("a!==b:%0b",a!==b);
  end

endmodule
