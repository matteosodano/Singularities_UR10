function vrep_data(name, param)

    file_id = fopen(name, 'wt');
    
    dimension = length(param);
    
    offset = [-pi/2; pi/2; 0; pi/2; 0; 0];
    
    for i=1:100:dimension
        q = [param(2,i); param(3,i); param(4,i); param(5,i); param(6,i); param(7,i)];
        q_f = q + offset;
        fprintf(file_id, '%f %f %f %f %f %f\n', q_f(1:6));
    end
    
    fclose(file_id);
    
end

