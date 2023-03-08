function [ q ] = robotArmPath (steps, robotArm, robotName)

%define the targets for the square
%cartesian straigtline path between poses
T=[];
T(:,:,1) = transl(100, 200, 100); %defines the start point 
T(:,:,2) = transl(100, 200, 100); %defines the start point
T(:,:,3) = transl(100, 200, 200); %defines the start point
T(:,:,4) = transl(100, -200, 200); %defines the start point
T(:,:,5) = transl(100, -200, 100); %defines the start point
T(:,:,6) = transl(100, 200, 100); %defines the start point
T(:,:,7) = transl(100, 200, 100); %defines the start point

%interpolate between targets with steps
TI =[];
for idx = 1 : (length(T)-1)
    offset = (idx - 1) * steps;
    tmp = ctraj(T(:,:,idx), T(:,:,idx + 1) , steps); %computes a cartesian path
    for tidx = 1:steps
        TI(:,:, tidx + offset) = tmp(:,:,tidx); %compute a cartesian path
    end
end

figure %creates a figure for the trajectory plot 
TP = squeeze(T(1:3, 4, :)); %remove the singleton dimesions from the matrix
h = plot3(TP(1,:), TP(2,:), TP(3,:), 'k-'); %plot all of the points of the trajectory
set(h, 'LineWidth', 3); %set the width of the line for the trajectory
title('Student No: 10618407 - Path for 6DOF arm') 
q = robotArm.ikunc(TI); %create a matrix of all the arm positions
%setting the limit of the robot
robotArm.qlim = [-pi/2 pi/2; -pi/2 pi/2; -pi/2 pi/2; -pi/2 pi/2; -pi/2 pi/2; -pi/2 pi/2;]; 
save(robotName, 'q'); %save the plotted trajectory points to the robot arm
robotArm.plot(q); %output the points onto the trajectory 

end