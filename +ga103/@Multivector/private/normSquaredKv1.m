function outScalar = normSquaredKv1(inMv)
    arguments
        inMv (4,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(4,:) .* inMv(4,:);
end
