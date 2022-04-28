% ECE 2020          H.W 6                Jarod Teague
% Summer 2019       Due: 06/19/2019      Problem 4.c

clear;

% Variables
f = 600; % frequency
T = 1/f; % period
time = linspace(0,3*T,10000);
w = 2*pi*f; % omega

% values for i_2
m_2 = 531.2872e-6;
theta_2 = pi*154.954/180;
i_2 = m_2*cos(w.*time + theta_2);

% values for V_d
m_d = 175.3249;
theta_d = pi*-24.9798/180;
V_d = m_d*cos(w.*time + theta_d);

P_vd


figure
plot(time,i_2)
title('ACssMesh Plot')
xlabel('Time (sec)')
ylabel('Amps (A)')
grid on;