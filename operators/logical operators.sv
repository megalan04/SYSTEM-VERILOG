module logical_operators;
  logic [3:0]a,b;
  initial begin
    a = 4'b1101;
    b = 4'b0000;
    $display("value of a = %b(%0d) value of b = %b(%0d)", a, a, b, b);
    $display("\nLogical Operators");
    $display("a&&b=%b",a&&b);
    $display("a||b=%b",a||b);
    $display("!a=%b",!a);
    $display("!b=%b",!b);

  end

endmodule
