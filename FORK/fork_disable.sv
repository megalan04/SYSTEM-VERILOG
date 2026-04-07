module fork_disable;
  initial begin
    $display("MEK LEO");
    fork
      #2;
      $display("jack");
      #5;
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
     disable fork;
    #5;
    $display("END OF ERA");
    $display("ALL THREADS COMPLETED");
  end
endmodule

//output
MEK LEO
jack
END OF ERA
ALL THREADS COMPLETED
        
