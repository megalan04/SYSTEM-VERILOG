class scoreboard;
  mailbox mb2;
  transaction tr;
  
  function new(mailbox mb2);
    this.mb2=mb2;
  endfunction
  
  task run();
    bit expected_sum;
    bit expected_cout;
    
    forever begin
     
      mb2.get(tr);
      
      expected_sum=tr.A^tr.B^tr.Cin;
      
      expected_cout=(tr.A&tr.B)|(tr.A&tr.Cin)|(tr.B&tr.Cin);
      
      if((tr.Sum==expected_sum)&&(tr.Cout==expected_cout))
        begin
          $display("pass");
        end
      else begin
        $display("failed");
      end
    end
  endtask
endclass
    
      
      
