module ha(X, Y, S, C);
	input X;
	input Y;
	output S;
	output C;
	
assign S = (X & (!Y)) | ((!X) & Y);	// S = X XOR Y
assign C = X & Y;						// C = X AND Y

endmodule 