class driver;
    virtual apb_i2c_if.DRIVER vif;
    mailbox #(transaction)gen2drv;
    transaction tr;
    function new(virtual apb_i2c_if.DRIVER vif,mailbox#(transaction)gen2drv);
        this.vif=vif;
        this.gen2drv=gen2drv;
    endfunction
    task reset();

        vif.presetn<=0;
        vif.drv_cb.transfer<=0;
        vif.drv_cb.write_en<=0;
        vif.drv_cb.addr<=16'h0000;
        vif.drv_cb.write_data<=8'h00;
        repeat(5) @(vif.drv_cb);
        vif.presetn<=1;
        $display("[%0t] DRIVER:RESET DONE",$time);
    endtask
    task drive();
        gen2drv.get(tr);
        tr.display("DRIVER");
        @(vif.drv_cb);
        vif.drv_cb.transfer<=tr.transfer;
        vif.drv_cb.write_en<=tr.write_en;
        vif.drv_cb.addr<=tr.addr;
        vif.drv_cb.write_data<=tr.write_data;
        @(vif.drv_cb);
        vif.drv_cb.transfer<=0;
    endtask
    task run();
        reset();
        forever begin
            drive();
        end
    endtask
endclass
