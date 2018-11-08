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

step = 0.01;
t = 0:step:20;

x = exp(-3*t).*heaviside(t);
R = xcorr(x)*step;

t = -20:step:20;
plot(t,R);
grid;
title('R = autocorrelation\{exp(-3t)u(t)\} using xcorr');
legend('R');
ylim([-.02 .18]);

