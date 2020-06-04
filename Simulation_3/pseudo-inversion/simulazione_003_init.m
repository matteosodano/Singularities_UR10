clear;
close all;

theta = pi/4;
motion_time = 5;

q_init = [pi/10; pi/4; pi/2; pi/8; pi/5; pi/8];
gain = 30 * eye(6);

t_exe = motion_time;       
t_sim = motion_time;
step = 0.001;

movement_upper_limit = [2*pi; 2*pi; 2*pi; 2*pi; 2*pi; 2*pi];
movement_lower_limit = -movement_upper_limit;
velocity_upper_limit = [2*pi/3; 2*pi/3; pi; pi; pi; pi];
velocity_lower_limit = -velocity_upper_limit;

p_init = direct_kinematic(q_init);
display(p_init);
