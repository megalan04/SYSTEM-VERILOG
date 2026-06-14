module tb;
initial begin
  fork begin
      #10;
      $display("P1");
    end
    begin
      #20;
      $display("P2");
    end
    begin
      #30;
      $display("P3");
    end
  join_none
  #15;
  disable fork;
   
    $display("chlid is not print");
    end

endmodule
