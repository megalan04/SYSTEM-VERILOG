class environment;
   w_generator w_gen;
   r_generator r_gen;
   write_driver w_drv;
   read_driver r_drv;
   write_monitor w_mon;
   read_monitor r_mon;
   scoreboard  scb;

   virtual asynfifo_if.TB vif;
 
  mailbox #(transaction) gen2w_drv;
  mailbox #(transaction) gen2r_drv;

  mailbox #(transaction) w_mon2scb;
  mailbox #(transaction) r_mon2scb;
  
   function new(virtual asynfifo_if.TB vif);
      this.vif = vif;
      gen2w_drv = new();
      gen2r_drv = new();
     
      w_mon2scb = new();
      r_mon2scb = new();

     w_gen = new(gen2w_drv);
     r_gen = new(gen2r_drv);

     w_drv = new(vif,gen2w_drv);
     r_drv = new(vif,gen2r_drv);

     w_mon = new(w_mon2scb,vif);
     r_mon = new(r_mon2scb,vif);

     scb   = new(w_mon2scb,r_mon2scb);
   endfunction
   task reset();

      vif.w_cb.wrst <= 0;
      vif.r_cb.rrst <= 0;

      vif.w_cb.we <= 0;
      vif.r_cb.re <= 0;

      repeat(5) @(vif.w_cb);

      vif.w_cb.wrst <= 1;
      vif.r_cb.rrst <= 1;

      $display("[%0t] RESET DONE",$time);

   endtask
  
   task run();
      reset();
      fork
         w_gen.main();
         r_gen.main();
         w_drv.main();
         r_drv.main();
         w_mon.main();
         r_mon.main();
         scb.main();
      join_any
   endtask
endclass

