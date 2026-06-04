class scoreboard#(parameter addr_w=4,data_w=8);
  
  transaction tr;
  mailbox mon2scr;
  bit [data_w-1:0] ref_mem[2**addr_w-1:0];
  bit [data_w-1:0] expected;
  
  function new(mailbox mon2scr);
    this.mon2scr=mon2scr;
  endfunction
  
  task run();
    forever begin
      tr=new();
      mon2scr.get(tr);
      
      if(tr.rst)begin
        expected=0;
        $display("[SCOREBOARD] Reset:expected=%b actual=%b",expected,tr.dout);
      end
      else if(tr.en)
        begin
          if(tr.w_en)
            begin
              ref_mem[tr.addr]=tr.data;
              $display("[SCOREBOARD] Write:addr=%b data=%b",tr.addr,tr.data);
            end
          else
            begin
              expected=ref_mem[tr.addr];
              $display("[SCOREBOARD] Read:addr=%b expected=%b actual=%b",tr.addr,expected,tr.dout);
            end
          if(expected==tr.dout)begin
            $display("---------------------");
            $display("----READ PASS -------");
            $display("---------------------");
          end
          else begin
             $display("---------------------");
             $display("--------READ FAIL-------");
             $display("---------------------"); 
          end
        end
      else
        begin
          $display("   [SCOREBOARD]RAM DISABLED"    );
        end
    end
  endtask
endclass
              
