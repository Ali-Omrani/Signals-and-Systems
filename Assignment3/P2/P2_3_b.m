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
x = 2*exp(-t)*heaviside(t);
E = int(abs(x)^2, t, -inf, inf)