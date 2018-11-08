%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 2 - Problem 2 - 3 - a
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

syms t;
x(t) = (heaviside(t)-heaviside(t-1));

N =3;
T0 = 2;
[a, w] = fs_complex(x, T0, N);

omega0=2*pi/T0;
k = -N:N;
f_new = sum(a.*exp(1i*k*omega0*t));
subplot(3,1,1);
ezplot(f_new, [0, 10]);
legend('N=5');

N = 5;
k = -N:N;
[a, w] = fs_complex(x, T0, N);
f_new = sum(a.*exp(1i*k*omega0*t));

subplot(3,1,2);
ezplot(f_new, [0, 10]);
legend('N=11');


N = 20;
k = -N:N;
[a, w] = fs_complex(x, T0, N);
f_new = sum(a.*exp(1i*k*omega0*t));

subplot(3,1,3);
ezplot(f_new, [0, 10]);
legend('N=41');
