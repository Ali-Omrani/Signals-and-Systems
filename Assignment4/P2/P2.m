%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 4 - Problem 2
% File name: P2.m
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================
clc
close all
clear

%% a
H1 = tf([1 , 0],[1 , 4]);
H2 = tf([1 , 0 ] , [1 , 0 , 4 ]);
H3 = tf([1 , 0 , 0] , [1 , 0 , 4 ]);
H4 = parallel(H1,H2);
H = series(H4,H3);

%% b
t=0:0.001:10;
x=cos(2*pi*t);
lsim(H,x,t);