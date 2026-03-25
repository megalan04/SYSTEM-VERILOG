module test;
  int marks[string];
  initial begin
    marks["tamil"]=90;
    marks["science"]=77;
    marks["math"]=66;
    $display("Total subjects=%0d",marks.num());
  end
endmodule


//remaining methods
module test;
  int marks[string];
  initial begin
    marks["tamil"]=90;
    marks["science"]=77;
    marks["social science"]=88;
    marks["math"]=66;
    if(marks.exists("math"))
      $display("math exists");
    marks.delete("science");
    foreach(marks[i])begin
      $display("marks(%s)=%0d",i,marks[i]);
    end
  end
endmodule
