lambda = ; %%wavelenght
l = ; %%length of dipole
Io = ; %%Current constant
t = ; %%Thetha angle
r = ; %%distance from antenna
k = 2*pi/lambda;

%%Farfield
%%Et = j*(60*pi*Io*l)/lambda*exp(-j*k*r)/r*sin(t)

%%Nearfield
%%N = ;
%%Et = j*N*((k*Io*l*sin(t))/(4*pi*r))*(1+(1/(j*k*r))-(1/((j*k*r)^2)))*exp(-j*k*r)
%%Er = N*((Io*l*sin(t))/(2*pi*r^2))*(1+(1/(j*k*r)))*exp(-j*k*r)

