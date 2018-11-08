%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 2 - Problem 2 - 1
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

syms t;
x = sin(t);
for k = 0:100
    a(k)= int(x*exp(-1i*k*w0*t), t, 0, T0);
end