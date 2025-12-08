// design file

module vending_machine(can_dispatch,clk,coin,rst);
  output reg can_dispatch;
  input [1:0]coin;
  input clk,rst;
  reg[1:0] state,next_state;
  parameter s0=2'b00,s5=2'b01,s10=2'b10,s15=2'b11;
  always@(posedge clk)begin
    if(rst) state<=s0;
  	else state<=next_state;
  end
  
  always @(state,coin)begin
    case(state)
      s0:begin
        if(coin==2'b00)
          next_state=s0;
        else if(coin==2'b01)
          next_state=s5;
        else if(coin==2'b10)
          next_state=s10;
      end
      s5:begin
        if(coin==2'b00)
          next_state=s5;
        else if(coin==2'b01)
          next_state=s10;
        else if(coin==2'b10)
          next_state=s15;
      end
      s10:begin
        if(coin==2'b00)
          next_state=s10;
        else if(coin==2'b01)
          next_state=s15;
        else if(coin==2'b10)
          next_state=s15;
      end
      s15:begin
        if(coin==2'b00)
          next_state=s0;
        else if(coin==2'b01)
          next_state=s5;
        else if(coin==2'b10)
          next_state=s10;
      end
    endcase
  end
  
  assign can_dispatch=(state==s15)?1:0;
endmodule
  
  
  
  