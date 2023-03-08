function [ Table, midValue ] = DHTable()

a               = [29.5 120 20 0 0 0];  % values of 'a' from the Denavit-Hartenberg Table
d               = [108 0 0 120 0 30];   % values of 'd' from the Denavit-Hartenberg Table
alpha           = [-pi/2 0 -pi/2 pi/2 -pi/2 0]; % values of 'alpha' from the Denavit-Hartenberg Table
theta_offset    = [0 -pi/2 0 0 0 0];    % values of 'theta' from the Denavit-Hartenberg Table
theta           = [0 0 0 0 0 0];        % these values are not used for seting the postion of the arm
sigma           = 0;                    % sigma is zero because it is a revolute joint, would be 1 if prismatic

% Links created for use in the robot plot using the values from the
% Denavit-Hartenberg Table 
L(1)= Link([theta(1) d(1) a(1) alpha(1) sigma theta_offset(1) ]); 
L(2)= Link([theta(2) d(2) a(2) alpha(2) sigma theta_offset(2) ]); 
L(3)= Link([theta(3) d(3) a(3) alpha(3) sigma theta_offset(3) ]); 
L(4)= Link([theta(4) d(4) a(4) alpha(4) sigma theta_offset(4) ]); 
L(5)= Link([theta(5) d(5) a(5) alpha(5) sigma theta_offset(5) ]); 
L(6)= Link([theta(6) d(6) a(6) alpha(6) sigma theta_offset(6) ]); 

Table = L; %creates a table with the serial links in for the arm plot

midValue = [0 0 0 0 0 0]; %sets the mid values for the robot plot

%creates the robot arm 'robotArm' using the serial links 
robotArm = SerialLink(Table, 'name', '6DOF'); 

%plots the robot arm 'robotArm' into a plot using the midValues. The size
%of the work space is 1000x1000x600 (this is the area in which the robot operates
title('Student No: 10614838 - Static 6DOF arm')
robotArm.plot(midValue, 'noshadow', 'workspace', [-500 500 -500 500 0 600]);
end 