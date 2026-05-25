class driver;
  virtual d_ff vif;
  mailbox mbx;
  transaction tr;
  function new(virtual d_ff vif,mailbox mbx);
    this.vif=vif;
    this.mbx=mbx;
  endfunction
  
  task run();
    forever begin
      
      tr=new();
      mbx.get(tr);
      
      
      @(vif.cv);
      
      vif.cv.d<=tr.d;
      vif.cv.rst<=tr.rst;
      
      mbx.put(tr);
      tr.display("driver");
    end
  endtask
endclass
      
      
