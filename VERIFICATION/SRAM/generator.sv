class generator;
  transaction tr;
  mailbox gen2drv;
  virtual signal vif;
  function new(mailbox gen2drv,virtual signal vif);
    this.gen2drv=gen2drv;
    this.vif=vif;
  endfunction
  task run();
    forever begin
      tr=new();
      @(posedge vif.clk);
      void'(tr.randomize());
      //$display("Randomization failed");
      gen2drv.put(tr);
      $display("[GENERATOR] time=%0t",$time);
    end
  endtask
endclass
