clear;
close all;


t_exe = 2;       
t_sim = 2;
step = 0.01;

delta_x = -1;

gain = 20 * eye(6);

movement_upper_limit = [2*pi; 2*pi; 2*pi; 2*pi; 2*pi; 2*pi];
movement_lower_limit = -movement_upper_limit;
velocity_upper_limit = [2*pi/3; 2*pi/3; pi; pi; pi; pi];
velocity_lower_limit = -velocity_upper_limit;

q_init = [0; 0; 0; 0; 0; 0];
p_init = direct_kinematic(q_init);
display(p_init);
