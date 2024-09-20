function DCM = RotationMatrix313(attitude313)

% Goal: use the Euler angles for the 3-1-3 rotation sequence to calculate 
% the associated DCM.

% Inputs:
% attitude313: 3 x 1 vector with the 3-1-3 Euler angles in the form 
% attitude313 = [alpha, beta, gamma]'

% Outputs:
% DCM: the rotation matrix calculated from the Euler angles.

alpha = attitude321(1);
beta = attitude321(2);
gamma = attitude321(3);

R1 = [cos(alpha) sin(alpha) 0 ; -sin(alpha) cos(alpha) 0 ; 0 0 1];
R2 = [1 0 0 ; 0 cos(beta) sin(beta) ; 0 -sin(beta) cos(beta)];
R3 = [cos(gamma) sin(gamma) 0 ; -sin(gamma) cos(gamma) 0 ; 0 0 1];

DCM = R1*R2*R3;
end
