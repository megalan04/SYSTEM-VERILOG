class transaction #(parameter addr_w=4,data_w=8);
  bit rst;
  rand bit w_en;
  rand bit en;
  rand bit [data_w-1:0]data;
  rand bit [addr_w-1:0]addr;
  bit [data_w-1:0]dout;
  constraint c0{
    if(!en)
      w_en==0;
    }
endclass
