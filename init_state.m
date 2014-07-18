function M = init_state(P)


	% Experimental data for initial state
	aPAR = importdata('updated_DATASET_16July14/aPAR.txt');
	pPAR = importdata('updated_DATASET_16July14/pPAR.txt');
	flow = importdata('updated_DATASET_16July14/flow-myosin-um-per-min.txt');


	time = importdata('updated_DATASET_16July14/T-sec.txt');
	xpos = importdata('updated_DATASET_16July14/X-um.txt');

	M = struct()

	M.x_num = length(aPAR(1,:))

	M.aPAR = aPAR(1,:);
	M.pPAR = pPAR(1,:);
	M.flow = flow(1,:);

%	M.cyto_aPAR = 0;
%	M.cyto_pPAR = 0;

	M.Ro_cyto_aPAR = P.Ro_A - P.psi * sum(M.aPAR) / P.L
	M.Ro_cyto_pPAR = P.Ro_P - P.psi * sum(M.pPAR) / P.L


%	M.aPAR(33) = 8
%	M.pPAR(65) = 100;

end
