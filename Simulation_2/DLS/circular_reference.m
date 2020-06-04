function [pd_dot, pulse] = circular_reference(t, ref_pulse, radius, motion_time)
    
    theta = (-2 * ref_pulse/motion_time^2) * t^3 + (3 * ref_pulse/motion_time)*t^2;
    theta_dot = (-6 * ref_pulse/motion_time^2) * t^2 + (6 * ref_pulse/motion_time) * t;

    x_dot = 0;
    y_dot = - radius * theta_dot * sin (theta);
    z_dot = radius * theta_dot * cos (theta);
    pd_dot = [x_dot; y_dot; z_dot; 0; 0; 0];
    pulse =  theta;
    
end