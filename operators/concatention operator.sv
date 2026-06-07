module concat_operator;
  logic [3:0]a,b;
  initial begin
    a=4'b1010;
    b=4'b0101;
    $display("{a,b}=%b",{a,b});
  end

endmodule
