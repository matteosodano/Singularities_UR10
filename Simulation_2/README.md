# Simulation 2

The manipulator starts from the zero-configuration and performs a linear trajectory with the end-effector along the y-axis. It clearly encounters a boundary singularity since it attempts to reach a goal that is outside its workspace.

The pseudo-inversion gives problem from a certain point on (that is, when the trajectory irredemably exits the workspace). The error is obviously different from zero:

<p align="center"> <img width=600 src=""> </p>

and the joint velocities saturate:

<p align="center"> <img width=600 src=""> </p>

Performances of the DLS controller are generally better, since the error is smaller of one order of magnitude and the joint velocities remain small:

<p align="center"> <img src=""> </p>

<p align="center"> <img src=""> </p>
