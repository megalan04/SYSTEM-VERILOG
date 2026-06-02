class scoreboard;
  transaction tr;
  mailbox mon2scr;
  bit[7:0]ref_q[$];
  bit[7:0]expected;
  bit[7:0]p_exp;
  function new(mailbox mon2scr);
    this.mon2scr=mon2scr;
  endfunction
  task run();
    forever begin
      mon2scr.get(tr);
      expected=p_exp;
      if(tr.w_en && ref_q.size()<8)begin
        ref_q.push_back(tr.data_in);
        $display("[SCOREBOARD] write data=%0d",tr.data_in);
      end
      if(tr.r_en && ref_q.size()>0)begin
        p_exp=ref_q.pop_front();
            $display("[SCOREBOARD] expected=%0d actual=%0d",
          expected,tr.data_out);
        if(expected==tr.data_out)
          $display("\\****PASS****\\");
        else
          $display("\\****FAIL****\\");
      end
    end
  endtask
endclass
