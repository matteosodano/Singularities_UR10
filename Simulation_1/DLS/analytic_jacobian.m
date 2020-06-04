function J = analytic_jacobian(J_geom, p)

    t_phi_matrix = [0,  -sin(p(4)),     cos(p(4))*sin(p(5));
                    0,   cos(p(4)),     sin(p(4))*sin(p(5));
                    1,       0,             cos(p(5))];
            
    t_phi_matrix_6x6 = [ eye(3),   zeros(3);
                        zeros(3), t_phi_matrix];
                    
    J = pinv(t_phi_matrix_6x6) * J_geom;

end

