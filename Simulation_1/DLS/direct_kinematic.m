function p = direct_kinematic(q)

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
    
    Tbe = A01*A12*A23*A34*A45*A56;
    
    % ZYZ angles
    angle_alpha = atan2(Tbe(2,3), Tbe(1,3));
    angle_beta = atan2(sqrt(Tbe(1,3)^2+Tbe(2,3)^2), Tbe(3,3));
    angle_gamma = atan2(Tbe(3,2), -Tbe(3,1));
    p = [Tbe(1,4); Tbe(2,4); Tbe(3,4); angle_alpha; angle_beta; angle_gamma];
  
end