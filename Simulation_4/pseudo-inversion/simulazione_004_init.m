clear;
close all;

final_theta = 3*pi/2;
radius = 0.4;
arc = final_theta * radius;
motion_time = 5;
ref_frequency = 2 * pi * motion_time / final_theta;

q_init = [pi/2; -pi/3; -pi/9; pi/6; -pi/6; 0];
gain = 30 * eye(6);

movement_upper_limit = [2*pi; 2*pi; 2*pi; 2*pi; 2*pi; 2*pi];
movement_lower_limit = -movement_upper_limit;
velocity_upper_limit = [2*pi/3; 2*pi/3; pi; pi; pi; pi];
velocity_lower_limit = -velocity_upper_limit;

t_exe = motion_time;       
t_sim = motion_time;
step = 0.001;

p_init = direct_kinematic(q_init);
display(p_init);