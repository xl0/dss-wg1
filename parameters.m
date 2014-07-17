function P = parameters()
	P = struct()
	% Both in seconds
	P.delta_t = 0.1
	P.sim_time = 1000

	P.x_num = 100

	% In um^2/s
	P.diffusion_rate = [0.28 0.15]


end
