module tb();
  reg [7:0] a, b;
  reg [3:0] op_code;
  wire [7:0] result;  
  wire carry;

  alu ramesh(a, b, op_code, result, carry);
integer i;
  initial begin
    for(i=0; i<16; i=i+1)
    begin
	 $monitor("time=%d,a=%d,b=%d,op_code=%d,result=%d,carry=%d",
              $time, a, b,op_code, result, carry);
			   op_code=i; a=8'd10; b=8'd5;
			  op_code=2'b00;#10;
			  op_code=2'b01;#10;
              op_code=2'b10;#10;
              op_code=2'b11;#10;
     
      #5;
	
    end
    #10; $finish;
  end


endmodule