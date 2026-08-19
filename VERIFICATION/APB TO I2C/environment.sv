class environment;
    generator gen;
    driver drv;
    monitor mon;
    scoreboard sco;
    mailbox #(transaction)gen2drv;
    mailbox #(transaction)mon2sco;
    virtual apb_i2c_if vif;
    function new(virtual apb_i2c_if vif);
        this.vif=vif;
     
        gen2drv=new();
        mon2sco=new();
        gen=new(gen2drv);
        drv=new(vif.DRIVER,gen2drv);
        mon=new(vif.MONITOR,mon2sco);
        sco=new(mon2sco);
    endfunction
    task run();
        $display("-------------------------------------");
        $display(" ENVIRONMENT STARTED ");
        $display("-------------------------------------");
        fork
            gen.run();
            drv.run();
            mon.run();
            sco.run();
        join
    endtask
endclass
