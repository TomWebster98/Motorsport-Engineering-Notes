# Longitudinal Vehicle Dynamics

## Braking Performance

### Equations of Motion

In order to obtain the equations of motion in the longitudinal plane, we first make the assumptions that the aerodynamic downforce is applied at the centre of gravity of the vehicle, and that the drag force is applied at ground height. The resulting equilibrium force equations are as follows for the diagram below:

![Longitudinal Forces](./Images/Longitudinal_Dynamics_Forces.png)

- Longitudinal Force Equilibrium $$-[F_{brake-f(\kappa_{f},N_{f})} + F_{brake-r(\kappa_{r},N_{r})} + F_{drag}] = m \cdot a_{x}$$

- Vertical Forces Equilibrium $$N_{f} + N_{r} - F_{DF} - m \cdot g = 0$$

- Equilibrium of moments and the centre of gravity $$-N_{f} \cdot a + N_{r} \cdot b + (F_{brake-f} + F_{brake-r} + F_{drag}) \cdot h = 0$$

Here, N represents the normal force at the front and rear axle specified by subscript index.

Note the negative sign for the longtidinal force equilibrium due to the direction of braking forces and drag acting against the vehicle motion, defined to be positive when going forwards as shown in the diagram above.

### Load Transfer

Verticle Load:

- Front Axle: $$N_{f} = \frac{m \cdot g \cdot b}{L} + \frac{F_{DF} \cdot b}{L} - \Delta F_{z}$$

- Rear Axle: $$N_{r} = \frac{m \cdot g \cdot a}{L} + \frac{F_{DF} \cdot a}{L} + \Delta F_{z}$$

The first term in each equation corresponds to the static load (vehicle mass), with the second and third terms representing the aerodynamic downforce and load transfer respectively.

- Load Transfer: $$\Delta F_{z} = m \cdot a_{x} \cdot \frac{h}{L}$$ with
$$a_{x} < 0$$

As the vehicle is braking, the transfer of load between the front and rear axles is such that the front axle verticle load increases, while the rear axle verticle load decreases.

### Maximum Deceleration

