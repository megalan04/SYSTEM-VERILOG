class generator;
  transaction tr;
  mailbox gen2drv;
  function new(mailbox gen2drv);
    this.gen2drv=gen2drv;
  endfunction
  task run();
    repeat(20)begin
      tr=new();
      void'(tr.randomize());
      gen2drv.put(tr);
      $display("[GENERATOR] w_en=%0d, r_en=%0d, data_in=%0d",tr.w_en,tr.r_en,tr.data_in);
    end
  endtask
endclass
