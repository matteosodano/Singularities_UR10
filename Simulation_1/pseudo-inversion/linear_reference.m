function pd_dot = linear_reference(t, delta_x, tf)

    % desired trajectories along the axes
    x_dot = 0;
    y_dot = (-6 * delta_x * t^2)/tf^3 + (6 * delta_x * t)/tf^2;
    z_dot = 0;

    pd_dot = [x_dot; y_dot; z_dot; 0; 0; 0];

end

