`timescale 1ns/1ns
module tournament_tb;
wire[1:0] t_out;
reg[1:0] t_a;
reg[1:0]t_b;
reg[1:0]t_c; 
reg[1:0]t_d;
reg t_s2;
reg t_s1;
reg t_s0;
tournament wc( .a(t_a),.b(t_b),.c(t_c),.d(t_d),.s2(t_s2), .s1(t_s1), .s0(t_s0), .champion(t_out) );
initial
begin
	$display("knockout tournament wc");
	$display("~teams~ sf1 sf2 fi winner");
	$monitor(t_a,,t_b,,t_c,,t_d,,,t_s0,,,t_s1,,,t_s2,,,t_out);

// 1
t_a = 2'b00;
t_b = 2'b01;
t_c = 2'b10;
t_d = 2'b11;
t_s0 = 1'b0;
t_s1 = 1'b0;
t_s2 = 1'b0;
#10//2
t_a = 2'b00;
t_b = 2'b01;
t_c = 2'b10;
t_d = 2'b11;
t_s0 = 1'b0;
t_s1 = 1'b0;
t_s2 = 1'b1;
#10//3
t_a = 2'b00;
t_b = 2'b01;
t_c = 2'b10;
t_d = 2'b11;
t_s0 = 1'b0;
t_s1 = 1'b1;
t_s2 = 1'b0;
#10 //4
t_a = 2'b00;
t_b = 2'b01;
t_c = 2'b10;
t_d = 2'b11;
t_s0 = 1'b0;
t_s1 = 1'b1;
t_s2 = 1'b1;
#10 //5
t_a = 2'b00;
t_b = 2'b01;
t_c = 2'b10;
t_d = 2'b11;
t_s0 = 1'b1;
t_s1 = 1'b0;
t_s2 = 1'b0;
#10 //6
t_a = 2'b00;
t_b = 2'b01;
t_c = 2'b10;
t_d = 2'b11;
t_s0 = 1'b1;
t_s1 = 1'b0;
t_s2 = 1'b1;
#10 //7
t_a = 2'b00;
t_b = 2'b01;
t_c = 2'b10;
t_d = 2'b11;
t_s0 = 1'b1;
t_s1 = 1'b1;
t_s2 = 1'b0;
#10 //8
t_a = 2'b00;
t_b = 2'b01;
t_c = 2'b10;
t_d = 2'b11;
t_s0 = 1'b1;
t_s1 = 1'b1;
t_s2 = 1'b1;

end
initial begin
	$dumpfile("out.vcd");
	$dumpvars(1,wc.tournament);
end
endmodule