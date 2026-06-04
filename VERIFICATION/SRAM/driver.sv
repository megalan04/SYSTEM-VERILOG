class driver;
  
  transaction tr;
  mailbox gen2drv;
  virtual signal vif;
  
  function new(mailbox  gen2drv,virtual signal vif);
    this.gen2drv=gen2drv;
    this.vif=vif;
  endfunction
  
  task run();
    forever begin
      tr=new();
      @(negedge vif.clk);
      gen2drv.get(tr);
      vif.rst=tr.rst;
      vif.en=tr.en;
      vif.w_en=tr.w_en;
      vif.data=tr.data;
      vif.addr=tr.addr;
      $display("[DRIVER] time =%0t vif.rst =%b vif.en=%b ,vif.data =%b , vif.addr =%b",$time,tr.rst,tr.en,tr.data,tr.addr);
      
    end
  endtask
endclass
      
