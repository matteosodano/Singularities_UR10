# Simulation 2

The manipulator starts from the zero-configuration and performs a linear trajectory with the end-effector along the y-axis. It clearly encounters a boundary singularity since it attempts to reach a goal that is outside its workspace.

The pseudo-inversion gives problem from a certain point on (that is, when the trajectory irredemably exits the workspace). The error is obviously different from zero:

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83745221-86165000-a65d-11ea-9e28-02316d9044fa.jpg"> </p>

and the joint velocities saturate:

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83745210-844c8c80-a65d-11ea-8ffc-de9ea35cf80b.jpg"> </p>

Performances of the DLS controller are generally better, since the error is smaller of one order of magnitude and the joint velocities remain small:

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/83745215-857db980-a65d-11ea-8bf7-668e55eefc81.jpg"> </p>

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/83745217-857db980-a65d-11ea-88cf-44cc6a306301.jpg"> </p>
