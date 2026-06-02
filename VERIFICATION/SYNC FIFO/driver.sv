class driver;
  transaction tr;
  mailbox gen2drv;
  virtual fifo_if vif;
  function new(mailbox gen2drv,virtual fifo_if vif);
    this.gen2drv=gen2drv;
    this.vif=vif;
  endfunction
  task run();
    forever begin
    gen2drv.get(tr);
    vif.w_en<=tr.w_en;
    vif.r_en<=tr.r_en;
    vif.data_in<=tr.data_in;
      @(posedge vif.clk);
    $display("[DRIVER] w_en=%0d r_en=%0d data_in=%0d",tr.w_en,tr.r_en,tr.data_in);
    end
  endtask
endclass
