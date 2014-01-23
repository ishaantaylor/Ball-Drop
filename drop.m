%Ishaan Taylor, ist2, HW10
%This is the revamped drop function tailored to fit the new requirements/

function [hNew, vNew] = drop3(h, v, timestep)
hNew = h + v*timeStep;
vNew = v + a*timeStep;
a = -9.8;
if hNew < 0
	vNew = 0.5*abs(vNew);
end
end