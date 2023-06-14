clear; close all; clc;

% Load EMG signal data (input) and servo motor response data (output)
load('envelope.mat'); % Replace 'envelope.mat' with the actual file containing the EMG signal data
load('zoh.mat'); % Replace 'zoh.mat' with the actual file containing the servo motor response data
load('servo2.mat');

% Filtering the EMG signal
fs = 100; % Sampling frequency (Hz)
emg_filtered = highpass(envelope, 0.25, fs); % High-pass filter EMG signals
envelope_filtered = lowpass(emg_filtered, 3, fs); % Low-pass filter EMG signals
envelope_filtered = abs(envelope_filtered);

% Plot both the filtered and unfiltered EMG signals
figure;
t = (0:length(envelope)-1) / fs; 
subplot(2, 1, 1);
plot(t, envelope);
title('Unfiltered EMG Signal');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(2, 1, 2);
plot(t, envelope_filtered);
title('Filtered EMG Signal');
xlabel('Time (s)');
ylabel('Amplitude');
 

% Create input-output data object
data = iddata(servozoh, envelope_filtered, 1/fs);

% Identify the ARX model
na = 1; % AR polynomial order (system order)
nb = 1; % B polynomial order (system order)
nk = 1; % Time delay order (system order)
sys = arx(data, [na nb nk]);

% Display the ARX model
disp(sys);
present(sys);

% Plot the input and output signals
figure;
plot(data);
title('Input-Output Signals');
legend('Input (EMG)', 'Output (Servo Motor)');
xlabel('Time');
ylabel('Amplitude');

% Display the transfer function of the identified model
tf_sys = tf(sys)
disp(tf_sys);

% Convert transfer function to continuous-time domain
tf_arx_s = d2c(tf_sys, 'zoh');

% Extract numerator and denominator coefficients
[num, den] = tfdata(tf_arx_s, 'v');

% Create the transfer function with the desired numerator and denominator
tf_desired = tf(num, den)
disp(tf_desired);

% Plot step response of the identified transfer function
figure;
step(4.8 * tf_desired);
title('Step Response of Identified Transfer Function');
xlabel('Time');
ylabel('Amplitude');

% Plot Bode diagram of the identified transfer function
figure;
bode(4.8 * tf_desired);
title('Bode Diagram of Identified Transfer Function');

% Envelope Filtered Response
env_FIL = iddata(envelope_filtered, [], 1/fs);
t = (0 : length(envelope_filtered) - 1) / fs;
sys_response = lsim(4.8 * tf_desired, envelope_filtered, t);
sys_response_data_FIL = iddata(sys_response, [], 1/fs);
figure;
compare(env_FIL, sys_response_data_FIL);
title('Comparison of Envelope Filtered Response');
xlabel('Time');
ylabel('Amplitude');
% Servo Motor Response
serv = iddata(servo2, [], 1/fs);
t = (0 : length(servo2) - 1) / fs;
sys_response = lsim(4.8 * tf_desired, servo2, t);
sys_response_data = iddata(sys_response, [], 1/fs);
figure;
compare(serv, sys_response_data);
title('Comparison of Servo Motor Response');
xlabel('Time');
ylabel('Amplitude');

% Plot the response in the s-domain
figure;
plot(t, servo2, 'b', t, sys_response, 'r');
legend('Servo Motor', 'System Response');
xlabel('Time');
ylabel('Amplitude');
title('Response in the s-domain');
