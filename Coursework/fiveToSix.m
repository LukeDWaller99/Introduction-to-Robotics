function [F56] = fiveToSix ()
%angle to rotate by in radians 
theta = 0;
t = theta;
%matrix for the rotation
rotation = [1 0 0; 0 cos(t) -sin(t); 0 sin(t) cos(t)];
%matrix for the translation
translation = [0; 0; 30];
%matrix for the homogenous tranformation
F56 = [rotation translation; 0 0 0 1];
end 