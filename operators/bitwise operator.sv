module bitwise_operator;
  logic [3:0]a,b;
  initial begin
    a=4'b1101;
    b=4'b0101;
    $display("a=%b",a);
    $display("b=%b",b);
    $display("AND(&)=%b",a&b);
    $display("OR(|)=%b",a|b);
    $display("NOT(~a)= %b",~a);
    $display("XOR(^)= %b", a^b);
    $display("XNOR(~^)= %b",a~^b);
    $display("NAND=%b",~(a&b));
    $display("NOR= %b",~(a|b));
  end

endmodule
