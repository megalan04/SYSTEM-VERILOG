class write_monitor;
  mailbox #(transaction) wr_mon2scb;
  virtual asynfifo_if.TB vif;
  function new(mailbox #(transaction) wr_mon2scb,
               virtual asynfifo_if.TB vif);
    this.wr_mon2scb = wr_mon2scb;
    this.vif = vif;
  endfunction
  // Monitor Task
  task main();
    transaction tr;
    forever begin
      //@(vif.w_cb_mon);
      //if(vif.w_cb_mon.we && !vif.w_cb_mon.full)
      //begin
        tr = new();
        @(vif.w_cb_mon);
        tr.we     = vif.w_cb_mon.we;
        tr.w_data = vif.w_cb_mon.w_data;
        tr.full   = vif.w_cb_mon.full;
        wr_mon2scb.put(tr);
        $display("[%0t] WRITE_MON : we=%0b w_data=%0h full=%0b",$time,tr.we,tr.w_data,tr.full);
      //end
    end
  endtask
endclass
