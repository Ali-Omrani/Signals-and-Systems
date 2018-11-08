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
R = simplify(R)


step = 0.01;
temp_t = -20:step:20;
R = eval(subs(R, r, temp_t));
plot(temp_t, R);
grid;
title('R = autocorrelation\{exp(-3t)u(t)\} using int');
legend('R');
ylim([-.02 .18]);
