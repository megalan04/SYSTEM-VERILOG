class w_generator;
  mailbox #(transaction) g2d;
  function new(mailbox #(transaction) g2d);
     this.g2d=g2d;
   endfunction 
  task main();
     transaction tr;
    repeat(20)begin
      tr=new();
      if(!tr.randomize() with {we == 1;})
         $error("Randomization failed");
      g2d.put(tr);
    end
    repeat(5)begin
      tr=new();
      if(!tr.randomize() with {we == 0;})
         $error("Randomization failed");
      g2d.put(tr);
    end
    tr=new();
    tr.we=1;
    tr.w_data=0;
    g2d.put(tr);
  endtask
endclass
