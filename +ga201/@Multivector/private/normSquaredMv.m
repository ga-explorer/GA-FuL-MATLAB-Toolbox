function outScalar = normSquaredMv(inMv)
    arguments
        inMv (8,:) double
    end
    
    sampleCount = size(inMv, 2);
    
    outScalar = zeros([1, sampleCount], 'double');
    
    outScalar(1,:) = inMv(1,:) .* inMv(1,:) + inMv(3,:) .* inMv(3,:) + inMv(4,:) .* inMv(4,:) + inMv(7,:) .* inMv(7,:);
end
