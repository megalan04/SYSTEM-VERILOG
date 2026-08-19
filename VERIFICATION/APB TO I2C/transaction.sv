class transaction;
    // Input Signals to DUT    
    rand bit transfer;
    rand bit write_en;
    rand bit [15:0]addr;
    rand bit [7:0]write_data;

    // Output Signals from DUT
    bit [7:0]read_data;
    function void display(string name="TRANSACTION");
        $display("===========================================");
        $display("Transfer:%0b",transfer);
        $display("Write_en:%0b",write_en);
        $display("Address:0x%0h",addr);
        $display("Write Data:%0h",write_data);
        $display("Read Data:%0h",read_data);
        $display("===========================================");

    endfunction

    // Copy Method
    function transaction copy();
        copy=new();
        copy.transfer=this.transfer;
        copy.write_en=this.write_en;
        copy.addr=this.addr;
        copy.write_data=this.write_data;
        copy.read_data=this.read_data;
    endfunction
endclass
