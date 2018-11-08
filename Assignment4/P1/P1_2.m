%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 4 - Problem 1 - Part 2
% File name: P1_2.m
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================
clc
clear 
close all

%% a
syms n z Y;
X = ztrans(0.9^n, z);
Y1 = z^(-1)*Y;
Y2 = z^(-2)*Y;
X1 = z^(-1)*X;

G = Y - 3*Y1 + Y2 -X +X1;
SOL = solve(G, Y);
pretty(SOL)

y = iztrans(SOL, n)
figure();
n1 = 0:10;
y_n = subs(y , n, n1);
stem(n1, y_n);
legend('y[n]');
xlim([-.5 10.5]);

%% b&c

num = [-1 1];
den = [1 -3 1];
ts = 0.1;
H = tf(num, den, ts);

%% d

H2 = zpk(H)

%% e

z = roots(num)
p = roots(den)

%% f
[z,p,k] = tf2zp(num, den)
[n, d] = zp2tf(z,p,k)

%% g
figure();
pzmap(H)

%% h
 omega = -10: .1: 10;
 %Hw =freqresp(H , omega);
 figure();
 bode(H)
%% i-step
figure();
subplot(3,1,1);
dstep(num,den);
S=dstep(num,den); 
subplot(3,1,2);
stairs(0:length(S)-1,S); 
legend('Step response')

subplot(3,1,3);
n=1:80;
s=dstep(num,den,n); 
stairs(n,s)
legend('Step response')

stepz(num,den)

%% i-impulse
figure();
subplot(3,1,1);
dimpulse(num,den);
subplot(3,1,2);
h=dimpulse(num,den); 
stairs(0:length(h)-1,h) 
legend('Impulse response')
subplot(3,1,3);
n=1:50;
y=dimpulse(num,den,n); stairs(n,y)
legend('h[n]')

impz(num,den)

