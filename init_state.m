function M = init_state()
	M = struct()

	M.aPAR = zeros(1, 100)
	M.pPAR = zeros(1, 100)
	M.flow = zeros(1, 100)

	M.cyto_aPAR = 0
	M.cyto_pPAR = 0


	M.aPAR(97) = 100;
	M.pPAR(3) = 100;

end
