function display_static(aPAR, pPAR, flow, time, xpos)
	
%	h = figure(1)
%	set(h, 'Position', [0 0 400, 800])

	% Red 0 - 300
	aPAR_cmap = [linspace(0, 1, 300)', zeros(300, 1), zeros(300,1)];

	% Blue, 0 - 400
	pPAR_cmap = [zeros(400, 1), zeros(400,1), linspace(0, 1, 400)'];


%	subplot(2, 1, 1)
	h = figure(2)
	image(xpos, time, aPAR)
	colormap(aPAR_cmap)
	colorbar
	xlabel('distance(um)')
	ylabel('Time(sec)')
	title('aPAR')

	saveas(h, 'aPAR.png');

%	subplot(2, 1, 2)
	h = figure(3)
	image(xpos, time, pPAR)
	colormap(pPAR_cmap)
	colorbar
	xlabel('distance(um)')
	ylabel('Time(sec)')
	title('pPAR')
	saveas(h, 'pPAR.png');

	h = figure(4)
	image(xpos, time, flow, 'CDataMapping', 'scaled')
	colormap(jet)
	colorbar
	xlabel('distance(um)')
	ylabel('Time(sec)')
	title('flow')
	saveas(h, 'flow.png');
end
