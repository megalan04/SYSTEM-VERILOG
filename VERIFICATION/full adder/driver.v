class driver;
  
  transaction tr;
  
  virtual adder_if vif;
  
  mailbox mb1;
  
  function new(virtual adder_if vif,mailbox mb1);
    this.vif=vif;
    this.mb1=mb1;
  endfunction
  
  task run();
    forever begin
      
      tr=new();
      mb1.get(tr);
 
      vif.A=tr.A;
      vif.B=tr.B;
      vif.Cin=tr.Cin;
      
      
      mb1.put(tr);
      #2;
      tr.display("driver");
    end
  endtask
endclass
