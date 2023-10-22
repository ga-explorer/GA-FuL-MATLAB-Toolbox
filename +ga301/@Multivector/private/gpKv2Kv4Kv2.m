function outMv = gpKv2Kv4Kv2(inMv1, inMv2)
    arguments
        inMv1 (6,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([6, sampleCount], 'double');
    
    outMv(1,:) = -inMv1(6,:) .* inMv2(1,:);
    outMv(2,:) = inMv1(5,:) .* inMv2(1,:);
    outMv(4,:) = -inMv1(3,:) .* inMv2(1,:);
end
