class environment;
    generator gen;
    driver  drv;
    monitor mon;
    scoreboard  sb;
    
    mailbox  gen2drv;
    mailbox  mon2sco;
    
    virtual mod_count mod;
    
  function new(virtual mod_count mod);
        this.mod=mod;
        
        gen2drv=new();
        mon2sco=new();
        
    gen=new(gen2drv,mod);
    drv=new(gen2drv,mod);
    mon=new(mon2sco,mod);
    sb=new(mon2sco);
    endfunction
    
    task run();
        fork
            gen.main();
            drv.main();
            mon.main();
            sb.main();
        join_any
    endtask
endclass
