function outMv = cpKv2Kv1Kv1(inMv1, inMv2)
    arguments
        inMv1 (6,:) double
        inMv2 (4,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([4, sampleCount], 'double');
    
    outMv(1,:) = inMv1(4,:) .* inMv2(4,:);
    outMv(2,:) = inMv1(5,:) .* inMv2(4,:);
    outMv(3,:) = inMv1(6,:) .* inMv2(4,:);
end
