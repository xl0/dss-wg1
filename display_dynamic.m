function display_dynamic(aPAR, pPAR, flow, time, xpos, P)

	assert(isequal(size(aPAR), size(pPAR)))

	xpos

	aPAR(1,:)

	s = size(pPAR)
	

	h = figure(1)
	set(h, 'Position', [0 0 1024 768])

	aPAR_ylim = [min(min(aPAR)), max(max(aPAR))]
	pPAR_ylim = [min(min(pPAR)), max(max(pPAR))]
	flow_ylim = [min(min(flow)), max(max(flow))]

	all_xlim = [min(xpos), max(xpos)];


	tsteps = length(aPAR);


	n = 1
	f = 1
	while (n <= tsteps)
		subplot(3, 1, 1)

		plot(xpos, aPAR(n,:), 'ro')
		ylim(aPAR_ylim)
		xlim(all_xlim)
		xlabel('distance(um)')
		ylabel('aPAR concentration(A.U)')
		title(sprintf('T = %.1f', time(n) ))
	
		subplot(3, 1, 2)
		plot(xpos, pPAR(n,:), 'go')
		ylim(pPAR_ylim)
		xlim(all_xlim)
		xlabel('distance(um)')
		ylabel('pPAR concentration(A.U)')

		subplot(3, 1, 3)
		plot(xpos, flow(n,:), 'bo')
		ylim(flow_ylim)
		xlim(all_xlim)
		xlabel('distance(um)')
		ylabel('flow (um/min)')

		refresh(h)
		drawnow

		%f = getframe(1)
		%imwrite(f.cdata, 'aaaaa.png')

		saveas(h, strcat('file', num2str(f), '.png'));


%		im = frame2im(getframe(h));
%		[A,map] = rgb2ind(im,256);
%		if (n == 1)
%			imwrite(A, map, 'movie.gif', 'gif', 'DelayTime', 0.2);
%		end
%		imwrite(A, map, 'movie.gif', 'gif',  'DelayTime', 0.2, 'WriteMode','append');

%		pause(0.2)
		n = n + 100;
		f = f + 1;
	end

end
