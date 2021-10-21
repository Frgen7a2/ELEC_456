lambda = ; %%wavelenght
l = ; %%length of dipole
Io = ; %%Current constant
t = ; %%Thetha angle
r = ; %%distance from antenna
k = 2*pi/lambda;
N = ;


%%Farfield
%%Wrt = N*(Io^2)*(l^2)/(8*(lambda^2)*(r^2))*sin(t)^2
%%Et = ;
%%Wrt = (abs(Et)^2)/(2*N)

%%Nearfield
%%Et = ;
%%Er = ;
%%Wrr = (N/8)*(((Io*l)/lambda)^2)*((sin(t)^2)/(r^2))*(1-j/((k*r)^3))
%%Wrt = j*N*((k*((Io*l)^2)*cos(t)*sin(t))/(16*(pi^2)*(r^3)))*(1+(1/((k*r)^2)))