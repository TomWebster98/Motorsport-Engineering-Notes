# Laptime Simulation Modelling

## Introduction

Laptime simulation objectives:
- Obtain track specific performance knowledge.
- Car balance evaluation.
- Test multiple configurations develop an optimum setup in advance of the event, including planned changes.

Types of simulation:
- Steady-state simulation: Solves for any steady state of the car.
- Quasi-static simulation: Splits the path of the vehicle into segments (takes snapshots) with analysis being made at each segment based on equlibrium assumptions and linking each point together.
- Transient/Dynamic Simulation: Considers multiple variables simultaneously in a simulation for optimal results. (ChassisSim)
- Multibody System Simulation: Connection of physical vehicle components to determine the final remaining degrees of freedom.

ChassisSim transient solver:
- Solves full equations of motion.
- Integrates as a function of time.
- Accounts for time-response modelling (changes in direction, oscillations and fluctuations).
- Demands a controller (driver).
- Allows damping effects and modelling of transients.
- This all comes at a computational cost and runtime!
