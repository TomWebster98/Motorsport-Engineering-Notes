%% Constants
g = 9.81; % gravity (ms^-2)

%% Vehicle Paramters
m = 1650; %mass (kg)
I = 3500; %yaw inertia (kgm^2)
L = 2.8; % Wheelbase (m)
a = 1.1; %Centre of Mass front distance (m)
b = L-a; %Centre of Mass rear distance (m)

%% Aero Parameters
A = 1.8; %Frontal area (m^2)
cz = 0; %DF coefficient
rho = 1.225; %Air density (kgm^3)

%% Front Tyre Parameters
% Shape Factor
Cf = 1.2947;
% Stiffness Factor
Bf = 0.0813;
% Curvature Factor
Ef = -8.3966;
% Peak Value
a1f = -1e-5;
a2f = 0.95;

%% Rear Tyre Parameters
% Shape Factor
Cr = 1.2617;
% Stiffness Factor
Br = 0.0925;
% Curvature Factor
Er = -8.7012;
% Peak Value
a1r = -1e-5;
a2r = 0.95;

%% Steering System Parameters
SR = 20; %Steering ratio (deg/deg)