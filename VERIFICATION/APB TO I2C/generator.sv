class generator;
    transaction tr;
    mailbox #(transaction)gen2drv;
    int count;
    function new(mailbox #(transaction)gen2drv);
        this.gen2drv=gen2drv;
        count=6;
    endfunction
  
    task run();
        // Transaction 1 : Enable I2C
        tr=new();
        tr.transfer=1;
        tr.write_en=1;
        tr.addr=16'h0002;      // Control Register
        tr.write_data=8'h01;         // Enable
        tr.display("GENERATOR:ENABLE I2C");
        gen2drv.put(tr);

        // Transaction 2 : Load Slave Address
        tr=new();
        tr.transfer=1;
        tr.write_en=1;
        tr.addr=16'h0003;      // TX Register
        tr.write_data=8'hA0;         // Slave Address
        tr.display("GENERATOR:SLAVE ADDRESS");
        gen2drv.put(tr);
        
        // Transaction 3 : START Command
        tr=new();
        tr.transfer=1;
        tr.write_en=1;
        tr.addr=16'h0004;      // Command Register
        tr.write_data=8'h00;   // START
        tr.display("GENERATOR:START");
        gen2drv.put(tr);
        
        // Transaction 4 : Load Data
        tr=new();
        tr.transfer=1;
        tr.write_en=1;
        tr.addr=16'h0003;      // TX Register
        tr.write_data=8'h55;   // Data
        tr.display("GENERATOR:WRITE DATA");
        gen2drv.put(tr);

        // Transaction 5 : WRITE Command
        tr=new();
        tr.transfer=1;
        tr.write_en=1;
        tr.addr=16'h0004;      // Command Register
        tr.write_data=8'h01;         // WRITE
        tr.display("GENERATOR:WRITE");
        gen2drv.put(tr);
        
        // Transaction 6 : STOP Command
        tr=new();
        tr.transfer =1;
        tr.write_en=1;
        tr.addr=16'h0004;      // Command Register
        tr.write_data=8'h03;         // STOP
        tr.display("GENERATOR : STOP");
        gen2drv.put(tr);
    endtask
endclass
