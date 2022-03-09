module mux2x1(win,one,two,sel);
	input [1:0]one;
	input [1:0]two;
	input sel;
	output [1:0]win;
	assign win=(sel)?two:one;
endmodule

module mux4x2(out,a,b,c,d,s2,s1,s0);
	input [1:0]a;
	input[1:0]b;
	input [1:0]c;
	input[1:0]d;
	input s2;
	input s1;
	input s0;
	output [1:0]out;
	wire [1:0]mux1;
	wire [1:0]mux2;
	mux2x1 semifinal1(mux1,a,b,s0);
	mux2x1 semifinal2(mux2,c,d,s1);
	mux2x1 finals(out,mux1,mux2,s2);
endmodule