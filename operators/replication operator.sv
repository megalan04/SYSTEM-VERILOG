module replication_operator;
  logic [1:0]a;
  initial begin
    a = 2'b10;
    $display("{3{a}} = %b", {3{a}});
  end
endmodule
