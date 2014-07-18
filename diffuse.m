function M = diffuse(M, P)

	laplace = [1, -2, 1];

	a_convolution = [ -2 * M.aPAR(1) + M.aPAR(end) + M.aPAR(2) , ...
				conv(M.aPAR, laplace, 'valid'), ...
				-2 * M.aPAR(end) + M.aPAR(1) + M.aPAR(end - 1) ] ;

	p_convolution = [ -2 * M.pPAR(1) + M.pPAR(end) + M.pPAR(2) , ...
				conv(M.pPAR, laplace, 'valid'), ...
				-2 * M.pPAR(end) + M.pPAR(1) + M.pPAR(end - 1) ] ;

	a_coefficient = (P.diffusion_rate(1) * P.delta_t  / (P.delta_x * P.delta_x));
	p_coefficient = (P.diffusion_rate(2) * P.delta_t  / (P.delta_x * P.delta_x));

	M.aPAR = M.aPAR + a_coefficient * a_convolution;

	M.pPAR = M.pPAR + p_coefficient * p_convolution;

%	M.aPAR = M.aPAR + P.delta_t * P.diffusion_rate(1) * conv(M.aPAR, laplace, 'same');


%	M.pPAR = M.pPAR + P.delta_t * P.diffusion_rate(2) * conv(M.pPAR, laplace, 'same');
	
end
