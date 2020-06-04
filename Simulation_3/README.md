# Simulation 3
The manipulator starts performs a circular trajectory with the end-effector on the yz-plane. It encounters an internal singularity that gives problem during the movement.

The pseudo-inversion has problems at the beginning of the simulation, but it finishes with zero error

<p align="center"> <img width=600 src=""> </p>

Moreover, the joint velocities saturate when in proximity of the singularity

<p align="center"> <img width=600 src=""> </p>

The DLS has better performances at the beginning, but it concludes with a bigger error

<p align="center"> <img width=600 src=""> </p>

and the joint velocities are generally lower

<p align="center"> <img width=600 src=""> </p>
