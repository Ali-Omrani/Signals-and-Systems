%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 2 - Problem 1 - 1
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================


x = [1 1 1 0];
v = [1 1 1 1];

y = conv(x, v);

n = 0:6;

subplot(3,1,1);
stem(n, y);
axis([-.5 6.5 -.1 3.5]);
title ('P1-A');
legend('x*v');


x = [2 1 0 0];
v = [1 1 1 1];

y = conv(x, v);
subplot(3,1,2);
stem(n, y);
axis([-.5 6.5 -.1 3.5]);
title ('P1-B');
legend('x*v');

x = [2 1 0];
v = [0 1 2];

y = conv(x, v);

n = 0:4;

subplot(3,1,3);
stem(n, y);
axis([-.5 4.5 -.1 5.5]);
title ('P1-C');
legend('x*v');

