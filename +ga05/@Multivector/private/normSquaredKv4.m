function outScalar = normSquaredKv4(inMv)
    arguments
        inMv (5,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(1,:) .* inMv(1,:) + inMv(2,:) .* inMv(2,:) + inMv(3,:) .* inMv(3,:) + inMv(4,:) .* inMv(4,:) + inMv(5,:) .* inMv(5,:);
end
