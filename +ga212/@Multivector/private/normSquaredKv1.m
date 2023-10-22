function outScalar = normSquaredKv1(inMv)
    arguments
        inMv (5,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = -inMv(1,:) .* inMv(1,:) + inMv(4,:) .* inMv(4,:) + inMv(5,:) .* inMv(5,:);
end
