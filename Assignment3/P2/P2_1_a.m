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

syms t w;
y1 = exp(-t)*heaviside(t);
y2 = exp(-t)*cos(2*pi*t)*heaviside(t);

Y1 = fourier(y1, w);
Y2 = fourier(y2, w);

Y = Y1*Y2;
Y = simplify(Y);

y = ifourier(Y, t)

ezplot(y);
grid;
title('y(t)');
legend('y(t)');
ylim([-.08 0.14]);
