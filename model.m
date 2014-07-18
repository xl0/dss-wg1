clear all
close all

P = parameters();

M = init_state(P)

M.aPAR

tsteps = ceil(P.sim_time / P.delta_t)

aPAR = zeros(tsteps, M.x_num);
pPAR = zeros(tsteps, M.x_num);
flow = zeros(tsteps, M.x_num);

aPAR_cyto = zeros(tsteps, 1);
pPAR_cyto = zeros(tsteps, 1);

aPAR_tot = zeros(tsteps, 1);
pPAR_tot = zeros(tsteps, 1);


time = 0;
n = 0;
while (time < P.sim_time)
	time = time + P.delta_t;
	n = n + 1;

	aPAR(n,:);
	M.aPAR;

	aPAR(n,:) = M.aPAR;
	pPAR(n,:) = M.pPAR;
	aPAR_cyto(n) = M.Ro_cyto_aPAR;
	pPAR_cyto(n) = M.Ro_cyto_pPAR;

	aPAR_tot(n) = M.Ro_cyto_aPAR + P.psi * sum(M.aPAR) / P.L;
	pPAR_tot(n) = M.Ro_cyto_pPAR + P.psi * sum(M.pPAR) / P.L;

	M = diffuse(M, P);
	M = react(M, P);

end

figure()
plot(sum(aPAR'))
figure()
plot(sum(pPAR'))

%figure()
%plot(aPAR_tot)
%figure()
%plot(pPAR_tot)



%pause

display_static(aPAR, pPAR, flow, [0 P.sim_time], linspace(-64, 64), P)
%display_dynamic(aPAR, pPAR, flow, [0 P.sim_time], linspace(0, 100), P)
