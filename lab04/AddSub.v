module AddSub(A0, A1, A2, A3, B0, B1, B2, B3, CTRL, S0, S1, S2, S3, C)
	input A0, A1, A2, A3, B0, B1, B2, B3, CTRL;
	output S0, S1, S2, S3, C;
	
	FA U0(A0, B0 ^ CTRL, CTRL, S0, COUT0);
	FA U1(A1, B1 ^ CTRL, COUT0, S1, COUT1);
	FA U2(A2, B2 ^ CTRL, COUT1, S2, COUT2);
	FA U3(A3, B3 ^ CTRL, COUT2, S3, C);