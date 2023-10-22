function outMv = cpKv2Kv2Kv2(inMv1, inMv2)
    arguments
        inMv1 (3,:) double
        inMv2 (3,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([3, sampleCount], 'double');
    
    outMv(3,:) = inMv1(1,:) .* inMv2(2,:) - inMv1(2,:) .* inMv2(1,:);
end