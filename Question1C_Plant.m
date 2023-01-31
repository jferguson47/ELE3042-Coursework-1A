sys = tf(750,[1 36 205 750])
opt = stepDataOptions('StepAmplitude',10);
step(sys,2.5,opt)
title('Step Response of Plant')
