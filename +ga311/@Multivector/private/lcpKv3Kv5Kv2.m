function outMv = lcpKv3Kv5Kv2(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(10,:) .* inMv2(1,:);
    outMv(3,:) = inMv1(8,:) .* inMv2(1,:);
    outMv(5,:) = -inMv1(6,:) .* inMv2(1,:);
    outMv(8,:) = inMv1(3,:) .* inMv2(1,:);
end
