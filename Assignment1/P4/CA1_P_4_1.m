%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 1 - Problem 4 - 1
% File name: CA1_P_4_1.m
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

t = -5: .1: 10;
x1 = heaviside(t) - heaviside(t-2);
x2 = heaviside(t) - heaviside(t-3);
a1 = 2;
a2 = 3;

x = a1*x1 + a2*x2;
y1 = cumtrapz(t,x);

subplot(2,1,1);
plot(t, y1)
grid;
title('S[a_1x_1(t)+a_2x_2(t)]');

y2 = a1*cumtrapz(t,x1)+ a2*cumtrapz(t,x2);
subplot(2,1,2);
plot(t, y2)
grid;
title('a_1S[x_1(t)]+a_2S[x_2(t)]');


