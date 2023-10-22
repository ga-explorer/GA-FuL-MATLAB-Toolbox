function outMv = gpKv5Kv2Kv3(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(8,:) = -inMv1(1,:) .* inMv2(3,:);
    outMv(9,:) = inMv1(1,:) .* inMv2(2,:);
    outMv(10,:) = -inMv1(1,:) .* inMv2(1,:);
end
