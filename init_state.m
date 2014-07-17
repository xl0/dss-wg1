function M = init_state()
	% row 1 - pPAR
	% row 2 - aPAR
	% row 3 - flow
	M = zeros(3, 100);

	M(1, 50) = 100;
	M(2, 60) = 100;

end
