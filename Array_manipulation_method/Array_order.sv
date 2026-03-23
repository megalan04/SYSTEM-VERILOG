module array_order;
  int M[9]='{99,11,33,55,66,77,88,22,44};
  initial begin
    M.reverse();
    $display("reverse=%p",M);
    M.sort();
    $display("sort (ascending)=%p",M);
    M.rsort();
    $display("rsort (descending)=%p",M);
    M.shuffle();
    $display("shuffle=%p",M);
  end
endmodule
