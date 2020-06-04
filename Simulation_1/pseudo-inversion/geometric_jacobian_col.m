function j = geometric_jacobian_col(T, Tfin)

    z = [T(1,3); T(2,3); T(3,3)];
    pe = [Tfin(1,4); Tfin(2,4); Tfin(3,4)];
    p = [T(1,4); T(2,4); T(3,4)];
    
    
    jp = cross(z, (pe-p));
    jo = z;
    
    j = [jp; jo];
	
end

