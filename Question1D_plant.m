K=30; % assigned in question
sys = tf(25*K,[1 1.2*K 205 25*K]) % TRANSFER FUNCTION of System
opt = stepDataOptions('StepAmplitude',10);  % Adding a step value of 10
step(sys,2.5,opt)   % Plotting step response over first 2.5s
title('Step Response of Plant') % naming graph
S = stepinfo(sys)
