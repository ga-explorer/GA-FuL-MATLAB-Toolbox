function outMv = cpKv3Kv3Kv2(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (10,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([10, sampleCount], 'double');
    
    outMv(3,:) = inMv1(5,:) .* inMv2(6,:) - inMv1(6,:) .* inMv2(5,:);
    outMv(5,:) = inMv1(5,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(5,:);
    outMv(6,:) = inMv1(6,:) .* inMv2(8,:) - inMv1(8,:) .* inMv2(6,:);
end
