%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 3 - Problem 3 - 1
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================
close all
clear
clc

syms t r w;

x1 = exp(-3*t)*heaviside(t);
x_2 = subs(x1, t, t-r);
x2 = conj(x_2);

R = int(x1*x2, t, -inf, inf);
% R = simplify(R);



 F_R = fourier(R, w);
 F_R = 1/(9+w*w);
 subplot(2,1,1);
 ezplot(F_R);
 title('Fourier\{R\}');
 legend('F\{R\}');
 grid;
 
 
 
 x = exp(-3*t)*heaviside(t);
 X = fourier(x, w);
 spectralDensity = abs(X)^2;
 subplot(2,1,2);
 ezplot(spectralDensity);
 grid;
 title('Energy');
 legend('E');
 
E = limit(R, r, 0);
 eval(E)

