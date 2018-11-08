%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 3 - Problem 1 - 2
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================
close all
clear
clc

syms t w;

X = 20 * triangularPulse(8*w);

x = ifourier(X, t);
x = simplify(x);

ezplot(x, [-200 200])
ylim ([-.01 .41]);
title('x(t) = ifourier(X(\Omega)');
legend('x(t)');