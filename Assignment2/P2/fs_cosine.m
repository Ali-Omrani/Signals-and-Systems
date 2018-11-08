
%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 2 - Problem 3 - 3
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================
function [ a0,A, theta, w  ] = fs_cosine( f, T0, N )
% fourier series in the cosine with phase form
syms t;
w = (2*pi)/T0;
a0 = (1/T0)*int(f*cos(0*t),0,T0);
for n=1:N
    b(n)=(1/T0)*int(f*cos(n*w*t),0,T0);
    c(n)=(1/T0)*int(f*sin(n*w*t),0,T0);
    A(n)=sqrt(b(n)*b(n) + c(n)*c(n));
    if b(n) < 0
        theta(n) = -1*atan(c(n)/b(n));
    else
        theta(n) = pi + atan(-1*c(n)/b(n));
    end
end



end

