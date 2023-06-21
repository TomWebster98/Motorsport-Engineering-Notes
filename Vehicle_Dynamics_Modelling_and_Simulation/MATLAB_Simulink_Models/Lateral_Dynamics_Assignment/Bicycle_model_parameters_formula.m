%% Constants
g = 9.81; % gravity (ms^-2)

%% Vehicle Paramters
m = 850; %mass (kg)
I = 1500; %yaw inertia (kgm^2)
L = 3.5; % Wheelbase (m)
a = 1.8; %Centre of Mass front distance (m)
b = L-a; %Centre of Mass rear distance (m)

%% Aero Parameters
A = 1.25; %Frontal area (m^2)
cz = 1; %DF coefficient
rho = 1.225; %Air density (kgm^3)

%% Front Tyre Parameters
% Shape Factor
Cf = 1.8391;
% Stiffness Factor
Bf = 0.2719;
% Curvature Factor
Ef = -2.5276;
% Peak Value
a1f = -1e-5;
a2f = 1.25;

%% Rear Tyre Parameters
% Shape Factor
Cr = 1.7631;
% Stiffness Factor
Br = 0.3609;
% Curvature Factor
Er = -1.989;
% Peak Value
a1r = -1e-5;
a2r = 1.25;

%% Steering System Parameters
SR = 10; %Steering ratio (deg/deg)