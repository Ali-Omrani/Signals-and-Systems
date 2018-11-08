%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 2 - Problem 2 - 3 -c
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

syms t;
x(t) = (heaviside(t)-heaviside(t-1));
T0 = 2;
omega0=2*pi/T0;


N =4;
[a0, a, theta, w] = fs_cosine(x, T0, N);
f_new=a0/2;
 for n=1:N
     if isnan(theta(n))
         f_new=f_new+ a(n).*cos(n*omega0*t);
     else
        f_new=f_new+a(n).*cos(n*omega0*t+theta(n));
     end
 end

subplot(3,1,1)
ezplot(f_new, [0, 10]);
legend('N=5');

N =10;
[a0, a, theta, w] = fs_cosine(x, T0, N);
f_new=a0/2;
 for n=1:N
     if isnan(theta(n))
         f_new=f_new+ a(n).*cos(n*omega0*t);
     else
        f_new=f_new+a(n).*cos(n*omega0*t+theta(n));
     end
 end

subplot(3,1,2)
ezplot(f_new, [0, 10]);
legend('N=11');

N =20;
[a0, a, theta, w] = fs_cosine(x, T0, N);
f_new=a0/2;
 for n=1:N
     if isnan(theta(n))
         f_new=f_new+ a(n).*cos(n*omega0*t);
     else
        f_new=f_new+a(n).*cos(n*omega0*t+theta(n));
     end
 end

subplot(3,1,3)
ezplot(f_new, [0, 10]);
legend('N=41');

