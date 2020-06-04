function pd_dot = rotational_reference(t, final_theta, motion_time, radius)
    
    theta = (-2 * final_theta / motion_time^3) * t^3 + (3 * final_theta / motion_time^2) * t^2;
    theta_dot = (-6 * final_theta / motion_time^3) * t^2 + (6 * final_theta / motion_time^2) * t;
    
    x_dot = radius * theta_dot * cos(theta);
    y_dot = 0;
    z_dot = -radius * theta_dot * sin(theta);
    alpha_dot = theta_dot;
    beta_dot = 0;
    gamma_dot = 0;
    
    pd_dot = [x_dot; y_dot; z_dot; alpha_dot; beta_dot; gamma_dot];
    
end