function outMv = gpKv4Kv3Kv3(inMv1, inMv2)
    arguments
        inMv1 (5,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(4,:) = -inMv1(2,:) .* inMv2(8,:) + inMv1(3,:) .* inMv2(6,:) - inMv1(4,:) .* inMv2(5,:);
end