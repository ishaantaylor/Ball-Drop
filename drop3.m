%Ishaan Taylor, ist2, HW10
%This is the revamped drop function tailored to fit the new requirements/

function [hNew, vNew] = drop3(h, v, horVel)
hNew = h + v*horVel;
vNew = v + a*horVel;
a = -9.8;
if hNew <= 0
	vNew = 0.5*abs(vNew);
end
end