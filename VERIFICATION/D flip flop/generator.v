class generator;
  transaction tr;
  mailbox mbx;
  
  int count;

 
  function new(mailbox mbx);
    this.mbx=mbx;
  endfunction
  
  task run();
    repeat(15)
    begin
      tr=new();

      tr.randomize();

      mbx.put(tr);//send to mail
      tr.display("GENERATOR");

      #10;
    end
  endtask
endclass
