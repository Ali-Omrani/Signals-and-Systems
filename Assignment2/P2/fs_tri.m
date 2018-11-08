%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 2 - Problem 3 - 3
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

function [ a, b, c, w ] = fs_tri( f, T0, N)
%fourier series coefs trigonomic
syms t;
w = (2*pi)/T0;
a = (1/T0)*int(f*cos(0*t),0,T0);
for n=1:N
    b(n)=(1/T0)*int(f*cos(n*w*t),0,T0);
    c(n)=(1/T0)*int(f*sin(n*w*t),0,T0);
end


end

