%% Constants
g = 9.81;  %Gravity [m/s^2]
%% Vehicle Parameters
ms = 400; %Sprung Mass [kg]
mus = 30; %Unsprung Mass [kg]
%% Suspension Parameters
kspring = 35500;  % Spring Constant/Stiffness [N/m]
F0 = 3924; %Spring Pre-Load [N]
cdamper = 1500;  %Damping Coefficient [Ns/m]
ktyre = 300000;  %Tyre Stiffness [N/m]
z0tyre = (ms+mus) * g/ktyre;  %Deflection of the tyre at equillibrium [m]