# Effects of Singularities in the Kinematic Control of the Robot Manipulator Universal Robot UR10
Developed by: M. Sodano (2018).

Supervisor: prof. A. De Luca.

Achievement: Bachelor thesis (partial). \
<br>

The aim of this project is the design of kinematic controllers based on the pseudo-inversion and on the Damped Least Squares (DLS) for the simulation of different trajectories. These trajectories are eventually validated on V-REP.

## Inverse Differential Kinematics: pseudo-inversion vs DLS
As it is well known, if an initial position and a velocity are assigned to the end-effector, the IDK determines the joint velocities that realize the goal. If the jacobian is square and full rank, this is achieved by the simple inversion. If not, the jacobian is not invertible, and alternative strategies are needed.

### Pseudo-inversion
The pseudo-inversion is the solution of a constrained minimization problem: the joint velocities are minimized, and the differential kinematics must be satisfied. The solution is not unique but, if the jacobian is full rank, it is

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/83741257-4305ae00-a658-11ea-9440-03c0822547f3.png"> </p>

where the geometric jacobian is used.

### DLS
The DLS is the solution of an unconstrained minimization problem

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/83741258-439e4480-a658-11ea-8052-7c09d8cec31c.png"> </p>

in which $lambda$ is a parameters that weighs the importance of minimizing the joint velocities over the differential kinematics (i.e., the error). It is generally set to zero when far away from a singularity (the solution will be the same as the one given by the pseudo-inversion) and rises when approaching one. The solution is

<p align="center"> <img src="https://user-images.githubusercontent.com/62264708/83741254-426d1780-a658-11ea-98f9-44732519eeef.png"> </p>

where the analytic jacobian is used. 

<br> 

Notice that the pseudo-inversion ensures that, if the task is realizable, no error will be obtained since it is enforced that the differential kinematics must be satisfied. The DLS, on the other hand, finds a solution that is a compromise between good error performances and low joint velocities. This means that, if a trajectory approaches a singularity and then drifts away from it, the pseudo-inversion is eventually able to recover the error while the DLS is not.

## Simulations
*Simulation 1.* The end-effector moves along a straight line parallel to the x-axis, starting in the zero-configuration. Singularities are not encountered. The pseudo-inversion gives good results.

*Simulation 2.* The end-effector moves along a straight line parallel to the y-axis, starting in the zero-configuration. A boundary singularity is encountered, and the DLS gives better results than the pseudo-inversion.

*Simulation 3.* The end-effector performs a circular trajectory, without changing the orientation. An internal singularity is encountered. The DLS avoids the saturation of the joint velocities, but terminates with an error of the order of centimeters.

*Simulation 4*. The end-effector performs a circular trajectory, changing the orientation. The situation is very similar to the previous case, with the difference that the trajectory ends in singularity, therefore the pseudo-inversion is not able to recover the error.

Images and video are reported in the folders.

## Implementation details
The code is implemented in Matlab R2016c, and Simulink is also used for the control scheme. Simulation parameters and joint limits are defined in the script `simulation_xxx_init.m` that is present in every folder. 

For the visualization, V-REP by *Coppelia Robotics* is used and it is interfaced (off-line) with Simulink.

## Reference
Siciliano, B., Sciavicco, L., Villani, L., & Oriolo, G. (2010). *Robotics: modelling, planning and control.* Springer Science & Business Media.
