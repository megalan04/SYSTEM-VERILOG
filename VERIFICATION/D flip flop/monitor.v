class monitor;
  virtual d_ff vif;
  mailbox mbx2;
   transaction tr;
  
  function new(virtual d_ff vif,mailbox mbx2);
    this.vif=vif;
    this.mbx2=mbx2;
  endfunction
  
  task run();
    forever begin
      
     
      tr=new();
      @(vif.cv);
      tr.d=vif.cv.d;
      tr.rst=vif.cv.rst;
      tr.q=vif.cv.q;
      mbx2.put(tr);
      tr.display("monitor");
    end
  endtask
endclass
      
      
