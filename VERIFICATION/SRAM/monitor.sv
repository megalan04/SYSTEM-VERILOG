class monitor;
   
  transaction tr;
  mailbox  mon2scr;
  virtual signal vif;
  
  function new(mailbox mon2scr,virtual signal vif);
    this.mon2scr=mon2scr;
    this.vif=vif;
  endfunction
  
  task run();
    forever begin
      tr=new();
      @(posedge vif.clk);
      #1;
      tr.rst=vif.rst;
      tr.w_en=vif.w_en;
      tr.en=vif.en;
      tr.data=vif.data;
      tr.addr=vif.addr;
      tr.dout=vif.dout;
      mon2scr.put(tr);
      $display("[MONITOR] time=%0t rst=%0b en=%0b w_en=%0b addr=%0d data=%0d dout=%0d",$time,tr.rst,tr.en,tr.w_en, tr.addr,tr.data,tr.dout);
    end
  endtask
endclass
