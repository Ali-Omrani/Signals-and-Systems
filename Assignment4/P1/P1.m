%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 4 - Problem 1
% File name: P1.m
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================
clc
clear
close all

%% a
syms t s Y;
X = laplace(dirac(t), s);
y0 =1; yd0 =3; ydd0 =1;

Y1 = s*Y - y0;
Y2 = s*Y1 - yd0;
Y3 = s*Y2 - ydd0;

G = Y3 + Y1 - 2*Y -X;
SOL = solve(G, Y);
y_t = ilaplace(SOL, t);
subplot(5,1,1);
ezplot(y_t);
%% b&c
num = [1 3 3];
den = [1 0 1 -2];

H = tf(num, den);
%% d
H2 = zpk(H);
%% e
z = roots(num);
p = roots(den);
%% f
[z,p,k]=tf2zp (num, den);
[n,d]=zp2tf(z,p,k);
%% g
subplot(5,1,2);
pzmap(H2);
%% h
 subplot(5,1,3);
 omega = -10: .1: 10;
 %Hw =freqresp(H , omega);
    bode(H)
%% i
subplot(5,1,4);
t = -10:.1:10;
step(H, t);
subplot(5,1,5);
impulse(H,t)