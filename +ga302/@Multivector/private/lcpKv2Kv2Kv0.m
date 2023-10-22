function outMv = lcpKv2Kv2Kv0(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(6,:) .* inMv2(6,:) - inMv1(9,:) .* inMv2(9,:) - inMv1(10,:) .* inMv2(10,:);
end
