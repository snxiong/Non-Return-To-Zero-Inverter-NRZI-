// Steven Xiong
// CSC 142
// Project#1
module nrzi
(
	input clock, reset, x,
	output reg z
);
	parameter	A = 2'b01,	//will output z = 1
			B = 2'b00;	//will output z = 0

	reg [1:0] current_state = A, next_state;

	// Section 1 Next State Generator NSG
	always@(*)
	begin
		casex(current_state)
		A:if(x == 1)
			next_state = A;
		else	// else x == 0 and z needs to change input
			next_state = B;
		B:if(x == 0)
			next_state = A;
		else
			next_state = B;
		endcase
	end
	
	// Section 2 Output Generator OG
	always@(*)
	begin
		if(current_state == A)
			z = 1;
		else
			z = 0;
	end

	// Section 3  flip flop
	always@(posedge clock, posedge reset)
	begin
		if(reset == 1)
			current_state <= A;
		else
			current_state <= next_state;
	end

endmodule
