function pd_dot = rotational_reference(t, theta, motion_time)
    
    alpha_dot = 0;
    beta_dot = (-6*theta/motion_time^3) * t^2 + (6*theta/motion_time^2) * t;
    gamma_dot = (-6*theta/motion_time^3) * t^2 + (6*theta/motion_time^2) * t;
    pd_dot = [0; 0; 0; alpha_dot; beta_dot; gamma_dot];
    
end