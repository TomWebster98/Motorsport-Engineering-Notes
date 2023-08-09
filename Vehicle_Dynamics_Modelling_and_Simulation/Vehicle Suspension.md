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

- In a region of extension, low-speed and high-speed damping is observed, similar to that in the compressive region. The magnitude of force under extension is greater than under compression, since the body of the vehicle helps to provide resistance against compression, whereas extension is only limited by the road against the wheels. High-extension damping can be used to counteract the extreme values of extension.

## Installation Ratio

The springs and dampers are typically not connected to the wheel centre, but instead connected to suspension links which are in turn connected to the wheel. The installation ratio is the ratio between the wheel and suspension vertical movement. For the spring and damper the installation ratio is as follows:

$$IR_{spring} = \frac{z_{spring}}{z_{wheel}}$$

$$IR_{damper} = \frac{z_{damper}}{z_{wheel}}$$

The stiffness (or rate) at the wheel can be determined from the spring/damper coefficient and the installation ratio as follows:

$$k_{wheel} = IR_{spring}^{2} \cdot k_{spring}$$

$$c_{wheel} = IR_{damper}^{2} \cdot c_{damper}$$

The spring and damper forces at the wheel can be determined as follows:

$$F_{spring-wheel} = F_{0-wheel} + k_{wheel} \cdot z_{wheel}$$

where $F_{0-wheel} = F_{0-suspension} \cdot IR$

$$F_{damper-wheel} = c_{wheel} \cdot \dot{z_{wheel}}$$

## Other Suspension Components

Anti-Roll Bar:

- A device that increases the vehicle roll stiffness without modifying the vertical stiffness. $$\Gamma_{ARB} = k_{ARB} \cdot \theta$$

- The left and right suspension are connected via a rocker and anti-roll bar assembly, causing the bar to twist during roll motion.

Inerters (J-Dampers):

- Device based on gears and a flywheel that generates a force proportional to the relative acceleration at each end. $$F_{inerter} = b \cdot \ddot{x}$$

- Equivalent to having a system with an overall system that is reduced as the frequency increases. This is an advantage for vehicles with large aerodynamic effects.

Bushings:

- Flexible joints used to connect suspension links and the body.
- Not often used in high performance applications as they add flexibility, and therefore add delay to the vehicle response (these applications prefer rigid ball-joints).
- Used to improve the isolation of the vehicle body from the road irregularities, thus improving comfort.