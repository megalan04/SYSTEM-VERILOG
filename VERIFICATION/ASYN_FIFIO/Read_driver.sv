class read_driver;
   virtual asynfifo_if.TB vif;
   mailbox #(transaction) gen2rdrv;
  function new(virtual asynfifo_if.TB vif,
                mailbox #(transaction) gen2rdrv);
      this.vif = vif;
      this.gen2rdrv = gen2rdrv;
   endfunction
   task main();
      transaction tr;
      $display("[%0t] READ DRIVER STARTED",$time);
      forever
      begin
         gen2rdrv.get(tr);
         // Wait until FIFO is not empty
         while(vif.r_cb.empty)
            @(vif.r_cb);
         @(vif.r_cb);
         vif.r_cb.re <= tr.re;
         if(tr.re)
            $display("[%0t] READ ENABLE",$time);
         // Deassert after one read clock
         @(vif.r_cb);
         vif.r_cb.re <= 0;
      end
   endtask
endclass
