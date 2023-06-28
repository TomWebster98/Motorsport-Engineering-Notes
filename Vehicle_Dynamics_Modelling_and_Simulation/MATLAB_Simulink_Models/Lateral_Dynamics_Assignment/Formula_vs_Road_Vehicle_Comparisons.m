%% Steady State Response
%% Comparing the SWA vs Lateral Acceleration response for each vehicle.
%% 
% Run this line after completing the simulation with the appropriate parameters 
% for the formula vehicle to save the output, and then comment out this line once 
% again.

%Formula_Steady_State_20s = out
%% 
% Run this line after completing the simulation with the appropriate parameters 
% for the road vehicle to save the output, and then comment out this line once 
% again.

%Road_Vehicle_Steady_State_40s = out
%% 
% Loading pre-saved simulation outputs:

load("Formula_SteadyState_20s.mat")
load("Road_Vehicle_SteadyState_40s.mat")
%%
plot(Formula_Steady_State_20s.SWA.Data, Formula_Steady_State_20s.latacc.Data);
hold on
plot(Road_Vehicle_Steady_State_40s.SWA.Data, Road_Vehicle_Steady_State_40s.latacc.Data);
xlabel("Steering Wheel Angle (deg)")
ylabel("Lateral Acceleration m/s^2")
title("LatAcc vs SWA Comparison for Formula vs Road Vehicle")
legend(["Formula Vehicle", "Road Vehicle"])
hold off

plot(Formula_Steady_State_20s.latacc.Data, Formula_Steady_State_20s.SWA.Data);
hold on
plot(Road_Vehicle_Steady_State_40s.latacc.Data, Road_Vehicle_Steady_State_40s.SWA.Data);
ylabel("Steering Wheel Angle (deg)")
xlabel("Lateral Acceleration m/s^2")
title("SWA vs LatAcc Comparison for Formula vs Road Vehicle")
legend(["Formula Vehicle", "Road Vehicle"])
hold off
%% 
% Comparing these two vehicles and the change in lateral acceleration due to 
% steering wheel angle input, we can see that clearly the formula vehicle has 
% a higher response to the driver input. In part, this is due to the steering 
% ratio being 10 for the formula vehicle but 20 for the road vehicle, meaning 
% the steering wheel input translates to greater physical turning of the front 
% axle for the formula vehicle, and therefore we expect a greater change in response. 
% This output is also due to the varying vehicle parameters for each vehicle type, 
% given the formula vehicle is lighter, has a longer wheelebase and lower yaw 
% inertia, it is expected to be more responsive to driver steering input than 
% a road vehicle under the steady state constant velocity conditions modelled 
% here.
% 
% We can observe from the graph that in the linear region (~2-4 ms^-2 of lateral 
% acceleration) the formula vehicle shows a gradient of ~0.47 ms^-2 of lateral 
% acceleration per degree of steering wheel input angle, while the road vehicle 
% shows a much shallower response of ~0.19 ms^-2 / deg.
% 
% 
% 
% Considering the inverse, the road vehicle requires more steering wheel angle 
% input from the driver to maintain a constant radius for a given velocity than 
% the formula vehicle requires.
%% Calculating the understeer gradient of each vehicle.
% Assuming the LatAcc vs SWA gradient to be 0.5ms^-2 / deg for the FV, therefore 
% SWA vs LatAcc gradient is approximated as 2 deg / ms^-2.
% 
% Assuming the LatAcc vs SWA gradient to be 0.2ms^-2 / deg for the RV, therefore 
% SWA vs LatAcc gradient is approcimated as 5 deg / ms^-2.
% 
% K_us = [(dSWA/dLatAcc) / SR] - [(L/V^2) .* 180/pi]

Kus_FormulaV = (2 .* (1/10)) - ((3.5 / ((120/3.6)^2)) .* (180/pi))
Kus_RoadV = (5 .* (1/20)) - ((2.8 / ((120/3.6)^2)) .* (180/pi))
%% 
% With the Formula Vehicle having an understeer ratio of ~0.0195 and the Road 
% Vehicle having an understeer ratio of ~0.1056, we can see that both vehicles 
% are set up to have more understeer than oversteer. However, the formula vehicle 
% is closer to a neutral setup than the road vehicle, since it has an understeer 
% ratio ~5x less - in line with the epxectation that the road vehicle will need 
% 5 times more steering wheel input to maintain a constant radius for a given 
% velocity in this steady state model. Recall that a neutral vehicle, with understeer 
% gradient 0, will allow the driver to maintain a constant steering wheel angle 
% input and maintain the path radius independent of the vehicle speed.
%% Comparing Side Slip vs Lateral Acceleration for each vehicle.

plot(Formula_Steady_State_20s.latacc.Data, Formula_Steady_State_20s.sideslip.Data);
hold on
plot(Road_Vehicle_Steady_State_40s.latacc.Data, Road_Vehicle_Steady_State_40s.sideslip.Data);
ylabel("Side Slip (deg)")
xlabel("Lateral Acceleration m/s^2")
title("Side Slip vs LatAcc Comparison for Formula vs Road Vehicle")
legend(["Formula Vehicle", "Road Vehicle"])
hold off
%% 
% Comparing the trend of each line, we can clearly see the formula vehicle retains 
% minimal side slip (magnitude) as the lateral acceleration increases, with a 
% gradient of ~-0.1 deg / ms^-2. This means that the side slip increases in magnitude 
% by 0.1 degree for each unit m/s^2 increase of lateral acceleration. In comparison, 
% the road vehicle shows a steep increase in side slip angle magnitude for each 
% unit lateral acceleration, with a gradient of ~-2.3 deg / ms^-2. Recalling that 
% the vehicle sideslip angle is the angle offset between the direction of the 
% wheel and the direction of motion of the vehicle, we expect this angle to be 
% greater in an understeer scenario compared to a balanced or neutral vehicle 
% setup, and so this outpur is as expected, since we already determined that the 
% formula vehicle is extremely close to neutral, whereas the road vehicle has 
% greater understeer ratio.
%% Step Steer Response
%% Comparing Lateral Acceleration Overshoot
%% 
% Run this line after completing the simulation with the appropriate parameters 
% for the formula vehicle to save the output, and then comment out this line once 
% again.

%Formula_Step_Steer_10s = out
%% 
% Run this line after completing the simulation with the appropriate parameters 
% for the road vehicle to save the output, and then comment out this line once 
% again.

%Road_Vehicle_Step_Steer_10s = out
%% 
% Loading pre-saved simulation outputs:

%load("Formula_StepSteer_10s.mat")
%load("Road_Vehicle_StepSteer_10s.mat")
%%