%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 2 - Problem 1 - 2
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

step = 0.01;
t = 0:step:3;
x = ones(size(t));

t1 = 0:step:1;
t2 = 1+step:step:3;
v = [2*ones(size(t1)) zeros(size(t2))];

% t = 0:step:3;
% subplot(2,1,1);
% plot(t, x);
% axis([-10 10 -.5 3])
% 
% subplot(2,1,2);
% plot(t,v);
% axis([-10 10 -.5 3])


y = conv(x, v) * step;

t = 0:step:6;

subplot(3,1,1);
plot(t, y);
grid;
title('P1.2-A');
legend('x*v');
axis([-.1 5.5 -.5 2.5]);



t = 0:step:2;
x = ones(size(t));

v = 2-t;

y = conv(x, v) * step;

t = 0:step:4;

subplot(3,1,2);
plot(t, y);
grid;
title('P1.2-B');
legend('x*v');
axis([-.1 4.2 -.5 2.5]);


t1 = -1:step:3;
t2 = 3+step:step:100;
x = [2*ones(size(t1)) zeros(size(t2))];

t1 = -1:step:0.99;
t2 = 1:step:100;
v = [zeros(size(t1)) 4*exp(-2*t2)];

y = conv(x, v) * step;
t = -2:step:200; 

subplot(3,1,3);
plot(t,y);
grid;
title('P1.2-C');
legend('x*v');








