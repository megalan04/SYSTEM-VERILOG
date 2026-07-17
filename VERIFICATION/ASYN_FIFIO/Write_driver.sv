class write_driver; 
  virtual asynfifo_if.TB vif;
  mailbox #(transaction) gen2drv;
  function new(virtual asynfifo_if.TB vif, mailbox #(transaction) gen2drv);
    this.vif = vif;
    this.gen2drv = gen2drv;
  endfunction
  task main();
    $display("[WRITE_DRV] Driver started. Waiting for transactions...");
    forever begin
      transaction tr;
      gen2drv.get(tr);
      @(vif.w_cb);
      
      vif.w_cb.we    <= tr.we;
      vif.w_cb.w_data <= tr.w_data;
     
      if (tr.we) begin
        $display("[WRITE_DRV] Driving Write -> data_in: 0x%0h", tr.w_data);
      end else begin
        $display("[WRITE_DRV] Driving Idle (w_en = 0)");
      end
    end
  endtask
endclass
