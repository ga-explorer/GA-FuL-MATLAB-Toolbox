function outMv = fdpKv1Kv3Kv2(inMv1, inMv2)
    arguments
        inMv1 (3,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([3, sampleCount], 'double');
    
    outMv(1,:) = inMv1(3,:) .* inMv2(1,:);
    outMv(3,:) = -inMv1(1,:) .* inMv2(1,:);
end