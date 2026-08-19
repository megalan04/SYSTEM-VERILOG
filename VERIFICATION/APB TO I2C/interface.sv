interface apb_i2c_if(input bit pclk);
    logic presetn;
    logic transfer;
    logic write_en;
    logic [15:0]addr;
    logic [7:0]write_data;
    logic [7:0]read_data;
    logic scl;
    tri1  sda;
  
    clocking drv_cb @(posedge pclk);
        output transfer;
        output write_en;
        output addr;
        output write_data;
        input read_data;
    endclocking

    clocking mon_cb @(posedge pclk);
        input transfer;
        input write_en;
        input addr;
        input write_data;
        input read_data;
        input scl;
        input sda;
    endclocking
    
    // Driver Modport
    modport DRIVER
    (clocking drv_cb,output presetn);

    // Monitor Modport
    modport MONITOR
    (clocking mon_cb,input presetn);
endinterface
