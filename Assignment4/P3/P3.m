%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 4 - Problem 3
% File name: P3.m
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================

clc
clear 
close all
%% a
num = [0,0.1,-0.1];
den = [1 , -1.5 , 0.7];

n= 0:1:50;
x=(-1).^n;

y=filter(num,den,x);

stem(n,y)
grid;
title('y = response to x');
legend('y(n)');

