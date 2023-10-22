function outScalar = normSquaredKv2(inMv)
    arguments
        inMv (6,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(1,:) .* inMv(1,:);
end
