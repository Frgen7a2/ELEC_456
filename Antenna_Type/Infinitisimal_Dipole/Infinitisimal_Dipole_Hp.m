lambda = ; %%wavelenght
l = ; %%length of dipole
Io = ; %%Current constant
t = ; %%Thetha angle
r = ; %%distance from antenna
k = 2*pi/lambda;

%%Farfield
%%Hp = (j*Io*l)/(2*lambda)*(exp(-j*k*r))/r*sin(t)

%%Nearfield
%%Hp = j*((k*Io*l*sin(t))/(4*pi*r))*(1+(1/(j*k*r)))*exp(-j*k*r)