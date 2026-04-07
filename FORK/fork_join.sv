module fork_join;
  initial begin
    $display("MEK LEO");
    fork
      $display("BGMI");
      #5;
      $display("KABADDI");
      #30
      $display("BMW");
      begin
        #20;
        $display("vollyball");
        #10;
        $display("Royal challengers banglore");
      end
    join
    #5;
    $display("END OF ERA");
  end
endmodule

//output
MEK LEO
BGMI
KABADDI
vollyball
BMW
Royal challengers banglore
END OF ERA
