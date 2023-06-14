clc;
close all;
clear;

% Define the process transfer function
num_process = [0 4.8*12];
den_process = [1 57.2];
G = tf(num_process, den_process);

% Set desired settling time and overshoot
settling_time = 0.2;  % Desired settling time in seconds
overshoot = 5;  % Desired overshoot percentage

% Calculate damping ratio (zeta) based on desired overshoot
zeta = (-log(overshoot/100)) / (sqrt(pi^2 + log(overshoot/100)^2));

% Calculate the natural frequency (wn) based on the settling time
wn = 4 / (zeta * settling_time);

% Define Tf, Kf, and construct tf_H0
Tf = 1/57.2;
Kf = 1.006993006993007;
num_H0 = wn^2;
den_H0 = [1, 2*zeta*wn, wn^2];
   
% Construct the regulator transfer function
Hreg = minreal((1/G)*(tf_H0/(1-tf_H0)));
hoo = minreal(feedback(Hreg*G, 1));

% Plot step response of the closed-loop system
figure;
step(hoo);
title('Step Response of the Closed-loop System');
grid on;

% Plot step response of tf_H0
figure;
step(tf_H0, 'b');
title('Step Response of tf_H0');
grid on;

% Transform the continuous-time controller to digital using ZOH's approximation
T = 0.01; % Sampling time
Cd = c2d(Hreg, T, 'zoh');
tf_H0_discrete = c2d(tf_H0, T, 'zoh');

% Compute the step response of the discrete-time controller
figure;
step(tf_H0_discrete, 'r');
title('Step Response of the Discrete-time Controller');
grid on;
