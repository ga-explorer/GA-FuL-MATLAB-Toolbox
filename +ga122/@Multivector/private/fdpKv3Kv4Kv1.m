function outMv = fdpKv3Kv4Kv1(inMv1, inMv2)
    arguments
        inMv1 (10,:) double
        inMv2 (5,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([5, sampleCount], 'double');
    
    outMv(3,:) = inMv1(5,:) .* inMv2(2,:);
    outMv(4,:) = inMv1(5,:) .* inMv2(3,:);
end