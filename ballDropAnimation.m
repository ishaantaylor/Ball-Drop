%Ishaan Taylor, ist2, HW10
%This is the animation that animates a ball dropping at a constant forward rate.

clear
horVel = 0.05;
xVal = 0: horVel : 10;
h = 5; v = 0; a = 1; 
for i = 0:100
    [h, v] = drop3(h, v, horVel);
    yVal(a) = h;
	a = a + 1;
	i = i + 1;
    plot(xVal(i),yVal(i), 'o');
    axis([0 5 0 5]);
    ballDrop(i) = getframe;
end
movie(ballDrop)