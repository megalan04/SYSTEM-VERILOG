module shift_operator;
  logic [3:0]a;
  initial begin
    a = 4'b1010;
    $display("a=%b",a);
    $display("a<<1= %b",a<<1);
    $display("a>>1=%b",a>>1);
  end

endmodule
