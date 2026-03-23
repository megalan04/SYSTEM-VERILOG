module test;
  int marks[string];
  initial begin
    marks["tamil"]=90;
    marks["science"]=77;
    marks["social science"]=88;
    marks["math"]=66;
    foreach(marks[i])begin
      $display("marks(%s)=%0d",i,marks[i]);
    end
  end
endmodule
