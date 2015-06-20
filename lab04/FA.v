module FA(A, B, CIN, S, COUT)
	input A, B, CIN;
	output S, COUT;
	
	HA U0(A, B, S0, C0);
	HA U1(S0, CIN, S, C1);
	
	assign COUT = C0 | C1;