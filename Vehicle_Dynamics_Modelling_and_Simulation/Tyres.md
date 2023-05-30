# How do tyres work?

## Overview

Tyre behaviour is key in vehicle dynamics since they are the primary source of force and torque acting on the vehicle, with the exception of aerodynamics.

Tyre Factors:

- V = Longitudinal speed
- $\Omega$ = Rotational velocity
- $\alpha$ = Slip angle
- $F_{x}$ = Longitudinal force (x-plane)
- $F_{y}$ = Lateral force (y-plane)
- $M_{z}$ = Aligning torque (about the z-axis)

A tyre interaction with the road happens over a "contact patch" - the tyre behaviour is non-linear. Since this behaviour is non-linear, we can't use the Coulomb friction principle.

 Tyre Grip Mechanisms:

- Adhesive Friction, Mechanical purchase between irregularities acting in a similar manner to a gear mechanism.
- Hysteretic friction, Chemical bonding as a result of the tyre material (rubber).

 Pressures:

- Tyres carry the vertical load of a vehicle as a result of the inflation pressure.
- Tyre inflation pressure is essential to ensuring adequate pressure distribution across the surface of the tyre and therefore avoid excessive localised wear.
- If a tyre is under-inflated, the bulk of the load will be carried on the outer perimeter of the tyre, whereas for over-inflation the bulk load is carried along the centre line of the tyre.
- Appropriate tyre inflation presssure ensures a maximised contact patch and even pressure distirbution, which improves grip and wear.

## Lateral Dynamics

- A tyre generates a lateral force that is dependant on the slip angle $\alpha$. Recall this slip angle is defined to be the angle between the wheel heading and the direction of motion.

- As slip angle increases, so to does the lateral force generated up to a given peak, before falling back down. This is described in several phases:
    - Elastic (linear) phase: Lateral force increases directly proportionally to the increasing slip angle.
    - Transitional phase: The lateral force continues to increase as the slip angle is increased, at a non-linear rate however.
    - Frictional phase: After the peak in lateral force, the frictional phase describes a drop in lateral force as the slip angle continues to increase. In this phase, the vehicle is sliding and has reduced control.

- Driving a car at the peak of lateral grip can therefore be challenging, given the drop off in the frictional phase as the car begins to slide. This is what is often referred to as "driving on the limit."

 - The contact path of the tyre deforms as a result of the lateral forces applied to the tyre.

 - The relationship between tyre slip angle and velocity components in the x and y plane is described by trigonometry as $\tan(\alpha) = \frac{v_y}{v_x}$.

    - $v_y$ represents the lateral velocity, while $v_x$ is the longitudinal velocity.

- The sum of lateral force $F_y$ components on the contact patch acts at a point slightly to the rear of the tyre compared to the centre line (in the vertical z plane). This results in a moment, or torque, being created about the vertical z-axis, acting to align the tyre heading with the direction of travel, thus acting to reduce the slip angle $\alpha$. This is the aligning torque, $M_z$.

- Increasing the vertical load on a tyre increases its capacity to generate lateral force - translating to more grip in corners. This relationship is not linearly proportional however. There is a reduction in efficiency as the vertical load is increased. We can describe this with a lateral force coefficient $\frac{F_y}{F_z}$. As $F_z$ is increased, this coefficient peak decreases, meaning a loss of normalised performance for increasing vertical loads, despite an increase in lateral force performance for greater vertical loads. This is an example of diminishing returns.

- Vertical tyre load changes must therefore be avoided due to this loss of normalised performance with increasing vertical load. An improtant consideration in the design of vehicle suspension, for example.

- Camber is the angle of inclination between the vertical axis of the tyre/wheel, and the vertical z-axis of the vehicle. For example, if the top of the tyre is angled inwards to the vehicle, and the bottom of the tyre is angled away from the vehicle, there is a negative angle of camber. Optimising this camber angle generates additional lateral force (camber thrust) by increasing the contact patch, but must also act to limit tyre wear, as too much camber will cause excessive wear.

## Longitudinal Dynamics



## Combined Forces

## Linear Tyre Model


## Pacejka Tyre Model