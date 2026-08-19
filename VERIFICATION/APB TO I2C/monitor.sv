class monitor;
    virtual apb_i2c_if.MONITOR vif;
    mailbox #(transaction)mon2sco;
    transaction tr;
    function new(virtual apb_i2c_if.MONITOR vif,mailbox #(transaction) mon2sco);
        this.vif=vif;
        this.mon2sco=mon2sco;
    endfunction
    task run();
        forever begin
            @(vif.mon_cb);
            if(vif.mon_cb.transfer) begin
                tr=new();
                tr.transfer=vif.mon_cb.transfer;
                tr.write_en=vif.mon_cb.write_en;
                tr.addr=vif.mon_cb.addr;
                tr.write_data=vif.mon_cb.write_data;
                tr.read_data=vif.mon_cb.read_data;
                $display("MONITOR");
                $display("----------------------------------------");
                $display("Transfer=%0b",tr.transfer);
                $display("Write_en=%0b",tr.write_en);
                $display("Address=%h",tr.addr);
                $display("Write Data=%h",tr.write_data);
                $display("Read Data=%h",tr.read_data);
                $display("SCL=%b",vif.mon_cb.scl);
                $display("SDA=%b",vif.mon_cb.sda);
                $display("----------------------------------------");
                mon2sco.put(tr);
            end
        end
    endtask
endclass
