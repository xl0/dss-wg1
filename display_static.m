function display_static(aPAR, pPAR, flow, time, xpos, P)
	
%	h = figure(1)
%	set(h, 'Position', [0 0 400, 800])

	aPAR_ylim = [floor(min(min(aPAR))), ceil(max(max(aPAR)))];
	pPAR_ylim = [floor(min(min(pPAR))), ceil(max(max(pPAR)))];
	flow_ylim = [min(min(flow)), max(max(flow))];


	aPAR_cmap = zeros(aPAR_ylim(2), 3);
	ls = linspace(0, 1, aPAR_ylim(2)  - aPAR_ylim(1))';

	aPAR_cmap(aPAR_ylim(1) + 1:aPAR_ylim(2), 1) = ls;

	pPAR_cmap = zeros(pPAR_ylim(2), 3);
	ls = linspace(0, 1, pPAR_ylim(2) - pPAR_ylim(1))';

	pPAR_cmap(pPAR_ylim(1) + 1:pPAR_ylim(2), 3) = ls;
	% Red 0 - 300
%	aPAR_cmap = [linspace(0, 1, aPAR_ylim(2))', zeros(300, 1), zeros(300,1)];

	% Blue, 0 - 400
%	pPAR_cmap = [zeros(400, 1), zeros(400,1), linspace(0, 1, 400)'];


	h = figure(2)
	image(xpos, time, aPAR)
	colormap(aPAR_cmap)
	colorbar
	xlabel('distance(um)')
	ylabel('Time(sec)')
	title('aPAR')
%	saveas(h, 'aPAR.png');

	h = figure(3)
	image(xpos, time, pPAR)
	colormap(pPAR_cmap)
	colorbar
	xlabel('distance(um)')
	ylabel('Time(sec)')
	title('pPAR')
%	saveas(h, 'pPAR.png');

	h = figure(4)
	image(xpos, time, flow, 'CDataMapping', 'scaled')
	colormap(jet)
	colorbar
	xlabel('distance(um)')
	ylabel('Time(sec)')
	title('flow')
%	saveas(h, 'flow.png');
end
