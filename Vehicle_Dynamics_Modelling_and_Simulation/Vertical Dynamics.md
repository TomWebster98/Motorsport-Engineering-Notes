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

### Natural Frequency

- The frequency at which a system tends to oscilate in the absence of external forces. $$\omega = 2 \pi f = \sqrt{\frac{k}{m}}$$

- Ride Frequency (1Hz - 5Hz): $$f \approx \frac{1}{2 \pi} \sqrt{\frac{k_{spr}}{m_{s}}}$$

- Wheel Hop Frequency: $$f \approx \frac{1}{2 \pi} \sqrt{\frac{k_{tyre} + k_{spr}}{m_{us}}}$$

- The damping ratio is a measure of how oscillations within a system decay over time following a disturbance. $$\xi = \frac{c_{damper}}{c_{critical}}$$

- The critical damping ratio can be defined as, $$c_{crit} = 2 \cdot \sqrt{k_{spr} \cdot m_{s}}$$

- For a damping ratio equal to 1, it is said that the system is critically damped, while for a damping ratio less than 1, the system is underdamped - desirable for a vehicle. Road vehicles typically have a damping ratio between 0.05 and 0.25, while for performance and competition vehicles it is higher.

- The damping ratio and natural frequency concepts are valuable starting points when designing a performance vehicle, and using the quarter car model the suspension stiffness can be tuned.

## 4 Degrees of Freedom Model

### Equations of Motion

Coupling two quarter car models produces a 4 DoF model. This is the coupling of a quarter car model representing the front axle, and an equivalent quarter car model representing the rear axle.

- As in the quarter car model, the unsprung mass equilibrium can be determined, applied to the front and rear axles in this case:

$$F_{tyre,f} - F_{spr,f} - F_{damp,f} - m_{us,f} \cdot g = m_{us,f} \cdot \ddot{z_{us,f}}$$

$$F_{tyre,r} - F_{spr,r} - F_{damp,r} - m_{us,r} \cdot g = m_{us,r} \cdot \ddot{z_{us,r}}$$

- The sprung mass vertical equilibrium can be given as:

$$F_{spr,f} + F_{damp,f} + F_{spr,r} + F_{damp,r} - m_{s} \cdot g = m_{s} \cdot \ddot{z_{s}}$$

- The sprung mass pitch equilibrium can also be determined by taking moments around the centre of gravity:

$$-a \cdot (F_{spr,f} + F_{damp,f}) + b \cdot F_{spr,r} + F_{damp,r} = I_{s} \cdot \ddot{theta}$$

where a and b are the distance between the centre of gravity line and the front and rear axles respectively. The angle $\theta$ is the pitch angle about the centre of mass as the rear of the vehicle is raised (positive) or lowered (negative).

![4DOF Pitch Model](./Images/4DOF_Pitch_Model.png)

- As the vehicle pitch movement raises the rear and lowers the front under braking, the front axle suspension is compressed, while the rear is extended. The spring-damper forces are therefore as follows:

- Front Axle: 

$$F_{spr,f} = F_{0,f} + k_{spr,f} \cdot (z_{us,f} - (z_{s} - \theta \cdot a))$$

$$F_{damp,f} = c_{damp,f} \cdot (\dot{z_{us,f}} - (\dot{z_{s}} - \dot{\theta} \cdot a))$$

- Rear Axle: 

$$F_{spr,r} = F_{0,r} + k_{spr,r} \cdot (z_{us,r} - (z_{s} + \theta \cdot b))$$

$$F_{damp,r} = c_{damp,r} \cdot (\dot{z_{us,r}} - (\dot{z_{s}} + \dot{\theta} \cdot b))$$

### Ride Frequency

- The ride frequency ratio is described by the relationship between the front and rear suspension ride frequencies.

- For passenger vehicles, there is a preference to have a bounce motion instead of a pitching motion, and so the rear suspension ride frequency is typically higher than the front axle. Typically $f_{rear} \approx 1.2 \cdot f_{front}$

- In high-performance vehicle applications, comfort is not a consideration as it is in passenger vehicles, so the ride frequency ratio is dictated by the aerodynamics of the vehicle.

## Out-of-Plane Model

### Roll Centre and Load Transfer

The roll centre of a vehicle is an imaginary point on the body at which the lateral forces on the body are reacted by the suspension links. The position of this point is dependent on the suspension design, and it is the role of the suspension designers to optimise this.

The roll support that the suspension provides depends on the distance between the centre of gravity and the roll centre.

### Load Transfer

As the vehicle corners there is a load transfer from the inner to outer wheels.

Lateral load transfer due to lateral acceleration is given by: $$\Delta F_{z} = m \cdot a_{y} \cdot \frac{h_{COG}}{t}$$

$$\Delta F_{z} = m_{us} \cdot a_{y} \cdot \frac{h_{COG,us}}{t} + m_{s} \cdot a_{y} \cdot frac{h_{RC}}{t} + m_{s} \cdot a_{y} \cdot \frac{h_{COG,s} - h_{RC}}{t}$$

where the first terms represents the unsprung mass instant load transfer, the second term is the sprung mass instant load transfer, and the final term is the sprung mass transient load transfer.

Is is desirable to optimise the load transfer by minimising it and making it instant.

For a roll centre closer to the centre of mass of the vehicle, a vehicle will have:
- More roll support.
- Quicker load transfer.
- Higher jacking forces. Vertical forces the suspensino links on the body, raising the vehicle and reducing stability in cornering.

These three consideration need to be balanced and optimised for a high performance vehicle.

The roll axis is the imaginary axis joining the front and rear roll centres, and influences the sprung mass load transfer.

### Equations of Motion

In this model there are 7 degrees of freedom. Considering the roll motion $\phi$ and the 4 unsprung masses for each wheel (FL, FR, RL, RR) and that lateral acceleration is positive to the left direction. In addition, consider a symmetric geometry and insignificant jacking forces to simplify the model.

Sprung Mass:

- Sprung mass vertical equilibrium: $T = m_{s} \cdot a_{y}$

The force T is the lateral force due to the reaction of the suspension links at the roll centre height. Note also that t is the track of the vehicle (distance between left and right wheel centres in the horizontal plane).

- Sprung mass roll angular momentum conservation at the centre of mass: $$(F_{left} - F_{right}) \cdot \frac{t}{2} + m_{s} \cdot a_{y} \cdot (h_{COG} - h_{RC}) - \Gamma_{ARB} = I_{s} \cdot \ddot{phi_{s}}$$

here the left and right forces represent the force of the spring and damper on the left and right sides of the vehicle.

 - Vertical and pitch DOF equations of motion are equivalent to that of the [4DOF model](#4-degrees-of-freedom-model).

 - The antir-roll bar moment: $$\Gamma_{ARB} = \Gamma_{ARB,f} + \Gamma_{ARB,r}$$

Unsprung Mass:

- Lateral forces equilibrium: $$F_{y,l} + F_{y,r} = m_{s} \cdot a_{y} + m_{us,l} \cdot a_{y} + m_{us,r} \cdot a_{y} = m \cdot a_{y}$$

- Unsprung mass linear momentum conservation: $$F_{t} - F_{spr} - F_{dmp}- m_{us} \cdot g \pm F_{Additional} = m_{us} \cdot \ddot{z_us}$$

Additional Vertical Forces (moments at the centre point of the axle at ground height):
- ARB: $\frac{\Gamma_{ARB}}{t}$
- Sprung mass load transfer: $\frac{m_{s} \cdot a_{y} \cdot h_{RC}}{t}$
- Unsprung mass load transfer: $\frac{(m_{us,l} + m_{us,r}) \cdot a_{y} \cdot h_{USM}}{t}$

Spring/Damper Forces:

Considering the spring and damper forces due to the vehicle body roll:

- Left Spring: $$F_{spr,l} = F_{0,l} + k_{spr,l} \cdot (z_{us,l} - (z_{s} + \phi_{s} \cdot \frac{t}{2}))$$

- Left Damper: $$F_{damp,l} = c_{damp,l} \cdot (\dot{z_{us,l}} - (\dot{z_{s}} + \dot{\phi_{s}} \cdot \frac{t}{2}))$$

- Right Spring: $$F_{spr,r} = F_{0,r} + k_{spr,r} \cdot (z_{us,r} - (z_{s} - \phi_{s} \cdot \frac{t}{2}))$$

- Right Damper: $$F_{damp,r} = c_{damp,r} \cdot (\dot{z_{us,r}} - (\dot{z_{s}} - \dot{\phi_{s}} \cdot \frac{t}{2}))$$

Note the front and rear track (t) of a vehicle could be different!

Anti-Roll Bars:

- Front ARB: $$\Gamma_{ARB,f} = k_{ARB,f} \cdot (\phi_{s} - \frac{z_{us,l} - z_{us,r}}{t_{f}})$$

- Rear ARB: $$\Gamma_{ARB,r} = k_{ARB,r} \cdot (\phi_{s} - \frac{z_{us,l} - z_{us,r}}{t_{r}})$$

The front and rear anti-roll bar stiffness balance can be used to adjust the load transfer balance, affecting the understeer balance.

### Equations of Motion Summary

Sprung Mass (3DOF):

- Vertical: $$F_{s,fl} + F_{s,fr} + F_{s,rl} + F_{s,rr} + F_{d,fl} + F_{d,fr} + F_{d,rl} + F_{d,rr} - m_{s} \cdot g - F_{DF} = m_{s} \cdot \ddot{z_{s}}$$

- Pitch: $$-a \cdot (F_{s,fl} + F_{s,fr} + F_{d,fl} + F_{d,fr}) + b \cdot (F_{s,rl} + F_{s,rr} + F_{d,rl} + F_{d,rr}) = I_{yy} \cdot \ddot{\theta}$$

- Roll: $$(F_{s,fl} - F_{s,fr} + F_{d,fl} - F_{d,fr}) \cdot \frac{t_{f}}{2} + (F_{s,rl} - F_{s,rr} + F_{d,rl} - F_{d,rr}) \cdot \frac{t_{r}}{2} + m_{s} \cdot a_{y} \cdot (h_{COG} - h_{RC}) - (\Gamma_{ARB,f + \Gamma_{ARB,r}}) = I_{xx} \cdot \ddot{\phi_{s}}$$

Unsprung Mass (4DOF):

- Front Left: 

$$F_{t,fl} - F_{s,fl} - F_{d,fl} - m_{us,f} \cdot g + \frac{\Gamma_{ARB,f} + m_{s} \cdot \frac{b}{L} \cdot a_{y} \cdot h_{RC,f} + 2 \cdot m_{us,f} \cdot a_{y} \cdot h_{USM,f}}{t_{f}} = m_{us,f} \cdot \ddot{z_{us,fl}}$$

- Front Right: 

$$F_{t,fr} - F_{s,fr} - F_{d,fr} - m_{us,f} \cdot g - \frac{\Gamma_{ARB,r} + m_{s} \cdot \frac{b}{L} \cdot a_{y} \cdot h_{RC,f} + 2 \cdot m_{us,f} \cdot a_{y} \cdot h_{USM,f}}{t_{f}} m_{us,f} \cdot \ddot{z_{us,fr}}$$

- Rear Left: 

$$F_{t,rl} - F_{s,rl} - F_{d,rl} - m_{us,r} \cdot g + \frac{\Gamma_{ARB,r} + m_{s} \cdot \frac{a}{L} \cdot a_{y} \cdot h_{RC,r} + 2 \cdot m_{us,r} \cdot a_{y} \cdot h_{USM,r}}{t_{r}} = m_{us,r} \cdot \ddot{z_{us,rl}}$$

- Rear Right: 

$$F_{t,rr} - F_{s,rr} - F_{d,rr} - m_{us,r} \cdot g - \frac{\Gamma_{ARB,r} + m_{s} \cdot \frac{a}{L} \cdot a_{y} \cdot h_{RC,r} + 2 \cdot m_{us,r} \cdot a_{y} \cdot h_{USM,r}}{t_{r}} = m_{us,r} \cdot \ddot{z_{us,rr}}$$

Spring:

- Front Left: $$F_{spr,fl} = F_{0,fl} + k_{spr,fl} \cdot (z_{us,fl} - z_{s} + \theta \cdot a - \phi_{s} \frac{t_{f}}{2}); F_{0,fl} = m_{s} \cdot g \cdot \frac{b}{L} \cdot \frac{1}{2}$$

- Front Right: $$F_{spr,fr} = F_{0,fr} + k_{spr,fr} \cdot (z_{us,fr} - z_{s} + \theta \cdot a + \phi_{s} \frac{t_{f}}{2}); F_{0,fr} = m_{s} \cdot g \cdot \frac{b}{L} \cdot \frac{1}{2}$$

- Rear Left: $$F_{spr,rl} = F_{0,rl} + k_{spr,rl} \cdot (z_{us,rl} - z_{s} - \theta \cdot b - \phi_{s} \frac{t_{r}}{2}); F_{0,rl} = m_{s} \cdot g \cdot \frac{a}{L} \cdot \frac{1}{2}$$

- Rear Right: $$F_{spr,rr} = F_{0,rr} + k_{spr,rr} \cdot (z_{us,rr} - z_{s} - \theta \cdot b + \phi_{s} \frac{t_{r}}{2}); F_{0,rr} = m_{s} \cdot g \cdot \frac{a}{L} \cdot \frac{1}{2}$$

Anti-Roll Bars:

- Front ARB: $$\Gamma_{ARB,f} = k_{ARB,f} \cdot (\phi_{s} - \frac{z_{us,l} - z_{us,r}}{t_{f}})$$

- Rear ARB: $$\Gamma_{ARB,r} = k_{ARB,r} \cdot (\phi_{s} - \frac{z_{us,l} - z_{us,r}}{t_{r}})$$

Dampers:

- Front Left: $$F_{damp,fl} = c_{damp,fl} \cdot (\dot{z_{us,fl}} - \dot{z_{s}} + \dot{\theta} \cdot a - \dot{\phi_{s}} \cdot \frac{t_{f}}{2})$$

- Front Right: $$F_{damp,fr} = c_{damp,fr} \cdot (\dot{z_{us,fr}} - \dot{z_{s}} + \dot{\theta} \cdot a + \dot{\phi_{s}} \cdot \frac{t_{f}}{2})$$

- Rear Left: $$F_{damp,rl} = c_{damp,rl} \cdot (\dot{z_{us,rl}} - \dot{z_{s}} - \dot{\theta} \cdot a - \dot{\phi_{s}} \cdot \frac{t_{r}}{2})$$

- Rear Right: $$F_{damp,rr} = c_{damp,rr} \cdot (\dot{z_{us,rr}} - \dot{z_{s}} - \dot{\theta} \cdot a + \dot{\phi_{s}} \cdot \frac{t_{r}}{2})$$

Tyres:

- Front Left: $$F_{t,fl} = k_{t,f} \cdot (z_{r,fl} - z_{us,fl}); z_{0,t,fl} = (m_{s} \cdot g \cdot \frac{b}{L} \cdot \frac{1}{2} + m_{us,fl}) \cdot \frac{g}{k_{t,f}}$$

- Front Right: $$F_{t,fr} = k_{t,f} \cdot (z_{r,fr} - z_{us,fr}); z_{0,t,fr} = (m_{s} \cdot g \cdot \frac{b}{L} \cdot \frac{1}{2} + m_{us,fr}) \cdot \frac{g}{k_{t,f}}$$

- Rear Left: $$F_{t,rl} = k_{t,r} \cdot (z_{r,rl} - z_{us,rl}); z_{0,t,rl} = (m_{s} \cdot g \cdot \frac{a}{L} \cdot \frac{1}{2} + m_{us,rl}) \cdot \frac{g}{k_{t,r}}$$

- Rear Right: $$F_{t,rr} = k_{t,r} \cdot (z_{r,rr} - z_{us,rr}); z_{0,t,rr} = (m_{s} \cdot g \cdot \frac{a}{L} \cdot \frac{1}{2} + m_{us,rr}) \cdot \frac{g}{k_{t,r}}$$

