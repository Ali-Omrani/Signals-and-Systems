%======================================================================
% Ali Omrani
% id = 810193457
% Computer Assignment 1 - Problem 1 - 1
% File name: CA1_P_1_1.m
% University of Tehran, Electrical and Computer Engineering faculty
% Signals and Systems, Fall 95
%======================================================================


%---------------------------a-------------------------
t1 = -10:.1:-1;
t2 = -1:.1: 10;

u1 = zeros(size(t1));
u2 = ones(size(t2));

t=[t1 t2];
u_minus1=[u1 u2];


plot(t, u_minus1)
grid;
ylim([-0.3 1.3]);

t1 = -10:.1:2;
t2 = 2:.1: 10;

u1 = zeros(size(t1));
u2 = ones(size(t2));

t= [t1 t2];
u_2 = [u1 u2];

hold on;
plot(t, u_2, 'r');
grid;
ylim([-0.3 1.3]);

t1 = -10:.1:4;
t2 = 4:.1:10;

u1 = zeros(size(t1));
u2 = ones(size(t2));

t = [t1 t2];
u_4 = [u1 u2];

plot(t, u_4, 'g');
grid;
ylim([-0.3 1.3]);


x = ((u_minus1)-(u_2))+u_4 ;

hold off

subplot(2,1,1);
plot(t, x);
grid;
title('without heaviside');
legend('u(t+1) - u(t-2) + u(t-4)');
ylim([-.3 1.3]);



u_h_minus1 = heaviside(t+1);
u_h_2 = heaviside(t-2);
u_h_4 = heaviside(t-4);

y = u_h_minus1 - u_h_2 + u_h_4;
subplot(2,1,2);

plot(t, y);
grid;
title('with heaviside');
legend('u(t+1) - u(t-2) + u(t-4)');
ylim([-.3 1.3]);




