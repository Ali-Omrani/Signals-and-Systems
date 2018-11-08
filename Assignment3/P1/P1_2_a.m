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
X = 2*1i*w/(1+1i*w);


x = ifourier(X, t);
x = simplify(x);
ezplot(x);
grid;
title ('x(t)');
legend('x(t) = ifourier(X(\Omega))');
