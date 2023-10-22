function outMv = lcpKv1Kv1Kv0(inMv1, inMv2)
    arguments
        inMv1 (4,:) double
        inMv2 (4,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(1,:) + inMv1(2,:) .* inMv2(2,:) + inMv1(3,:) .* inMv2(3,:) + inMv1(4,:) .* inMv2(4,:);
end