%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 2 - Problem 2 - 2
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================
Ts = 0.01;
t = 0:Ts:100;

p = 20*(heaviside(t)-heaviside(t-40)) - 10*(heaviside(t-40)-heaviside(t-60));

omega0 = 2*pi;
P =1.1*abs(min(p));

x = (p+P).*cos(omega0*t);

y = abs(x);

plot(t,y);
title('y = |x|');


