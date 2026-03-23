module test;
  int marks[string];
  initial begin
    marks["tamil"]=90;
    marks["science"]=77;
    marks["math"]=66;
    $display("Total subjects=%0d",i,marks.num());
  end
endmodule
