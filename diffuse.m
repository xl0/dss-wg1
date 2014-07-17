function M = diffuse(M, P)

	laplace = [1, -2, 1];

%	M(1,:)
%	D * conv(M(1,:), laplace, 'same')

	M(1,:) = M(1,:) + P.delta_t * P.diffusion_rate(1) * conv(M(1,:), laplace, 'same');
	M(2,:) = M(2,:) + P.delta_t * P.diffusion_rate(2) * conv(M(2,:), laplace, 'same');
	
end
