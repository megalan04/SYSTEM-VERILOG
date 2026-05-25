class scoreboard;
    mailbox mon2sco;
    
    int expected_q ; 
    
  function new(mailbox mon2sco);
        this.mon2sco=mon2sco;
    endfunction
    
    task main();
        transaction tr_mon;
        forever begin
          mon2sco.get(tr_mon);
            
          $display("[Scoreboard]  rst=%0b expected_q=%0d"
                   ,tr_mon.rst,expected_q);
            
          if (tr_mon.q == expected_q)
             begin
               $display("\\******PASS******\\");
            end
            else begin
              $display("\\*****Fail******\\");
            end
           
            
          if (tr_mon.rst) begin
                expected_q=4'b0000;
            end 
          else if (expected_q == 4'b1001)
                expected_q=4'b0000; 
            else
                 expected_q=expected_q + 1'b1;
            
            
        end
    endtask
endclass
