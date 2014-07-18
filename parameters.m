function P = parameters()
	P = struct()
	% Both in seconds
	P.delta_t = 0.35
	P.sim_time = 700


	% In um^2/s
	P.diffusion_rate = [0.28 0.15]

	P.Koff_A = 5.4e-3;
	P.Koff_P = 7.3e-3;
	P.Kon_A = 8.58e-3;
	P.Kon_P = 4.74e-2

	P.Ro_A = 1.56;
	P.Ro_P = 1;

	P.psi = 0.174;
	P.L = 134.6;
	P.delta_x = P.L / 65

end
