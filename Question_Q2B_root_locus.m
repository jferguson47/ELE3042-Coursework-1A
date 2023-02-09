Plant1 = (s+3)/(s*(s+1)*(s+5));          % OLTF of plant using symbol s
Plant = simplify(expand(Plant1));        % Simplifying and expanding Plant   
[num,den] = numden(Plant);               % Obtaining num and den from plant      
num_coeff_plant = double(coeffs(num, 'All'));  % getting coefficents of num in order
den_coeff_plant = double(coeffs(den, 'All'));  % getting coefficents of den in order

OLTF = tf(num_coeff_plant,den_coeff_plant)  % determining OLTF

figure();
rlocus(OLTF)                    % Plotting root locus
title('Root Locus of OLTF')     % Title of root locus 
sgrid                           % Enabling grid
z = 0.7071;                     % setting damping ratio given in question
sgrid(z,0)                      % drawing a straight line on graph for damping ratio
