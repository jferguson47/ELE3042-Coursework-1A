s=sym('s');                              % creating symbol s
Plant1 = (s+3)/(s*(s+1)*(s+5));          % OLTF of plant using symbol s
Plant = simplify(expand(Plant1));        % Simplifyingh and expanding Plant   
[num,den] = numden(Plant);               % Obtaining num and den from plant      
num_coeff_uncomp = double(coeffs(num, 'All'));  % getting coefficents of num in order
den_coeff_uncomp = double(coeffs(den, 'All'));  % getting coefficents of den in order

OLTF_uncomp = tf(num_coeff_uncomp,den_coeff_uncomp)  % determining OLTF


figure();
margin(OLTF_uncomp)                   % plotting bode plot
title('Bode Diagram of Uncompensated System')
comp1 = (s+2)/(s+6);                  % OLTF of plant using symbol s
comp = simplify(expand(comp1))        % Simplifyingh and expanding Plant   

plant_comp = Plant * comp


[num,den] = numden(plant_comp);               % Obtaining num and den from plant      
num_coeff_comp = double(coeffs(num, 'All'));  % getting coefficents of num in order
den_coeff_comp = double(coeffs(den, 'All'));  % getting coefficents of den in order

OLTF_comp = tf(num_coeff_comp,den_coeff_comp)  % determining OLTF




figure();
margin(OLTF_comp)                           % plotting bode plot
title('Bode Diagram of Compensated System')
