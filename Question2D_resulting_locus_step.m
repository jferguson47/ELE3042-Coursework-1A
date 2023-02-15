s=sym('s');                              % creating symbol s
Plant1 = (s+3)/(s*(s+1)*(s+5));          % OLTF of plant using symbol s
Plant = simplify(expand(Plant1))        % Simplifyingh and expanding Plant   

comp1 = (s+2)/(s+6);                  % OLTF of plant using symbol s
comp = simplify(expand(comp1))        % Simplifyingh and expanding Plant   

K1=0.984

plant_comp = K1* Plant * comp


[num,den] = numden(plant_comp);          % Obtaining num and den from plant      
num_coeff = double(coeffs(num, 'All'));  % getting coefficents of num in order
den_coeff = double(coeffs(den, 'All'));  % getting coefficents of den in order

OLTF = tf(num_coeff,den_coeff)  % determining OLTF

figure('Name','Root Locus of Compensated system')
rlocus(OLTF)                     % plotting root locus
title('Root Locus of Compensated system')
%sgrid                           % Enabling grid
z = 0.7071;                     % setting damping ratio given in question
sgrid(z,0)  


K = 28.6; % from root locus graph
H = 1; % Unity Feedback



CLTF_sym = (K1*K*Plant*comp)/(1+(K1*K*Plant*H*comp))% Symbolic version

CLTF_sym = simplify(expand(CLTF_sym));          % simplifying CLTF symbolic 


[num,den] = numden(CLTF_sym);               % Obtaining num and den from CLTF
num_coeff = double(coeffs(num, 'All')); % getting coefficents of num in order
den_coeff = double(coeffs(den, 'All')); % getting coefficents of den in order


CLTF5 = tf(num_coeff,den_coeff)


closed_loop_poles = pole(CLTF5)

figure();
step(CLTF5)
title("Step Response of Compensated system")
S = stepinfo(CLTF)
