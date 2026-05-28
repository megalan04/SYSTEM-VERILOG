class environment;

    generator  gen;
    driver     drv;
    monitor    mon;
    scoreboard sb;

    virtual adder_if vif;
    virtual adder_if vif1;

    mailbox mb1;
    mailbox mb2;

    /////////////////////////////////////////////
    // CONSTRUCTOR
    /////////////////////////////////////////////

  function new(virtual adder_if vif,virtual adder_if vif1);

        this.vif = vif;
        this.vif1=vif1;

        mb1 = new();
        mb2 = new();

        gen = new(mb1);
        drv = new(vif, mb1);
        mon = new(vif1, mb2);
        sb  = new(mb2);

    endfunction

    /////////////////////////////////////////////
    // RUN TASK
    /////////////////////////////////////////////

    task run();

        fork
            gen.run();
            drv.run();
            mon.run();
            sb.run();
        join_any

    endtask

endclass
