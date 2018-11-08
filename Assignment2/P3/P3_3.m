%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 2 - Problem 3 - 3
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================
Ts = 0.01;
T = 100;
t = 0:Ts:T;

p = 20*(heaviside(t)-heaviside(t-40)) - 10*(heaviside(t-40)-heaviside(t-60));

omega0 = 2*pi;
P =1.1*abs(min(p));

x = (p+P).*cos(omega0*t);

y = abs(x);
subplot(4,1,1);
plot(t,p);
title('p');
legend('p = 20(u(t)-u(t-40)) - 10(u(t-40)-u(t-60))');

subplot(4,1,2);
plot(t,x);
title('x');
legend('x =[p+P]cos(w_0*t)')

subplot(4,1,3);
plot(t, y);
title('y');
legend('y= abs(x)');

h = exp(-0.8*t).*heaviside(t);
z = conv(h, y)*Ts;

subplot(4,1,4);
t= -T:Ts:T;
plot(t,z);
title('z');
legend('z = y*h');

