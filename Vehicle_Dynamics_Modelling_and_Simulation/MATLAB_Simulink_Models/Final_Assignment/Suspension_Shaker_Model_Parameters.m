%% General
g = 9.8; %m/s^2

%% Vehicle Parameters - Dimensions
L = 3.5; %m
h = 0.2; %m
a = 1.80; %m
b = L-a; %m
tf = 1.75; %m
tr = 1.85; %m
r = 0.375; %m
hrcf = 0.04; %m
hrcr = 0.06; %m
hrc = 0.05; %m

%% Vehicle Parameters - Mass and Inertia
m = 850; %kg (Total mass)
musf = 15; %kg (Front corner unsprung mass)
musr = 17.50; %kg (Rear corner unsprung mass)
ms = m - (2*musr) - (2*musf); %kg (Sprung mass)
Ixx = 300; %kgm^2
Iyy = 1350; %kgm^2

%% Aerodynamics
A = 1.25; %m^2
cz = 1;
rho = 1.225; %kg/m^3

%% Suspension Parameters
ksf = 67500; %N/m
cdf = 1400; %Ns/m
karbf = 5000; %Nm/rad
ksr = 100000; %N/m
cdr = 1800; %Ns/m
karbr = 1000; %Nm/rad
ktyre = 400000; %N/m

F0f = ms*g*(b/L)*(1/2);
F0r = ms*g*(a/L)*(1/2);

z0ft = (ms*(b/L)*(1/2) + musf)*(g/ktyre);
z0rt = (ms*(a/L)*(1/2) + musr)*(g/ktyre);