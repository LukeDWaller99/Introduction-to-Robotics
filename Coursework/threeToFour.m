function [F34] = threeToFour ()
%angle to rotate by in radians 
theta = pi/2;
t = theta;
%matrix for the rotation
rotation = [1 0 0; 0 cos(t) -sin(t); 0 sin(t) cos(t)];
%matrix for the translation
translation = [0; 0; 120];
%matrix for the homogenous tranformation
F34 = [rotation translation; 0 0 0 1];
end 