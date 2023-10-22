function outMv = cpKv1MvMv(inMv1, inMv2)
    arguments
        inMv1 (2,:) double
        inMv2 (4,:) double
    end
    
    sampleCount = size(inMv1, 2);
    
    if (size(inMv2, 2) ~= sampleCount)
        error('Number of columns in both inputs must match');
    end
    
    outMv = zeros([4, sampleCount], 'double');
    
    outMv(2,:) = -inMv1(2,:) .* inMv2(4,:);
    outMv(3,:) = inMv1(1,:) .* inMv2(4,:);
    outMv(4,:) = inMv1(1,:) .* inMv2(3,:) - inMv1(2,:) .* inMv2(2,:);
end