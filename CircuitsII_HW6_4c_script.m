% ECE 2020          H.W 9                Jarod Teague
% Summer 2019       Due: 06/26/2019      Problem 3.b

clear;

% Variables
f = 50e3; % frequency
T = 1/2*f; % period
time = linspace(0,3*T,10000);
w = 2*pi*f; % omega

% values for i_g
theta_g = pi*80/180;
i_g = (50e-3)*cos(w.*time + theta_g);

% values and eqn for p_p
theta_v = pi*(-1.729878)/180;
p_p = (2.27913e-3)*(1 + cos(2*(w.*time + theta_v)));

% eqn for p_p
p_q = (-688.314e-6)*sin(2*(w.*time + theta_v));

% eqn for p
p = p_p + p_q;


figure;
subplot(4,1,1)
plot(time,i_g,'b')
title('i_g(t) vs. time')
ylabel('i_g(t) (A)')

subplot(4,1,2)
plot(time,p_p,'r')
title('p_p(t) vs. time')
ylabel('Watts (w)')

subplot(4,1,3)
plot(time,P_vd,'k')
title('p_q(t) vs. time')
ylabel('VARS')

subplot(4,1,4)
plot(time,P_vd,'k')
title('p(t) vs. time')
xlabel('Time (sec)')
ylabel('P_vd(t) (A)')

grid on;