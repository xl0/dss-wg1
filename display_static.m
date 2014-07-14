function display_static(aPAR, pPAR, time, xpos)
	% Red 0 - 300
	aPAR_cmap = [linspace(0, 1, 300)', zeros(300, 1), zeros(300,1)];

	% Blue, 0 - 400
	pPAR_cmap = [zeros(400, 1), zeros(400,1), linspace(0, 1, 400)'];

	figure(1)
	image(xpos, time, aPAR)
	colormap(aPAR_cmap)
	colorbar
	xlabel('distance(um)')
	ylabel('Time(sec)')
	title('aPAR')


	figure(2)
	image(xpos, time, pPAR)
	colormap(pPAR_cmap)
	colorbar

	xlabel('distance(um)')
	ylabel('Time(sec)')
	title('pPAR')
end
