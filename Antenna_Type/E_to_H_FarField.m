%% Far Field E to H where E is a theta phi vector

eta = 120*pi ; %% eta is η

%% Electric field  (input)
Etheta = 15 ;                      % (input)
Ephi = -18 ;                       % (input)

%% MAgnetic Field 
Hphi = 1 * (Etheta / eta) 
Htheta = -1 * (Ephi / eta)

%% Average Radiated Power / Radiation density  unit : W/m^2
%% The real portions of E and H 

Wr = 0.5 * (Etheta * Hphi + Ephi * Htheta )

%% Pointing / Poynting Vector 

%%Wr_theta = 
%%Wr_phi = 

%% Radiation intensity  

r = 1 ;                                        % (input)

Ue = (1/ (2 *eta) ) * (r^2) * (sqrt(Etheta^2 + Ephi^2 ))^2
Uh = (eta/2 ) * (r^2) * (sqrt(Htheta^2 + Hphi^2 ))^2

%% Total Radiated Power (sphere)

dthetamin = 0 ;                               % (input)
dthetamax = 2*pi;                             % (input)
dphimin = 0 ;                                 % (input)
dphimax = 2*pi;                               % (input)

Uphivariable = 1                              % (input)

Prad = ( sin(dthetamax) - sin(dthetamin) ) * (Uphivariable* dphimax - Uphivariable * dphimin) * Uh
