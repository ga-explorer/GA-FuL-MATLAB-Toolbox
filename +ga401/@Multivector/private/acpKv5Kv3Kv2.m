function outMv = acpKv5Kv3Kv2(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(1,:) .* inMv2(10,:);
    outMv(2,:) = inMv1(1,:) .* inMv2(9,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(7,:);
    outMv(7,:) = inMv1(1,:) .* inMv2(4,:);
end
