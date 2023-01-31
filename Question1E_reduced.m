sys = tf(25,[1 6 25]) % TRANSFER FUNCTION of Reduced System
bode(sys, opts) % Plotting bode plot of reduced order system
grid on; title('Bode Plot of Reduced Order System');
opts = bodeoptions; %bode options
opts.XLim={[0.1 100]};  % setting x limits  0.1 to 100 rad/s
