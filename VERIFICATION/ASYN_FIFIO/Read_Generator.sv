class r_generator;
  transaction tr;
  mailbox #(transaction) g2d;
  function new(mailbox #(transaction) g2d);
    this.g2d=g2d;
  endfunction
  task main();
    /*  $display("[READ_GEN] Starting generation of %0d read transactions...", transaction_cnt);*/
    repeat(20) begin
      tr=new();
      // Inline constraint forces r_en to 1 to trigger a read
      if (!tr.randomize() with {re == 1;}) begin
        $error("[READ_GEN] Randomization failed!");
      end    
      $display("[READ_GEN] Created Read Packet -> r_en: %0b", tr.re);
      g2d.put(tr);
    end
    repeat(5) begin
      tr=new();
      // Inline constraint forces r_en to 1 to trigger a read
      if (!tr.randomize() with {re == 0;}) begin
        $error("[READ_GEN] Randomization failed!");
      end
      $display("[READ_GEN] Created Read Packet -> r_en: %0b", tr.re);
      g2d.put(tr);
    end
    
    // Drain Transaction
    tr=new();
    tr.re=1;
    
    $display("[READ_GEN] Sending final clean-up transaction (r_en = 0).");
    g2d.put(tr);
  endtask
endclass
