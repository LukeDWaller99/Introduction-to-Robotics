function [F12] = oneToTwo ()
%angle to rotate by in radians 
theta = -pi/2;
t = theta;
%matrix for the rotation
rotation = [cos(t) -sin(t) 0; sin(t) cos(t) 0; 0 0 1];
%matrix for the translation
translation = [0; -120; 0];
%matrix for the homogenous tranformation
F12 = [rotation translation; 0 0 0 1];
end 