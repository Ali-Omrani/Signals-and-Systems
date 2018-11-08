%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 1 - Problem 2 - 3
% File name: CA1_P_2_3.m
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

N = 10;
n = -N:N;

x = n .* exp(-n);

subplot(3,1,1);
stem(n, x);
title('original');
legend('n* e^-n');
grid;

a = 1/2;
y = upsample(x, 1/a);
subplot(3,1,2);
stem(-2*N:2*N+1, y);
title('upsampled');
legend('2n* e^-2n');
grid;

a = 2;
y = downsample(x, a);
subplot(3,1,3);
stem(-N/2:N/2, y);
title('downsampled');
legend('0.5n* e^-0.5n');
grid;



