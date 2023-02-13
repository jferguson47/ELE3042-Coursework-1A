s=sym('s');                              % creating symbol s
Plant1 = (s+3)/(s*(s+1)*(s+5));          % OLTF of plant using symbol s
Plant = simplify(expand(Plant1));        % Simplifying and expanding Plant   
[num,den] = numden(Plant);               % Obtaining num and den from plant      
num_coeff_plant = double(coeffs(num, 'All'));  % getting coefficents of num in order
den_coeff_plant = double(coeffs(den, 'All'));  % getting coefficents of den in order

OLTF = tf(num_coeff_plant,den_coeff_plant)  % determining OLTF

%figure();
%rlocus(OLTF)                    % Plotting root locus
%title('Root Locus of OLTF')     % Title of root locus 
%sgrid                           % Enabling grid
%z = 0.7071;                     % setting damping ratio given in question
%sgrid(z,0)                      % drawing a straight line on graph for damping ratio


% \\\\\\\\\\\\\\\\\\

K = 0.984; % Taken from graph when damping ratio is 0.7071
H = 1; % Unity Feedback

CLTF_sym = (K*Plant)/(1+K*Plant*H)      % Symbolic version if CLTF

CLTF_sym = simplify(expand(CLTF_sym))           % simplifying CLTF symbolic 


[num,den] = numden(CLTF_sym);               % Obtaining num and den from CLTF
num_coeff = double(coeffs(num, 'All')); % getting coefficents of num in order
den_coeff = double(coeffs(den, 'All')); % getting coefficents of den in order

CLTF = tf(num_coeff,den_coeff)


figure();
step(CLTF)                              % Plotting step response
title('Step Response of closed-loop system')
S = stepinfo(CLTF)                      % getting information about step response
