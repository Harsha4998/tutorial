//
// Generated by Bluespec Compiler (build d05342e3)
//
// On Mon Oct 23 15:06:00 IST 2023
//
//
// Ports:
// Name                         I/O  size props
// RDY_start                      O     1 const
// next                           O    32
// RDY_next                       O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// next_k                         I    32
// EN_start                       I     1
// EN_next                        I     1
//
// Combinational paths from inputs to outputs:
//   next_k -> next
//
//


module dut_test(CLK,
	   RST_N,

	   EN_start,
	   RDY_start,

	   next_k,
	   EN_next,
	   next,
	   RDY_next);
  output reg  CLK;
  input  RST_N;

  // action method start
  input  EN_start;
  output RDY_start;

  // actionvalue method next
  input  [31 : 0] next_k;
  input  EN_next;
  output [31 : 0] next;
  output RDY_next;
  dut dut(
		.CLK(CLK),
		.RST_N(RST_N),
		.EN_Start(EN_Start),
		.RDY_Start(RDY_Start),
		.next_k(next_k),
		.EN_next(EN_next),
		.next(next),
		.RDY_next(RDY_next)
);
  initial begin
	  $dumpfile("ifc.vcd");
	  $dumpvars;
	  CLK=0;
	  forever begin
		  #5 CLK=~CLK;
	  end
  end
  endmodule
  
 
