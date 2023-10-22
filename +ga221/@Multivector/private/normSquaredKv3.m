function outScalar = normSquaredKv3(inMv)
    arguments
        inMv (10,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(2,:) .* inMv(2,:) + inMv(5,:) .* inMv(5,:) - inMv(8,:) .* inMv(8,:) - inMv(9,:) .* inMv(9,:);
end