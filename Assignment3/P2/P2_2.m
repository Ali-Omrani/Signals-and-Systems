%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 3 - Problem 2 - 1
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================
close all
clear
clc

syms x t w;
y = x*exp(-x)*heaviside(x);

y1 = diff(y, x);
f1 = fourier(y1 , w);
f1 = simplify(f1);

y2 = int(y, x, -inf, t);
f2 = fourier(y2, w);
f2 = simplify(f2);

f = f1*f2;
result = ifourier(f, t);
result = simplify(result)
ezplot(result);
grid;
title('result = dy/dx * integral(y)');
legend('result');
