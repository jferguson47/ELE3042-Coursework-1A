K=30; % assigned in question
sys = tf(25*K,[1 1.2*K 205 25*K]) % TRANSFER FUNCTION of System
bode(sys)  % Plotting bode plot of system
