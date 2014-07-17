clear all
close all

P = parameters();

M = init_state();

tsteps = P.sim_time / P.delta_t

aPAR = zeros(tsteps, length(M(1,:)));
pPAR = zeros(tsteps, length(M(1,:)));
flow = zeros(tsteps, length(M(1,:)));


time = 0
n = 0
while (time < P.sim_time)
	time = time + P.delta_t;
	n = n + 1;

	aPAR(n,:) = M(1,:);
	pPAR(n,:) = M(2,:);

	M = diffuse(M, P);
	M = react(M, P);
end

display_static(aPAR, pPAR, flow, [0 P.sim_time], [0 100])
