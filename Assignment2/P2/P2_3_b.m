%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 2 - Problem 2 - 3 - b
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

close all
clear
clc

syms t;
x(t) = (heaviside(t)-heaviside(t-1));


T0 = 2;
omega0=2*pi/T0;

N =5;
[a, b, c, w] = fs_tri(x, 2, N);
f_new=a/2;
for n=1:N
    f_new=f_new+b(n)*cos(n*omega0*t)+c(n)*sin(n*omega0*t);
end
subplot(3,1,1);
ezplot(f_new, [0, 10]);
legend('N=5');

N =11;
[a, b, c, w] = fs_tri(x, 2, N);
f_new=a/2;
for n=1:N
    f_new=f_new+b(n)*cos(n*omega0*t)+c(n)*sin(n*omega0*t);
end
subplot(3,1,2);
ezplot(f_new, [0, 10]);
legend('N=11');

N =41;
[a, b, c, w] = fs_tri(x, 2, N);
f_new=a/2;
for n=1:N
    f_new=f_new+b(n)*cos(n*omega0*t)+c(n)*sin(n*omega0*t);
end
subplot(3,1,3);
ezplot(f_new, [0, 10]);
legend('N=41');