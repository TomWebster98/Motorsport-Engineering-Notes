# Vehicle Suspension

## The Role of Suspension

- Comfort: Isolate the vehicle body from the road inputs.
- Performance: Minimise the tyre vertical load variation.
- Performance: Maintain the optimum tyre camber and steer angles.
- Aerodynamics: Maintain the vehicle body altitude (ride height) and attitude (relative angle between the body and the ground, also known as rake).

For a high performance vehicle like an F1 car, the comfort is unimportant, wherease the performance and aerodynamics are prioritised. In a commercial application, comfort is a priority for everyday driving applications.

## Sprung and Unsprung Mass

- Sprung Mass: The portion of the vehicle mass supported by the suspension. This includes the body, frame, powertrain, driver and more.

    - Since the sprung mass is supported by the suspension, its movement can be controlled via appropriate suspension tuning.
 
 - Unsprung Mass: The portion of the vehicle mass which is not supported by the suspension. This includes the wheels, brakes, and some of the suspension links' mass.

    - When designing a vehicle it is desirable to minimise the unsprung mass as its movement is difficult to control, and therefore it can have a negative impact on performance if the unsprung mass is too great.

![Sprung and Unsprung Msss](./Images/Sprung_Unsprung_Mass.png)

## Springs

A spring is an elastic element that generates a force proportional to its compression. $$F_{spring} = F_{0} + k \cdot \Delta x$$

- $F_{0}$ is the "spring pre-load" - The force to overcome for the spring to act, this is used to adjust the ride height of a vehicle. This does not effect the stiffness of the system.
- $k$ is the spring stiffness.
- $\Delta x$ is the spring compression.

## Dampers

A damper is a device that dampens the movement by generating a force proportional to the relative velocity between each end. $$F_{damper} = c \cdot \dot{x}$$

- $c$ is the damping coefficient.

- In a region of compression, low-speed and high-speed damping is observed. These are two distinct regions where the damping coefficient varies, the point at which the coefficient changes from low-speed damping to high-speed damping is known as the "knee point."

    - Low-speed damping has a higher damping coefficient than high-speed damping. At low speed, it is favourable to have more support of the vehicle under braking for example, whereas at high speeds the reduced damping coefficient helps to isolate the vehicle from the road irregularities.
