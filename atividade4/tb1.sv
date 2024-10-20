/*
Exemplo do Livro Digital Design and Computer Architecture, Sarah L. Harris e Harris
*/

module testbench1();
  logic a, b, c;
  logic y;
  // instantiate device under test
  pratica dut(a, b, c, y);
  // apply inputs one at a time
  initial begin
    a = 0; b = 0; c = 0; #10;
    c = 1; #10;
    b = 1; c = 0; #10;
    c = 1; #10;
    a = 1; b = 0; c = 0; #10;
    c = 1; #10;
    b = 1; c = 0; #10;
    c = 1; #10;
  end
endmodule 

