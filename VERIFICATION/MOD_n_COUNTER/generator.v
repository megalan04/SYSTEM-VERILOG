class generator;
  transaction tr;
  mailbox gen2drv;
  virtual mod_count mod;
  
  function new(mailbox gen2drv,virtual mod_count mod);
    this.gen2drv=gen2drv;
    this.mod=mod;
  endfunction
  
  task main();
    tr=new();
    repeat(20)begin
      
      //if (!tr.randomize())
      //$display("Randomization failed");
      gen2drv.put(tr);
      $display("[Generator] rst=%0b",tr.rst);
      @(mod.mon);
    end
  endtask
endclass 
