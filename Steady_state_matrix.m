clc;clear;
% First, define a set of symbolic variables:
syms c11 c12 c15 c22 c33 c34 c41 c43 c44 c46 c47 ...
    c55 c56 c62 c64 c65 c66 c67 ...
    c72 c73 c74 c75 c76 c77 e1 d1 ...
k1 k2 k3 k4 k5 k6 k7 k8 kint;
% Next, define an 8x8 matrix A that contains the previously defined symbolic variables: A = [0 0 kint 0 0 0 0 0; 0 c22 0 0 0 0 0 0; 0 c12 c11 0 0 c15 0 0;  0 0 0 c33 c34 0 0 0; 0 0 c41 c43 c44 0 c46 c47; 0 0 0 0 0 c55 c56 0; 0 c62 0 0 c64 c65 c66 c67;  0 c72 0 c73 c74 c75 c76 c77];
% Then, define an 8x1 vector Bu and an 8x1 vector Bd: 
Bu = [0;e1;0;0;0;0;0;0];
Bd = [0;0;d1;0;0;0;0;0];
% Next, define a 1x8 feedback vector K: 
K = [k1 k2 k3 k4 k5 k6 k7 k8];
% Finally, calculate the value of Xinf:
Xinf = -inv(A-Bu*K)*Bd;
