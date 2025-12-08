//testbench file 

module tb;
  reg clk,rst;
  wire can_dispatch;
  integer i;
  reg[1:0]coin_stack[0:5],coin;
  always #10 clk=~clk;
  vending_machine v0(can_dispatch,clk,coin,rst);
  initial begin
    $monitor("i=%d,time=%d,reset=%d,coin=%d,can dispatch=%d",i,$time,rst,coin,can_dispatch);
    $dumpfile("tb.vcd");
    $dumpvars(1,tb);
    clk=0;
    rst=1;
    #50 rst=0;
    coin_stack[0]=2'b00;
    coin_stack[1]=2'b01;
    coin_stack[2]=2'b10;
    coin_stack[3]=2'b01;
    coin_stack[4]=2'b10;
    coin_stack[5]=2'b00;
    i=0;
    #130 $finish;
  end
  always @(posedge clk) begin
    coin=coin_stack[i];
    i=i+1;
  end
endmodule