# Simulation 3
The manipulator starts performs a circular trajectory with the end-effector on the yz-plane, with fixed orientation. It encounters an internal singularity that gives problem during the movement.

The pseudo-inversion has problems at the beginning of the simulation, but it finishes with zero error

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83746104-e2c63a80-a65e-11ea-9c73-19f4563d4566.jpg"> </p>

Moreover, the joint velocities saturate when in proximity of the singularity

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83746107-e35ed100-a65e-11ea-82f6-a7d64cd2ca8c.jpg"> </p>

The DLS has better performances at the beginning, but it concludes with a bigger error

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83746108-e3f76780-a65e-11ea-881e-74ad3bb42923.jpg"> </p>

and the joint velocities are generally lower

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83746101-e22da400-a65e-11ea-99ff-94fd6664a1ea.jpg"> </p>
