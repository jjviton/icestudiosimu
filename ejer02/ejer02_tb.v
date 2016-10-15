//-------------------------------------------------------------------
//-- ejer02_tb.v
//-- Testbench
//-------------------------------------------------------------------
//-- J3
//-- GPL license

//-------------------------------------------------------------------
`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module ejer02_tb();

//-- Simulation time: 1us (10 * 100ns)
parameter DURATION = 10;

//-- Clock signal. It is not used in this simulation
reg clk = 0;
always #0.5 clk = ~clk;

//-- Leds port
wire d1, d2, d3, d4, d5;

//-- Instantiate the unit to test
leds UUT (
           .v6c86ce(d1),
    
         );


initial begin

  //-- File were to store the simulation results
  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, ejer02_tb);

   #(DURATION) $display("End of simulation");
  $finish;
end

endmodule