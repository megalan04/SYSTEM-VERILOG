interface asynfifo_if 
(
    input logic wclk,
    input logic rclk
);

   //-----------------------------
   // Signals
   //-----------------------------
   logic wrst;
   logic rrst;

   logic we;
   logic re;

  logic [7:0] w_data;
  logic [7:0] r_dout;

   logic full;
   logic empty;

   //=========================================
   // Write Driver Clocking Block
   //=========================================

  clocking w_cb @(negedge wclk);

      default input #1step output #0;

      input full;

      output we;
      output w_data;
      output wrst;

   endclocking


   //=========================================
   // Write Monitor Clocking Block
   //=========================================

   clocking w_cb_mon @(posedge wclk);

      default input #1step output #0;

      input we;
      input w_data;
      input wrst;
      input full;

   endclocking


   //=========================================
   // Read Driver Clocking Block
   //=========================================

  clocking r_cb @(negedge rclk);

      default input #1step output #0;

      input r_dout;
      input empty;

      output re;
      output rrst;

   endclocking


   //=========================================
   // Read Monitor Clocking Block
   //=========================================

   clocking r_cb_mon @(posedge rclk);

      default input #1step output #0;

      input re;
      input rrst;

      input #0 r_dout;
      input empty;

   endclocking


   //=========================================
   // DUT Modport
   //=========================================

   modport DUT
   (
      input  wclk,
      input  rclk,

      input  wrst,
      input  rrst,

      input  we,
      input  re,

      input  w_data,

      output r_dout,

      output full,
      output empty
   );


   //=========================================
   // Testbench Modport
   //=========================================

   modport TB
   (
      clocking w_cb,
      clocking w_cb_mon,

      clocking r_cb,
      clocking r_cb_mon
   );

endinterface
