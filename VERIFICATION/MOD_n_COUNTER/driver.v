class driver;
  transaction tr;
  mailbox gen2drv;
  virtual mod_count mod;
  
  function new(mailbox gen2drv,virtual mod_count mod);
    this.gen2drv=gen2drv;
    this.mod=mod;
  endfunction
  
  task main();
    repeat(20)begin
      gen2drv.get(tr);
      @(mod.mon);
      mod.drv.rst<=tr.rst;
      $display("[DRIVER] rst=%b",tr.rst);
    end
  endtask
endclass
