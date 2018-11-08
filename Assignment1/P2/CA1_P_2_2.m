%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 1 - Problem 2 - 2
% File name: CA1_P_2_2.m
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

t = 0:.1:5;

x = t .* cos(2*pi*t);

subplot(4,1,1);
plot(t,x);
grid;
legend('x(t)');

subplot(4,1,2);
plot(-t,x);
grid;
legend('x(-t)');

subplot(4,1,3);
plot(5*t,x);
grid;
legend('x(t/5)');

subplot(4,1,4);
plot((1/3)*t-1,x);
grid;
legend('x(1+3t)');


