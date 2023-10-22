function outMv = gpKv3Kv4Kv1(inMv1, inMv2)
    arguments
        inMv1 (4,:) double
        inMv2 (1,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([4, sampleCount], 'double');
    
    outMv(3,:) = inMv1(2,:) .* inMv2(1,:);
end