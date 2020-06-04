function J = geometric_jacobian(q)

    % UR10 DH parameters [m]
    d4=0.1639;
    d5=0.1157;
    a2=0.6127;
    a3=0.5716;

    DHTABLE_alpha = [-pi/2, 0, 0, -pi/2, pi/2, 0];
    DHTABLE_d = [0, 0, 0, d4, d5, 0];
    DHTABLE_a = [0, a2, a3, 0, 0, 0];
    
    A01 = transformation_matrix(DHTABLE_alpha(1), DHTABLE_d(1), DHTABLE_a(1), q(1));
    A12 = transformation_matrix(DHTABLE_alpha(2), DHTABLE_d(2), DHTABLE_a(2), q(2));
    A23 = transformation_matrix(DHTABLE_alpha(3), DHTABLE_d(3), DHTABLE_a(3), q(3));
    A34 = transformation_matrix(DHTABLE_alpha(4), DHTABLE_d(4), DHTABLE_a(4), q(4));
    A45 = transformation_matrix(DHTABLE_alpha(5), DHTABLE_d(5), DHTABLE_a(5), q(5));
    A56 = transformation_matrix(DHTABLE_alpha(6), DHTABLE_d(6), DHTABLE_a(6), q(6));
    
    T01 = A01;
    T02 = T01 * A12;
    T03 = T02 * A23;
    T04 = T03 * A34;
    T05 = T04 * A45;
    T06 = T05 * A56;
    
    j1 = geometric_jacobian_col(eye(4), T06);
    j2 = geometric_jacobian_col(T01, T06);
    j3 = geometric_jacobian_col(T02, T06);
    j4 = geometric_jacobian_col(T03, T06);
    j5 = geometric_jacobian_col(T04, T05);
    j6 = geometric_jacobian_col(T05, T06);

    J = [j1, j2, j3, j4, j5, j6];

end

