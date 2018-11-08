%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 1 - Problem 1 - 3
% File name: CA1_P_1_3.m
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






r_s_minus2 = (t+2).*(stepfun(t, -2));
r_s = t .* stepfun(t, 0);
r_s_2 = (t-2) .* stepfun(t, 2);
r_s_3 = (t-3) .* stepfun(t, 3);
u_s_3 = stepfun(t, 3);

x = (2*r_s_minus2) - (4*r_s) + (r_s_2) + (3*r_s_3) - u_s_3;

subplot(2,1,2);
plot(t, x);
title('using stepfun');
legend('2r(t+2)?4r(t)+r(t?2)+3r(t?3)?u(t?3)');
grid
ylim([-2.3 4.3]);














