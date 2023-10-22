function outMv = gpKv5Kv4Kv1(inMv1, inMv2)
    arguments
        inMv1 (1,:) double
        inMv2 (5,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([5, sampleCount], 'double');
    
    outMv(2,:) = inMv1(1,:) .* inMv2(4,:);
end
