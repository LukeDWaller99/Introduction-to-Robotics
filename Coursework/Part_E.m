function [E] = Part_E ()


c1 = sym('c1');
c2 = sym('c2');
s1 = sym('s1');
s2 = sym('s2');
a1 = sym('a1');
a2 = sym('a2');
a3 = sym('a3');
a4 = sym('a4');
d3 = sym('d3');

A = [c1 0 s1 (a2*c1); s1 0 -c1 (a2*s1); 0 1 0 a1; 0 0 0 1];
B = [c2 -s2 c2 (a3*c2); s2 c2 s2 (a3*s2); -1 0 1 0; 0 0 0 1];
C = [1 0 0 0; 0 1 0 0; 0 0 1 (a4+d3); 0 0 0 1];

E = A * B * C;
end 