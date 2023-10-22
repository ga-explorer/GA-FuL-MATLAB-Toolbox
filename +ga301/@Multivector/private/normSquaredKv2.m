function outScalar = normSquaredKv2(inMv)
    arguments
        inMv (6,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(3,:) .* inMv(3,:) + inMv(5,:) .* inMv(5,:) + inMv(6,:) .* inMv(6,:);
end
