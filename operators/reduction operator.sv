module reduction_operator;

  logic[3:0]a;
  initial begin
    a = 4'b1011;
    $display("&a=%b",&a);
    $display("|a=%b",|a);
    $display("^a=%b",^a);
  end

endmodule
