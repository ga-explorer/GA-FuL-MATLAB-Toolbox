function outMv = acpKv2Kv3Kv1(inMv1, inMv2)
    arguments
        inMv1 (6,:) double
        inMv2 (4,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([4, sampleCount], 'double');
    
    outMv(3,:) = -inMv1(1,:) .* inMv2(1,:);
    outMv(4,:) = -inMv1(1,:) .* inMv2(2,:);
end