module instruction_memory(
  input [3:0] p_in,
  output reg [15:0] instruction
);

  reg [15:0] rom [0:15];  
    initial begin
        $readmemh("instructions.hex", rom); //¨Ενα όνομα filler τώρα θα δούμε στην πράξη πώς θα το υλοποιήσουμε
    end
  always @(*) begin
    instruction = rom[p_in];
  end

endmodule