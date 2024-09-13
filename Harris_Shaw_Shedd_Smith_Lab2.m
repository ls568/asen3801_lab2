% Skylar Harris, Leya Shaw, Dane Shedd, Bryce Smith
% ASEN 3801
% Harris_Shaw_Shedd_Smith_Lab2
% Created: 9/13/24

clc;clear;close all;

function [t_vec, av_pos_inert, av_att, tar_pos_inert, tar_att] = LoadASPENData(filename)

% Goals:
% 1. assign columns from the original datafile to associated variables
% 2. perform unit conversions
% 3. convert the information from the original data file to position 
% vectors and 3-2-1 Euler angles in frame E using the ConvertASPENData 
% function

% Inputs:
% 1. filename of a .csv file with data from the motion capture system in 
% the ASPEN lab. The data file has no headers or extra columns (the data 
% provided from the TEST team must first be modified as described in the 
% background section).

% Outputs:
% 1. t_vec: 1 x n time vector in seconds where n = the total number of 
% frames from the dataset. The frame rate of the camera is 100 Hz so the 
% frame number can be converted to time in seconds.
% 2. av_pos_inert: 3 x n matrix of position vectors in meters for the 
% aerospace vehicle in Frame E.
% 3. av_att: 3 x n matrix of attitude vectors listing the 3-2-1 Euler 
% angles in radians for the aerospace vehicle relative to frame E
% 4. tar_pos_inert: 3 x n matrix of position vectors in meters for the 
% target in Frame E
% 5. tar_att: 3 x n matrix of attitude vectors listing the 3-2-1 Euler 
% angles in radians for the target relative to frame E

% Implementation hints:
% See the readmatrix.m file provided by Mathworks.
% This function must call the ConvertASPENData.m function to convert from 
% the data file s format to the final outputs.

end 

function DCM = RotationMatrix321(attitude321)

% Goal: use the Euler angles for the 3-2-1 rotation sequence to calculate 
% the associated DCM.

% Inputs:
% attitude321: 3 x 1 vector with the 3-2-1 Euler angles in the form 
% attitude321 = [alpha, beta, gamma]' (In ASEN 3728 notation, this would 
% be equivalent to [phi, theta, psi]').

% Outputs:
% DCM: the rotation matrix calculated from the Euler angles.

end 

function DCM = RotationMatrix313(attitude313)

% Goal: use the Euler angles for the 3-1-3 rotation sequence to calculate 
% the associated DCM.

% Inputs:
% attitude313: 3 x 1 vector with the 3-1-3 Euler angles in the form 
% attitude313 = [alpha, beta, gamma]'

% Outputs:
% DCM: the rotation matrix calculated from the Euler angles.

end

function attitude321 = EulerAngles321(DCM)

% Goal: use the DCM to extract the 3-2-1 Euler angles

% Inputs:
% DCM: a rotation matrix

% Outputs:
% attitude321: 3 x 1 vector with the 3-2-1 Euler angles in the form 
% attitude321 = [alpha, beta, gamma]' (In ASEN 3728 notation, this would be
% equivalent to [phi, theta, psi]'.

end

function attitude313 = EulerAngles313(DCM)

% Goal: use the DCM to extract the 3-1-3 Euler angles

% Inputs:
% DCM: a rotation matrix

% Outputs:
% attitude313: 3 x 1 vector with the 3-1-3 Euler angles in the form 
% attitude313 = [alpha, beta, gamma]'

end



