%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 1 - Problem 4 - 2
% File name: CA1_P_4_2.m
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

t = -5:.1:10;
x = heaviside(t)-heaviside(t-3);
y1 = cumtrapz(t,x);

subplot(2,1,1);
plot(t+3, y1);
grid;
title('y_1(t) = S[x(t)] shifted 3 units to the right');
ylim([-.3 3.3]);

x2 = heaviside(t-3)-heaviside(t-6);
y2 = cumtrapz(t, x2);

subplot(2,1,2);
plot(t, y2);
grid;
title('y_2(t) = S[x(t-3)]');
ylim([-.3 3.3]);

