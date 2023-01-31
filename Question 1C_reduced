K=30; % assigned in question
sys = tf(25,[1 6 25]) % TRANSFER FUNCTION of Reduced System
opt = stepDataOptions('StepAmplitude',10);  % Adding a step value of 10
step(sys,2.5,opt)   % Plotting step response over first 2.5s
title('Step Response of Reduced Order Model') % naming graph
