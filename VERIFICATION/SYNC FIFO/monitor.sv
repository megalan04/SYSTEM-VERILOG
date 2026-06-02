class monitor;
  transaction tr;
  mailbox mon2scr;
  virtual fifo_if vif;
  function new(mailbox mon2scr,virtual fifo_if vif);
    this.mon2scr=mon2scr;
    this.vif=vif;
  endfunction
  task run();
    forever begin
      @(posedge vif.clk);
      #1;
      tr=new();
      tr.w_en=vif.w_en;
      tr.r_en=vif.r_en;
      tr.data_in=vif.data_in;
      tr.data_out=vif.data_out;
      mon2scr.put(tr);
      $display("[MONITOR] w_en=%0d r_en=%b data_in=%0d data_out=%0d",tr.w_en,tr.r_en,tr.data_in,tr.data_out);
    end
  endtask
endclass
