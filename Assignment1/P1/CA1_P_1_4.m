%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 1 - Problem 1 - 4
% File name: CA1_P_1_4.m
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

t = -8:.1: 8;

r_minus2 = (t+2).* heaviside(t+2);
r = t .* heaviside(t);
r_2 = (t-2).* heaviside(t-2);
r_3 = (t-3).* heaviside(t-3);
u_3 = heaviside(t-3);

x = (2*r_minus2) - (4*r) + (r_2) + (3*r_3) - u_3;

subplot(2,1,1);
plot(t, x);
title('using heaviside');
legend('2r(t+2)?4r(t)+r(t?2)+3r(t?3)?u(t?3)');
grid
ylim([-2.3 4.3]);

y = sin(5*pi*t);

z = x .* y;

subplot(2,1,2);
plot(t, z);
grid;
title('AM signal');
legend('x(t) * sin(5pi*t)');
ylim([-8.3 8.3]);
