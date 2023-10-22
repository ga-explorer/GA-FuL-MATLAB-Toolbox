function outScalar = normSquaredKv5(inMv)
    arguments
        inMv (1,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = -inMv(1,:) .* inMv(1,:);
end
