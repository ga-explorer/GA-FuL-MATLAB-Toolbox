function outMv = spMvKv1Kv0(inMv1, inMv2)
    arguments
        inMv1 (4,:) double
        inMv2 (2,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([1, sampleCount], 'double');
    
    outMv(1,:) = inMv1(2,:) .* inMv2(1,:) + inMv1(3,:) .* inMv2(2,:);
end