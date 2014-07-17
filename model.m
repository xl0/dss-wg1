clear all
close all

P = parameters();

M = init_state();

tsteps = P.sim_time / P.delta_t

aPAR = zeros(tsteps, P.x_num);
pPAR = zeros(tsteps, P.x_num);
flow = zeros(tsteps, P.x_num);

time = 0;
n = 0;
while (time < P.sim_time)
	time = time + P.delta_t;
	n = n + 1

	aPAR(n,:) = M.aPAR(:);
	pPAR(n,:) = M.pPAR;

	M = diffuse(M, P);
	M = react(M, P);
end

figure()
plot(sum(aPAR'))
figure()
plot(sum(pPAR'))


%display_static(aPAR, pPAR, flow, [0 P.sim_time], linspace(0, 100), P)
%display_dynamic(aPAR, pPAR, flow, [0 P.sim_time], linspace(0, 100), P)
