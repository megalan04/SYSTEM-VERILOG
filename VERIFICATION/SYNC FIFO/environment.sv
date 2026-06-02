class environment;
  generator gen;
  driver drv;
  monitor mon;
  scoreboard scr;
  mailbox gen2drv;
  mailbox mon2scr;
  virtual fifo_if vif;
  function new(virtual fifo_if vif);
    this.vif=vif;
    gen2drv=new();
    mon2scr=new();
    gen=new(gen2drv);
    drv=new(gen2drv,vif);
    mon=new(mon2scr,vif);
    scr=new(mon2scr);
  endfunction
  task run();
    fork
      gen.run();
      drv.run();
      mon.run();
      scr.run();
    join_none
  endtask
endclass
