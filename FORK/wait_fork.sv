module fork_wait;
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
    join_none
    #5;
    $display("END OF ERA");
    wait fork;
    $display("ALL THREADS COMPLETED");
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
ALL THREADS COMPLETED
