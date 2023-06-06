# Lateral Vehicle Dynamics

## Low Speed Cornering

- At low speed, the lateral forces and tyre slip are are negligible. The steering is purely kinematic and all tyres are in rolling condition.

- The ideal turning angle for the front wheels is defined by the Ackermann geometry.

- Since there is negligible tyre slip in this low speed approximation, the wheel heading should be perpendicular to the line joining the centre of the wheel and the turn centre (pivot point).

![Ackermann Geometry](./Images/Ackermann-Steering-Geometry.png)

- With the front wheels heading perpendicular to the connection with the pivot point, the inner wheel has greater steering angle than the outer wheel. So $$\delta _i > \delta _o$$

So, for the inner wheel: 
$$\tan(\delta _i) = \frac{L}{R_r - w/2}$$

By small angle approximation $\tan(\theta) \approx \theta.$ and $R_r \approx R$

$$\delta _i \approx \frac{L}{R - w/2}$$

And for the outer wheel: $$\delta _o \approx \frac{L}{R + w/2}$$

Where $w$ is the "track" of the vehicle, and $R_r$ is the distance from the pivot point to the rear axle centre point while R is the distance between the vehicle centre of mass and the pivot point. Note in this diagram and therefore series of equations, the track and front and rear axle dsitancees from the CoM are defined by different symbols to those described in [Overview.md](./Overview.md#coordinate-definitions).

- In reality, for most road vehicles in everyday use, the steering geometry is close to an Ackermann configuration since they are mostly used in slow corners. This therefore minimises tyre slip as much as possible and reduces the overall tyre wear.

- In Formula 1, an anti-Ackermann geometry is implemented, such that the outer wheels steer more than the inner wheels, producing a greater slip angle and thus generating a higher lateral load, see [Tyres.md](./Tyres.md#lateral-dynamics) for supporting theory. This comes with the trade-off of increased tyre slip and therefore tyre wear at low-speed corners.

- Finally, we can define the Ackermann angle as the average of the inner and outer wheel steer: $$\delta \approx \frac{L}{R}$$

## Bicycle Model

- Consider the simplification that the vehicle axle track is zero, and therefore that we only have 1 axis, a bicycle.

![Bicycle Model](./Images/Bicycle-Model.png)

- **This vehicle model has 2 degrees of freedom, they are the lateral position, y, and the yaw rate, r, which is the rotation about the z-axis perpendicular to the plane of motion (x,y).**

- The lateral position is defined in a moving coordinate system, (x,y) such that the vehicle heading direction is always in the x direction, and the y direction is perpendicular.

- This vehicle model is considered to have a constant longitudinal velocity.

- The front wheel steering angle is considered the only other input alongside the constant velocity.

- By applying lateral force equilibrium and momentum equilibrium we can deduce the following characteristic equations:

    - Lateral force equilibrium: $$F_{yf} \cdot \cos(\delta) + F_{yr} = m \cdot a_y$$

    - Momentum equilibrium: $$F_{yf} \cdot \cos(\delta) \cdot l_f - F_{yr} \cdot l_r = I \cdot \dot{r}$$

    - Recall r is the yaw rate (rotation about the z-axis). 
    - Note $F_y$ is a function of slip angle and normal force for front axle $F_{yf}(\alpha _f, N_f)$ and rear axle $F_{yr}(\alpha _r, N_r)$.

### Lateral Acceleration

- Acceleration due to rotation: $a_{y,rotation} = \frac{V^2}{R}$

- Since $V = r \cdot R$, $$a_{y,rotation} = r \cdot V$$

- For pure vehicle sliding we have $$a_{y,sliding} = \ddot{y}$$

- Therefore, for total acceleration: $$a_y = a_{y,rotation} + a_{y,sliding}$$ $$a_y = r \cdot V + \ddot{y}$$

### Slip Angles

- Once again we will utilise the small angle approximation. $\tan(\theta) \approx \theta$.

- Front slip angle is given by $$\alpha _f = \arctan(\frac{v_{yf}}{v_x}) - \delta \approx \frac{v_{yf}}{V} - \delta$$

- Note also that $v_{yf} = v_y + r \cdot l_f$

- Therefore: $$\alpha _f = \frac{v_y + r \cdot l_f}{V} - \delta$$

- Rear slip angle is given by $$\alpha _r = \arctan(\frac{v_{yr}}{v_x}) \approx \frac{v_{yr}}{V}$$

- Note also that $v_{yr} = v_y - r \cdot l_r$

- Therefore: $$\alpha _r = \frac{v_y - r \cdot l_r}{V} - \delta$$

- Recall the velocity in the y direction can also be expressed as $\dot{y}$.

- The vehicle slip angle at the centre of gravity can also be defined as $$\beta = \arctan(\frac{v_{y}}{v_x}) \approx \frac{v_{y}}{V}$$

### Bicycle Model Equations

- The lateral force equilibrium equation therefore becomes:

$$F_{yf}(\frac{\dot{y} + r \cdot l_f}{V} - \delta) \cdot \cos(\delta) + F_{yr}(\frac{\dot{y} - r \cdot l_r}{V} - \delta) = m \cdot (r \cdot V + \ddot{y})$$

- The momentum equilibrium equation therefore becomes:

$$F_{yf}(\frac{\dot{y} + r \cdot l_f}{V} - \delta) \cdot \cos(\delta) \cdot l_f - F_{yr}(\frac{\dot{y} - r \cdot l_r}{V} - \delta) \cdot l_r = I \cdot \dot{r}$$

- Inputs:
    - Vehicle velocity: V
    - Steering wheel input: $\delta$
- Outputs:
    - Side slip (lateral velocity): $\beta$ ($\dot{y}$)
    - Yaw rate: r
    - Lateral acceleration: $a_y = r \cdot V + \ddot{y}$

### Trajectory

- Definition of the vehicle path, using global X,Y coordinates (not to be confused with the local x,y coordinate system of the vehicle itself).

- The relationship between these coordinate systems is given by trigonometric identities, assuming the angle $\Psi$ between the x and X axes (and therefore the y and Y axes also). 
$$X = x \cdot \cos(\Psi) - y \cdot \sin(\Psi)$$
$$Y = x \cdot \sin(\Psi) + y \cdot \cos(\Psi)$$

- With x, y and $\Psi$:
    - $x = \int_0^t V \cdot dt = V \cdot t$
    - $y = \int_0^t \dot{y} \cdot dt$
    - $\Psi = \int_0^t r \cdot dt$

### Linearisation (Derivatives Approach)

- Linear tyre model: Tyre force proportional to the slip angle. $F_y = C_\alpha \cdot \alpha, (C_\alpha < 0)$

- Small angle approximation: $\cos(\delta) = 1$

- Vehicle sideslip considered: $\beta = \arctan(\frac{v_y}{v_x} \approx \frac{v_y}{V})$

- Lateral force equilibrium: $$(C_{\alpha f} + C_{\alpha r}) \cdot \beta + (C_{\alpha f} \cdot l_f - C_{\alpha r} \cdot l_r) \cdot \frac{r}{V} - C_{\alpha f} \cdot \delta = m \cdot V \cdot (r + \dot{\beta})$$

- Momentum equilibrium: $$(C_{\alpha f} \cdot l_f - C_{\alpha r} \cdot l_r) \cdot \beta + (C_{\alpha f} \cdot l_{f}^2 + C_{\alpha r} \cdot l_{r}^2) \cdot \frac{r}{V} - C_{\alpha f} \cdot l_f \cdot \delta = I \cdot \dot{r}$$

## Steady State Response

- Test to understand the vehicle response and grip level and the understeer balance.

- Vehicle in steady state cornering conditions: "Slow" steering input and/or velocity change so the vehicle goes from one equilirbium position to another.

- Tests:
    - Constant radius test (closed loop) with increasing speed and therefore steering input to maintain the constant radius. (Requires a driver model to simulate).
    - Constant speed test (open loop) with steady increase ramped steering input.

### Understeer & Oversteer

- Understeer can be seen when a vehicle is losing grip at the front axle before the rear axle, resulting in the driver demanding more steering input to achieve the desired rotation/cornering performance of the car.

- Oversteer can be seen when a vehicle is losing grip at the rear axle before the front axle, resulting in the driver demanding less steering input or countersteering with opposite lock to achieve the desired cornering performance.

- In higher speed cornering, the front and rear tyres begin to slip, and the centre of rotation, or pivot point shifts.

- The vehicle steer angle is related to the front and rear slip angles: $$\delta \approx \frac{L}{R} + (\alpha _f - \alpha _r)$$

![Vehicle Steer Angle](./Images/Steer-angle-forces.png)

- The steering input from a driver is a combination of Ackermann steering (kinematic steering) and additional steer to compensate for the vehicle balance between front and rear axles (understeer and oversteer behaviour).

- Definition of the Understeer Gradient: