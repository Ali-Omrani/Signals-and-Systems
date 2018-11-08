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
x = exp(-0.1*t)*cos(t)*heaviside(t);
X = fourier(x, w);
X = simplify(X);
E = (1/(2*pi))*int(X, w, -inf, inf)
