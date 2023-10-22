function outScalar = normSquaredKv2(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(10,:) .* inMv(10,:);
end
