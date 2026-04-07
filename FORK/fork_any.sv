module fork_join_any;
  initial begin
    $display("MEK LEO");
    fork
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
    join_any
    #5;
    $display("END OF ERA");
  end
endmodule

//output
MEK LEO
BGMI
KABADDI
BMW
END OF ERA
vollyball
Royal challengers banglore
