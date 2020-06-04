# Simulation 4
The manipulator performs a circular trajectory with the end-effector on the yz-plane, with varying orientation. It encounters two internal singularities that give problem during the movement.

The double encounter with singularities does not allow the error recovery to the pseudo-inversion:

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83746706-cb3b8180-a65f-11ea-9380-7b42b2aef127.jpg"> </p>

and the joint velocities saturates for most of the simulation

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83746700-c971be00-a65f-11ea-898b-904bddf5aa49.jpg"> </p>

The DLS method gives better results both on the error

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83746702-caa2eb00-a65f-11ea-8c7e-187359e3e796.jpg"> </p>

and on the joint velocities

<p align="center"> <img width=600 src="https://user-images.githubusercontent.com/62264708/83746704-cb3b8180-a65f-11ea-9914-5608d1e8d4fb.jpg"> </p>
