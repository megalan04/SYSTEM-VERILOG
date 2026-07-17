class read_monitor; 
  mailbox #(transaction) rd_mon2scb;
  virtual asynfifo_if.TB vif;
  function new(mailbox #(transaction) rd_mon2scb,virtual asynfifo_if.TB vif);
    this.rd_mon2scb = rd_mon2scb;
    this.vif = vif;
  endfunction
  // Monitor Task
  task main();
    transaction tr;
    forever begin
      //  @(vif.r_cb_mon);
      //if(vif.r_cb_mon.re && !vif.r_cb_mon.empty)
     // begin
      //  @(vif.r_cb_mon); 
        tr = new();
        @(vif.r_cb_mon); 
        tr.re = vif.r_cb_mon.re;
        tr.r_dout = vif.r_cb_mon.r_dout;
        tr.empty = vif.r_cb_mon.empty;
        rd_mon2scb.put(tr);
        $display("[%0t] READ_MON : re=%0b r_data=%0h empty=%0b",$time,tr.re,tr.r_dout,tr.empty);
     // end
    end
  endtask
endclass
