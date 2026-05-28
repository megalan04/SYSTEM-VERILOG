class monitor;
  transaction tr;
  virtual adder_if vif;
  mailbox mb2;
  
  function new(virtual adder_if vif,mailbox mb2);
    this.vif=vif;
    this.mb2=mb2;
  endfunction
  
  task run();
    forever begin
     // mb2.get(tr);
      #1;
      tr=new();
      tr.A=vif.A;
      tr.B=vif.B;
      tr.Cin=vif.Cin;
      tr.Sum=vif.Sum;
      tr.Cout=vif.Cout;
      #1;
      mb2.put(tr);
      
      tr.display("MONITOR");
      
      
 
    end
  endtask
endclass
