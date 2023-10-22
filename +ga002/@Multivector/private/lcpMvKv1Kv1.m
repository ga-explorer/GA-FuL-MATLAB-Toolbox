function outMv = lcpMvKv1Kv1(inMv1, inMv2)
    arguments
        inMv1 (4,:) double
        inMv2 (2,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([2, sampleCount], 'double');
    
    outMv(1,:) = inMv1(1,:) .* inMv2(1,:);
    outMv(2,:) = inMv1(1,:) .* inMv2(2,:);
end
