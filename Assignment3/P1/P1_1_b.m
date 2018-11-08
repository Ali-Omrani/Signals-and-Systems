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
x = triangularPulse(-6, 4, 14, t);




subplot(6,1,1);
ezplot(x, [-10,20])
ylim([-.1 10])
title('x(t)');
grid;






subplot(6,1,2);
X = fourier(x, w);
% X = simplify(X);
step =0.01;
omega1 = -5:step:0-step;
omega2 = step:step:5;
omega = [omega1 omega2];
X_prime =subs(X, w, omega);
% ezplot( X,[-5, 5]);
plot(omega, X_prime);
ylim([-1 10.1]);
grid;
legend('X(\Omega)');
title ('X(\Omega) = F\{x(t)\}');

subplot(6,1,3);
plot(omega, abs(X_prime));
ylim([-1 10.1]);
grid;
legend('|X(\Omega)|');
title ('Magnitude');



subplot(6,1,4);
plot(omega, angle(X_prime));
ylim([-4.1 4.1]);
grid;
legend('angle(X(\Omega))');
title ('angle');



subplot(6,1,5);
plot(omega, real(X_prime));
ylim([-1 10.1]);
grid;
legend('Real(X(\Omega))');
title ('Real');


subplot(6,1,6);
plot(omega, imag(X_prime));
ylim([-10 10.1]);
grid;
legend('imag(X(\Omega))');
title ('Imaginary');





