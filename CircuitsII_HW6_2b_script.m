% ECE 2020          H.W 6                Jarod Teague
% Summer 2019       Due: 06/24/2019      Problem 2.b

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
v_d = m_d*cos(w.*time + theta_d);

P_vd = v_d.*i_2;


figure;
subplot(3,1,1)
plot(time,i_2,'b')
title('i_2(t) vs. time')
xlabel('Time (sec)')
ylabel('i_2(t) (A)')

subplot(3,1,2)
plot(time,v_d,'r')
title('v_d(t) vs. time')
xlabel('Time (sec)')
ylabel('v_d(t) (A)')

subplot(3,1,3)
plot(time,P_vd,'k')
title('P_v_d(t) vs. time')
xlabel('Time (sec)')
ylabel('P_vd(t) (A)')

grid on;