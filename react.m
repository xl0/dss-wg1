function M = react(M_old, P)

	M = M_old;

	n = 1;
	while (n < M.x_num)
		M.aPAR(n) = M.aPAR(n) - P.delta_t * P.Koff_A * M.aPAR(n); % Membrane -> cyto term
		M.aPAR(n) = M.aPAR(n) + P.delta_x * P.delta_t * P.Kon_A * M.Ro_cyto_aPAR / P.L; % Cyto ->  Membrane

		M.pPAR(n) = M.pPAR(n) - P.delta_t * P.Koff_P * M.pPAR(n); % Membrane -> cyto term
		M.pPAR(n) = M.pPAR(n) + P.delta_x * P.delta_t * P.Kon_P * M.Ro_cyto_pPAR / P.L;

		n = n + 1;
	end

	M.Ro_cyto_aPAR = M.Ro_cyto_aPAR + P.delta_t * ( -P.Kon_A * M.Ro_cyto_aPAR + P.psi * P.delta_x * P.Koff_A * (sum(M_old.aPAR) / P.L));
	M.Ro_cyto_pPAR = M.Ro_cyto_pPAR + P.delta_t * ( -P.Kon_P * M.Ro_cyto_pPAR + P.psi * P.delta_x * P.Koff_P * (sum(M_old.pPAR) / P.L));


end

