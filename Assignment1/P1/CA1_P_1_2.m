%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 1 - Problem 1 - 2
% File name: CA1_P_1_2.m
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

t1 = -2: .1: 0;
t2 = 0: .1: 5;

u1 = zeros(size(t1));
u2 = ones(size(t2));

t = [t1 t2];
u = [u1 u2];

t1 = -2: .1: 3;
t2 = 3: .1: 5;

u1 = zeros(size(t1));
u2 = ones(size(t2));

t = [t1 t2];
u_3 = [u1 u2];

x = (t .* sin(2*pi*t)) .* (u - u_3);

subplot(2,1,1);
plot(t, x);
grid;
title('without heaviside');
legend('2sin(2pi*t) * (u(t)-u(t-3))');



u_h = heaviside(t); 
u_h_3 = heaviside(t-3);

y = (t.* sin(2*pi*t)) .* (u_h - u_h_3);

subplot(2,1,2);
plot(t, y);
grid;

title('with heaviside');
legend('2sin(2pi*t) * (u(t)-u(t-3))');





