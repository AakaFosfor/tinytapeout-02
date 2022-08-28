`default_nettype none

// Keep I/O fixed for TinyTapeout
module user_module_341202178192441940(
  input [7:0] io_in, 
  output [7:0] io_out
);

  reg [63:0] fifo;

  wire clk = io_in[0];
  wire din = io_in[1];
  wire en = io_in[2];

  assign io_out[0] = fifo[63];

  always @(posedge clk) begin
    if(en) begin
      fifo <= {fifo[62:0], din};
    end
  end
  
endmodule