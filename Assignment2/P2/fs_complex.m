%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 2 - Problem 3 - 3
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

function [ a,w ] = fs_complex(x,T0,N)
%fourier series in complex form
syms t;

omega0 = 2*pi/T0;
k=-N:N;
a = int(x*exp(-1i*k*omega0*t), t, 0, T0)/T0;
a = eval(a);
w = k*omega0;



end

