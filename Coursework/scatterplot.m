function [] = scatterplot(robotArm, midValue)

samples = 10000; %set the number of samples plotted on the diagram
%creating random values for theta to be used to plot the points
thetaRand = pi/2 +(-pi/2 - pi/2).* rand(samples, 6); 
[TRand, ALL] = robotArm.fkine(thetaRand);

Rand=TRand.T;
% use squeeze to return an array with all the singletons removed 
TP = squeeze(Rand( 1:3, 4, :)); 

%create a figure to plot the arm and the scattered points
figure

%plot the scattered points
h = plot3(TP(1,:), TP(2,:), TP(3,:), 'r.');
set(h, 'LineWidth', 3);

title('Student No: 10618407 - Scatterplot for 6DOF arm')
%plots the robot arm 'robotArm', along with all of the scatterplot points
%into a plot using the midValues. Thie size of the workspace is
%1000x1000x600 (this is the area in which the robot operates)
robotArm.plot(midValue, 'noshadow', 'workspace', [-500 500 -500 500 0 600]);

end
