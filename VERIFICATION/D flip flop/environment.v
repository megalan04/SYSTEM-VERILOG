class environment;

  generator  gen;
  driver     drv;
  monitor    mon;
  scoreboard sco;

  mailbox  gen2drv;
  mailbox  mon2sco;

  virtual d_ff vif;
  virtual d_ff vif1;
  function new(virtual d_ff vif,virtual d_ff vif1);
    this.vif = vif;
    this.vif1=vif1;
    gen2drv = new();
    mon2sco = new();
    gen = new(gen2drv);
    drv = new(vif1,gen2drv);
    mon = new(vif,mon2sco);
    sco = new(mon2sco);

  endfunction
  
//   task pre_test();
//     drv.reset();
//   endtask
  
  
  task test();

    fork
      gen.run();
      drv.run();
      mon.run();
      sco.run();
    join_any

  endtask

//   task run();

//     pre_test();
//     test();

//   endtask

endclass
