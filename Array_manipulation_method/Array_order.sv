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

//output
reverse='{44, 22, 88, 77, 66, 55, 33, 11, 99}
sort (ascending)='{11, 22, 33, 44, 55, 66, 77, 88, 99}
rsort (descending)='{99, 88, 77, 66, 55, 44, 33, 22, 11}
shuffle='{99, 33, 66, 11, 44, 77, 55, 22, 88}
