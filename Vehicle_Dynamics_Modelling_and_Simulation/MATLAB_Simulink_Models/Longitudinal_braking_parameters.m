%% Constants
g = 9.81; %Gravity [m/s^2]
%% Vehicle Parameters
m = 850;  %Mass [kg]
h = 0.2;  %CoG Height [m]
L = 3.5;  %Wheelbase [m]
a = 1.8;  %CoG Front Distance [m]
b = L-a;  %CoG Rear Distance [m]
%% Aero Parameters
A = 1.25; %Frontal Area [m^2]
cz = 1;   %DF Coefficient
cd = 0.4; %Frag Coefficient
rho = 1.225; %Air density [kg/m^3]
%% Brake System Parameters
r = 0.375;      %Tyre Radius [m]
Iwheel = 0.9;   %Wheel Intertia [kgm^2]
rBrake = 3800;  %Pedal Position to Brake Torque Ratio [Nm]
balance = 0.65; %Front to Rear Brake Balance
%% Tyre Parameters
%Shape Factor
C = 1.7180;
%Stiffness Factor
B = 4.1576;
%Curvature Factor
E = -22.1100;
%Peak Value
a1 = -1e-5;
a2 = 1.25;