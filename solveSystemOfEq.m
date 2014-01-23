%Ishaan Taylor, ist2, HW10
%This script solves a system of linear equations.

clear
clf
xVal = -20: 1 :20;
mOne = input('Enter the velocity of vehicle #1:');
bOne = input('Enter the initial distance of vehicle #1:');
mTwo = input('Enter the velocity of vehicle #2:');
bTwo = input('Enter the initial distance of vehicle #2:');
y1 = mOne*xVal + bOne;
y2 = mTwo*xVal + bTwo;
mOverall = [-mOne 1; -mTwo 1];
bOverall = [bOne; bTwo];
U = mOverall\bOverall;
plot(xVal, y1, 'g')
hold on
plot(xVal, y2, 'b')
legend('Vehicle #1', 'Vehicle #2')
xVallabel('Time')
ylabel('Distance')
if mOne ~= mTwo
    plot(U(1),U(2),'r', 'o')
    axValis([U(1)-10 U(1)+10 U(2)-10 U(2)+10])
else
    plot(5,3, 'No Solution')
end