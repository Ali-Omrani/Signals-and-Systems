%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 3 - Problem 1 - 1
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

close all
clear
clc

syms w;
n = 0: 1: 10;
x = cos(n*pi/3);


subplot(5,1,1);
stem(n, x);
grid;
title('x(t)');

X = sum(x.*exp(-1i*w*n));
X = simplify(X);
subplot(5,1,2);
ezplot(abs(X), [-3*pi 3*pi]);
title('|X(\Omega)|');
title ('Magnitude');
grid;

subplot(5,1,3);
ezplot(angle(X), [-3*pi 3*pi]);
grid;
legend('angle(X(\Omega))');
title ('angle');

subplot(5,1,4);
ezplot(real(X), [-3*pi 3*pi]);
grid;
legend('Real(X(\Omega))');
title ('Real');

subplot(5,1,5);
ezplot(imag(X), [-3*pi 3*pi]);
grid;
legend('imag(X(\Omega))');
title ('imag');



