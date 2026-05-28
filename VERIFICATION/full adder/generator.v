class generator;
   transaction tr;
  mailbox mb1;
 
  
  function new(mailbox mb1);
    this.mb1=mb1;
  endfunction
  
  task run();
    repeat(20)begin
      tr=new();
      tr.randomize();
       // $display("Randomization failed");
      //tr.display();
      mb1.put(tr);
      
      tr.display("generator");
    
    end
  endtask
endclass
