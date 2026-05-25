class monitor;
  transaction tr;
  mailbox mon2sco;
  virtual mod_count mod;
  
  function new(mailbox mon2sco,virtual mod_count mod);
    this.mon2sco=mon2sco;
    this.mod=mod;
  endfunction
  
  task main();
    forever begin
      tr=new();
      @(posedge mod.clk);
      
    //repeat(20)begin
     // @(mod.mon);
      tr.rst=mod.mon.rst;
      tr.q=mod.mon.q;
      mon2sco.put(tr);
      $display("[MONITOR] rst=%b q=%b",tr.rst,tr.q);
      
    end
  endtask
endclass
