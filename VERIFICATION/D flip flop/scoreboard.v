class scoreboard;

  transaction tr;

  mailbox mbx2;

  
  function new(mailbox  mbx2);
    this.mbx2=mbx2;
  endfunction

  
  task run();
    bit prev_d,expected_q,prev_r;

    forever
    begin
      mbx2.get(tr);
      
      expected_q=prev_d;
      
      if(tr.rst)begin
        prev_d=0;
      end
      else begin
        prev_d=tr.d;
      end
      //prev_r=tr.rst;
      
      
      if(expected_q == tr.q)
      begin
        $display("[SCOREBOARD] TEST PASSED d=%0b rst=%0b q=%0b",tr.d,tr.rst,tr.q);
      end
      else
      begin
        $display("[SCOREBOARD] TEST FAILED d=%0b rst=%0b expected_q=%0b actual_q=%0b",tr.d, tr.rst, expected_q, tr.q);
      end
    end
  endtask
endclass
