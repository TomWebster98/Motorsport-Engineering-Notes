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
%% Powertrain System Parameters
r = 0.375;      %Tyre Radius [m]
Iwheel = 0.9;   %Wheel Intertia [kgm^2]
igear = [23.10, 17.64, 13.86, 10.92, 8.82, 7.14, 5.88, 4.33]'; %Gear Ratios
Tengmax = 250;  %Maximum Engine Torque [Nm]
throttlepos = [0, 0.25, 0.5, 0.75, 1]';  %Throttle Positions in Engine Map
enginerpm = linspace(1000,15000,15)'; %Engine RPM in Engine Map [rpm]
enginemap = [-0.15, 0.23, 0.60, 0.68, 0.80;
             -0.17, 0.26, 0.62, 0.69, 0.82;
             -0.20, 0.23, 0.63, 0.71, 0.86;
             -0.30, 0.20, 0.62, 0.72, 0.89;
             -0.40, 0.18, 0.61, 0.73, 0.91;
             -0.50, 0.17, 0.58, 0.74, 0.93;
             -0.58, 0.16, 0.54, 0.76, 0.95;
             -0.68, 0.15, 0.50, 0.78, 0.98;
             -0.75, 0.10, 0.45, 0.77, 1.00;
             -0.83, 0.06, 0.40, 0.76, 1.00;
             -0.93, -0.03, 0.32, 0.70, 0.98;
             -1.02, -0.08, 0.23, 0.62, 0.96;
             -1.10, -0.15, 0.16, 0.52, 0.93;
             -1.20, -0.20, 0.08, 0.42, 0.88;
             -1.25, -0.30, 0.00, 0.34, 0.84];  %Engine Map Normalised
rpm_idling = 1000; %Engine RPM During Idling [rpm]
rpm_limit = 15000; %Maximum Engine RPM [rpm]
rpm_up = 13500; %Engine RPM for upshifting [rpm]
rpm_down = 7000; %Engine RPM for downshifting [rpm]
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