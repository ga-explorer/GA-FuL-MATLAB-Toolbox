function outMv = cpKv4Kv3Kv1(inMv1, inMv2)
    arguments
        inMv1 (5,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([5, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(4,:) .* inMv2(10,:);
    outMv(2,:) = -inMv1(5,:) .* inMv2(10,:);
end