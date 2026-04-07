module fork_none;
  initial begin
    $display("MEK LEO");
    fork
      $display("TIME");
      $display("BGMI");
      #5;
      $display("KABADDI");
      #30;
      $display("BMW");
      begin
        #50;
        $display("vollyball");
        #60;
        $display("Royal challengers banglore");
      end
    join_none
    #2;
    $display("END OF ERA");
  end
endmodule

//output
MEK LEO
TIME
BGMI
KABADDI
BMW
END OF ERA
vollyball
Royal challengers banglore
