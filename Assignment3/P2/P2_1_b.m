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
y1 = sinc(t);
y2 = sinc(2*pi*t)^2;

Y1 = fourier(y1, w);
Y1 = simplify(Y1);
Y2 = fourier(y2, w);
Y2 = simplify(Y2);

Y = Y1*Y2;
Y = simplify(Y);

y = ifourier(Y, t);
y = simplify(y)



