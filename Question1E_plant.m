K=30; % assigned in question
sys = tf(25*K,[1 1.2*K 205 25*K]) % TRANSFER FUNCTION of System
bodeplot(sys, opts)  % Plotting bode plot of system
grid on; title('Bode Plot of System');
opts = bodeoptions; %bode options
opts.XLim={[0.1 100]};  % setting x limits  0.1 to 100 rad/s
