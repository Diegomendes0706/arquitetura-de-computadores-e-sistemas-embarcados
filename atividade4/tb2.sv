module testbench2();
  logic  a, b, c;
  logic y;
  pratica dut(a, b, c, y);  // instantiate dut
  initial begin // apply inputs, check results one at a time
    a = 0; b = 0; c = 0; #10;
    if (y !== 1) $display("000 failed."); else $display("000 success.");
    c = 1; #10;
    if (y !== 0) $display("001 failed."); else $display("001 success.");
    b = 1; c = 0; #10;
    if (y !== 0) $display("010 failed."); else $display("010 success.");
    c = 1; #10;
    if (y !== 0) $display("011 failed."); else $display("011 success.");
    a = 1; b = 0; c = 0; #10;
    if (y !== 1) $display("100 failed."); else $display("100 success.");
    c = 1; #10;
    if (y !== 1) $display("101 failed."); else $display("101 success.");
    b = 1; c = 0; #10;
    if (y !== 0) $display("110 failed."); else $display("110 success.");
    c = 1; #10;
    if (y !== 0) $display("111 failed."); else $display("111 success.");
  end
endmodule  

