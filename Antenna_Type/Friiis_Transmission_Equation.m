%% Friis Transmission Equation 

%Inputs  don't forget line 62

lambda =  0.1; %% in meters              %% input
r =  10; % in meters                           %% input

lambda_R_ratio = 1/100 ; % for example r = 100 λ    %% input

%% Power Transmitted 
Pt = 2 ;                                         %% input

%% Polarisation Match 
Pmatch = 1 ; % if antennas are matched              %% input

%% Reflection Coeficients 
refl_r = 0.1 ;                                        %% input
refl_t = 0.2 ;                                        %% input
refl = (1-refl_r^2)*(1-refl_t^2);

%% given Antenna aperture areas
A = 0.1 ; % Dimensions of the antenna in m^2               %% input

%% Antenna aperture with Radiation effiecientcy  Ae = Ecd * A
Ae_tx = 0.2; %% or A * Ecd  %% Dimensions of the antenna in m^2      %% input
Ae_rx = 0.2; %% or A * Ecd  %% Dimensions of the antenna in m^2      %% input


Gt = (4*pi*Ae_tx)/(lambda^2)

Gr = (4*pi*Ae_rx)/(lambda^2) 

%% Radiation Efficientcy
Ecdt = 1 ;   %% equal to 1 if lossless                  %% input
Ecdr = 1 ;   %% equal to 1 if lossless                  %% input 

Dr = 16 ; %% dB                                       %% input
Dr_0dim = 10^(Dr/10);
Dt = 20 ; %% dB                                        %% input
Dt_0dim = 10^(Dt/10);

%% Outputs 


%% With Antenna Aperture
%% with Lambda and r 
Pr_over_Pt_Aperture_LandR = Pmatch * Gt * Gr * ( lambda / (4*pi*r) )^2 

%% with lambda_R_ratio
Pr_over_Pt_Aperture_ratio = Pmatch * Gt * Gr * ( lambda_R_ratio / (4*pi) )^2 


%% With Radiation Efficientcy and Directivity
%% with Lambda and r 
Pr_over_Pt_radEff_LandR = Pmatch * (Ecdr * Dr_0dim) * (Ecdt * Dt_0dim) * ( lambda / (4*pi*r) )^2 

%% with lambda_R_ratio
Pr_over_Pt_radEff_ratio = Pmatch *  (Ecdr * Dr_0dim) * (Ecdt * Dt_0dim) * ( lambda_R_ratio / (4*pi) )^2 


%% Choose what Pr_over_Pt you are using 
Pr_over_Pt = Pr_over_Pt_radEff_ratio ;         %% Input

%% 
Pr = Pr_over_Pt * Pt * refl

