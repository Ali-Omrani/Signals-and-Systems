%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 1 - Problem 2 - 1
% File name: CA1_P_2_1.m
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================


t = 0:.1:5;

x = t.* exp(-t);

xe = (t.*exp(-t) + (-t).*exp(t)) /2;
xo = (t.*exp(-t) - (-t).*exp(t)) /2;





subplot(4,1,1);
plot(t,x);
grid;
legend('x(t)');
title('x(t)');

subplot(4,1,2);
plot(t,xe);
grid;
legend('x_e(t)');
title('x_e(t)');


subplot(4,1,3);
plot(t,xo);
grid;
legend('x_o(t)');
title('x_o(t)');

subplot(4,1,4);
plot(t,xe+xo);
grid;
legend('x_e(t)+x_o(t)');
title('x_e(t)+x_o(t)');




