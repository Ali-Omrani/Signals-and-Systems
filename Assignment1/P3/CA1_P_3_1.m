%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 1 - Problem 2 - 3
% File name: 1_1.m
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================


t = -5:.1: 20;
x1=exp(-abs(t));

subplot(2,1,1);
plot(t, x1);
grid;


x2=abs(sin(pi*t));
subplot(2,1,2);
plot(t, x2);
grid;
