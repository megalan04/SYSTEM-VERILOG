class reference;

  mailbox mon2ref;
  mailbox ref2sco;
  transaction tr;

  function new(mailbox mon2ref,
               mailbox ref2sco);

    this.mon2ref=mon2ref;
    this.ref2sco=ref2sco;

  endfunction
  task run();
    forever
    begin
      mon2ref.get(tr);
      if(tr.rst)
        tr.q = 0;
      else
        tr.q = tr.d;
      ref2sco.put(tr);
      tr.display("REFERENCE");
    end

  endtask

endclass
