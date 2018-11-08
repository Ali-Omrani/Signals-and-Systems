%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 3 - Problem 1 - 1
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

clear
close all 
clc


syms t w

temp1 = -1;
temp2 = 2;

x1 = heaviside(t-temp1+temp2/2) - heaviside(t-temp1-temp2/2);
temp1 = 1;
x2 = heaviside(t-temp1+temp2/2) - heaviside(t-temp1-temp2/2);
x = x1 + x2;

subplot(6,1,1);
ezplot(x, [-5 5])
ylim([-.1 1.5])
title('x(t)');

subplot(6,1,2);
X = fourier(x, w);
X = simplify(X);
ezplot( X, [-10, 10]);
ylim([-1 4.1]);
grid;
legend('X(\Omega)');
title ('X(\Omega) = F{x(t)}');

subplot(6,1,3);
ezplot(abs(X), [-10, 10]);
ylim([-1 4.1]);
grid;
legend('|X(\Omega)|');
title ('Magnitude');



subplot(6,1,4);
ezplot(angle(X), [-10, 10]);
ylim([-1 4.1]);
grid;
legend('angle(X(\Omega))');
title ('angle');



subplot(6,1,5);
ezplot(real(X), [-10, 10]);
ylim([-1 4.1]);
grid;
legend('Real(X(\Omega))');
title ('Real');


subplot(6,1,6);
ezplot(imag(X), [-10, 10]);
ylim([-1 4.1]);
grid;
legend('imag(X(\Omega))');
title ('Imaginary');





