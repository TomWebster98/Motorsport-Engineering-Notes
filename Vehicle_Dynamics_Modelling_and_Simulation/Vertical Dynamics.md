# Vertical Dynamics

## The Power of Isolation

- A system can be isolated from a noise source with effective suspension design and tuning.

- Considering the suspension as a mass-spring-damper system, the transfer function can be considered. Considering transmissibility, it is possible to determine the effectiveness of the system damping.

- Transmissibility = Output / Input
    - Here, the output is the force transmitted and the input is the force applied.
    - For $T>1$, force amplification is taking place. This is at its maximum when the forcing frequency and the natural frequency of the system coincide.
    - For $T<1$, the system is being damped.
    - For $T=1$, the system acts as a rigid body.

- For frequencies greater than $\sqrt{2} \cdot \omega_{n}$ the transmissibility is less than 1 (known as isolation).

- An ideal suspension design has a low natural frequency and is underdamped, maximising the isolation.

## Quarter Car Model

### Equations of Motion

- Considering the forces acting on a single wheel and suspension assembly it is possible to deduce the equations of motion for a quarter-car model.

<img src="./Images/Quarter_Car_Model.png" width="300">

- In this model, z represents the veritcle movement, for the road, unsprung and sprung masses.

- From the [Vehicle Suspension](./Vehicle%20Suspension.md) documentation, recall the spring and damper forces and applying the appropriate deltas for vertical displacement the forces are given as:

    - Spring Force $F_{spr} = F_{0} + k_{spr} \cdot (z_{us} - z_{s})$
    - Damper Force $F_{damp} = c_{damp} \cdot (\dot{z_{us}} - \dot{z_{s}})$

    - Tyre Force $F_{tyre} = k_{tyre} \cdot (z_{r} - z_{us})$

- The unsprung mass vertical equilibirium is therefore $$F_{tyre} - F_{spr} - F_{damp} - m_{us} \cdot g = m_{us} \cdot \ddot{z_{us}}$$

- The sprung mass vertical equilibirium is therefore $$F_{spr} + F_{damp} - m_{s} \cdot g = m_{s} \cdot \ddot{z_{s}}$$

- This model requires the input of the road profile $z_{r}$.

