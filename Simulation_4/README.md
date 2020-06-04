# Simulation 4
The manipulator performs a circular trajectory with the end-effector on the yz-plane, with varying orientation. It encounters two internal singularities that give problem during the movement.

The double encounter with singularities does not allow the error recovery to the pseudo-inversion:

<p align="center"> <img width=600 src=""> </p>

and the joint velocities saturates for most of the simulation

<p align="center"> <img width=600 src=""> </p>

The DLS method gives better results both on the error

<p align="center"> <img width=600 src=""> </p>

and on the joint velocities

<p align="center"> <img width=600 src=""> </p>
