class scoreboard;
  bit [7:0] fifo_queue[$];
  bit [7:0] prev_exp,expected;
  mailbox #(transaction) wr_mon2scb;
  mailbox #(transaction) rd_mon2scb; 
  function new(mailbox #(transaction) wr_mon2scb, mailbox #(transaction) rd_mon2scb);
    this.wr_mon2scb = wr_mon2scb;
    this.rd_mon2scb = rd_mon2scb;
  endfunction
  task main();
    fork
      forever begin
        transaction wr_tr;
        wr_mon2scb.get(wr_tr);
        if (wr_tr.we && !wr_tr.full) begin
          fifo_queue.push_back(wr_tr.w_data);
          $display("[SCOREBOARD] Stored Expected Data: 0x%0h. Queue Size: %0d", wr_tr.w_data, fifo_queue.size());
        end
      end
      forever begin
        transaction rd_tr;
        rd_mon2scb.get(rd_tr);
        if (rd_tr.re && !rd_tr.empty) begin
          if (fifo_queue.size() == 0) begin
            $error("[SCOREBOARD] ERROR: Read hit when golden queue was EMPTY!");
          end else begin
            bit [7:0] expected = fifo_queue.pop_front();
            if(expected == rd_tr.r_dout)
              $display("PASS %0d  %0d",expected,rd_tr.r_dout);
            else begin
              $display("FAIL %0d  %0d",expected,rd_tr.r_dout );
            end
          end
        end
      end
    join
  endtask
endclass
