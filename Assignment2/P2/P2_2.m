%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 2 - Problem 2 - 2
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================
close all
clc
clear
syms t;
N = 20;
B = 2;
A = 1;
omega0 = 100;
theta = 0;
x = B + A*cos(omega0*t + theta);
[a, w] = fs_complex(x,2*pi/omega0, N);
n = -20:20;
%a = [conj(fliplr(a(2:N))) a];
%w = [-fliplr(w(2:N)) w];

subplot(2,2,1);
stem(n, abs(a));
title('x(t) = 2+cos(100t)');
legend('|X_k|');
subplot(2,2,3);
stem(n, angle(a));
title('x(t) = 2+cos(100t)');
legend('<X_k');

theta = -pi/2;
x = B + A*cos(omega0*t + theta);
[a, w] = fs_complex(x,2*pi/omega0, N);
%a = [conj(fliplr(a(2:N))) a];
%w = [-fliplr(w(2:N)) w];

subplot(2,2,2);
stem(n, abs(a));
title('y(t) = 2+cos(100t-pi/2)');
legend('|Y_k|');
subplot(2,2,4);
stem(n, angle(a));
title('y(t) = 2+cos(100t-pi/2)');
legend('<Y_k');


