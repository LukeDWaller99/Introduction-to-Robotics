function [F01] = zeroToOne ()
%angle to rotate by in radians 
theta = -pi/2;
t = theta;
%matrix for the rotation
rotation = [1 0 0; 0 cos(t) -sin(t); 0 sin(t) cos(t)];
%matrix for the translation
translation = [29.5; 0; 108];
%matrix for the homogenous tranformation
F01 = [ rotation translation; 0 0 0 1;];
end 